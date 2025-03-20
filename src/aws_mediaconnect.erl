%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Elemental MediaConnect API reference.
%%
%% MediaConnect is a service that lets you ingest live video content into the
%% cloud
%% and distribute it to destinations all over the world, both inside and
%% outside the Amazon Web Services cloud. This API reference provides
%% descriptions, syntax, and usage examples
%% for each of the actions and data types that are supported by MediaConnect.
%%
%% Use the following links to get started with the MediaConnect API:
%%
%% Actions:
%% https://docs.aws.amazon.com/mediaconnect/latest/api/API_Operations.html:
%% An
%% alphabetical list of all MediaConnect API operations.
%%
%% Data types:
%% https://docs.aws.amazon.com/mediaconnect/latest/api/API_Types.html: An
%% alphabetical list of all MediaConnect data types.
%%
%% Common
%% parameters:
%% https://docs.aws.amazon.com/mediaconnect/latest/api/CommonParameters.html:
%% Parameters that all operations can use.
%%
%% Common errors:
%% https://docs.aws.amazon.com/mediaconnect/latest/api/CommonErrors.html:
%% Client and server errors that all operations can return.
-module(aws_mediaconnect).

-export([add_bridge_outputs/3,
         add_bridge_outputs/4,
         add_bridge_sources/3,
         add_bridge_sources/4,
         add_flow_media_streams/3,
         add_flow_media_streams/4,
         add_flow_outputs/3,
         add_flow_outputs/4,
         add_flow_sources/3,
         add_flow_sources/4,
         add_flow_vpc_interfaces/3,
         add_flow_vpc_interfaces/4,
         create_bridge/2,
         create_bridge/3,
         create_flow/2,
         create_flow/3,
         create_gateway/2,
         create_gateway/3,
         delete_bridge/3,
         delete_bridge/4,
         delete_flow/3,
         delete_flow/4,
         delete_gateway/3,
         delete_gateway/4,
         deregister_gateway_instance/3,
         deregister_gateway_instance/4,
         describe_bridge/2,
         describe_bridge/4,
         describe_bridge/5,
         describe_flow/2,
         describe_flow/4,
         describe_flow/5,
         describe_flow_source_metadata/2,
         describe_flow_source_metadata/4,
         describe_flow_source_metadata/5,
         describe_flow_source_thumbnail/2,
         describe_flow_source_thumbnail/4,
         describe_flow_source_thumbnail/5,
         describe_gateway/2,
         describe_gateway/4,
         describe_gateway/5,
         describe_gateway_instance/2,
         describe_gateway_instance/4,
         describe_gateway_instance/5,
         describe_offering/2,
         describe_offering/4,
         describe_offering/5,
         describe_reservation/2,
         describe_reservation/4,
         describe_reservation/5,
         grant_flow_entitlements/3,
         grant_flow_entitlements/4,
         list_bridges/1,
         list_bridges/3,
         list_bridges/4,
         list_entitlements/1,
         list_entitlements/3,
         list_entitlements/4,
         list_flows/1,
         list_flows/3,
         list_flows/4,
         list_gateway_instances/1,
         list_gateway_instances/3,
         list_gateway_instances/4,
         list_gateways/1,
         list_gateways/3,
         list_gateways/4,
         list_offerings/1,
         list_offerings/3,
         list_offerings/4,
         list_reservations/1,
         list_reservations/3,
         list_reservations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         purchase_offering/3,
         purchase_offering/4,
         remove_bridge_output/4,
         remove_bridge_output/5,
         remove_bridge_source/4,
         remove_bridge_source/5,
         remove_flow_media_stream/4,
         remove_flow_media_stream/5,
         remove_flow_output/4,
         remove_flow_output/5,
         remove_flow_source/4,
         remove_flow_source/5,
         remove_flow_vpc_interface/4,
         remove_flow_vpc_interface/5,
         revoke_flow_entitlement/4,
         revoke_flow_entitlement/5,
         start_flow/3,
         start_flow/4,
         stop_flow/3,
         stop_flow/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_bridge/3,
         update_bridge/4,
         update_bridge_output/4,
         update_bridge_output/5,
         update_bridge_source/4,
         update_bridge_source/5,
         update_bridge_state/3,
         update_bridge_state/4,
         update_flow/3,
         update_flow/4,
         update_flow_entitlement/4,
         update_flow_entitlement/5,
         update_flow_media_stream/4,
         update_flow_media_stream/5,
         update_flow_output/4,
         update_flow_output/5,
         update_flow_source/4,
         update_flow_source/5,
         update_gateway_instance/3,
         update_gateway_instance/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% deregister_gateway_instance_response() :: #{
%%   <<"GatewayInstanceArn">> => [string()],
%%   <<"InstanceState">> => list(any())
%% }
-type deregister_gateway_instance_response() :: #{binary() => any()}.


%% Example:
%% update_flow_request() :: #{
%%   <<"Maintenance">> => update_maintenance(),
%%   <<"NdiConfig">> => ndi_config(),
%%   <<"SourceFailoverConfig">> => update_failover_config(),
%%   <<"SourceMonitoringConfig">> => monitoring_config()
%% }
-type update_flow_request() :: #{binary() => any()}.


%% Example:
%% describe_flow_source_thumbnail_response() :: #{
%%   <<"ThumbnailDetails">> => thumbnail_details()
%% }
-type describe_flow_source_thumbnail_response() :: #{binary() => any()}.


%% Example:
%% remove_flow_vpc_interface_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"NonDeletedNetworkInterfaceIds">> => list([string()]()),
%%   <<"VpcInterfaceName">> => [string()]
%% }
-type remove_flow_vpc_interface_response() :: #{binary() => any()}.


%% Example:
%% media_stream_output_configuration_request() :: #{
%%   <<"DestinationConfigurations">> => list(destination_configuration_request()()),
%%   <<"EncodingName">> => list(any()),
%%   <<"EncodingParameters">> => encoding_parameters_request(),
%%   <<"MediaStreamName">> => [string()]
%% }
-type media_stream_output_configuration_request() :: #{binary() => any()}.


%% Example:
%% add_flow_sources_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Sources">> => list(source()())
%% }
-type add_flow_sources_response() :: #{binary() => any()}.


%% Example:
%% listed_entitlement() :: #{
%%   <<"DataTransferSubscriberFeePercent">> => [integer()],
%%   <<"EntitlementArn">> => [string()],
%%   <<"EntitlementName">> => [string()]
%% }
-type listed_entitlement() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% transport_stream_program() :: #{
%%   <<"PcrPid">> => [integer()],
%%   <<"ProgramName">> => [string()],
%%   <<"ProgramNumber">> => [integer()],
%%   <<"ProgramPid">> => [integer()],
%%   <<"Streams">> => list(transport_stream()())
%% }
-type transport_stream_program() :: #{binary() => any()}.


%% Example:
%% describe_flow_source_metadata_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Messages">> => list(message_detail()()),
%%   <<"Timestamp">> => [non_neg_integer()],
%%   <<"TransportMediaInfo">> => transport_media_info()
%% }
-type describe_flow_source_metadata_response() :: #{binary() => any()}.


%% Example:
%% grant_flow_entitlements_request() :: #{
%%   <<"Entitlements">> := list(grant_entitlement_request()())
%% }
-type grant_flow_entitlements_request() :: #{binary() => any()}.

%% Example:
%% describe_gateway_instance_request() :: #{}
-type describe_gateway_instance_request() :: #{}.

%% Example:
%% describe_flow_source_metadata_request() :: #{}
-type describe_flow_source_metadata_request() :: #{}.


%% Example:
%% fmtp_request() :: #{
%%   <<"ChannelOrder">> => [string()],
%%   <<"Colorimetry">> => list(any()),
%%   <<"ExactFramerate">> => [string()],
%%   <<"Par">> => [string()],
%%   <<"Range">> => list(any()),
%%   <<"ScanMode">> => list(any()),
%%   <<"Tcs">> => list(any())
%% }
-type fmtp_request() :: #{binary() => any()}.


%% Example:
%% create_flow_request() :: #{
%%   <<"AvailabilityZone">> => [string()],
%%   <<"Entitlements">> => list(grant_entitlement_request()()),
%%   <<"FlowSize">> => list(any()),
%%   <<"Maintenance">> => add_maintenance(),
%%   <<"MediaStreams">> => list(add_media_stream_request()()),
%%   <<"Name">> := [string()],
%%   <<"NdiConfig">> => ndi_config(),
%%   <<"Outputs">> => list(add_output_request()()),
%%   <<"Source">> => set_source_request(),
%%   <<"SourceFailoverConfig">> => failover_config(),
%%   <<"SourceMonitoringConfig">> => monitoring_config(),
%%   <<"Sources">> => list(set_source_request()()),
%%   <<"VpcInterfaces">> => list(vpc_interface_request()())
%% }
-type create_flow_request() :: #{binary() => any()}.


%% Example:
%% update_bridge_state_request() :: #{
%%   <<"DesiredState">> := list(any())
%% }
-type update_bridge_state_request() :: #{binary() => any()}.


%% Example:
%% list_gateway_instances_response() :: #{
%%   <<"Instances">> => list(listed_gateway_instance()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_gateway_instances_response() :: #{binary() => any()}.


%% Example:
%% media_stream_source_configuration_request() :: #{
%%   <<"EncodingName">> => list(any()),
%%   <<"InputConfigurations">> => list(input_configuration_request()()),
%%   <<"MediaStreamName">> => [string()]
%% }
-type media_stream_source_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_egress_gateway_bridge_request() :: #{
%%   <<"MaxBitrate">> => [integer()]
%% }
-type update_egress_gateway_bridge_request() :: #{binary() => any()}.


%% Example:
%% add_bridge_sources_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"Sources">> => list(bridge_source()())
%% }
-type add_bridge_sources_response() :: #{binary() => any()}.


%% Example:
%% create_gateway_response() :: #{
%%   <<"Gateway">> => gateway()
%% }
-type create_gateway_response() :: #{binary() => any()}.


%% Example:
%% list_gateways_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_gateways_request() :: #{binary() => any()}.


%% Example:
%% add_flow_media_streams_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"MediaStreams">> => list(media_stream()())
%% }
-type add_flow_media_streams_response() :: #{binary() => any()}.


%% Example:
%% add_flow_outputs_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Outputs">> => list(output()())
%% }
-type add_flow_outputs_response() :: #{binary() => any()}.


%% Example:
%% update_flow_source_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Source">> => source()
%% }
-type update_flow_source_response() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% list_reservations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_reservations_request() :: #{binary() => any()}.


%% Example:
%% update_bridge_output_request() :: #{
%%   <<"NetworkOutput">> => update_bridge_network_output_request()
%% }
-type update_bridge_output_request() :: #{binary() => any()}.


%% Example:
%% list_offerings_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_offerings_request() :: #{binary() => any()}.


%% Example:
%% list_bridges_request() :: #{
%%   <<"FilterArn">> => [string()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_bridges_request() :: #{binary() => any()}.


%% Example:
%% interface_request() :: #{
%%   <<"Name">> => [string()]
%% }
-type interface_request() :: #{binary() => any()}.


%% Example:
%% bridge_flow_source() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"FlowVpcInterfaceAttachment">> => vpc_interface_attachment(),
%%   <<"Name">> => [string()],
%%   <<"OutputArn">> => [string()]
%% }
-type bridge_flow_source() :: #{binary() => any()}.


