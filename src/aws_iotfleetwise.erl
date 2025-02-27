%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services IoT FleetWise is a fully managed service that you
%% can use to collect, model, and transfer
%% vehicle data to the Amazon Web Services cloud at scale.
%%
%% With Amazon Web Services IoT FleetWise, you can standardize all of
%% your vehicle data models, independent of the in-vehicle communication
%% architecture, and
%% define data collection rules to transfer only high-value data to the
%% cloud.
%%
%% For more information, see What is Amazon Web Services IoT FleetWise?:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/ in the
%% Amazon Web Services IoT FleetWise Developer Guide.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-module(aws_iotfleetwise).

-export([associate_vehicle_fleet/2,
         associate_vehicle_fleet/3,
         batch_create_vehicle/2,
         batch_create_vehicle/3,
         batch_update_vehicle/2,
         batch_update_vehicle/3,
         create_campaign/2,
         create_campaign/3,
         create_decoder_manifest/2,
         create_decoder_manifest/3,
         create_fleet/2,
         create_fleet/3,
         create_model_manifest/2,
         create_model_manifest/3,
         create_signal_catalog/2,
         create_signal_catalog/3,
         create_state_template/2,
         create_state_template/3,
         create_vehicle/2,
         create_vehicle/3,
         delete_campaign/2,
         delete_campaign/3,
         delete_decoder_manifest/2,
         delete_decoder_manifest/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_model_manifest/2,
         delete_model_manifest/3,
         delete_signal_catalog/2,
         delete_signal_catalog/3,
         delete_state_template/2,
         delete_state_template/3,
         delete_vehicle/2,
         delete_vehicle/3,
         disassociate_vehicle_fleet/2,
         disassociate_vehicle_fleet/3,
         get_campaign/2,
         get_campaign/3,
         get_decoder_manifest/2,
         get_decoder_manifest/3,
         get_encryption_configuration/2,
         get_encryption_configuration/3,
         get_fleet/2,
         get_fleet/3,
         get_logging_options/2,
         get_logging_options/3,
         get_model_manifest/2,
         get_model_manifest/3,
         get_register_account_status/2,
         get_register_account_status/3,
         get_signal_catalog/2,
         get_signal_catalog/3,
         get_state_template/2,
         get_state_template/3,
         get_vehicle/2,
         get_vehicle/3,
         get_vehicle_status/2,
         get_vehicle_status/3,
         import_decoder_manifest/2,
         import_decoder_manifest/3,
         import_signal_catalog/2,
         import_signal_catalog/3,
         list_campaigns/2,
         list_campaigns/3,
         list_decoder_manifest_network_interfaces/2,
         list_decoder_manifest_network_interfaces/3,
         list_decoder_manifest_signals/2,
         list_decoder_manifest_signals/3,
         list_decoder_manifests/2,
         list_decoder_manifests/3,
         list_fleets/2,
         list_fleets/3,
         list_fleets_for_vehicle/2,
         list_fleets_for_vehicle/3,
         list_model_manifest_nodes/2,
         list_model_manifest_nodes/3,
         list_model_manifests/2,
         list_model_manifests/3,
         list_signal_catalog_nodes/2,
         list_signal_catalog_nodes/3,
         list_signal_catalogs/2,
         list_signal_catalogs/3,
         list_state_templates/2,
         list_state_templates/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_vehicles/2,
         list_vehicles/3,
         list_vehicles_in_fleet/2,
         list_vehicles_in_fleet/3,
         put_encryption_configuration/2,
         put_encryption_configuration/3,
         put_logging_options/2,
         put_logging_options/3,
         register_account/2,
         register_account/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_campaign/2,
         update_campaign/3,
         update_decoder_manifest/2,
         update_decoder_manifest/3,
         update_fleet/2,
         update_fleet/3,
         update_model_manifest/2,
         update_model_manifest/3,
         update_signal_catalog/2,
         update_signal_catalog/3,
         update_state_template/2,
         update_state_template/3,
         update_vehicle/2,
         update_vehicle/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% branch() :: #{
%%   <<"comment">> => string(),
%%   <<"deprecationMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"fullyQualifiedName">> => string()
%% }
-type branch() :: #{binary() => any()}.

%% Example:
%% list_fleets_for_vehicle_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_for_vehicle_request() :: #{binary() => any()}.

%% Example:
%% iam_registration_response() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"registrationStatus">> => list(any()),
%%   <<"roleArn">> => string()
%% }
-type iam_registration_response() :: #{binary() => any()}.

%% Example:
%% create_vehicle_request_item() :: #{
%%   <<"associationBehavior">> => list(any()),
%%   <<"attributes">> => map(),
%%   <<"decoderManifestArn">> => string(),
%%   <<"modelManifestArn">> => string(),
%%   <<"stateTemplates">> => list(state_template_association()()),
%%   <<"tags">> => list(tag()()),
%%   <<"vehicleName">> => string()
%% }
-type create_vehicle_request_item() :: #{binary() => any()}.

%% Example:
%% get_model_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModificationTime">> := non_neg_integer(),
%%   <<"name">> := string(),
%%   <<"signalCatalogArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_model_manifest_response() :: #{binary() => any()}.

%% Example:
%% node_counts() :: #{
%%   <<"totalActuators">> => integer(),
%%   <<"totalAttributes">> => integer(),
%%   <<"totalBranches">> => integer(),
%%   <<"totalNodes">> => integer(),
%%   <<"totalProperties">> => integer(),
%%   <<"totalSensors">> => integer(),
%%   <<"totalStructs">> => integer()
%% }
-type node_counts() :: #{binary() => any()}.

%% Example:
%% update_vehicle_error() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type update_vehicle_error() :: #{binary() => any()}.

%% Example:
%% vehicle_status() :: #{
%%   <<"campaignName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"vehicleName">> => string()
%% }
-type vehicle_status() :: #{binary() => any()}.

%% Example:
%% on_change_state_template_update_strategy() :: #{

%% }
-type on_change_state_template_update_strategy() :: #{binary() => any()}.

%% Example:
%% time_based_collection_scheme() :: #{
%%   <<"periodMs">> => float()
%% }
-type time_based_collection_scheme() :: #{binary() => any()}.

%% Example:
%% update_campaign_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_campaign_response() :: #{binary() => any()}.

%% Example:
%% create_signal_catalog_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type create_signal_catalog_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_model_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type create_model_manifest_response() :: #{binary() => any()}.

%% Example:
%% delete_fleet_request() :: #{

%% }
-type delete_fleet_request() :: #{binary() => any()}.

%% Example:
%% create_decoder_manifest_request() :: #{
%%   <<"defaultForUnmappedSignals">> => list(any()),
%%   <<"description">> => string(),
%%   <<"modelManifestArn">> := string(),
%%   <<"networkInterfaces">> => list(network_interface()()),
%%   <<"signalDecoders">> => list(signal_decoder()()),
%%   <<"tags">> => list(tag()())
%% }
-type create_decoder_manifest_request() :: #{binary() => any()}.

%% Example:
%% get_campaign_request() :: #{

%% }
-type get_campaign_request() :: #{binary() => any()}.

%% Example:
%% delete_state_template_request() :: #{

%% }
-type delete_state_template_request() :: #{binary() => any()}.

%% Example:
%% message_signal() :: #{
%%   <<"structuredMessage">> => list(),
%%   <<"topicName">> => string()
%% }
-type message_signal() :: #{binary() => any()}.

%% Example:
%% signal_decoder() :: #{
%%   <<"canSignal">> => can_signal(),
%%   <<"customDecodingSignal">> => custom_decoding_signal(),
%%   <<"fullyQualifiedName">> => string(),
%%   <<"interfaceId">> => string(),
%%   <<"messageSignal">> => message_signal(),
%%   <<"obdSignal">> => obd_signal(),
%%   <<"type">> => list(any())
%% }
-type signal_decoder() :: #{binary() => any()}.

%% Example:
%% list_vehicles_request() :: #{
%%   <<"attributeNames">> => list(string()()),
%%   <<"attributeValues">> => list(string()()),
%%   <<"listResponseScope">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"modelManifestArn">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_vehicles_request() :: #{binary() => any()}.

%% Example:
%% delete_signal_catalog_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type delete_signal_catalog_response() :: #{binary() => any()}.

%% Example:
%% periodic_state_template_update_strategy() :: #{
%%   <<"stateTemplateUpdateRate">> => time_period()
%% }
-type periodic_state_template_update_strategy() :: #{binary() => any()}.

%% Example:
%% list_vehicles_in_fleet_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_vehicles_in_fleet_request() :: #{binary() => any()}.

%% Example:
%% iam_resources() :: #{
%%   <<"roleArn">> => string()
%% }
-type iam_resources() :: #{binary() => any()}.

%% Example:
%% list_fleets_for_vehicle_response() :: #{
%%   <<"fleets">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_for_vehicle_response() :: #{binary() => any()}.

%% Example:
%% obd_interface() :: #{
%%   <<"dtcRequestIntervalSeconds">> => integer(),
%%   <<"hasTransmissionEcu">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"obdStandard">> => string(),
%%   <<"pidRequestIntervalSeconds">> => integer(),
%%   <<"requestMessageId">> => integer(),
%%   <<"useExtendedIds">> => [boolean()]
%% }
-type obd_interface() :: #{binary() => any()}.

%% Example:
%% invalid_signal() :: #{
%%   <<"name">> => string(),
%%   <<"reason">> => string()
%% }
-type invalid_signal() :: #{binary() => any()}.

%% Example:
%% register_account_response() :: #{
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"iamResources">> := iam_resources(),
%%   <<"lastModificationTime">> := non_neg_integer(),
%%   <<"registerAccountStatus">> := list(any()),
%%   <<"timestreamResources">> => timestream_resources()
%% }
-type register_account_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_register_account_status_request() :: #{