%% Example:
%% list_offerings_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Offerings">> => list(offering()())
%% }
-type list_offerings_response() :: #{binary() => any()}.


%% Example:
%% frozen_frames() :: #{
%%   <<"State">> => list(any()),
%%   <<"ThresholdSeconds">> => [integer()]
%% }
-type frozen_frames() :: #{binary() => any()}.

%% Example:
%% remove_bridge_source_request() :: #{}
-type remove_bridge_source_request() :: #{}.


%% Example:
%% describe_gateway_instance_response() :: #{
%%   <<"GatewayInstance">> => gateway_instance()
%% }
-type describe_gateway_instance_response() :: #{binary() => any()}.


%% Example:
%% update_maintenance() :: #{
%%   <<"MaintenanceDay">> => list(any()),
%%   <<"MaintenanceScheduledDate">> => [string()],
%%   <<"MaintenanceStartHour">> => [string()]
%% }
-type update_maintenance() :: #{binary() => any()}.


%% Example:
%% add_bridge_source_request() :: #{
%%   <<"FlowSource">> => add_bridge_flow_source_request(),
%%   <<"NetworkSource">> => add_bridge_network_source_request()
%% }
-type add_bridge_source_request() :: #{binary() => any()}.


%% Example:
%% update_ingress_gateway_bridge_request() :: #{
%%   <<"MaxBitrate">> => [integer()],
%%   <<"MaxOutputs">> => [integer()]
%% }
-type update_ingress_gateway_bridge_request() :: #{binary() => any()}.


%% Example:
%% delete_gateway_response() :: #{
%%   <<"GatewayArn">> => [string()]
%% }
-type delete_gateway_response() :: #{binary() => any()}.

%% Example:
%% delete_flow_request() :: #{}
-type delete_flow_request() :: #{}.


%% Example:
%% create_flow420_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type create_flow420_exception() :: #{binary() => any()}.


%% Example:
%% listed_flow() :: #{
%%   <<"AvailabilityZone">> => [string()],
%%   <<"Description">> => [string()],
%%   <<"FlowArn">> => [string()],
%%   <<"Maintenance">> => maintenance(),
%%   <<"Name">> => [string()],
%%   <<"SourceType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type listed_flow() :: #{binary() => any()}.


%% Example:
%% thumbnail_details() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Thumbnail">> => [string()],
%%   <<"ThumbnailMessages">> => list(message_detail()()),
%%   <<"Timecode">> => [string()],
%%   <<"Timestamp">> => [non_neg_integer()]
%% }
-type thumbnail_details() :: #{binary() => any()}.


%% Example:
%% update_gateway_instance_request() :: #{
%%   <<"BridgePlacement">> => list(any())
%% }
-type update_gateway_instance_request() :: #{binary() => any()}.


%% Example:
%% media_stream() :: #{
%%   <<"Attributes">> => media_stream_attributes(),
%%   <<"ClockRate">> => [integer()],
%%   <<"Description">> => [string()],
%%   <<"Fmt">> => [integer()],
%%   <<"MediaStreamId">> => [integer()],
%%   <<"MediaStreamName">> => [string()],
%%   <<"MediaStreamType">> => list(any()),
%%   <<"VideoFormat">> => [string()]
%% }
-type media_stream() :: #{binary() => any()}.


%% Example:
%% create_flow_response() :: #{
%%   <<"Flow">> => flow()
%% }
-type create_flow_response() :: #{binary() => any()}.


%% Example:
%% delete_flow_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type delete_flow_response() :: #{binary() => any()}.


%% Example:
%% remove_flow_media_stream_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"MediaStreamName">> => [string()]
%% }
-type remove_flow_media_stream_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% remove_bridge_source_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"SourceName">> => [string()]
%% }
-type remove_bridge_source_response() :: #{binary() => any()}.


%% Example:
%% update_bridge_flow_source_request() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"FlowVpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type update_bridge_flow_source_request() :: #{binary() => any()}.


%% Example:
%% encoding_parameters_request() :: #{
%%   <<"CompressionFactor">> => [float()],
%%   <<"EncoderProfile">> => list(any())
%% }
-type encoding_parameters_request() :: #{binary() => any()}.


%% Example:
%% create_bridge_response() :: #{
%%   <<"Bridge">> => bridge()
%% }
-type create_bridge_response() :: #{binary() => any()}.


%% Example:
%% gateway() :: #{
%%   <<"EgressCidrBlocks">> => list([string()]()),
%%   <<"GatewayArn">> => [string()],
%%   <<"GatewayMessages">> => list(message_detail()()),
%%   <<"GatewayState">> => list(any()),
%%   <<"Name">> => [string()],
%%   <<"Networks">> => list(gateway_network()())
%% }
-type gateway() :: #{binary() => any()}.


%% Example:
%% update_flow_media_stream_request() :: #{
%%   <<"Attributes">> => media_stream_attributes_request(),
%%   <<"ClockRate">> => [integer()],
%%   <<"Description">> => [string()],
%%   <<"MediaStreamType">> => list(any()),
%%   <<"VideoFormat">> => [string()]
%% }
-type update_flow_media_stream_request() :: #{binary() => any()}.


%% Example:
%% add_media_stream_request() :: #{
%%   <<"Attributes">> => media_stream_attributes_request(),
%%   <<"ClockRate">> => [integer()],
%%   <<"Description">> => [string()],
%%   <<"MediaStreamId">> => [integer()],
%%   <<"MediaStreamName">> => [string()],
%%   <<"MediaStreamType">> => list(any()),
%%   <<"VideoFormat">> => [string()]
%% }
-type add_media_stream_request() :: #{binary() => any()}.


%% Example:
%% ingress_gateway_bridge() :: #{
%%   <<"InstanceId">> => [string()],
%%   <<"MaxBitrate">> => [integer()],
%%   <<"MaxOutputs">> => [integer()]
%% }
-type ingress_gateway_bridge() :: #{binary() => any()}.


%% Example:
%% bridge_network_output() :: #{
%%   <<"IpAddress">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"NetworkName">> => [string()],
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"Ttl">> => [integer()]
%% }
-type bridge_network_output() :: #{binary() => any()}.


%% Example:
%% message_detail() :: #{
%%   <<"Code">> => [string()],
%%   <<"Message">> => [string()],
%%   <<"ResourceName">> => [string()]
%% }
-type message_detail() :: #{binary() => any()}.


%% Example:
%% media_stream_attributes_request() :: #{
%%   <<"Fmtp">> => fmtp_request(),
%%   <<"Lang">> => [string()]
%% }
-type media_stream_attributes_request() :: #{binary() => any()}.


%% Example:
%% create_bridge420_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type create_bridge420_exception() :: #{binary() => any()}.


%% Example:
%% gateway_network() :: #{
%%   <<"CidrBlock">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type gateway_network() :: #{binary() => any()}.


%% Example:
%% update_bridge_request() :: #{
%%   <<"EgressGatewayBridge">> => update_egress_gateway_bridge_request(),
%%   <<"IngressGatewayBridge">> => update_ingress_gateway_bridge_request(),
%%   <<"SourceFailoverConfig">> => update_failover_config()
%% }
-type update_bridge_request() :: #{binary() => any()}.


%% Example:
%% egress_gateway_bridge() :: #{
%%   <<"InstanceId">> => [string()],
%%   <<"MaxBitrate">> => [integer()]
%% }
-type egress_gateway_bridge() :: #{binary() => any()}.


%% Example:
%% update_flow_source_request() :: #{
%%   <<"Decryption">> => update_encryption(),
%%   <<"Description">> => [string()],
%%   <<"EntitlementArn">> => [string()],
%%   <<"GatewayBridgeSource">> => update_gateway_bridge_source_request(),
%%   <<"IngestPort">> => [integer()],
%%   <<"MaxBitrate">> => [integer()],
%%   <<"MaxLatency">> => [integer()],
%%   <<"MaxSyncBuffer">> => [integer()],
%%   <<"MediaStreamSourceConfigurations">> => list(media_stream_source_configuration_request()()),
%%   <<"MinLatency">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"SenderControlPort">> => [integer()],
%%   <<"SenderIpAddress">> => [string()],
%%   <<"SourceListenerAddress">> => [string()],
%%   <<"SourceListenerPort">> => [integer()],
%%   <<"StreamId">> => [string()],
%%   <<"VpcInterfaceName">> => [string()],
%%   <<"WhitelistCidr">> => [string()]
%% }
-type update_flow_source_request() :: #{binary() => any()}.


%% Example:
%% list_flows_response() :: #{
%%   <<"Flows">> => list(listed_flow()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_flows_response() :: #{binary() => any()}.


%% Example:
%% add_egress_gateway_bridge_request() :: #{
%%   <<"MaxBitrate">> => [integer()]
%% }
-type add_egress_gateway_bridge_request() :: #{binary() => any()}.


%% Example:
%% listed_gateway() :: #{
%%   <<"GatewayArn">> => [string()],
%%   <<"GatewayState">> => list(any()),
%%   <<"Name">> => [string()]
%% }
-type listed_gateway() :: #{binary() => any()}.


%% Example:
%% add_flow_outputs420_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type add_flow_outputs420_exception() :: #{binary() => any()}.

%% Example:
%% delete_bridge_request() :: #{}
-type delete_bridge_request() :: #{}.


%% Example:
%% bridge_output() :: #{
%%   <<"FlowOutput">> => bridge_flow_output(),
%%   <<"NetworkOutput">> => bridge_network_output()
%% }
-type bridge_output() :: #{binary() => any()}.


%% Example:
%% delete_bridge_response() :: #{
%%   <<"BridgeArn">> => [string()]
%% }
-type delete_bridge_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% transport() :: #{
%%   <<"CidrAllowList">> => list([string()]()),
%%   <<"MaxBitrate">> => [integer()],
%%   <<"MaxLatency">> => [integer()],
%%   <<"MaxSyncBuffer">> => [integer()],
%%   <<"MinLatency">> => [integer()],
%%   <<"NdiProgramName">> => [string()],
%%   <<"NdiSpeedHqQuality">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"RemoteId">> => [string()],
%%   <<"SenderControlPort">> => [integer()],
%%   <<"SenderIpAddress">> => [string()],
%%   <<"SmoothingLatency">> => [integer()],
%%   <<"SourceListenerAddress">> => [string()],
%%   <<"SourceListenerPort">> => [integer()],
%%   <<"StreamId">> => [string()]
%% }
-type transport() :: #{binary() => any()}.

%% Example:
%% start_flow_request() :: #{}
-type start_flow_request() :: #{}.


%% Example:
%% create_bridge_request() :: #{
%%   <<"EgressGatewayBridge">> => add_egress_gateway_bridge_request(),
%%   <<"IngressGatewayBridge">> => add_ingress_gateway_bridge_request(),
%%   <<"Name">> := [string()],
%%   <<"Outputs">> => list(add_bridge_output_request()()),
%%   <<"PlacementArn">> := [string()],
%%   <<"SourceFailoverConfig">> => failover_config(),
%%   <<"Sources">> := list(add_bridge_source_request()())
%% }
-type create_bridge_request() :: #{binary() => any()}.


%% Example:
%% add_flow_vpc_interfaces_request() :: #{
%%   <<"VpcInterfaces">> := list(vpc_interface_request()())
%% }
-type add_flow_vpc_interfaces_request() :: #{binary() => any()}.