%% }
-type get_register_account_status_request() :: #{binary() => any()}.

%% Example:
%% data_partition_upload_options() :: #{
%%   <<"conditionLanguageVersion">> => integer(),
%%   <<"expression">> => string()
%% }
-type data_partition_upload_options() :: #{binary() => any()}.

%% Example:
%% delete_model_manifest_request() :: #{

%% }
-type delete_model_manifest_request() :: #{binary() => any()}.

%% Example:
%% register_account_request() :: #{
%%   <<"iamResources">> => iam_resources(),
%%   <<"timestreamResources">> => timestream_resources()
%% }
-type register_account_request() :: #{binary() => any()}.

%% Example:
%% create_fleet_request() :: #{
%%   <<"description">> => string(),
%%   <<"signalCatalogArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_fleet_request() :: #{binary() => any()}.

%% Example:
%% batch_update_vehicle_request() :: #{
%%   <<"vehicles">> := list(update_vehicle_request_item()())
%% }
-type batch_update_vehicle_request() :: #{binary() => any()}.

%% Example:
%% put_logging_options_response() :: #{

%% }
-type put_logging_options_response() :: #{binary() => any()}.

%% Example:
%% import_decoder_manifest_request() :: #{
%%   <<"networkFileDefinitions">> := list(list()())
%% }
-type import_decoder_manifest_request() :: #{binary() => any()}.

%% Example:
%% timestream_config() :: #{
%%   <<"executionRoleArn">> => string(),
%%   <<"timestreamTableArn">> => string()
%% }
-type timestream_config() :: #{binary() => any()}.

%% Example:
%% invalid_network_interface() :: #{
%%   <<"interfaceId">> => string(),
%%   <<"reason">> => list(any())
%% }
-type invalid_network_interface() :: #{binary() => any()}.

%% Example:
%% delete_fleet_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type delete_fleet_response() :: #{binary() => any()}.

%% Example:
%% structured_message_field_name_and_data_type_pair() :: #{
%%   <<"dataType">> => list(),
%%   <<"fieldName">> => string()
%% }
-type structured_message_field_name_and_data_type_pair() :: #{binary() => any()}.

%% Example:
%% get_vehicle_request() :: #{

%% }
-type get_vehicle_request() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"canInterface">> => can_interface(),
%%   <<"customDecodingInterface">> => custom_decoding_interface(),
%%   <<"interfaceId">> => string(),
%%   <<"obdInterface">> => obd_interface(),
%%   <<"type">> => list(any()),
%%   <<"vehicleMiddleware">> => vehicle_middleware()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% list_model_manifests_request() :: #{
%%   <<"listResponseScope">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"signalCatalogArn">> => string()
%% }
-type list_model_manifests_request() :: #{binary() => any()}.

%% Example:
%% model_manifest_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"signalCatalogArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type model_manifest_summary() :: #{binary() => any()}.

%% Example:
%% delete_decoder_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type delete_decoder_manifest_response() :: #{binary() => any()}.

%% Example:
%% vehicle_middleware() :: #{
%%   <<"name">> => string(),
%%   <<"protocolName">> => list(any())
%% }
-type vehicle_middleware() :: #{binary() => any()}.

%% Example:
%% list_fleets_request() :: #{
%%   <<"listResponseScope">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_request() :: #{binary() => any()}.

%% Example:
%% list_decoder_manifests_request() :: #{
%%   <<"listResponseScope">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"modelManifestArn">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_decoder_manifests_request() :: #{binary() => any()}.

%% Example:
%% list_campaigns_response() :: #{
%%   <<"campaignSummaries">> => list(campaign_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_campaigns_response() :: #{binary() => any()}.

%% Example:
%% delete_campaign_request() :: #{

%% }
-type delete_campaign_request() :: #{binary() => any()}.

%% Example:
%% put_encryption_configuration_response() :: #{
%%   <<"encryptionStatus">> => list(any()),
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKeyId">> => [string()]
%% }
-type put_encryption_configuration_response() :: #{binary() => any()}.

%% Example:
%% import_signal_catalog_request() :: #{
%%   <<"description">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"vss">> => list()
%% }
-type import_signal_catalog_request() :: #{binary() => any()}.

%% Example:
%% list_fleets_response() :: #{
%%   <<"fleetSummaries">> => list(fleet_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_response() :: #{binary() => any()}.

%% Example:
%% batch_create_vehicle_request() :: #{
%%   <<"vehicles">> := list(create_vehicle_request_item()())
%% }
-type batch_create_vehicle_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% timestream_resources() :: #{
%%   <<"timestreamDatabaseName">> => string(),
%%   <<"timestreamTableName">> => string()
%% }
-type timestream_resources() :: #{binary() => any()}.

%% Example:
%% create_vehicle_error() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type create_vehicle_error() :: #{binary() => any()}.

%% Example:
%% time_period() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => integer()
%% }
-type time_period() :: #{binary() => any()}.

%% Example:
%% signal_fetch_information() :: #{
%%   <<"actions">> => list(string()()),
%%   <<"conditionLanguageVersion">> => integer(),
%%   <<"fullyQualifiedName">> => string(),
%%   <<"signalFetchConfig">> => list()
%% }
-type signal_fetch_information() :: #{binary() => any()}.

%% Example:
%% update_signal_catalog_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type update_signal_catalog_response() :: #{binary() => any()}.

%% Example:
%% get_encryption_configuration_request() :: #{

%% }
-type get_encryption_configuration_request() :: #{binary() => any()}.

%% Example:
%% put_encryption_configuration_request() :: #{
%%   <<"encryptionType">> := list(any()),
%%   <<"kmsKeyId">> => [string()]
%% }
-type put_encryption_configuration_request() :: #{binary() => any()}.

%% Example:
%% r_o_s2_primitive_message_definition() :: #{
%%   <<"offset">> => float(),
%%   <<"primitiveType">> => list(any()),
%%   <<"scaling">> => float(),
%%   <<"upperBound">> => float()
%% }
-type r_o_s2_primitive_message_definition() :: #{binary() => any()}.

%% Example:
%% list_signal_catalog_nodes_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"nodes">> => list(list()())
%% }
-type list_signal_catalog_nodes_response() :: #{binary() => any()}.

%% Example:
%% list_campaigns_request() :: #{
%%   <<"listResponseScope">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_campaigns_request() :: #{binary() => any()}.

%% Example:
%% import_decoder_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type import_decoder_manifest_response() :: #{binary() => any()}.

%% Example:
%% storage_maximum_size() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => integer()
%% }
-type storage_maximum_size() :: #{binary() => any()}.

%% Example:
%% delete_vehicle_response() :: #{
%%   <<"arn">> := string(),
%%   <<"vehicleName">> := string()
%% }
-type delete_vehicle_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% custom_decoding_interface() :: #{
%%   <<"name">> => string()
%% }
-type custom_decoding_interface() :: #{binary() => any()}.

%% Example:
%% update_decoder_manifest_request() :: #{
%%   <<"defaultForUnmappedSignals">> => list(any()),
%%   <<"description">> => string(),
%%   <<"networkInterfacesToAdd">> => list(network_interface()()),
%%   <<"networkInterfacesToRemove">> => list(string()()),
%%   <<"networkInterfacesToUpdate">> => list(network_interface()()),
%%   <<"signalDecodersToAdd">> => list(signal_decoder()()),
%%   <<"signalDecodersToRemove">> => list(string()()),
%%   <<"signalDecodersToUpdate">> => list(signal_decoder()()),
%%   <<"status">> => list(any())
%% }
-type update_decoder_manifest_request() :: #{binary() => any()}.

%% Example:
%% get_state_template_request() :: #{

%% }
-type get_state_template_request() :: #{binary() => any()}.

%% Example:
%% delete_campaign_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type delete_campaign_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% mqtt_topic_config() :: #{
%%   <<"executionRoleArn">> => string(),
%%   <<"mqttTopicArn">> => string()
%% }
-type mqtt_topic_config() :: #{binary() => any()}.

%% Example:
%% disassociate_vehicle_fleet_response() :: #{

%% }
-type disassociate_vehicle_fleet_response() :: #{binary() => any()}.

%% Example:
%% update_fleet_request() :: #{
%%   <<"description">> => string()
%% }
-type update_fleet_request() :: #{binary() => any()}.

%% Example:
%% get_vehicle_status_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_vehicle_status_request() :: #{binary() => any()}.

%% Example:
%% get_fleet_request() :: #{

%% }
-type get_fleet_request() :: #{binary() => any()}.

%% Example:
%% s3_config() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"dataFormat">> => list(any()),
%%   <<"prefix">> => string(),
%%   <<"storageCompressionFormat">> => list(any())
%% }
-type s3_config() :: #{binary() => any()}.

%% Example:
%% get_logging_options_response() :: #{
%%   <<"cloudWatchLogDelivery">> := cloud_watch_log_delivery_options()
%% }
-type get_logging_options_response() :: #{binary() => any()}.

%% Example:
%% get_register_account_status_response() :: #{
%%   <<"accountStatus">> := list(any()),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"customerAccountId">> := string(),
%%   <<"iamRegistrationResponse">> := iam_registration_response(),
%%   <<"lastModificationTime">> := non_neg_integer(),
%%   <<"timestreamRegistrationResponse">> => timestream_registration_response()
%% }
-type get_register_account_status_response() :: #{binary() => any()}.

%% Example:
%% get_signal_catalog_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModificationTime">> := non_neg_integer(),
%%   <<"name">> := string(),
%%   <<"nodeCounts">> => node_counts()
%% }
-type get_signal_catalog_response() :: #{binary() => any()}.

%% Example:
%% fleet_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"signalCatalogArn">> => string()
%% }
-type fleet_summary() :: #{binary() => any()}.

%% Example:
%% list_decoder_manifest_signals_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"signalDecoders">> => list(signal_decoder()())
%% }
-type list_decoder_manifest_signals_response() :: #{binary() => any()}.

%% Example:
%% list_signal_catalogs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(signal_catalog_summary()())
%% }
-type list_signal_catalogs_response() :: #{binary() => any()}.

%% Example:
%% batch_update_vehicle_response() :: #{
%%   <<"errors">> => list(update_vehicle_error()()),
%%   <<"vehicles">> => list(update_vehicle_response_item()())
%% }
-type batch_update_vehicle_response() :: #{binary() => any()}.

%% Example:
%% actuator() :: #{
%%   <<"allowedValues">> => list(string()()),
%%   <<"assignedValue">> => string(),
%%   <<"comment">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"deprecationMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"fullyQualifiedName">> => string(),
%%   <<"max">> => float(),
%%   <<"min">> => float(),
%%   <<"structFullyQualifiedName">> => string(),
%%   <<"unit">> => string()
%% }
-type actuator() :: #{binary() => any()}.

%% Example:
%% delete_decoder_manifest_request() :: #{

%% }
-type delete_decoder_manifest_request() :: #{binary() => any()}.

%% Example:
%% list_model_manifest_nodes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_model_manifest_nodes_request() :: #{binary() => any()}.

%% Example:
%% list_vehicles_in_fleet_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"vehicles">> => list(string()())
%% }
-type list_vehicles_in_fleet_response() :: #{binary() => any()}.

%% Example:
%% delete_vehicle_request() :: #{

%% }
-type delete_vehicle_request() :: #{binary() => any()}.

%% Example:
%% disassociate_vehicle_fleet_request() :: #{
%%   <<"fleetId">> := string()
%% }
-type disassociate_vehicle_fleet_request() :: #{binary() => any()}.

%% Example:
%% create_vehicle_response() :: #{
%%   <<"arn">> => string(),
%%   <<"thingArn">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type create_vehicle_response() :: #{binary() => any()}.

%% Example:
%% list_state_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(state_template_summary()())
%% }
-type list_state_templates_response() :: #{binary() => any()}.

%% Example:
%% get_decoder_manifest_request() :: #{

%% }
-type get_decoder_manifest_request() :: #{binary() => any()}.

%% Example:
%% condition_based_signal_fetch_config() :: #{
%%   <<"conditionExpression">> => string(),
%%   <<"triggerMode">> => list(any())
%% }
-type condition_based_signal_fetch_config() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_decoder_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModificationTime">> := non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"modelManifestArn">> => string(),
%%   <<"name">> := string(),
%%   <<"status">> => list(any())
%% }
-type get_decoder_manifest_response() :: #{binary() => any()}.

%% Example:
%% data_partition() :: #{
%%   <<"id">> => string(),
%%   <<"storageOptions">> => data_partition_storage_options(),
%%   <<"uploadOptions">> => data_partition_upload_options()
%% }
-type data_partition() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% associate_vehicle_fleet_response() :: #{

%% }
-type associate_vehicle_fleet_response() :: #{binary() => any()}.

%% Example:
%% get_state_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"dataExtraDimensions">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"metadataExtraDimensions">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"signalCatalogArn">> => string(),
%%   <<"stateTemplateProperties">> => list(string()())
%% }
-type get_state_template_response() :: #{binary() => any()}.

%% Example:
%% update_vehicle_request_item() :: #{
%%   <<"attributeUpdateMode">> => list(any()),
%%   <<"attributes">> => map(),
%%   <<"decoderManifestArn">> => string(),
%%   <<"modelManifestArn">> => string(),
%%   <<"stateTemplatesToAdd">> => list(state_template_association()()),
%%   <<"stateTemplatesToRemove">> => list(string()()),
%%   <<"vehicleName">> => string()
%% }
-type update_vehicle_request_item() :: #{binary() => any()}.

%% Example:
%% create_model_manifest_request() :: #{
%%   <<"description">> => string(),
%%   <<"nodes">> := list(string()()),
%%   <<"signalCatalogArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_model_manifest_request() :: #{binary() => any()}.

%% Example:
%% can_signal() :: #{
%%   <<"factor">> => float(),
%%   <<"isBigEndian">> => [boolean()],
%%   <<"isSigned">> => [boolean()],
%%   <<"length">> => integer(),
%%   <<"messageId">> => integer(),
%%   <<"name">> => string(),
%%   <<"offset">> => float(),
%%   <<"startBit">> => integer()
%% }
-type can_signal() :: #{binary() => any()}.

%% Example:
%% list_signal_catalog_nodes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"signalNodeType">> => list(any())
%% }
-type list_signal_catalog_nodes_request() :: #{binary() => any()}.

%% Example:
%% storage_minimum_time_to_live() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => integer()
%% }
-type storage_minimum_time_to_live() :: #{binary() => any()}.

%% Example:
%% create_vehicle_response_item() :: #{
%%   <<"arn">> => string(),
%%   <<"thingArn">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type create_vehicle_response_item() :: #{binary() => any()}.

%% Example:
%% update_fleet_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type update_fleet_response() :: #{binary() => any()}.

%% Example:
%% list_signal_catalogs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_signal_catalogs_request() :: #{binary() => any()}.

%% Example:
%% list_decoder_manifest_signals_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_decoder_manifest_signals_request() :: #{binary() => any()}.

%% Example:
%% condition_based_collection_scheme() :: #{
%%   <<"conditionLanguageVersion">> => integer(),
%%   <<"expression">> => string(),
%%   <<"minimumTriggerIntervalMs">> => float(),
%%   <<"triggerMode">> => list(any())
%% }
-type condition_based_collection_scheme() :: #{binary() => any()}.

%% Example:
%% invalid_node_exception() :: #{
%%   <<"invalidNodes">> => list(list()()),
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type invalid_node_exception() :: #{binary() => any()}.

%% Example:
%% delete_state_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type delete_state_template_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% update_state_template_request() :: #{
%%   <<"dataExtraDimensions">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"metadataExtraDimensions">> => list(string()()),
%%   <<"stateTemplatePropertiesToAdd">> => list(string()()),
%%   <<"stateTemplatePropertiesToRemove">> => list(string()())
%% }
-type update_state_template_request() :: #{binary() => any()}.

%% Example:
%% create_decoder_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type create_decoder_manifest_response() :: #{binary() => any()}.

%% Example:
%% create_signal_catalog_request() :: #{
%%   <<"description">> => string(),
%%   <<"nodes">> => list(list()()),
%%   <<"tags">> => list(tag()())
%% }
-type create_signal_catalog_request() :: #{binary() => any()}.

%% Example:
%% can_dbc_definition() :: #{
%%   <<"canDbcFiles">> => list(binary()()),
%%   <<"networkInterface">> => string(),
%%   <<"signalsMap">> => map()
%% }
-type can_dbc_definition() :: #{binary() => any()}.

%% Example:
%% get_signal_catalog_request() :: #{

%% }
-type get_signal_catalog_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% state_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"signalCatalogArn">> => string()
%% }
-type state_template_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_campaign_request() :: #{
%%   <<"collectionScheme">> := list(),
%%   <<"compression">> => list(any()),
%%   <<"dataDestinationConfigs">> => list(list()()),
%%   <<"dataExtraDimensions">> => list(string()()),
%%   <<"dataPartitions">> => list(data_partition()()),
%%   <<"description">> => string(),
%%   <<"diagnosticsMode">> => list(any()),
%%   <<"expiryTime">> => non_neg_integer(),
%%   <<"postTriggerCollectionDuration">> => float(),
%%   <<"priority">> => integer(),
%%   <<"signalCatalogArn">> := string(),
%%   <<"signalsToCollect">> => list(signal_information()()),
%%   <<"signalsToFetch">> => list(signal_fetch_information()()),
%%   <<"spoolingMode">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"tags">> => list(tag()()),
%%   <<"targetArn">> := string()
%% }
-type create_campaign_request() :: #{binary() => any()}.

%% Example:
%% put_logging_options_request() :: #{
%%   <<"cloudWatchLogDelivery">> := cloud_watch_log_delivery_options()
%% }
-type put_logging_options_request() :: #{binary() => any()}.

%% Example:
%% get_vehicle_status_response() :: #{
%%   <<"campaigns">> => list(vehicle_status()()),
%%   <<"nextToken">> => string()
%% }
-type get_vehicle_status_response() :: #{binary() => any()}.

%% Example:
%% create_state_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type create_state_template_response() :: #{binary() => any()}.

%% Example:
%% update_decoder_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type update_decoder_manifest_response() :: #{binary() => any()}.

%% Example:
%% get_encryption_configuration_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"encryptionStatus">> => list(any()),
%%   <<"encryptionType">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"kmsKeyId">> => [string()],
%%   <<"lastModificationTime">> => non_neg_integer()
%% }
-type get_encryption_configuration_response() :: #{binary() => any()}.

%% Example:
%% obd_signal() :: #{
%%   <<"bitMaskLength">> => integer(),
%%   <<"bitRightShift">> => integer(),
%%   <<"byteLength">> => integer(),
%%   <<"offset">> => float(),
%%   <<"pid">> => integer(),
%%   <<"pidResponseLength">> => integer(),
%%   <<"scaling">> => float(),
%%   <<"serviceMode">> => integer(),
%%   <<"startByte">> => integer()
%% }
-type obd_signal() :: #{binary() => any()}.

%% Example:
%% get_model_manifest_request() :: #{

%% }
-type get_model_manifest_request() :: #{binary() => any()}.