%% Example:
%% maintenance() :: #{
%%   <<"MaintenanceDay">> => list(any()),
%%   <<"MaintenanceDeadline">> => [string()],
%%   <<"MaintenanceScheduledDate">> => [string()],
%%   <<"MaintenanceStartHour">> => [string()]
%% }
-type maintenance() :: #{binary() => any()}.


%% Example:
%% vpc_interface() :: #{
%%   <<"Name">> => [string()],
%%   <<"NetworkInterfaceIds">> => list([string()]()),
%%   <<"NetworkInterfaceType">> => list(any()),
%%   <<"RoleArn">> => [string()],
%%   <<"SecurityGroupIds">> => list([string()]()),
%%   <<"SubnetId">> => [string()]
%% }
-type vpc_interface() :: #{binary() => any()}.

%% Example:
%% describe_flow_source_thumbnail_request() :: #{}
-type describe_flow_source_thumbnail_request() :: #{}.


%% Example:
%% remove_bridge_output_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"OutputName">> => [string()]
%% }
-type remove_bridge_output_response() :: #{binary() => any()}.


%% Example:
%% fmtp() :: #{
%%   <<"ChannelOrder">> => [string()],
%%   <<"Colorimetry">> => list(any()),
%%   <<"ExactFramerate">> => [string()],
%%   <<"Par">> => [string()],
%%   <<"Range">> => list(any()),
%%   <<"ScanMode">> => list(any()),
%%   <<"Tcs">> => list(any())
%% }
-type fmtp() :: #{binary() => any()}.


%% Example:
%% create_gateway420_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type create_gateway420_exception() :: #{binary() => any()}.


%% Example:
%% source_priority() :: #{
%%   <<"PrimarySource">> => [string()]
%% }
-type source_priority() :: #{binary() => any()}.


%% Example:
%% set_gateway_bridge_source_request() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"VpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type set_gateway_bridge_source_request() :: #{binary() => any()}.


%% Example:
%% silent_audio() :: #{
%%   <<"State">> => list(any()),
%%   <<"ThresholdSeconds">> => [integer()]
%% }
-type silent_audio() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% add_bridge_network_source_request() :: #{
%%   <<"MulticastIp">> => [string()],
%%   <<"MulticastSourceSettings">> => multicast_source_settings(),
%%   <<"Name">> => [string()],
%%   <<"NetworkName">> => [string()],
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any())
%% }
-type add_bridge_network_source_request() :: #{binary() => any()}.

%% Example:
%% describe_flow_request() :: #{}
-type describe_flow_request() :: #{}.


%% Example:
%% multicast_source_settings() :: #{
%%   <<"MulticastSourceIp">> => [string()]
%% }
-type multicast_source_settings() :: #{binary() => any()}.


%% Example:
%% start_flow_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type start_flow_response() :: #{binary() => any()}.


%% Example:
%% stop_flow_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type stop_flow_response() :: #{binary() => any()}.


%% Example:
%% encryption() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"ConstantInitializationVector">> => [string()],
%%   <<"DeviceId">> => [string()],
%%   <<"KeyType">> => list(any()),
%%   <<"Region">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"RoleArn">> => [string()],
%%   <<"SecretArn">> => [string()],
%%   <<"Url">> => [string()]
%% }
-type encryption() :: #{binary() => any()}.


%% Example:
%% bridge() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"BridgeMessages">> => list(message_detail()()),
%%   <<"BridgeState">> => list(any()),
%%   <<"EgressGatewayBridge">> => egress_gateway_bridge(),
%%   <<"IngressGatewayBridge">> => ingress_gateway_bridge(),
%%   <<"Name">> => [string()],
%%   <<"Outputs">> => list(bridge_output()()),
%%   <<"PlacementArn">> => [string()],
%%   <<"SourceFailoverConfig">> => failover_config(),
%%   <<"Sources">> => list(bridge_source()())
%% }
-type bridge() :: #{binary() => any()}.


%% Example:
%% update_bridge_network_output_request() :: #{
%%   <<"IpAddress">> => [string()],
%%   <<"NetworkName">> => [string()],
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"Ttl">> => [integer()]
%% }
-type update_bridge_network_output_request() :: #{binary() => any()}.


%% Example:
%% grant_flow_entitlements420_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type grant_flow_entitlements420_exception() :: #{binary() => any()}.


%% Example:
%% encoding_parameters() :: #{
%%   <<"CompressionFactor">> => [float()],
%%   <<"EncoderProfile">> => list(any())
%% }
-type encoding_parameters() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% audio_monitoring_setting() :: #{
%%   <<"SilentAudio">> => silent_audio()
%% }
-type audio_monitoring_setting() :: #{binary() => any()}.


%% Example:
%% resource_specification() :: #{
%%   <<"ReservedBitrate">> => [integer()],
%%   <<"ResourceType">> => list(any())
%% }
-type resource_specification() :: #{binary() => any()}.

%% Example:
%% remove_bridge_output_request() :: #{}
-type remove_bridge_output_request() :: #{}.


%% Example:
%% update_bridge_state_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"DesiredState">> => list(any())
%% }
-type update_bridge_state_response() :: #{binary() => any()}.


%% Example:
%% reservation() :: #{
%%   <<"CurrencyCode">> => [string()],
%%   <<"Duration">> => [integer()],
%%   <<"DurationUnits">> => list(any()),
%%   <<"End">> => [string()],
%%   <<"OfferingArn">> => [string()],
%%   <<"OfferingDescription">> => [string()],
%%   <<"PricePerUnit">> => [string()],
%%   <<"PriceUnits">> => list(any()),
%%   <<"ReservationArn">> => [string()],
%%   <<"ReservationName">> => [string()],
%%   <<"ReservationState">> => list(any()),
%%   <<"ResourceSpecification">> => resource_specification(),
%%   <<"Start">> => [string()]
%% }
-type reservation() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% input_configuration() :: #{
%%   <<"InputIp">> => [string()],
%%   <<"InputPort">> => [integer()],
%%   <<"Interface">> => interface()
%% }
-type input_configuration() :: #{binary() => any()}.


%% Example:
%% list_entitlements_response() :: #{
%%   <<"Entitlements">> => list(listed_entitlement()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_entitlements_response() :: #{binary() => any()}.


%% Example:
%% add_flow_sources_request() :: #{
%%   <<"Sources">> := list(set_source_request()())
%% }
-type add_flow_sources_request() :: #{binary() => any()}.


%% Example:
%% media_stream_attributes() :: #{
%%   <<"Fmtp">> => fmtp(),
%%   <<"Lang">> => [string()]
%% }
-type media_stream_attributes() :: #{binary() => any()}.


%% Example:
%% list_flows_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_flows_request() :: #{binary() => any()}.


%% Example:
%% update_bridge_source_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"Source">> => bridge_source()
%% }
-type update_bridge_source_response() :: #{binary() => any()}.


%% Example:
%% add_bridge_outputs_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"Outputs">> => list(bridge_output()())
%% }
-type add_bridge_outputs_response() :: #{binary() => any()}.

%% Example:
%% remove_flow_source_request() :: #{}
-type remove_flow_source_request() :: #{}.

%% Example:
%% describe_bridge_request() :: #{}
-type describe_bridge_request() :: #{}.


%% Example:
%% remove_flow_source_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"SourceArn">> => [string()]
%% }
-type remove_flow_source_response() :: #{binary() => any()}.


%% Example:
%% bridge_network_source() :: #{
%%   <<"MulticastIp">> => [string()],
%%   <<"MulticastSourceSettings">> => multicast_source_settings(),
%%   <<"Name">> => [string()],
%%   <<"NetworkName">> => [string()],
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any())
%% }
-type bridge_network_source() :: #{binary() => any()}.


%% Example:
%% media_stream_output_configuration() :: #{
%%   <<"DestinationConfigurations">> => list(destination_configuration()()),
%%   <<"EncodingName">> => list(any()),
%%   <<"EncodingParameters">> => encoding_parameters(),
%%   <<"MediaStreamName">> => [string()]
%% }
-type media_stream_output_configuration() :: #{binary() => any()}.


%% Example:
%% add_ingress_gateway_bridge_request() :: #{
%%   <<"MaxBitrate">> => [integer()],
%%   <<"MaxOutputs">> => [integer()]
%% }
-type add_ingress_gateway_bridge_request() :: #{binary() => any()}.


%% Example:
%% source() :: #{
%%   <<"DataTransferSubscriberFeePercent">> => [integer()],
%%   <<"Decryption">> => encryption(),
%%   <<"Description">> => [string()],
%%   <<"EntitlementArn">> => [string()],
%%   <<"GatewayBridgeSource">> => gateway_bridge_source(),
%%   <<"IngestIp">> => [string()],
%%   <<"IngestPort">> => [integer()],
%%   <<"MediaStreamSourceConfigurations">> => list(media_stream_source_configuration()()),
%%   <<"Name">> => [string()],
%%   <<"SenderControlPort">> => [integer()],
%%   <<"SenderIpAddress">> => [string()],
%%   <<"SourceArn">> => [string()],
%%   <<"Transport">> => transport(),
%%   <<"VpcInterfaceName">> => [string()],
%%   <<"WhitelistCidr">> => [string()]
%% }
-type source() :: #{binary() => any()}.


%% Example:
%% add_bridge_flow_source_request() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"FlowVpcInterfaceAttachment">> => vpc_interface_attachment(),
%%   <<"Name">> => [string()]
%% }
-type add_bridge_flow_source_request() :: #{binary() => any()}.


%% Example:
%% update_gateway_instance_response() :: #{
%%   <<"BridgePlacement">> => list(any()),
%%   <<"GatewayInstanceArn">> => [string()]
%% }
-type update_gateway_instance_response() :: #{binary() => any()}.


%% Example:
%% update_failover_config() :: #{
%%   <<"FailoverMode">> => list(any()),
%%   <<"RecoveryWindow">> => [integer()],
%%   <<"SourcePriority">> => source_priority(),
%%   <<"State">> => list(any())
%% }
-type update_failover_config() :: #{binary() => any()}.


%% Example:
%% remove_flow_output_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"OutputArn">> => [string()]
%% }
-type remove_flow_output_response() :: #{binary() => any()}.


%% Example:
%% update_bridge_response() :: #{
%%   <<"Bridge">> => bridge()
%% }
-type update_bridge_response() :: #{binary() => any()}.


%% Example:
%% create_gateway_request() :: #{
%%   <<"EgressCidrBlocks">> := list([string()]()),
%%   <<"Name">> := [string()],
%%   <<"Networks">> := list(gateway_network()())
%% }
-type create_gateway_request() :: #{binary() => any()}.


%% Example:
%% grant_flow_entitlements_response() :: #{
%%   <<"Entitlements">> => list(entitlement()()),
%%   <<"FlowArn">> => [string()]
%% }
-type grant_flow_entitlements_response() :: #{binary() => any()}.


%% Example:
%% add_bridge_outputs_request() :: #{
%%   <<"Outputs">> := list(add_bridge_output_request()())
%% }
-type add_bridge_outputs_request() :: #{binary() => any()}.


%% Example:
%% add_maintenance() :: #{
%%   <<"MaintenanceDay">> => list(any()),
%%   <<"MaintenanceStartHour">> => [string()]
%% }
-type add_maintenance() :: #{binary() => any()}.