%% Example:
%% custom_property() :: #{
%%   <<"comment">> => string(),
%%   <<"dataEncoding">> => list(any()),
%%   <<"dataType">> => list(any()),
%%   <<"deprecationMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"fullyQualifiedName">> => string(),
%%   <<"structFullyQualifiedName">> => string()
%% }
-type custom_property() :: #{binary() => any()}.

%% Example:
%% signal_information() :: #{
%%   <<"dataPartitionId">> => string(),
%%   <<"maxSampleCount">> => float(),
%%   <<"minimumSamplingIntervalMs">> => float(),
%%   <<"name">> => string()
%% }
-type signal_information() :: #{binary() => any()}.

%% Example:
%% list_model_manifests_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(model_manifest_summary()())
%% }
-type list_model_manifests_response() :: #{binary() => any()}.

%% Example:
%% custom_decoding_signal() :: #{
%%   <<"id">> => string()
%% }
-type custom_decoding_signal() :: #{binary() => any()}.

%% Example:
%% update_model_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type update_model_manifest_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_state_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type update_state_template_response() :: #{binary() => any()}.

%% Example:
%% time_based_signal_fetch_config() :: #{
%%   <<"executionFrequencyMs">> => float()
%% }
-type time_based_signal_fetch_config() :: #{binary() => any()}.

%% Example:
%% invalid_signals_exception() :: #{
%%   <<"invalidSignals">> => list(invalid_signal()()),
%%   <<"message">> => string()
%% }
-type invalid_signals_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_campaign_response() :: #{
%%   <<"arn">> => string(),
%%   <<"collectionScheme">> => list(),
%%   <<"compression">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"dataDestinationConfigs">> => list(list()()),
%%   <<"dataExtraDimensions">> => list(string()()),
%%   <<"dataPartitions">> => list(data_partition()()),
%%   <<"description">> => string(),
%%   <<"diagnosticsMode">> => list(any()),
%%   <<"expiryTime">> => non_neg_integer(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"postTriggerCollectionDuration">> => float(),
%%   <<"priority">> => integer(),
%%   <<"signalCatalogArn">> => string(),
%%   <<"signalsToCollect">> => list(signal_information()()),
%%   <<"signalsToFetch">> => list(signal_fetch_information()()),
%%   <<"spoolingMode">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string()
%% }
-type get_campaign_response() :: #{binary() => any()}.

%% Example:
%% sensor() :: #{
%%   <<"allowedValues">> => list(string()()),
%%   <<"comment">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"deprecationMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"fullyQualifiedName">> => string(),
%%   <<"max">> => float(),
%%   <<"min">> => float(),
%%   <<"structFullyQualifiedName">> => string(),
%%   <<"unit">> => string()
%% }
-type sensor() :: #{binary() => any()}.

%% Example:
%% update_vehicle_response() :: #{
%%   <<"arn">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type update_vehicle_response() :: #{binary() => any()}.

%% Example:
%% update_vehicle_request() :: #{
%%   <<"attributeUpdateMode">> => list(any()),
%%   <<"attributes">> => map(),
%%   <<"decoderManifestArn">> => string(),
%%   <<"modelManifestArn">> => string(),
%%   <<"stateTemplatesToAdd">> => list(state_template_association()()),
%%   <<"stateTemplatesToRemove">> => list(string()())
%% }
-type update_vehicle_request() :: #{binary() => any()}.

%% Example:
%% attribute() :: #{
%%   <<"allowedValues">> => list(string()()),
%%   <<"assignedValue">> => string(),
%%   <<"comment">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"defaultValue">> => string(),
%%   <<"deprecationMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"fullyQualifiedName">> => string(),
%%   <<"max">> => float(),
%%   <<"min">> => float(),
%%   <<"unit">> => string()
%% }
-type attribute() :: #{binary() => any()}.

%% Example:
%% list_decoder_manifests_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(decoder_manifest_summary()())
%% }
-type list_decoder_manifests_response() :: #{binary() => any()}.

%% Example:
%% custom_struct() :: #{
%%   <<"comment">> => string(),
%%   <<"deprecationMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"fullyQualifiedName">> => string()
%% }
-type custom_struct() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% import_signal_catalog_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type import_signal_catalog_response() :: #{binary() => any()}.

%% Example:
%% update_signal_catalog_request() :: #{
%%   <<"description">> => string(),
%%   <<"nodesToAdd">> => list(list()()),
%%   <<"nodesToRemove">> => list(string()()),
%%   <<"nodesToUpdate">> => list(list()())
%% }
-type update_signal_catalog_request() :: #{binary() => any()}.

%% Example:
%% invalid_signal_decoder() :: #{
%%   <<"hint">> => string(),
%%   <<"name">> => string(),
%%   <<"reason">> => list(any())
%% }
-type invalid_signal_decoder() :: #{binary() => any()}.

%% Example:
%% get_logging_options_request() :: #{

%% }
-type get_logging_options_request() :: #{binary() => any()}.

%% Example:
%% list_decoder_manifest_network_interfaces_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_decoder_manifest_network_interfaces_request() :: #{binary() => any()}.

%% Example:
%% cloud_watch_log_delivery_options() :: #{
%%   <<"logGroupName">> => string(),
%%   <<"logType">> => list(any())
%% }
-type cloud_watch_log_delivery_options() :: #{binary() => any()}.

%% Example:
%% list_vehicles_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"vehicleSummaries">> => list(vehicle_summary()())
%% }
-type list_vehicles_response() :: #{binary() => any()}.

%% Example:
%% list_state_templates_request() :: #{
%%   <<"listResponseScope">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_state_templates_request() :: #{binary() => any()}.

%% Example:
%% update_campaign_request() :: #{
%%   <<"action">> := list(any()),
%%   <<"dataExtraDimensions">> => list(string()()),
%%   <<"description">> => string()
%% }
-type update_campaign_request() :: #{binary() => any()}.

%% Example:
%% batch_create_vehicle_response() :: #{
%%   <<"errors">> => list(create_vehicle_error()()),
%%   <<"vehicles">> => list(create_vehicle_response_item()())
%% }
-type batch_create_vehicle_response() :: #{binary() => any()}.

%% Example:
%% associate_vehicle_fleet_request() :: #{
%%   <<"fleetId">> := string()
%% }
-type associate_vehicle_fleet_request() :: #{binary() => any()}.

%% Example:
%% decoder_manifest_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"modelManifestArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type decoder_manifest_summary() :: #{binary() => any()}.

%% Example:
%% delete_model_manifest_response() :: #{
%%   <<"arn">> := string(),
%%   <<"name">> := string()
%% }
-type delete_model_manifest_response() :: #{binary() => any()}.

%% Example:
%% list_decoder_manifest_network_interfaces_response() :: #{
%%   <<"networkInterfaces">> => list(network_interface()()),
%%   <<"nextToken">> => string()
%% }
-type list_decoder_manifest_network_interfaces_response() :: #{binary() => any()}.

%% Example:
%% create_fleet_response() :: #{
%%   <<"arn">> := string(),
%%   <<"id">> := string()
%% }
-type create_fleet_response() :: #{binary() => any()}.

%% Example:
%% state_template_association() :: #{
%%   <<"identifier">> => string(),
%%   <<"stateTemplateUpdateStrategy">> => list()
%% }
-type state_template_association() :: #{binary() => any()}.

%% Example:
%% data_partition_storage_options() :: #{
%%   <<"maximumSize">> => storage_maximum_size(),
%%   <<"minimumTimeToLive">> => storage_minimum_time_to_live(),
%%   <<"storageLocation">> => string()
%% }
-type data_partition_storage_options() :: #{binary() => any()}.

%% Example:
%% create_campaign_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type create_campaign_response() :: #{binary() => any()}.

%% Example:
%% vehicle_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"attributes">> => map(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"decoderManifestArn">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"modelManifestArn">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type vehicle_summary() :: #{binary() => any()}.

%% Example:
%% get_fleet_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> := string(),
%%   <<"lastModificationTime">> := non_neg_integer(),
%%   <<"signalCatalogArn">> := string()
%% }
-type get_fleet_response() :: #{binary() => any()}.

%% Example:
%% can_interface() :: #{
%%   <<"name">> => string(),
%%   <<"protocolName">> => string(),
%%   <<"protocolVersion">> => string()
%% }
-type can_interface() :: #{binary() => any()}.

%% Example:
%% structured_message_list_definition() :: #{
%%   <<"capacity">> => integer(),
%%   <<"listType">> => list(any()),
%%   <<"memberType">> => list(),
%%   <<"name">> => string()
%% }
-type structured_message_list_definition() :: #{binary() => any()}.

%% Example:
%% list_model_manifest_nodes_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"nodes">> => list(list()())
%% }
-type list_model_manifest_nodes_response() :: #{binary() => any()}.

%% Example:
%% create_vehicle_request() :: #{
%%   <<"associationBehavior">> => list(any()),
%%   <<"attributes">> => map(),
%%   <<"decoderManifestArn">> := string(),
%%   <<"modelManifestArn">> := string(),
%%   <<"stateTemplates">> => list(state_template_association()()),
%%   <<"tags">> => list(tag()())
%% }
-type create_vehicle_request() :: #{binary() => any()}.

%% Example:
%% delete_signal_catalog_request() :: #{

%% }
-type delete_signal_catalog_request() :: #{binary() => any()}.

%% Example:
%% update_vehicle_response_item() :: #{
%%   <<"arn">> => string(),
%%   <<"vehicleName">> => string()
%% }
-type update_vehicle_response_item() :: #{binary() => any()}.

%% Example:
%% campaign_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"signalCatalogArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string()
%% }
-type campaign_summary() :: #{binary() => any()}.