%% Example:
%% entitlement() :: #{
%%   <<"DataTransferSubscriberFeePercent">> => [integer()],
%%   <<"Description">> => [string()],
%%   <<"Encryption">> => encryption(),
%%   <<"EntitlementArn">> => [string()],
%%   <<"EntitlementStatus">> => list(any()),
%%   <<"Name">> => [string()],
%%   <<"Subscribers">> => list([string()]())
%% }
-type entitlement() :: #{binary() => any()}.


%% Example:
%% update_encryption() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"ConstantInitializationVector">> => [string()],
%%   <<"DeviceId">> => [string()],
%%   <<"KeyType">> => list(any()),
%%   <<"Region">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"RoleArn">> => [string()],
%%   <<"SecretArn">> => [string()],
%%   <<"Url">> => [string()]
%% }
-type update_encryption() :: #{binary() => any()}.


%% Example:
%% update_bridge_network_source_request() :: #{
%%   <<"MulticastIp">> => [string()],
%%   <<"MulticastSourceSettings">> => multicast_source_settings(),
%%   <<"NetworkName">> => [string()],
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any())
%% }
-type update_bridge_network_source_request() :: #{binary() => any()}.


%% Example:
%% ndi_config() :: #{
%%   <<"MachineName">> => [string()],
%%   <<"NdiDiscoveryServers">> => list(ndi_discovery_server_config()()),
%%   <<"NdiState">> => list(any())
%% }
-type ndi_config() :: #{binary() => any()}.


%% Example:
%% list_reservations_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Reservations">> => list(reservation()())
%% }
-type list_reservations_response() :: #{binary() => any()}.


%% Example:
%% input_configuration_request() :: #{
%%   <<"InputPort">> => [integer()],
%%   <<"Interface">> => interface_request()
%% }
-type input_configuration_request() :: #{binary() => any()}.


%% Example:
%% messages() :: #{
%%   <<"Errors">> => list([string()]())
%% }
-type messages() :: #{binary() => any()}.


%% Example:
%% describe_reservation_response() :: #{
%%   <<"Reservation">> => reservation()
%% }
-type describe_reservation_response() :: #{binary() => any()}.


%% Example:
%% destination_configuration_request() :: #{
%%   <<"DestinationIp">> => [string()],
%%   <<"DestinationPort">> => [integer()],
%%   <<"Interface">> => interface_request()
%% }
-type destination_configuration_request() :: #{binary() => any()}.


%% Example:
%% interface() :: #{
%%   <<"Name">> => [string()]
%% }
-type interface() :: #{binary() => any()}.


%% Example:
%% transport_media_info() :: #{
%%   <<"Programs">> => list(transport_stream_program()())
%% }
-type transport_media_info() :: #{binary() => any()}.


%% Example:
%% vpc_interface_request() :: #{
%%   <<"Name">> => [string()],
%%   <<"NetworkInterfaceType">> => list(any()),
%%   <<"RoleArn">> => [string()],
%%   <<"SecurityGroupIds">> => list([string()]()),
%%   <<"SubnetId">> => [string()]
%% }
-type vpc_interface_request() :: #{binary() => any()}.

%% Example:
%% delete_gateway_request() :: #{}
-type delete_gateway_request() :: #{}.

%% Example:
%% describe_gateway_request() :: #{}
-type describe_gateway_request() :: #{}.


%% Example:
%% list_entitlements_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_entitlements_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% describe_reservation_request() :: #{}
-type describe_reservation_request() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_error_exception() :: #{binary() => any()}.

%% Example:
%% remove_flow_vpc_interface_request() :: #{}
-type remove_flow_vpc_interface_request() :: #{}.


%% Example:
%% frame_resolution() :: #{
%%   <<"FrameHeight">> => [integer()],
%%   <<"FrameWidth">> => [integer()]
%% }
-type frame_resolution() :: #{binary() => any()}.


%% Example:
%% gateway_bridge_source() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"VpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type gateway_bridge_source() :: #{binary() => any()}.

%% Example:
%% revoke_flow_entitlement_request() :: #{}
-type revoke_flow_entitlement_request() :: #{}.


%% Example:
%% monitoring_config() :: #{
%%   <<"AudioMonitoringSettings">> => list(audio_monitoring_setting()()),
%%   <<"ContentQualityAnalysisState">> => list(any()),
%%   <<"ThumbnailState">> => list(any()),
%%   <<"VideoMonitoringSettings">> => list(video_monitoring_setting()())
%% }
-type monitoring_config() :: #{binary() => any()}.


%% Example:
%% describe_gateway_response() :: #{
%%   <<"Gateway">> => gateway()
%% }
-type describe_gateway_response() :: #{binary() => any()}.


%% Example:
%% add_bridge_output_request() :: #{
%%   <<"NetworkOutput">> => add_bridge_network_output_request()
%% }
-type add_bridge_output_request() :: #{binary() => any()}.


%% Example:
%% list_gateway_instances_request() :: #{
%%   <<"FilterArn">> => [string()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_gateway_instances_request() :: #{binary() => any()}.


%% Example:
%% update_bridge_source_request() :: #{
%%   <<"FlowSource">> => update_bridge_flow_source_request(),
%%   <<"NetworkSource">> => update_bridge_network_source_request()
%% }
-type update_bridge_source_request() :: #{binary() => any()}.


%% Example:
%% offering() :: #{
%%   <<"CurrencyCode">> => [string()],
%%   <<"Duration">> => [integer()],
%%   <<"DurationUnits">> => list(any()),
%%   <<"OfferingArn">> => [string()],
%%   <<"OfferingDescription">> => [string()],
%%   <<"PricePerUnit">> => [string()],
%%   <<"PriceUnits">> => list(any()),
%%   <<"ResourceSpecification">> => resource_specification()
%% }
-type offering() :: #{binary() => any()}.


%% Example:
%% ndi_discovery_server_config() :: #{
%%   <<"DiscoveryServerAddress">> => [string()],
%%   <<"DiscoveryServerPort">> => [integer()],
%%   <<"VpcInterfaceAdapter">> => [string()]
%% }
-type ndi_discovery_server_config() :: #{binary() => any()}.


%% Example:
%% video_monitoring_setting() :: #{
%%   <<"BlackFrames">> => black_frames(),
%%   <<"FrozenFrames">> => frozen_frames()
%% }
-type video_monitoring_setting() :: #{binary() => any()}.

%% Example:
%% remove_flow_media_stream_request() :: #{}
-type remove_flow_media_stream_request() :: #{}.


%% Example:
%% grant_entitlement_request() :: #{
%%   <<"DataTransferSubscriberFeePercent">> => [integer()],
%%   <<"Description">> => [string()],
%%   <<"Encryption">> => encryption(),
%%   <<"EntitlementStatus">> => list(any()),
%%   <<"Name">> => [string()],
%%   <<"Subscribers">> => list([string()]())
%% }
-type grant_entitlement_request() :: #{binary() => any()}.


%% Example:
%% describe_bridge_response() :: #{
%%   <<"Bridge">> => bridge()
%% }
-type describe_bridge_response() :: #{binary() => any()}.


%% Example:
%% update_flow_output_request() :: #{
%%   <<"CidrAllowList">> => list([string()]()),
%%   <<"Description">> => [string()],
%%   <<"Destination">> => [string()],
%%   <<"Encryption">> => update_encryption(),
%%   <<"MaxLatency">> => [integer()],
%%   <<"MediaStreamOutputConfigurations">> => list(media_stream_output_configuration_request()()),
%%   <<"MinLatency">> => [integer()],
%%   <<"NdiProgramName">> => [string()],
%%   <<"NdiSpeedHqQuality">> => [integer()],
%%   <<"OutputStatus">> => list(any()),
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"RemoteId">> => [string()],
%%   <<"SenderControlPort">> => [integer()],
%%   <<"SenderIpAddress">> => [string()],
%%   <<"SmoothingLatency">> => [integer()],
%%   <<"StreamId">> => [string()],
%%   <<"VpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type update_flow_output_request() :: #{binary() => any()}.


%% Example:
%% gateway_instance() :: #{
%%   <<"BridgePlacement">> => list(any()),
%%   <<"ConnectionStatus">> => list(any()),
%%   <<"GatewayArn">> => [string()],
%%   <<"GatewayInstanceArn">> => [string()],
%%   <<"InstanceId">> => [string()],
%%   <<"InstanceMessages">> => list(message_detail()()),
%%   <<"InstanceState">> => list(any()),
%%   <<"RunningBridgeCount">> => [integer()]
%% }
-type gateway_instance() :: #{binary() => any()}.


%% Example:
%% update_flow_output_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"Output">> => output()
%% }
-type update_flow_output_response() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% add_bridge_sources_request() :: #{
%%   <<"Sources">> := list(add_bridge_source_request()())
%% }
-type add_bridge_sources_request() :: #{binary() => any()}.


%% Example:
%% update_gateway_bridge_source_request() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"VpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type update_gateway_bridge_source_request() :: #{binary() => any()}.


%% Example:
%% update_flow_entitlement_response() :: #{
%%   <<"Entitlement">> => entitlement(),
%%   <<"FlowArn">> => [string()]
%% }
-type update_flow_entitlement_response() :: #{binary() => any()}.


%% Example:
%% listed_bridge() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"BridgeState">> => list(any()),
%%   <<"BridgeType">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"PlacementArn">> => [string()]
%% }
-type listed_bridge() :: #{binary() => any()}.


%% Example:
%% update_flow_response() :: #{
%%   <<"Flow">> => flow()
%% }
-type update_flow_response() :: #{binary() => any()}.


%% Example:
%% transport_stream() :: #{
%%   <<"Channels">> => [integer()],
%%   <<"Codec">> => [string()],
%%   <<"FrameRate">> => [string()],
%%   <<"FrameResolution">> => frame_resolution(),
%%   <<"Pid">> => [integer()],
%%   <<"SampleRate">> => [integer()],
%%   <<"SampleSize">> => [integer()],
%%   <<"StreamType">> => [string()]
%% }
-type transport_stream() :: #{binary() => any()}.


%% Example:
%% revoke_flow_entitlement_response() :: #{
%%   <<"EntitlementArn">> => [string()],
%%   <<"FlowArn">> => [string()]
%% }
-type revoke_flow_entitlement_response() :: #{binary() => any()}.


%% Example:
%% bridge_flow_output() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"FlowSourceArn">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type bridge_flow_output() :: #{binary() => any()}.


%% Example:
%% update_flow_media_stream_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"MediaStream">> => media_stream()
%% }
-type update_flow_media_stream_response() :: #{binary() => any()}.


%% Example:
%% add_flow_outputs_request() :: #{
%%   <<"Outputs">> := list(add_output_request()())
%% }
-type add_flow_outputs_request() :: #{binary() => any()}.


%% Example:
%% describe_flow_response() :: #{
%%   <<"Flow">> => flow(),
%%   <<"Messages">> => messages()
%% }
-type describe_flow_response() :: #{binary() => any()}.


%% Example:
%% flow() :: #{
%%   <<"AvailabilityZone">> => [string()],
%%   <<"Description">> => [string()],
%%   <<"EgressIp">> => [string()],
%%   <<"Entitlements">> => list(entitlement()()),
%%   <<"FlowArn">> => [string()],
%%   <<"FlowSize">> => list(any()),
%%   <<"Maintenance">> => maintenance(),
%%   <<"MediaStreams">> => list(media_stream()()),
%%   <<"Name">> => [string()],
%%   <<"NdiConfig">> => ndi_config(),
%%   <<"Outputs">> => list(output()()),
%%   <<"Source">> => source(),
%%   <<"SourceFailoverConfig">> => failover_config(),
%%   <<"SourceMonitoringConfig">> => monitoring_config(),
%%   <<"Sources">> => list(source()()),
%%   <<"Status">> => list(any()),
%%   <<"VpcInterfaces">> => list(vpc_interface()())
%% }
-type flow() :: #{binary() => any()}.