%% Example:
%% get_vehicle_response() :: #{
%%   <<"arn">> => string(),
%%   <<"attributes">> => map(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"decoderManifestArn">> => string(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"modelManifestArn">> => string(),
%%   <<"stateTemplates">> => list(state_template_association()()),
%%   <<"vehicleName">> => string()
%% }
-type get_vehicle_response() :: #{binary() => any()}.

%% Example:
%% signal_catalog_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastModificationTime">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type signal_catalog_summary() :: #{binary() => any()}.

%% Example:
%% timestream_registration_response() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"registrationStatus">> => list(any()),
%%   <<"timestreamDatabaseArn">> => string(),
%%   <<"timestreamDatabaseName">> => string(),
%%   <<"timestreamTableArn">> => string(),
%%   <<"timestreamTableName">> => string()
%% }
-type timestream_registration_response() :: #{binary() => any()}.

%% Example:
%% decoder_manifest_validation_exception() :: #{
%%   <<"invalidNetworkInterfaces">> => list(invalid_network_interface()()),
%%   <<"invalidSignals">> => list(invalid_signal_decoder()()),
%%   <<"message">> => string()
%% }
-type decoder_manifest_validation_exception() :: #{binary() => any()}.

%% Example:
%% create_state_template_request() :: #{
%%   <<"dataExtraDimensions">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"metadataExtraDimensions">> => list(string()()),
%%   <<"signalCatalogArn">> := string(),
%%   <<"stateTemplateProperties">> := list(string()()),
%%   <<"tags">> => list(tag()())
%% }
-type create_state_template_request() :: #{binary() => any()}.

%% Example:
%% update_model_manifest_request() :: #{
%%   <<"description">> => string(),
%%   <<"nodesToAdd">> => list(string()()),
%%   <<"nodesToRemove">> => list(string()()),
%%   <<"status">> => list(any())
%% }
-type update_model_manifest_request() :: #{binary() => any()}.

-type associate_vehicle_fleet_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_create_vehicle_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_update_vehicle_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_campaign_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_decoder_manifest_errors() ::
    decoder_manifest_validation_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_fleet_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_model_manifest_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_signal_catalog_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_node_exception() | 
    conflict_exception().

-type create_state_template_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_vehicle_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_decoder_manifest_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_fleet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_model_manifest_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_signal_catalog_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_state_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_vehicle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type disassociate_vehicle_fleet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_decoder_manifest_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_encryption_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_fleet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_logging_options_errors() ::
    throttling_exception() | 
    access_denied_exception().

-type get_model_manifest_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_register_account_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_signal_catalog_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_state_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_vehicle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_vehicle_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type import_decoder_manifest_errors() ::
    decoder_manifest_validation_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type import_signal_catalog_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_campaigns_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_decoder_manifest_network_interfaces_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_decoder_manifest_signals_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_decoder_manifests_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_fleets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_fleets_for_vehicle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_model_manifest_nodes_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_model_manifests_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_signal_catalog_nodes_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_signal_catalogs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_state_templates_errors() ::
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

-type list_vehicles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_vehicles_in_fleet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_encryption_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_logging_options_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type register_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

-type update_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_decoder_manifest_errors() ::
    decoder_manifest_validation_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_fleet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_model_manifest_errors() ::
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_signal_catalog_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_node_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_state_template_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_signals_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_vehicle_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds, or associates, a vehicle with a fleet.
-spec associate_vehicle_fleet(aws_client:aws_client(), associate_vehicle_fleet_request()) ->
    {ok, associate_vehicle_fleet_response(), tuple()} |
    {error, any()} |
    {error, associate_vehicle_fleet_errors(), tuple()}.
associate_vehicle_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_vehicle_fleet(Client, Input, []).

-spec associate_vehicle_fleet(aws_client:aws_client(), associate_vehicle_fleet_request(), proplists:proplist()) ->
    {ok, associate_vehicle_fleet_response(), tuple()} |
    {error, any()} |
    {error, associate_vehicle_fleet_errors(), tuple()}.
associate_vehicle_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVehicleFleet">>, Input, Options).

%% @doc Creates a group, or batch, of vehicles.
%%
%% You must specify a decoder manifest and a vehicle model (model manifest)
%% for each
%% vehicle.
%%
%% For more information, see Create multiple
%% vehicles (AWS CLI):
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec batch_create_vehicle(aws_client:aws_client(), batch_create_vehicle_request()) ->
    {ok, batch_create_vehicle_response(), tuple()} |
    {error, any()} |
    {error, batch_create_vehicle_errors(), tuple()}.
batch_create_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_vehicle(Client, Input, []).

-spec batch_create_vehicle(aws_client:aws_client(), batch_create_vehicle_request(), proplists:proplist()) ->
    {ok, batch_create_vehicle_response(), tuple()} |
    {error, any()} |
    {error, batch_create_vehicle_errors(), tuple()}.
batch_create_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateVehicle">>, Input, Options).

%% @doc Updates a group, or batch, of vehicles.
%%
%% You must specify a decoder manifest and a vehicle model (model manifest)
%% for each
%% vehicle.
%%
%% For more information, see Update multiple
%% vehicles (AWS CLI):
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec batch_update_vehicle(aws_client:aws_client(), batch_update_vehicle_request()) ->
    {ok, batch_update_vehicle_response(), tuple()} |
    {error, any()} |
    {error, batch_update_vehicle_errors(), tuple()}.
batch_update_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_vehicle(Client, Input, []).

-spec batch_update_vehicle(aws_client:aws_client(), batch_update_vehicle_request(), proplists:proplist()) ->
    {ok, batch_update_vehicle_response(), tuple()} |
    {error, any()} |
    {error, batch_update_vehicle_errors(), tuple()}.
batch_update_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateVehicle">>, Input, Options).