%% Example:
%% set_source_request() :: #{
%%   <<"Decryption">> => encryption(),
%%   <<"Description">> => [string()],
%%   <<"EntitlementArn">> => [string()],
%%   <<"GatewayBridgeSource">> => set_gateway_bridge_source_request(),
%%   <<"IngestPort">> => [integer()],
%%   <<"MaxBitrate">> => [integer()],
%%   <<"MaxLatency">> => [integer()],
%%   <<"MaxSyncBuffer">> => [integer()],
%%   <<"MediaStreamSourceConfigurations">> => list(media_stream_source_configuration_request()()),
%%   <<"MinLatency">> => [integer()],
%%   <<"Name">> => [string()],
%%   <<"Protocol">> => list(any()),
%%   <<"SenderControlPort">> => [integer()],
%%   <<"SenderIpAddress">> => [string()],
%%   <<"SourceListenerAddress">> => [string()],
%%   <<"SourceListenerPort">> => [integer()],
%%   <<"StreamId">> => [string()],
%%   <<"VpcInterfaceName">> => [string()],
%%   <<"WhitelistCidr">> => [string()]
%% }
-type set_source_request() :: #{binary() => any()}.


%% Example:
%% listed_gateway_instance() :: #{
%%   <<"GatewayArn">> => [string()],
%%   <<"GatewayInstanceArn">> => [string()],
%%   <<"InstanceId">> => [string()],
%%   <<"InstanceState">> => list(any())
%% }
-type listed_gateway_instance() :: #{binary() => any()}.


%% Example:
%% list_gateways_response() :: #{
%%   <<"Gateways">> => list(listed_gateway()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_gateways_response() :: #{binary() => any()}.


%% Example:
%% deregister_gateway_instance_request() :: #{
%%   <<"Force">> => [boolean()]
%% }
-type deregister_gateway_instance_request() :: #{binary() => any()}.


%% Example:
%% failover_config() :: #{
%%   <<"FailoverMode">> => list(any()),
%%   <<"RecoveryWindow">> => [integer()],
%%   <<"SourcePriority">> => source_priority(),
%%   <<"State">> => list(any())
%% }
-type failover_config() :: #{binary() => any()}.


%% Example:
%% add_bridge_network_output_request() :: #{
%%   <<"IpAddress">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"NetworkName">> => [string()],
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"Ttl">> => [integer()]
%% }
-type add_bridge_network_output_request() :: #{binary() => any()}.


%% Example:
%% black_frames() :: #{
%%   <<"State">> => list(any()),
%%   <<"ThresholdSeconds">> => [integer()]
%% }
-type black_frames() :: #{binary() => any()}.


%% Example:
%% describe_offering_response() :: #{
%%   <<"Offering">> => offering()
%% }
-type describe_offering_response() :: #{binary() => any()}.


%% Example:
%% add_flow_vpc_interfaces_response() :: #{
%%   <<"FlowArn">> => [string()],
%%   <<"VpcInterfaces">> => list(vpc_interface()())
%% }
-type add_flow_vpc_interfaces_response() :: #{binary() => any()}.


%% Example:
%% list_bridges_response() :: #{
%%   <<"Bridges">> => list(listed_bridge()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_bridges_response() :: #{binary() => any()}.

%% Example:
%% stop_flow_request() :: #{}
-type stop_flow_request() :: #{}.

%% Example:
%% remove_flow_output_request() :: #{}
-type remove_flow_output_request() :: #{}.


%% Example:
%% update_flow_entitlement_request() :: #{
%%   <<"Description">> => [string()],
%%   <<"Encryption">> => update_encryption(),
%%   <<"EntitlementStatus">> => list(any()),
%%   <<"Subscribers">> => list([string()]())
%% }
-type update_flow_entitlement_request() :: #{binary() => any()}.


%% Example:
%% add_flow_media_streams_request() :: #{
%%   <<"MediaStreams">> := list(add_media_stream_request()())
%% }
-type add_flow_media_streams_request() :: #{binary() => any()}.

%% Example:
%% describe_offering_request() :: #{}
-type describe_offering_request() :: #{}.


%% Example:
%% vpc_interface_attachment() :: #{
%%   <<"VpcInterfaceName">> => [string()]
%% }
-type vpc_interface_attachment() :: #{binary() => any()}.


%% Example:
%% output() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"BridgePorts">> => list([integer()]()),
%%   <<"DataTransferSubscriberFeePercent">> => [integer()],
%%   <<"Description">> => [string()],
%%   <<"Destination">> => [string()],
%%   <<"Encryption">> => encryption(),
%%   <<"EntitlementArn">> => [string()],
%%   <<"ListenerAddress">> => [string()],
%%   <<"MediaLiveInputArn">> => [string()],
%%   <<"MediaStreamOutputConfigurations">> => list(media_stream_output_configuration()()),
%%   <<"Name">> => [string()],
%%   <<"OutputArn">> => [string()],
%%   <<"OutputStatus">> => list(any()),
%%   <<"Port">> => [integer()],
%%   <<"Transport">> => transport(),
%%   <<"VpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type output() :: #{binary() => any()}.


%% Example:
%% purchase_offering_response() :: #{
%%   <<"Reservation">> => reservation()
%% }
-type purchase_offering_response() :: #{binary() => any()}.


%% Example:
%% destination_configuration() :: #{
%%   <<"DestinationIp">> => [string()],
%%   <<"DestinationPort">> => [integer()],
%%   <<"Interface">> => interface(),
%%   <<"OutboundIp">> => [string()]
%% }
-type destination_configuration() :: #{binary() => any()}.


%% Example:
%% purchase_offering_request() :: #{
%%   <<"ReservationName">> := [string()],
%%   <<"Start">> := [string()]
%% }
-type purchase_offering_request() :: #{binary() => any()}.


%% Example:
%% update_bridge_output_response() :: #{
%%   <<"BridgeArn">> => [string()],
%%   <<"Output">> => bridge_output()
%% }
-type update_bridge_output_response() :: #{binary() => any()}.


%% Example:
%% media_stream_source_configuration() :: #{
%%   <<"EncodingName">> => list(any()),
%%   <<"InputConfigurations">> => list(input_configuration()()),
%%   <<"MediaStreamName">> => [string()]
%% }
-type media_stream_source_configuration() :: #{binary() => any()}.


%% Example:
%% bridge_source() :: #{
%%   <<"FlowSource">> => bridge_flow_source(),
%%   <<"NetworkSource">> => bridge_network_source()
%% }
-type bridge_source() :: #{binary() => any()}.


%% Example:
%% add_output_request() :: #{
%%   <<"CidrAllowList">> => list([string()]()),
%%   <<"Description">> => [string()],
%%   <<"Destination">> => [string()],
%%   <<"Encryption">> => encryption(),
%%   <<"MaxLatency">> => [integer()],
%%   <<"MediaStreamOutputConfigurations">> => list(media_stream_output_configuration_request()()),
%%   <<"MinLatency">> => [integer()],
%%   <<"Name">> => [string()],
%%   <<"NdiProgramName">> => [string()],
%%   <<"NdiSpeedHqQuality">> => [integer()],
%%   <<"OutputStatus">> => list(any()),
%%   <<"Port">> => [integer()],
%%   <<"Protocol">> => list(any()),
%%   <<"RemoteId">> => [string()],
%%   <<"SenderControlPort">> => [integer()],
%%   <<"SmoothingLatency">> => [integer()],
%%   <<"StreamId">> => [string()],
%%   <<"VpcInterfaceAttachment">> => vpc_interface_attachment()
%% }
-type add_output_request() :: #{binary() => any()}.

-type add_bridge_outputs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type add_bridge_sources_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type add_flow_media_streams_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type add_flow_outputs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    add_flow_outputs420_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type add_flow_sources_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type add_flow_vpc_interfaces_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_bridge_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    create_bridge420_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_flow_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    too_many_requests_exception() | 
    create_flow420_exception() | 
    forbidden_exception().

-type create_gateway_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    create_gateway420_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_bridge_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_flow_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_gateway_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type deregister_gateway_instance_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_bridge_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_flow_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_flow_source_metadata_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_flow_source_thumbnail_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_gateway_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_gateway_instance_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_offering_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type describe_reservation_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type grant_flow_entitlements_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    grant_flow_entitlements420_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_bridges_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type list_entitlements_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    too_many_requests_exception().

-type list_flows_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    too_many_requests_exception().

-type list_gateway_instances_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type list_gateways_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type list_offerings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    too_many_requests_exception().

-type list_reservations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type purchase_offering_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type remove_bridge_output_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type remove_bridge_source_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type remove_flow_media_stream_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type remove_flow_output_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type remove_flow_source_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type remove_flow_vpc_interface_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type revoke_flow_entitlement_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type start_flow_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type stop_flow_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type update_bridge_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_bridge_output_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_bridge_source_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_bridge_state_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_flow_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_flow_entitlement_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_flow_media_stream_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_flow_output_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_flow_source_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_gateway_instance_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds outputs to an existing bridge.
-spec add_bridge_outputs(aws_client:aws_client(), binary() | list(), add_bridge_outputs_request()) ->
    {ok, add_bridge_outputs_response(), tuple()} |
    {error, any()} |
    {error, add_bridge_outputs_errors(), tuple()}.
add_bridge_outputs(Client, BridgeArn, Input) ->
    add_bridge_outputs(Client, BridgeArn, Input, []).

-spec add_bridge_outputs(aws_client:aws_client(), binary() | list(), add_bridge_outputs_request(), proplists:proplist()) ->
    {ok, add_bridge_outputs_response(), tuple()} |
    {error, any()} |
    {error, add_bridge_outputs_errors(), tuple()}.
add_bridge_outputs(Client, BridgeArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/outputs"],
    SuccessStatusCode = 202,
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

%% @doc Adds sources to an existing bridge.
-spec add_bridge_sources(aws_client:aws_client(), binary() | list(), add_bridge_sources_request()) ->
    {ok, add_bridge_sources_response(), tuple()} |
    {error, any()} |
    {error, add_bridge_sources_errors(), tuple()}.
add_bridge_sources(Client, BridgeArn, Input) ->
    add_bridge_sources(Client, BridgeArn, Input, []).

-spec add_bridge_sources(aws_client:aws_client(), binary() | list(), add_bridge_sources_request(), proplists:proplist()) ->
    {ok, add_bridge_sources_response(), tuple()} |
    {error, any()} |
    {error, add_bridge_sources_errors(), tuple()}.
add_bridge_sources(Client, BridgeArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/sources"],
    SuccessStatusCode = 202,
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

%% @doc Adds media streams to an existing flow.
%%
%% After you add a media stream to a flow, you can associate it with a source
%% and/or an output that uses the ST 2110 JPEG XS or CDI protocol.
-spec add_flow_media_streams(aws_client:aws_client(), binary() | list(), add_flow_media_streams_request()) ->
    {ok, add_flow_media_streams_response(), tuple()} |
    {error, any()} |
    {error, add_flow_media_streams_errors(), tuple()}.
add_flow_media_streams(Client, FlowArn, Input) ->
    add_flow_media_streams(Client, FlowArn, Input, []).

-spec add_flow_media_streams(aws_client:aws_client(), binary() | list(), add_flow_media_streams_request(), proplists:proplist()) ->
    {ok, add_flow_media_streams_response(), tuple()} |
    {error, any()} |
    {error, add_flow_media_streams_errors(), tuple()}.
add_flow_media_streams(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/mediaStreams"],
    SuccessStatusCode = 201,
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

%% @doc Adds outputs to an existing flow.
%%
%% You can create up to 50 outputs per flow.
-spec add_flow_outputs(aws_client:aws_client(), binary() | list(), add_flow_outputs_request()) ->
    {ok, add_flow_outputs_response(), tuple()} |
    {error, any()} |
    {error, add_flow_outputs_errors(), tuple()}.
add_flow_outputs(Client, FlowArn, Input) ->
    add_flow_outputs(Client, FlowArn, Input, []).

-spec add_flow_outputs(aws_client:aws_client(), binary() | list(), add_flow_outputs_request(), proplists:proplist()) ->
    {ok, add_flow_outputs_response(), tuple()} |
    {error, any()} |
    {error, add_flow_outputs_errors(), tuple()}.
add_flow_outputs(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/outputs"],
    SuccessStatusCode = 201,
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

%% @doc Adds sources to a flow.
-spec add_flow_sources(aws_client:aws_client(), binary() | list(), add_flow_sources_request()) ->
    {ok, add_flow_sources_response(), tuple()} |
    {error, any()} |
    {error, add_flow_sources_errors(), tuple()}.
add_flow_sources(Client, FlowArn, Input) ->
    add_flow_sources(Client, FlowArn, Input, []).

-spec add_flow_sources(aws_client:aws_client(), binary() | list(), add_flow_sources_request(), proplists:proplist()) ->
    {ok, add_flow_sources_response(), tuple()} |
    {error, any()} |
    {error, add_flow_sources_errors(), tuple()}.
add_flow_sources(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source"],
    SuccessStatusCode = 201,
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

%% @doc Adds VPC interfaces to a flow.
-spec add_flow_vpc_interfaces(aws_client:aws_client(), binary() | list(), add_flow_vpc_interfaces_request()) ->
    {ok, add_flow_vpc_interfaces_response(), tuple()} |
    {error, any()} |
    {error, add_flow_vpc_interfaces_errors(), tuple()}.
add_flow_vpc_interfaces(Client, FlowArn, Input) ->
    add_flow_vpc_interfaces(Client, FlowArn, Input, []).

-spec add_flow_vpc_interfaces(aws_client:aws_client(), binary() | list(), add_flow_vpc_interfaces_request(), proplists:proplist()) ->
    {ok, add_flow_vpc_interfaces_response(), tuple()} |
    {error, any()} |
    {error, add_flow_vpc_interfaces_errors(), tuple()}.
add_flow_vpc_interfaces(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/vpcInterfaces"],
    SuccessStatusCode = 201,
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

%% @doc Creates a new bridge.
%%
%% The request must include one source.
-spec create_bridge(aws_client:aws_client(), create_bridge_request()) ->
    {ok, create_bridge_response(), tuple()} |
    {error, any()} |
    {error, create_bridge_errors(), tuple()}.
create_bridge(Client, Input) ->
    create_bridge(Client, Input, []).

-spec create_bridge(aws_client:aws_client(), create_bridge_request(), proplists:proplist()) ->
    {ok, create_bridge_response(), tuple()} |
    {error, any()} |
    {error, create_bridge_errors(), tuple()}.
create_bridge(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/bridges"],
    SuccessStatusCode = 201,
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

%% @doc Creates a new flow.
%%
%% The request must include one source. The request optionally can include
%% outputs (up to 50) and entitlements (up to 50).
-spec create_flow(aws_client:aws_client(), create_flow_request()) ->
    {ok, create_flow_response(), tuple()} |
    {error, any()} |
    {error, create_flow_errors(), tuple()}.
create_flow(Client, Input) ->
    create_flow(Client, Input, []).

-spec create_flow(aws_client:aws_client(), create_flow_request(), proplists:proplist()) ->
    {ok, create_flow_response(), tuple()} |
    {error, any()} |
    {error, create_flow_errors(), tuple()}.
create_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows"],
    SuccessStatusCode = 201,
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

%% @doc Creates a new gateway.
%%
%% The request must include at least one network (up to four).
-spec create_gateway(aws_client:aws_client(), create_gateway_request()) ->
    {ok, create_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_errors(), tuple()}.
create_gateway(Client, Input) ->
    create_gateway(Client, Input, []).

-spec create_gateway(aws_client:aws_client(), create_gateway_request(), proplists:proplist()) ->
    {ok, create_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_errors(), tuple()}.
create_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/gateways"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a bridge.
%%
%% Before you can delete a bridge, you must stop the bridge.
-spec delete_bridge(aws_client:aws_client(), binary() | list(), delete_bridge_request()) ->
    {ok, delete_bridge_response(), tuple()} |
    {error, any()} |
    {error, delete_bridge_errors(), tuple()}.
delete_bridge(Client, BridgeArn, Input) ->
    delete_bridge(Client, BridgeArn, Input, []).

-spec delete_bridge(aws_client:aws_client(), binary() | list(), delete_bridge_request(), proplists:proplist()) ->
    {ok, delete_bridge_response(), tuple()} |
    {error, any()} |
    {error, delete_bridge_errors(), tuple()}.
delete_bridge(Client, BridgeArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), ""],
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

%% @doc Deletes a flow.
%%
%% Before you can delete a flow, you must stop the flow.
-spec delete_flow(aws_client:aws_client(), binary() | list(), delete_flow_request()) ->
    {ok, delete_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_errors(), tuple()}.
delete_flow(Client, FlowArn, Input) ->
    delete_flow(Client, FlowArn, Input, []).

-spec delete_flow(aws_client:aws_client(), binary() | list(), delete_flow_request(), proplists:proplist()) ->
    {ok, delete_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_errors(), tuple()}.
delete_flow(Client, FlowArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a gateway.
%%
%% Before you can delete a gateway, you must deregister its instances and
%% delete its bridges.
-spec delete_gateway(aws_client:aws_client(), binary() | list(), delete_gateway_request()) ->
    {ok, delete_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, GatewayArn, Input) ->
    delete_gateway(Client, GatewayArn, Input, []).

-spec delete_gateway(aws_client:aws_client(), binary() | list(), delete_gateway_request(), proplists:proplist()) ->
    {ok, delete_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, GatewayArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/gateways/", aws_util:encode_uri(GatewayArn), ""],
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

%% @doc Deregisters an instance.
%%
%% Before you deregister an instance, all bridges running on the instance
%% must be stopped. If you want to deregister an instance without stopping
%% the bridges, you must use the --force option.
-spec deregister_gateway_instance(aws_client:aws_client(), binary() | list(), deregister_gateway_instance_request()) ->
    {ok, deregister_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, deregister_gateway_instance_errors(), tuple()}.
deregister_gateway_instance(Client, GatewayInstanceArn, Input) ->
    deregister_gateway_instance(Client, GatewayInstanceArn, Input, []).

-spec deregister_gateway_instance(aws_client:aws_client(), binary() | list(), deregister_gateway_instance_request(), proplists:proplist()) ->
    {ok, deregister_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, deregister_gateway_instance_errors(), tuple()}.
deregister_gateway_instance(Client, GatewayInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/gateway-instances/", aws_util:encode_uri(GatewayInstanceArn), ""],
    SuccessStatusCode = 202,
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
                     {<<"force">>, <<"Force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Displays the details of a bridge.
-spec describe_bridge(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_bridge_response(), tuple()} |
    {error, any()} |
    {error, describe_bridge_errors(), tuple()}.
describe_bridge(Client, BridgeArn)
  when is_map(Client) ->
    describe_bridge(Client, BridgeArn, #{}, #{}).

-spec describe_bridge(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_bridge_response(), tuple()} |
    {error, any()} |
    {error, describe_bridge_errors(), tuple()}.
describe_bridge(Client, BridgeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bridge(Client, BridgeArn, QueryMap, HeadersMap, []).

-spec describe_bridge(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bridge_response(), tuple()} |
    {error, any()} |
    {error, describe_bridge_errors(), tuple()}.
describe_bridge(Client, BridgeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details of a flow.
%%
%% The response includes the flow Amazon Resource Name (ARN),
%% name, and Availability Zone, as well as details about the source, outputs,
%% and
%% entitlements.
-spec describe_flow(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_errors(), tuple()}.
describe_flow(Client, FlowArn)
  when is_map(Client) ->
    describe_flow(Client, FlowArn, #{}, #{}).

-spec describe_flow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_errors(), tuple()}.
describe_flow(Client, FlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_flow(Client, FlowArn, QueryMap, HeadersMap, []).

-spec describe_flow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_errors(), tuple()}.
describe_flow(Client, FlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), ""],
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
%% The `DescribeFlowSourceMetadata' API is used to view information about
%% the flow's source transport stream and programs.
%%
%% This API displays status messages about the flow's source as well as
%% details about the program's video, audio, and other data.
-spec describe_flow_source_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_flow_source_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_source_metadata_errors(), tuple()}.
describe_flow_source_metadata(Client, FlowArn)
  when is_map(Client) ->
    describe_flow_source_metadata(Client, FlowArn, #{}, #{}).

-spec describe_flow_source_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_flow_source_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_source_metadata_errors(), tuple()}.
describe_flow_source_metadata(Client, FlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_flow_source_metadata(Client, FlowArn, QueryMap, HeadersMap, []).

-spec describe_flow_source_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_flow_source_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_source_metadata_errors(), tuple()}.
describe_flow_source_metadata(Client, FlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source-metadata"],
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
%% Describes the thumbnail for the flow source.
-spec describe_flow_source_thumbnail(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_flow_source_thumbnail_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_source_thumbnail_errors(), tuple()}.
describe_flow_source_thumbnail(Client, FlowArn)
  when is_map(Client) ->
    describe_flow_source_thumbnail(Client, FlowArn, #{}, #{}).

-spec describe_flow_source_thumbnail(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_flow_source_thumbnail_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_source_thumbnail_errors(), tuple()}.
describe_flow_source_thumbnail(Client, FlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_flow_source_thumbnail(Client, FlowArn, QueryMap, HeadersMap, []).

-spec describe_flow_source_thumbnail(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_flow_source_thumbnail_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_source_thumbnail_errors(), tuple()}.
describe_flow_source_thumbnail(Client, FlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source-thumbnail"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details of a gateway.
%%
%% The response includes the gateway Amazon Resource Name
%% (ARN), name, and CIDR blocks, as well as details about the networks.
-spec describe_gateway(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_gateway_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_errors(), tuple()}.
describe_gateway(Client, GatewayArn)
  when is_map(Client) ->
    describe_gateway(Client, GatewayArn, #{}, #{}).

-spec describe_gateway(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_gateway_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_errors(), tuple()}.
describe_gateway(Client, GatewayArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway(Client, GatewayArn, QueryMap, HeadersMap, []).

-spec describe_gateway(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_gateway_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_errors(), tuple()}.
describe_gateway(Client, GatewayArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/gateways/", aws_util:encode_uri(GatewayArn), ""],
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
%% Displays the details of an instance.
-spec describe_gateway_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_instance_errors(), tuple()}.
describe_gateway_instance(Client, GatewayInstanceArn)
  when is_map(Client) ->
    describe_gateway_instance(Client, GatewayInstanceArn, #{}, #{}).

-spec describe_gateway_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_instance_errors(), tuple()}.
describe_gateway_instance(Client, GatewayInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway_instance(Client, GatewayInstanceArn, QueryMap, HeadersMap, []).

-spec describe_gateway_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_instance_errors(), tuple()}.
describe_gateway_instance(Client, GatewayInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/gateway-instances/", aws_util:encode_uri(GatewayInstanceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details of an offering.
%%
%% The response includes the offering description, duration, outbound
%% bandwidth, price, and Amazon Resource Name (ARN).
-spec describe_offering(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_offering_response(), tuple()} |
    {error, any()} |
    {error, describe_offering_errors(), tuple()}.
describe_offering(Client, OfferingArn)
  when is_map(Client) ->
    describe_offering(Client, OfferingArn, #{}, #{}).

-spec describe_offering(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_offering_response(), tuple()} |
    {error, any()} |
    {error, describe_offering_errors(), tuple()}.
describe_offering(Client, OfferingArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_offering(Client, OfferingArn, QueryMap, HeadersMap, []).

-spec describe_offering(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_offering_response(), tuple()} |
    {error, any()} |
    {error, describe_offering_errors(), tuple()}.
describe_offering(Client, OfferingArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/offerings/", aws_util:encode_uri(OfferingArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details of a reservation.
%%
%% The response includes the reservation name, state, start date and time,
%% and the details of the offering that make up the rest of the reservation
%% (such as price, duration, and outbound bandwidth).
-spec describe_reservation(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_reservation_response(), tuple()} |
    {error, any()} |
    {error, describe_reservation_errors(), tuple()}.
describe_reservation(Client, ReservationArn)
  when is_map(Client) ->
    describe_reservation(Client, ReservationArn, #{}, #{}).

-spec describe_reservation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_reservation_response(), tuple()} |
    {error, any()} |
    {error, describe_reservation_errors(), tuple()}.
describe_reservation(Client, ReservationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reservation(Client, ReservationArn, QueryMap, HeadersMap, []).

-spec describe_reservation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_reservation_response(), tuple()} |
    {error, any()} |
    {error, describe_reservation_errors(), tuple()}.
describe_reservation(Client, ReservationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/reservations/", aws_util:encode_uri(ReservationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants entitlements to an existing flow.
-spec grant_flow_entitlements(aws_client:aws_client(), binary() | list(), grant_flow_entitlements_request()) ->
    {ok, grant_flow_entitlements_response(), tuple()} |
    {error, any()} |
    {error, grant_flow_entitlements_errors(), tuple()}.
grant_flow_entitlements(Client, FlowArn, Input) ->
    grant_flow_entitlements(Client, FlowArn, Input, []).

-spec grant_flow_entitlements(aws_client:aws_client(), binary() | list(), grant_flow_entitlements_request(), proplists:proplist()) ->
    {ok, grant_flow_entitlements_response(), tuple()} |
    {error, any()} |
    {error, grant_flow_entitlements_errors(), tuple()}.
grant_flow_entitlements(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/entitlements"],
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

%% @doc Displays a list of bridges that are associated with this account and
%% an optionally
%% specified Amazon Resource Name (ARN).
%%
%% This request returns a paginated result.
-spec list_bridges(aws_client:aws_client()) ->
    {ok, list_bridges_response(), tuple()} |
    {error, any()} |
    {error, list_bridges_errors(), tuple()}.
list_bridges(Client)
  when is_map(Client) ->
    list_bridges(Client, #{}, #{}).

-spec list_bridges(aws_client:aws_client(), map(), map()) ->
    {ok, list_bridges_response(), tuple()} |
    {error, any()} |
    {error, list_bridges_errors(), tuple()}.
list_bridges(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bridges(Client, QueryMap, HeadersMap, []).

-spec list_bridges(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_bridges_response(), tuple()} |
    {error, any()} |
    {error, list_bridges_errors(), tuple()}.
list_bridges(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/bridges"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filterArn">>, maps:get(<<"filterArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of all entitlements that have been granted to this
%% account.
%%
%% This request returns 20 results per page.
-spec list_entitlements(aws_client:aws_client()) ->
    {ok, list_entitlements_response(), tuple()} |
    {error, any()} |
    {error, list_entitlements_errors(), tuple()}.
list_entitlements(Client)
  when is_map(Client) ->
    list_entitlements(Client, #{}, #{}).

-spec list_entitlements(aws_client:aws_client(), map(), map()) ->
    {ok, list_entitlements_response(), tuple()} |
    {error, any()} |
    {error, list_entitlements_errors(), tuple()}.
list_entitlements(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_entitlements(Client, QueryMap, HeadersMap, []).

-spec list_entitlements(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_entitlements_response(), tuple()} |
    {error, any()} |
    {error, list_entitlements_errors(), tuple()}.
list_entitlements(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/entitlements"],
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

%% @doc Displays a list of flows that are associated with this account.
%%
%% This request returns a paginated result.
-spec list_flows(aws_client:aws_client()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client)
  when is_map(Client) ->
    list_flows(Client, #{}, #{}).

-spec list_flows(aws_client:aws_client(), map(), map()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_flows(Client, QueryMap, HeadersMap, []).

-spec list_flows(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/flows"],
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

%% @doc Displays a list of instances associated with the Amazon Web Services
%% account.
%%
%% This request returns a paginated result. You can use the filterArn
%% property to display only the instances associated with the selected
%% Gateway Amazon Resource Name (ARN).
-spec list_gateway_instances(aws_client:aws_client()) ->
    {ok, list_gateway_instances_response(), tuple()} |
    {error, any()} |
    {error, list_gateway_instances_errors(), tuple()}.
list_gateway_instances(Client)
  when is_map(Client) ->
    list_gateway_instances(Client, #{}, #{}).

-spec list_gateway_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_gateway_instances_response(), tuple()} |
    {error, any()} |
    {error, list_gateway_instances_errors(), tuple()}.
list_gateway_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateway_instances(Client, QueryMap, HeadersMap, []).

-spec list_gateway_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_gateway_instances_response(), tuple()} |
    {error, any()} |
    {error, list_gateway_instances_errors(), tuple()}.
list_gateway_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/gateway-instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filterArn">>, maps:get(<<"filterArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of gateways that are associated with this account.
%%
%% This request returns a paginated result.
-spec list_gateways(aws_client:aws_client()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client)
  when is_map(Client) ->
    list_gateways(Client, #{}, #{}).

-spec list_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateways(Client, QueryMap, HeadersMap, []).

-spec list_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/gateways"],
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

%% @doc Displays a list of all offerings that are available to this account
%% in the current Amazon Web Services Region.
%%
%% If you have an active reservation (which means you've purchased an
%% offering that has already started and hasn't expired yet), your
%% account isn't eligible for other offerings.
-spec list_offerings(aws_client:aws_client()) ->
    {ok, list_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client)
  when is_map(Client) ->
    list_offerings(Client, #{}, #{}).

-spec list_offerings(aws_client:aws_client(), map(), map()) ->
    {ok, list_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_offerings(Client, QueryMap, HeadersMap, []).

-spec list_offerings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/offerings"],
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

%% @doc Displays a list of all reservations that have been purchased by this
%% account in the current Amazon Web Services Region.
%%
%% This list includes all reservations in all states (such as active and
%% expired).
-spec list_reservations(aws_client:aws_client()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client)
  when is_map(Client) ->
    list_reservations(Client, #{}, #{}).

-spec list_reservations(aws_client:aws_client(), map(), map()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_reservations(Client, QueryMap, HeadersMap, []).

-spec list_reservations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/reservations"],
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

%% @doc List all tags on a MediaConnect resource.
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

%% @doc Submits a request to purchase an offering.
%%
%% If you already have an active reservation, you can't purchase another
%% offering.
-spec purchase_offering(aws_client:aws_client(), binary() | list(), purchase_offering_request()) ->
    {ok, purchase_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_offering_errors(), tuple()}.
purchase_offering(Client, OfferingArn, Input) ->
    purchase_offering(Client, OfferingArn, Input, []).

-spec purchase_offering(aws_client:aws_client(), binary() | list(), purchase_offering_request(), proplists:proplist()) ->
    {ok, purchase_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_offering_errors(), tuple()}.
purchase_offering(Client, OfferingArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/offerings/", aws_util:encode_uri(OfferingArn), ""],
    SuccessStatusCode = 201,
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

%% @doc Removes an output from a bridge.
-spec remove_bridge_output(aws_client:aws_client(), binary() | list(), binary() | list(), remove_bridge_output_request()) ->
    {ok, remove_bridge_output_response(), tuple()} |
    {error, any()} |
    {error, remove_bridge_output_errors(), tuple()}.
remove_bridge_output(Client, BridgeArn, OutputName, Input) ->
    remove_bridge_output(Client, BridgeArn, OutputName, Input, []).

-spec remove_bridge_output(aws_client:aws_client(), binary() | list(), binary() | list(), remove_bridge_output_request(), proplists:proplist()) ->
    {ok, remove_bridge_output_response(), tuple()} |
    {error, any()} |
    {error, remove_bridge_output_errors(), tuple()}.
remove_bridge_output(Client, BridgeArn, OutputName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/outputs/", aws_util:encode_uri(OutputName), ""],
    SuccessStatusCode = 202,
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

%% @doc Removes a source from a bridge.
-spec remove_bridge_source(aws_client:aws_client(), binary() | list(), binary() | list(), remove_bridge_source_request()) ->
    {ok, remove_bridge_source_response(), tuple()} |
    {error, any()} |
    {error, remove_bridge_source_errors(), tuple()}.
remove_bridge_source(Client, BridgeArn, SourceName, Input) ->
    remove_bridge_source(Client, BridgeArn, SourceName, Input, []).

-spec remove_bridge_source(aws_client:aws_client(), binary() | list(), binary() | list(), remove_bridge_source_request(), proplists:proplist()) ->
    {ok, remove_bridge_source_response(), tuple()} |
    {error, any()} |
    {error, remove_bridge_source_errors(), tuple()}.
remove_bridge_source(Client, BridgeArn, SourceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/sources/", aws_util:encode_uri(SourceName), ""],
    SuccessStatusCode = 202,
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

%% @doc Removes a media stream from a flow.
%%
%% This action is only available if the media stream is not associated with a
%% source or output.
-spec remove_flow_media_stream(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_media_stream_request()) ->
    {ok, remove_flow_media_stream_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_media_stream_errors(), tuple()}.
remove_flow_media_stream(Client, FlowArn, MediaStreamName, Input) ->
    remove_flow_media_stream(Client, FlowArn, MediaStreamName, Input, []).

-spec remove_flow_media_stream(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_media_stream_request(), proplists:proplist()) ->
    {ok, remove_flow_media_stream_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_media_stream_errors(), tuple()}.
remove_flow_media_stream(Client, FlowArn, MediaStreamName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/mediaStreams/", aws_util:encode_uri(MediaStreamName), ""],
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

%% @doc Removes an output from an existing flow.
%%
%% This request can be made only on an output that does not have an
%% entitlement associated with it. If the output has an entitlement, you must
%% revoke the entitlement instead. When an entitlement is revoked from a
%% flow, the service automatically removes the associated output.
-spec remove_flow_output(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_output_request()) ->
    {ok, remove_flow_output_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_output_errors(), tuple()}.
remove_flow_output(Client, FlowArn, OutputArn, Input) ->
    remove_flow_output(Client, FlowArn, OutputArn, Input, []).

-spec remove_flow_output(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_output_request(), proplists:proplist()) ->
    {ok, remove_flow_output_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_output_errors(), tuple()}.
remove_flow_output(Client, FlowArn, OutputArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/outputs/", aws_util:encode_uri(OutputArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Removes a source from an existing flow.
%%
%% This request can be made only if there is more than one source on the
%% flow.
-spec remove_flow_source(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_source_request()) ->
    {ok, remove_flow_source_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_source_errors(), tuple()}.
remove_flow_source(Client, FlowArn, SourceArn, Input) ->
    remove_flow_source(Client, FlowArn, SourceArn, Input, []).

-spec remove_flow_source(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_source_request(), proplists:proplist()) ->
    {ok, remove_flow_source_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_source_errors(), tuple()}.
remove_flow_source(Client, FlowArn, SourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source/", aws_util:encode_uri(SourceArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Removes a VPC Interface from an existing flow.
%%
%% This request can be made only on a VPC interface that does not have a
%% Source or Output associated with it. If the VPC interface is referenced by
%% a Source or Output, you must first delete or update the Source or Output
%% to no longer reference the VPC interface.
-spec remove_flow_vpc_interface(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_vpc_interface_request()) ->
    {ok, remove_flow_vpc_interface_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_vpc_interface_errors(), tuple()}.
remove_flow_vpc_interface(Client, FlowArn, VpcInterfaceName, Input) ->
    remove_flow_vpc_interface(Client, FlowArn, VpcInterfaceName, Input, []).

-spec remove_flow_vpc_interface(aws_client:aws_client(), binary() | list(), binary() | list(), remove_flow_vpc_interface_request(), proplists:proplist()) ->
    {ok, remove_flow_vpc_interface_response(), tuple()} |
    {error, any()} |
    {error, remove_flow_vpc_interface_errors(), tuple()}.
remove_flow_vpc_interface(Client, FlowArn, VpcInterfaceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/vpcInterfaces/", aws_util:encode_uri(VpcInterfaceName), ""],
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

%% @doc Revokes an entitlement from a flow.
%%
%% Once an entitlement is revoked, the content becomes unavailable to the
%% subscriber and the associated output is removed.
-spec revoke_flow_entitlement(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_flow_entitlement_request()) ->
    {ok, revoke_flow_entitlement_response(), tuple()} |
    {error, any()} |
    {error, revoke_flow_entitlement_errors(), tuple()}.
revoke_flow_entitlement(Client, EntitlementArn, FlowArn, Input) ->
    revoke_flow_entitlement(Client, EntitlementArn, FlowArn, Input, []).

-spec revoke_flow_entitlement(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_flow_entitlement_request(), proplists:proplist()) ->
    {ok, revoke_flow_entitlement_response(), tuple()} |
    {error, any()} |
    {error, revoke_flow_entitlement_errors(), tuple()}.
revoke_flow_entitlement(Client, EntitlementArn, FlowArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/entitlements/", aws_util:encode_uri(EntitlementArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Starts a flow.
-spec start_flow(aws_client:aws_client(), binary() | list(), start_flow_request()) ->
    {ok, start_flow_response(), tuple()} |
    {error, any()} |
    {error, start_flow_errors(), tuple()}.
start_flow(Client, FlowArn, Input) ->
    start_flow(Client, FlowArn, Input, []).

-spec start_flow(aws_client:aws_client(), binary() | list(), start_flow_request(), proplists:proplist()) ->
    {ok, start_flow_response(), tuple()} |
    {error, any()} |
    {error, start_flow_errors(), tuple()}.
start_flow(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/start/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Stops a flow.
-spec stop_flow(aws_client:aws_client(), binary() | list(), stop_flow_request()) ->
    {ok, stop_flow_response(), tuple()} |
    {error, any()} |
    {error, stop_flow_errors(), tuple()}.
stop_flow(Client, FlowArn, Input) ->
    stop_flow(Client, FlowArn, Input, []).

-spec stop_flow(aws_client:aws_client(), binary() | list(), stop_flow_request(), proplists:proplist()) ->
    {ok, stop_flow_response(), tuple()} |
    {error, any()} |
    {error, stop_flow_errors(), tuple()}.
stop_flow(Client, FlowArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/flows/stop/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not
%% changed. When a resource is deleted, the tags associated with that
%% resource are deleted as
%% well.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the bridge.
-spec update_bridge(aws_client:aws_client(), binary() | list(), update_bridge_request()) ->
    {ok, update_bridge_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_errors(), tuple()}.
update_bridge(Client, BridgeArn, Input) ->
    update_bridge(Client, BridgeArn, Input, []).

-spec update_bridge(aws_client:aws_client(), binary() | list(), update_bridge_request(), proplists:proplist()) ->
    {ok, update_bridge_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_errors(), tuple()}.
update_bridge(Client, BridgeArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing bridge output.
-spec update_bridge_output(aws_client:aws_client(), binary() | list(), binary() | list(), update_bridge_output_request()) ->
    {ok, update_bridge_output_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_output_errors(), tuple()}.
update_bridge_output(Client, BridgeArn, OutputName, Input) ->
    update_bridge_output(Client, BridgeArn, OutputName, Input, []).

-spec update_bridge_output(aws_client:aws_client(), binary() | list(), binary() | list(), update_bridge_output_request(), proplists:proplist()) ->
    {ok, update_bridge_output_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_output_errors(), tuple()}.
update_bridge_output(Client, BridgeArn, OutputName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/outputs/", aws_util:encode_uri(OutputName), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing bridge source.
-spec update_bridge_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_bridge_source_request()) ->
    {ok, update_bridge_source_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_source_errors(), tuple()}.
update_bridge_source(Client, BridgeArn, SourceName, Input) ->
    update_bridge_source(Client, BridgeArn, SourceName, Input, []).

-spec update_bridge_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_bridge_source_request(), proplists:proplist()) ->
    {ok, update_bridge_source_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_source_errors(), tuple()}.
update_bridge_source(Client, BridgeArn, SourceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/sources/", aws_util:encode_uri(SourceName), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates the bridge state.
-spec update_bridge_state(aws_client:aws_client(), binary() | list(), update_bridge_state_request()) ->
    {ok, update_bridge_state_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_state_errors(), tuple()}.
update_bridge_state(Client, BridgeArn, Input) ->
    update_bridge_state(Client, BridgeArn, Input, []).

-spec update_bridge_state(aws_client:aws_client(), binary() | list(), update_bridge_state_request(), proplists:proplist()) ->
    {ok, update_bridge_state_response(), tuple()} |
    {error, any()} |
    {error, update_bridge_state_errors(), tuple()}.
update_bridge_state(Client, BridgeArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/bridges/", aws_util:encode_uri(BridgeArn), "/state"],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing flow.
-spec update_flow(aws_client:aws_client(), binary() | list(), update_flow_request()) ->
    {ok, update_flow_response(), tuple()} |
    {error, any()} |
    {error, update_flow_errors(), tuple()}.
update_flow(Client, FlowArn, Input) ->
    update_flow(Client, FlowArn, Input, []).

-spec update_flow(aws_client:aws_client(), binary() | list(), update_flow_request(), proplists:proplist()) ->
    {ok, update_flow_response(), tuple()} |
    {error, any()} |
    {error, update_flow_errors(), tuple()}.
update_flow(Client, FlowArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an entitlement.
%%
%% You can change an entitlement's description, subscribers, and
%% encryption. If you change the subscribers, the service will remove the
%% outputs that are are used by the subscribers that are removed.
-spec update_flow_entitlement(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_entitlement_request()) ->
    {ok, update_flow_entitlement_response(), tuple()} |
    {error, any()} |
    {error, update_flow_entitlement_errors(), tuple()}.
update_flow_entitlement(Client, EntitlementArn, FlowArn, Input) ->
    update_flow_entitlement(Client, EntitlementArn, FlowArn, Input, []).

-spec update_flow_entitlement(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_entitlement_request(), proplists:proplist()) ->
    {ok, update_flow_entitlement_response(), tuple()} |
    {error, any()} |
    {error, update_flow_entitlement_errors(), tuple()}.
update_flow_entitlement(Client, EntitlementArn, FlowArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/entitlements/", aws_util:encode_uri(EntitlementArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing media stream.
-spec update_flow_media_stream(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_media_stream_request()) ->
    {ok, update_flow_media_stream_response(), tuple()} |
    {error, any()} |
    {error, update_flow_media_stream_errors(), tuple()}.
update_flow_media_stream(Client, FlowArn, MediaStreamName, Input) ->
    update_flow_media_stream(Client, FlowArn, MediaStreamName, Input, []).

-spec update_flow_media_stream(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_media_stream_request(), proplists:proplist()) ->
    {ok, update_flow_media_stream_response(), tuple()} |
    {error, any()} |
    {error, update_flow_media_stream_errors(), tuple()}.
update_flow_media_stream(Client, FlowArn, MediaStreamName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/mediaStreams/", aws_util:encode_uri(MediaStreamName), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing flow output.
-spec update_flow_output(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_output_request()) ->
    {ok, update_flow_output_response(), tuple()} |
    {error, any()} |
    {error, update_flow_output_errors(), tuple()}.
update_flow_output(Client, FlowArn, OutputArn, Input) ->
    update_flow_output(Client, FlowArn, OutputArn, Input, []).

-spec update_flow_output(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_output_request(), proplists:proplist()) ->
    {ok, update_flow_output_response(), tuple()} |
    {error, any()} |
    {error, update_flow_output_errors(), tuple()}.
update_flow_output(Client, FlowArn, OutputArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/outputs/", aws_util:encode_uri(OutputArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates the source of a flow.
-spec update_flow_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_source_request()) ->
    {ok, update_flow_source_response(), tuple()} |
    {error, any()} |
    {error, update_flow_source_errors(), tuple()}.
update_flow_source(Client, FlowArn, SourceArn, Input) ->
    update_flow_source(Client, FlowArn, SourceArn, Input, []).

-spec update_flow_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_source_request(), proplists:proplist()) ->
    {ok, update_flow_source_response(), tuple()} |
    {error, any()} |
    {error, update_flow_source_errors(), tuple()}.
update_flow_source(Client, FlowArn, SourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source/", aws_util:encode_uri(SourceArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing gateway instance.
-spec update_gateway_instance(aws_client:aws_client(), binary() | list(), update_gateway_instance_request()) ->
    {ok, update_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_instance_errors(), tuple()}.
update_gateway_instance(Client, GatewayInstanceArn, Input) ->
    update_gateway_instance(Client, GatewayInstanceArn, Input, []).

-spec update_gateway_instance(aws_client:aws_client(), binary() | list(), update_gateway_instance_request(), proplists:proplist()) ->
    {ok, update_gateway_instance_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_instance_errors(), tuple()}.
update_gateway_instance(Client, GatewayInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/gateway-instances/", aws_util:encode_uri(GatewayInstanceArn), ""],
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
    Client1 = Client#{service => <<"mediaconnect">>},
    Host = build_host(<<"mediaconnect">>, Client1),
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