%% @doc Creates an orchestration of data collection rules.
%%
%% The Amazon Web Services IoT FleetWise Edge Agent software
%% running in vehicles uses campaigns to decide how to collect and transfer
%% data to the
%% cloud. You create campaigns in the cloud. After you or your team approve
%% campaigns,
%% Amazon Web Services IoT FleetWise automatically deploys them to vehicles.
%%
%% For more information, see Collect and transfer data
%% with campaigns:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec create_campaign(aws_client:aws_client(), create_campaign_request()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_campaign(Client, Input, []).

-spec create_campaign(aws_client:aws_client(), create_campaign_request(), proplists:proplist()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCampaign">>, Input, Options).

%% @doc Creates the decoder manifest associated with a model manifest.
%%
%% To create a decoder
%% manifest, the following must be true:
%%
%% Every signal decoder has a unique name.
%%
%% Each signal decoder is associated with a network interface.
%%
%% Each network interface has a unique ID.
%%
%% The signal decoders are specified in the model manifest.
-spec create_decoder_manifest(aws_client:aws_client(), create_decoder_manifest_request()) ->
    {ok, create_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, create_decoder_manifest_errors(), tuple()}.
create_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_decoder_manifest(Client, Input, []).

-spec create_decoder_manifest(aws_client:aws_client(), create_decoder_manifest_request(), proplists:proplist()) ->
    {ok, create_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, create_decoder_manifest_errors(), tuple()}.
create_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDecoderManifest">>, Input, Options).

%% @doc Creates a fleet that represents a group of vehicles.
%%
%% You must create both a signal catalog and vehicles before you can create a
%% fleet.
%%
%% For more information, see Fleets:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleets.html
%% in the
%% Amazon Web Services IoT FleetWise Developer Guide.
-spec create_fleet(aws_client:aws_client(), create_fleet_request()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).

-spec create_fleet(aws_client:aws_client(), create_fleet_request(), proplists:proplist()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates a vehicle model (model manifest) that specifies signals
%% (attributes,
%% branches, sensors, and actuators).
%%
%% For more information, see Vehicle models:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/vehicle-models.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec create_model_manifest(aws_client:aws_client(), create_model_manifest_request()) ->
    {ok, create_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, create_model_manifest_errors(), tuple()}.
create_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_manifest(Client, Input, []).

-spec create_model_manifest(aws_client:aws_client(), create_model_manifest_request(), proplists:proplist()) ->
    {ok, create_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, create_model_manifest_errors(), tuple()}.
create_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelManifest">>, Input, Options).

%% @doc Creates a collection of standardized signals that can be reused to
%% create vehicle
%% models.
-spec create_signal_catalog(aws_client:aws_client(), create_signal_catalog_request()) ->
    {ok, create_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, create_signal_catalog_errors(), tuple()}.
create_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_signal_catalog(Client, Input, []).

-spec create_signal_catalog(aws_client:aws_client(), create_signal_catalog_request(), proplists:proplist()) ->
    {ok, create_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, create_signal_catalog_errors(), tuple()}.
create_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSignalCatalog">>, Input, Options).

%% @doc Creates a state template.
%%
%% State templates contain state properties, which are signals that belong to
%% a signal catalog that is synchronized between the Amazon Web Services IoT
%% FleetWise Edge and the Amazon Web Services Cloud.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec create_state_template(aws_client:aws_client(), create_state_template_request()) ->
    {ok, create_state_template_response(), tuple()} |
    {error, any()} |
    {error, create_state_template_errors(), tuple()}.
create_state_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_state_template(Client, Input, []).

-spec create_state_template(aws_client:aws_client(), create_state_template_request(), proplists:proplist()) ->
    {ok, create_state_template_response(), tuple()} |
    {error, any()} |
    {error, create_state_template_errors(), tuple()}.
create_state_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStateTemplate">>, Input, Options).

%% @doc Creates a vehicle, which is an instance of a vehicle model (model
%% manifest).
%%
%% Vehicles
%% created from the same vehicle model consist of the same signals inherited
%% from the
%% vehicle model.
%%
%% If you have an existing Amazon Web Services IoT thing, you can use Amazon
%% Web Services IoT FleetWise to create a
%% vehicle and collect data from your thing.
%%
%% For more information, see Create a vehicle
%% (AWS CLI):
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec create_vehicle(aws_client:aws_client(), create_vehicle_request()) ->
    {ok, create_vehicle_response(), tuple()} |
    {error, any()} |
    {error, create_vehicle_errors(), tuple()}.
create_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vehicle(Client, Input, []).

-spec create_vehicle(aws_client:aws_client(), create_vehicle_request(), proplists:proplist()) ->
    {ok, create_vehicle_response(), tuple()} |
    {error, any()} |
    {error, create_vehicle_errors(), tuple()}.
create_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVehicle">>, Input, Options).

%% @doc Deletes a data collection campaign.
%%
%% Deleting a campaign suspends all data collection
%% and removes it from any vehicles.
-spec delete_campaign(aws_client:aws_client(), delete_campaign_request()) ->
    {ok, delete_campaign_response(), tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_campaign(Client, Input, []).

-spec delete_campaign(aws_client:aws_client(), delete_campaign_request(), proplists:proplist()) ->
    {ok, delete_campaign_response(), tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCampaign">>, Input, Options).

%% @doc Deletes a decoder manifest.
%%
%% You can't delete a decoder manifest if it has vehicles
%% associated with it.
-spec delete_decoder_manifest(aws_client:aws_client(), delete_decoder_manifest_request()) ->
    {ok, delete_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, delete_decoder_manifest_errors(), tuple()}.
delete_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_decoder_manifest(Client, Input, []).

-spec delete_decoder_manifest(aws_client:aws_client(), delete_decoder_manifest_request(), proplists:proplist()) ->
    {ok, delete_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, delete_decoder_manifest_errors(), tuple()}.
delete_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDecoderManifest">>, Input, Options).

%% @doc Deletes a fleet.
%%
%% Before you delete a fleet, all vehicles must be
%% dissociated from the fleet. For more information, see Delete a fleet (AWS
%% CLI):
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec delete_fleet(aws_client:aws_client(), delete_fleet_request()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).

-spec delete_fleet(aws_client:aws_client(), delete_fleet_request(), proplists:proplist()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Deletes a vehicle model (model manifest).
-spec delete_model_manifest(aws_client:aws_client(), delete_model_manifest_request()) ->
    {ok, delete_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, delete_model_manifest_errors(), tuple()}.
delete_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_manifest(Client, Input, []).

-spec delete_model_manifest(aws_client:aws_client(), delete_model_manifest_request(), proplists:proplist()) ->
    {ok, delete_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, delete_model_manifest_errors(), tuple()}.
delete_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelManifest">>, Input, Options).

%% @doc Deletes a signal catalog.
-spec delete_signal_catalog(aws_client:aws_client(), delete_signal_catalog_request()) ->
    {ok, delete_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, delete_signal_catalog_errors(), tuple()}.
delete_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_signal_catalog(Client, Input, []).

-spec delete_signal_catalog(aws_client:aws_client(), delete_signal_catalog_request(), proplists:proplist()) ->
    {ok, delete_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, delete_signal_catalog_errors(), tuple()}.
delete_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSignalCatalog">>, Input, Options).

%% @doc Deletes a state template.
-spec delete_state_template(aws_client:aws_client(), delete_state_template_request()) ->
    {ok, delete_state_template_response(), tuple()} |
    {error, any()} |
    {error, delete_state_template_errors(), tuple()}.
delete_state_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_template(Client, Input, []).

-spec delete_state_template(aws_client:aws_client(), delete_state_template_request(), proplists:proplist()) ->
    {ok, delete_state_template_response(), tuple()} |
    {error, any()} |
    {error, delete_state_template_errors(), tuple()}.
delete_state_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateTemplate">>, Input, Options).

%% @doc Deletes a vehicle and removes it from any campaigns.
-spec delete_vehicle(aws_client:aws_client(), delete_vehicle_request()) ->
    {ok, delete_vehicle_response(), tuple()} |
    {error, any()} |
    {error, delete_vehicle_errors(), tuple()}.
delete_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vehicle(Client, Input, []).

-spec delete_vehicle(aws_client:aws_client(), delete_vehicle_request(), proplists:proplist()) ->
    {ok, delete_vehicle_response(), tuple()} |
    {error, any()} |
    {error, delete_vehicle_errors(), tuple()}.
delete_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVehicle">>, Input, Options).

%% @doc Removes, or disassociates, a vehicle from a fleet.
%%
%% Disassociating a vehicle from a
%% fleet doesn't delete the vehicle.
-spec disassociate_vehicle_fleet(aws_client:aws_client(), disassociate_vehicle_fleet_request()) ->
    {ok, disassociate_vehicle_fleet_response(), tuple()} |
    {error, any()} |
    {error, disassociate_vehicle_fleet_errors(), tuple()}.
disassociate_vehicle_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_vehicle_fleet(Client, Input, []).

-spec disassociate_vehicle_fleet(aws_client:aws_client(), disassociate_vehicle_fleet_request(), proplists:proplist()) ->
    {ok, disassociate_vehicle_fleet_response(), tuple()} |
    {error, any()} |
    {error, disassociate_vehicle_fleet_errors(), tuple()}.
disassociate_vehicle_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateVehicleFleet">>, Input, Options).

%% @doc Retrieves information about a campaign.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec get_campaign(aws_client:aws_client(), get_campaign_request()) ->
    {ok, get_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_errors(), tuple()}.
get_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_campaign(Client, Input, []).

-spec get_campaign(aws_client:aws_client(), get_campaign_request(), proplists:proplist()) ->
    {ok, get_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_errors(), tuple()}.
get_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCampaign">>, Input, Options).

%% @doc Retrieves information about a created decoder manifest.
-spec get_decoder_manifest(aws_client:aws_client(), get_decoder_manifest_request()) ->
    {ok, get_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, get_decoder_manifest_errors(), tuple()}.
get_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_decoder_manifest(Client, Input, []).

-spec get_decoder_manifest(aws_client:aws_client(), get_decoder_manifest_request(), proplists:proplist()) ->
    {ok, get_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, get_decoder_manifest_errors(), tuple()}.
get_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDecoderManifest">>, Input, Options).

%% @doc Retrieves the encryption configuration for resources and data in
%% Amazon Web Services IoT FleetWise.
-spec get_encryption_configuration(aws_client:aws_client(), get_encryption_configuration_request()) ->
    {ok, get_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_encryption_configuration_errors(), tuple()}.
get_encryption_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_encryption_configuration(Client, Input, []).

-spec get_encryption_configuration(aws_client:aws_client(), get_encryption_configuration_request(), proplists:proplist()) ->
    {ok, get_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_encryption_configuration_errors(), tuple()}.
get_encryption_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEncryptionConfiguration">>, Input, Options).

%% @doc Retrieves information about a fleet.
-spec get_fleet(aws_client:aws_client(), get_fleet_request()) ->
    {ok, get_fleet_response(), tuple()} |
    {error, any()} |
    {error, get_fleet_errors(), tuple()}.
get_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_fleet(Client, Input, []).

-spec get_fleet(aws_client:aws_client(), get_fleet_request(), proplists:proplist()) ->
    {ok, get_fleet_response(), tuple()} |
    {error, any()} |
    {error, get_fleet_errors(), tuple()}.
get_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFleet">>, Input, Options).

%% @doc Retrieves the logging options.
-spec get_logging_options(aws_client:aws_client(), get_logging_options_request()) ->
    {ok, get_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_logging_options_errors(), tuple()}.
get_logging_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_logging_options(Client, Input, []).

-spec get_logging_options(aws_client:aws_client(), get_logging_options_request(), proplists:proplist()) ->
    {ok, get_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_logging_options_errors(), tuple()}.
get_logging_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoggingOptions">>, Input, Options).

%% @doc Retrieves information about a vehicle model (model manifest).
-spec get_model_manifest(aws_client:aws_client(), get_model_manifest_request()) ->
    {ok, get_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, get_model_manifest_errors(), tuple()}.
get_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_model_manifest(Client, Input, []).

-spec get_model_manifest(aws_client:aws_client(), get_model_manifest_request(), proplists:proplist()) ->
    {ok, get_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, get_model_manifest_errors(), tuple()}.
get_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModelManifest">>, Input, Options).

%% @doc Retrieves information about the status of registering your Amazon Web
%% Services account, IAM, and
%% Amazon Timestream resources so that Amazon Web Services IoT FleetWise can
%% transfer your vehicle data to the Amazon Web Services
%% Cloud.
%%
%% For more information, including step-by-step procedures, see Setting up
%% Amazon Web Services IoT FleetWise:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html.
%%
%% This API operation doesn't require input parameters.
-spec get_register_account_status(aws_client:aws_client(), get_register_account_status_request()) ->
    {ok, get_register_account_status_response(), tuple()} |
    {error, any()} |
    {error, get_register_account_status_errors(), tuple()}.
get_register_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_register_account_status(Client, Input, []).

-spec get_register_account_status(aws_client:aws_client(), get_register_account_status_request(), proplists:proplist()) ->
    {ok, get_register_account_status_response(), tuple()} |
    {error, any()} |
    {error, get_register_account_status_errors(), tuple()}.
get_register_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegisterAccountStatus">>, Input, Options).

%% @doc Retrieves information about a signal catalog.
-spec get_signal_catalog(aws_client:aws_client(), get_signal_catalog_request()) ->
    {ok, get_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, get_signal_catalog_errors(), tuple()}.
get_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_signal_catalog(Client, Input, []).

-spec get_signal_catalog(aws_client:aws_client(), get_signal_catalog_request(), proplists:proplist()) ->
    {ok, get_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, get_signal_catalog_errors(), tuple()}.
get_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSignalCatalog">>, Input, Options).

%% @doc Retrieves information about a state template.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec get_state_template(aws_client:aws_client(), get_state_template_request()) ->
    {ok, get_state_template_response(), tuple()} |
    {error, any()} |
    {error, get_state_template_errors(), tuple()}.
get_state_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_state_template(Client, Input, []).

-spec get_state_template(aws_client:aws_client(), get_state_template_request(), proplists:proplist()) ->
    {ok, get_state_template_response(), tuple()} |
    {error, any()} |
    {error, get_state_template_errors(), tuple()}.
get_state_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStateTemplate">>, Input, Options).

%% @doc Retrieves information about a vehicle.
-spec get_vehicle(aws_client:aws_client(), get_vehicle_request()) ->
    {ok, get_vehicle_response(), tuple()} |
    {error, any()} |
    {error, get_vehicle_errors(), tuple()}.
get_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vehicle(Client, Input, []).

-spec get_vehicle(aws_client:aws_client(), get_vehicle_request(), proplists:proplist()) ->
    {ok, get_vehicle_response(), tuple()} |
    {error, any()} |
    {error, get_vehicle_errors(), tuple()}.
get_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVehicle">>, Input, Options).

%% @doc Retrieves information about the status of campaigns, decoder
%% manifests, or state templates
%% associated with a vehicle.
-spec get_vehicle_status(aws_client:aws_client(), get_vehicle_status_request()) ->
    {ok, get_vehicle_status_response(), tuple()} |
    {error, any()} |
    {error, get_vehicle_status_errors(), tuple()}.
get_vehicle_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vehicle_status(Client, Input, []).

-spec get_vehicle_status(aws_client:aws_client(), get_vehicle_status_request(), proplists:proplist()) ->
    {ok, get_vehicle_status_response(), tuple()} |
    {error, any()} |
    {error, get_vehicle_status_errors(), tuple()}.
get_vehicle_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVehicleStatus">>, Input, Options).

%% @doc Creates a decoder manifest using your existing CAN DBC file from your
%% local device.
%%
%% The CAN signal name must be unique and not repeated across CAN message
%% definitions in a .dbc file.
-spec import_decoder_manifest(aws_client:aws_client(), import_decoder_manifest_request()) ->
    {ok, import_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, import_decoder_manifest_errors(), tuple()}.
import_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_decoder_manifest(Client, Input, []).

-spec import_decoder_manifest(aws_client:aws_client(), import_decoder_manifest_request(), proplists:proplist()) ->
    {ok, import_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, import_decoder_manifest_errors(), tuple()}.
import_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportDecoderManifest">>, Input, Options).

%% @doc Creates a signal catalog using your existing VSS formatted content
%% from your local
%% device.
-spec import_signal_catalog(aws_client:aws_client(), import_signal_catalog_request()) ->
    {ok, import_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, import_signal_catalog_errors(), tuple()}.
import_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_signal_catalog(Client, Input, []).

-spec import_signal_catalog(aws_client:aws_client(), import_signal_catalog_request(), proplists:proplist()) ->
    {ok, import_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, import_signal_catalog_errors(), tuple()}.
import_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSignalCatalog">>, Input, Options).

%% @doc Lists information about created campaigns.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_campaigns(aws_client:aws_client(), list_campaigns_request()) ->
    {ok, list_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_campaigns_errors(), tuple()}.
list_campaigns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_campaigns(Client, Input, []).

-spec list_campaigns(aws_client:aws_client(), list_campaigns_request(), proplists:proplist()) ->
    {ok, list_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_campaigns_errors(), tuple()}.
list_campaigns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCampaigns">>, Input, Options).

%% @doc Lists the network interfaces specified in a decoder manifest.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_decoder_manifest_network_interfaces(aws_client:aws_client(), list_decoder_manifest_network_interfaces_request()) ->
    {ok, list_decoder_manifest_network_interfaces_response(), tuple()} |
    {error, any()} |
    {error, list_decoder_manifest_network_interfaces_errors(), tuple()}.
list_decoder_manifest_network_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_decoder_manifest_network_interfaces(Client, Input, []).

-spec list_decoder_manifest_network_interfaces(aws_client:aws_client(), list_decoder_manifest_network_interfaces_request(), proplists:proplist()) ->
    {ok, list_decoder_manifest_network_interfaces_response(), tuple()} |
    {error, any()} |
    {error, list_decoder_manifest_network_interfaces_errors(), tuple()}.
list_decoder_manifest_network_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDecoderManifestNetworkInterfaces">>, Input, Options).

%% @doc A list of information about signal decoders specified in a decoder
%% manifest.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_decoder_manifest_signals(aws_client:aws_client(), list_decoder_manifest_signals_request()) ->
    {ok, list_decoder_manifest_signals_response(), tuple()} |
    {error, any()} |
    {error, list_decoder_manifest_signals_errors(), tuple()}.
list_decoder_manifest_signals(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_decoder_manifest_signals(Client, Input, []).

-spec list_decoder_manifest_signals(aws_client:aws_client(), list_decoder_manifest_signals_request(), proplists:proplist()) ->
    {ok, list_decoder_manifest_signals_response(), tuple()} |
    {error, any()} |
    {error, list_decoder_manifest_signals_errors(), tuple()}.
list_decoder_manifest_signals(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDecoderManifestSignals">>, Input, Options).

%% @doc Lists decoder manifests.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_decoder_manifests(aws_client:aws_client(), list_decoder_manifests_request()) ->
    {ok, list_decoder_manifests_response(), tuple()} |
    {error, any()} |
    {error, list_decoder_manifests_errors(), tuple()}.
list_decoder_manifests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_decoder_manifests(Client, Input, []).

-spec list_decoder_manifests(aws_client:aws_client(), list_decoder_manifests_request(), proplists:proplist()) ->
    {ok, list_decoder_manifests_response(), tuple()} |
    {error, any()} |
    {error, list_decoder_manifests_errors(), tuple()}.
list_decoder_manifests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDecoderManifests">>, Input, Options).

%% @doc Retrieves information for each created fleet in an Amazon Web
%% Services account.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_fleets(aws_client:aws_client(), list_fleets_request()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).

-spec list_fleets(aws_client:aws_client(), list_fleets_request(), proplists:proplist()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc Retrieves a list of IDs for all fleets that the vehicle is associated
%% with.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_fleets_for_vehicle(aws_client:aws_client(), list_fleets_for_vehicle_request()) ->
    {ok, list_fleets_for_vehicle_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_for_vehicle_errors(), tuple()}.
list_fleets_for_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets_for_vehicle(Client, Input, []).

-spec list_fleets_for_vehicle(aws_client:aws_client(), list_fleets_for_vehicle_request(), proplists:proplist()) ->
    {ok, list_fleets_for_vehicle_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_for_vehicle_errors(), tuple()}.
list_fleets_for_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleetsForVehicle">>, Input, Options).

%% @doc Lists information about nodes specified in a vehicle model (model
%% manifest).
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_model_manifest_nodes(aws_client:aws_client(), list_model_manifest_nodes_request()) ->
    {ok, list_model_manifest_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_model_manifest_nodes_errors(), tuple()}.
list_model_manifest_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_manifest_nodes(Client, Input, []).

-spec list_model_manifest_nodes(aws_client:aws_client(), list_model_manifest_nodes_request(), proplists:proplist()) ->
    {ok, list_model_manifest_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_model_manifest_nodes_errors(), tuple()}.
list_model_manifest_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelManifestNodes">>, Input, Options).

%% @doc Retrieves a list of vehicle models (model manifests).
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_model_manifests(aws_client:aws_client(), list_model_manifests_request()) ->
    {ok, list_model_manifests_response(), tuple()} |
    {error, any()} |
    {error, list_model_manifests_errors(), tuple()}.
list_model_manifests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_manifests(Client, Input, []).

-spec list_model_manifests(aws_client:aws_client(), list_model_manifests_request(), proplists:proplist()) ->
    {ok, list_model_manifests_response(), tuple()} |
    {error, any()} |
    {error, list_model_manifests_errors(), tuple()}.
list_model_manifests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelManifests">>, Input, Options).

%% @doc Lists of information about the signals (nodes) specified in a signal
%% catalog.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_signal_catalog_nodes(aws_client:aws_client(), list_signal_catalog_nodes_request()) ->
    {ok, list_signal_catalog_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_signal_catalog_nodes_errors(), tuple()}.
list_signal_catalog_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_signal_catalog_nodes(Client, Input, []).

-spec list_signal_catalog_nodes(aws_client:aws_client(), list_signal_catalog_nodes_request(), proplists:proplist()) ->
    {ok, list_signal_catalog_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_signal_catalog_nodes_errors(), tuple()}.
list_signal_catalog_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSignalCatalogNodes">>, Input, Options).

%% @doc Lists all the created signal catalogs in an Amazon Web Services
%% account.
%%
%% You can use to list information about
%% each signal (node) specified in a signal catalog.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_signal_catalogs(aws_client:aws_client(), list_signal_catalogs_request()) ->
    {ok, list_signal_catalogs_response(), tuple()} |
    {error, any()} |
    {error, list_signal_catalogs_errors(), tuple()}.
list_signal_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_signal_catalogs(Client, Input, []).

-spec list_signal_catalogs(aws_client:aws_client(), list_signal_catalogs_request(), proplists:proplist()) ->
    {ok, list_signal_catalogs_response(), tuple()} |
    {error, any()} |
    {error, list_signal_catalogs_errors(), tuple()}.
list_signal_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSignalCatalogs">>, Input, Options).

%% @doc Lists information about created state templates.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec list_state_templates(aws_client:aws_client(), list_state_templates_request()) ->
    {ok, list_state_templates_response(), tuple()} |
    {error, any()} |
    {error, list_state_templates_errors(), tuple()}.
list_state_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_templates(Client, Input, []).

-spec list_state_templates(aws_client:aws_client(), list_state_templates_request(), proplists:proplist()) ->
    {ok, list_state_templates_response(), tuple()} |
    {error, any()} |
    {error, list_state_templates_errors(), tuple()}.
list_state_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateTemplates">>, Input, Options).

%% @doc Lists the tags (metadata) you have assigned to the resource.
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

%% @doc Retrieves a list of summaries of created vehicles.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_vehicles(aws_client:aws_client(), list_vehicles_request()) ->
    {ok, list_vehicles_response(), tuple()} |
    {error, any()} |
    {error, list_vehicles_errors(), tuple()}.
list_vehicles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vehicles(Client, Input, []).

-spec list_vehicles(aws_client:aws_client(), list_vehicles_request(), proplists:proplist()) ->
    {ok, list_vehicles_response(), tuple()} |
    {error, any()} |
    {error, list_vehicles_errors(), tuple()}.
list_vehicles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVehicles">>, Input, Options).

%% @doc Retrieves a list of summaries of all vehicles associated with a
%% fleet.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
-spec list_vehicles_in_fleet(aws_client:aws_client(), list_vehicles_in_fleet_request()) ->
    {ok, list_vehicles_in_fleet_response(), tuple()} |
    {error, any()} |
    {error, list_vehicles_in_fleet_errors(), tuple()}.
list_vehicles_in_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vehicles_in_fleet(Client, Input, []).

-spec list_vehicles_in_fleet(aws_client:aws_client(), list_vehicles_in_fleet_request(), proplists:proplist()) ->
    {ok, list_vehicles_in_fleet_response(), tuple()} |
    {error, any()} |
    {error, list_vehicles_in_fleet_errors(), tuple()}.
list_vehicles_in_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVehiclesInFleet">>, Input, Options).

%% @doc Creates or updates the encryption configuration.
%%
%% Amazon Web Services IoT FleetWise can encrypt your data and
%% resources using an Amazon Web Services managed key. Or, you can use a KMS
%% key that you own and
%% manage. For more information, see Data
%% encryption:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/data-encryption.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec put_encryption_configuration(aws_client:aws_client(), put_encryption_configuration_request()) ->
    {ok, put_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_encryption_configuration_errors(), tuple()}.
put_encryption_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_encryption_configuration(Client, Input, []).

-spec put_encryption_configuration(aws_client:aws_client(), put_encryption_configuration_request(), proplists:proplist()) ->
    {ok, put_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_encryption_configuration_errors(), tuple()}.
put_encryption_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEncryptionConfiguration">>, Input, Options).

%% @doc Creates or updates the logging option.
-spec put_logging_options(aws_client:aws_client(), put_logging_options_request()) ->
    {ok, put_logging_options_response(), tuple()} |
    {error, any()} |
    {error, put_logging_options_errors(), tuple()}.
put_logging_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_logging_options(Client, Input, []).

-spec put_logging_options(aws_client:aws_client(), put_logging_options_request(), proplists:proplist()) ->
    {ok, put_logging_options_response(), tuple()} |
    {error, any()} |
    {error, put_logging_options_errors(), tuple()}.
put_logging_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLoggingOptions">>, Input, Options).

%% @doc
%% This API operation contains deprecated parameters.
%%
%% Register your account again
%% without the Timestream resources parameter so that Amazon Web Services IoT
%% FleetWise can remove the Timestream
%% metadata stored. You should then pass the data destination into the
%% CreateCampaign:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CreateCampaign.html
%% API operation.
%%
%% You must delete any existing campaigns that include an empty data
%% destination
%% before you register your account again. For more information, see the
%% DeleteCampaign:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_DeleteCampaign.html
%% API operation.
%%
%% If you want to delete the Timestream inline policy from the service-linked
%% role, such
%% as to mitigate an overly permissive policy, you must first delete any
%% existing
%% campaigns. Then delete the service-linked role and register your account
%% again to
%% enable CloudWatch metrics. For more information, see
%% DeleteServiceLinkedRole:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html
%% in the Identity and Access Management API
%% Reference.
%%
%% Registers your Amazon Web Services account, IAM, and Amazon Timestream
%% resources so Amazon Web Services IoT FleetWise can
%% transfer your vehicle data to the Amazon Web Services Cloud. For more
%% information, including
%% step-by-step procedures, see Setting up
%% Amazon Web Services IoT FleetWise:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html.
%%
%% An Amazon Web Services account is not the same thing as a
%% &quot;user.&quot; An Amazon Web Services user:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users
%% is an identity that you create using Identity and Access Management (IAM)
%% and
%% takes the form of either an IAM user:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html or an IAM
%% role, both
%% with credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html. A single
%% Amazon Web Services account can, and typically does,
%% contain many users and roles.
-spec register_account(aws_client:aws_client(), register_account_request()) ->
    {ok, register_account_response(), tuple()} |
    {error, any()} |
    {error, register_account_errors(), tuple()}.
register_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_account(Client, Input, []).

-spec register_account(aws_client:aws_client(), register_account_request(), proplists:proplist()) ->
    {ok, register_account_response(), tuple()} |
    {error, any()} |
    {error, register_account_errors(), tuple()}.
register_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterAccount">>, Input, Options).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata which can be
%% used to manage a resource.
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

%% @doc Removes the given tags (metadata) from the resource.
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

%% @doc Updates a campaign.
-spec update_campaign(aws_client:aws_client(), update_campaign_request()) ->
    {ok, update_campaign_response(), tuple()} |
    {error, any()} |
    {error, update_campaign_errors(), tuple()}.
update_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_campaign(Client, Input, []).

-spec update_campaign(aws_client:aws_client(), update_campaign_request(), proplists:proplist()) ->
    {ok, update_campaign_response(), tuple()} |
    {error, any()} |
    {error, update_campaign_errors(), tuple()}.
update_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCampaign">>, Input, Options).

%% @doc Updates a decoder manifest.
%%
%% A decoder manifest can only be updated when the status is `DRAFT'.
%% Only
%% `ACTIVE' decoder manifests can be associated with vehicles.
-spec update_decoder_manifest(aws_client:aws_client(), update_decoder_manifest_request()) ->
    {ok, update_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, update_decoder_manifest_errors(), tuple()}.
update_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_decoder_manifest(Client, Input, []).

-spec update_decoder_manifest(aws_client:aws_client(), update_decoder_manifest_request(), proplists:proplist()) ->
    {ok, update_decoder_manifest_response(), tuple()} |
    {error, any()} |
    {error, update_decoder_manifest_errors(), tuple()}.
update_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDecoderManifest">>, Input, Options).

%% @doc Updates the description of an existing fleet.
-spec update_fleet(aws_client:aws_client(), update_fleet_request()) ->
    {ok, update_fleet_response(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet(Client, Input, []).

-spec update_fleet(aws_client:aws_client(), update_fleet_request(), proplists:proplist()) ->
    {ok, update_fleet_response(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleet">>, Input, Options).

%% @doc Updates a vehicle model (model manifest).
%%
%% If created vehicles are associated with a
%% vehicle model, it can't be updated.
-spec update_model_manifest(aws_client:aws_client(), update_model_manifest_request()) ->
    {ok, update_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, update_model_manifest_errors(), tuple()}.
update_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_manifest(Client, Input, []).

-spec update_model_manifest(aws_client:aws_client(), update_model_manifest_request(), proplists:proplist()) ->
    {ok, update_model_manifest_response(), tuple()} |
    {error, any()} |
    {error, update_model_manifest_errors(), tuple()}.
update_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelManifest">>, Input, Options).

%% @doc Updates a signal catalog.
-spec update_signal_catalog(aws_client:aws_client(), update_signal_catalog_request()) ->
    {ok, update_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, update_signal_catalog_errors(), tuple()}.
update_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_signal_catalog(Client, Input, []).

-spec update_signal_catalog(aws_client:aws_client(), update_signal_catalog_request(), proplists:proplist()) ->
    {ok, update_signal_catalog_response(), tuple()} |
    {error, any()} |
    {error, update_signal_catalog_errors(), tuple()}.
update_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSignalCatalog">>, Input, Options).

%% @doc Updates a state template.
%%
%% Access to certain Amazon Web Services IoT FleetWise features is currently
%% gated. For more information, see Amazon Web Services Region and feature
%% availability:
%% https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
%% in the Amazon Web Services IoT FleetWise Developer Guide.
-spec update_state_template(aws_client:aws_client(), update_state_template_request()) ->
    {ok, update_state_template_response(), tuple()} |
    {error, any()} |
    {error, update_state_template_errors(), tuple()}.
update_state_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_state_template(Client, Input, []).

-spec update_state_template(aws_client:aws_client(), update_state_template_request(), proplists:proplist()) ->
    {ok, update_state_template_response(), tuple()} |
    {error, any()} |
    {error, update_state_template_errors(), tuple()}.
update_state_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStateTemplate">>, Input, Options).

%% @doc Updates a vehicle.
-spec update_vehicle(aws_client:aws_client(), update_vehicle_request()) ->
    {ok, update_vehicle_response(), tuple()} |
    {error, any()} |
    {error, update_vehicle_errors(), tuple()}.
update_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vehicle(Client, Input, []).

-spec update_vehicle(aws_client:aws_client(), update_vehicle_request(), proplists:proplist()) ->
    {ok, update_vehicle_response(), tuple()} |
    {error, any()} |
    {error, update_vehicle_errors(), tuple()}.
update_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVehicle">>, Input, Options).

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
    Client1 = Client#{service => <<"iotfleetwise">>},
    Host = build_host(<<"iotfleetwise">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"IoTAutobahnControlPlane.", Action/binary>>}
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
