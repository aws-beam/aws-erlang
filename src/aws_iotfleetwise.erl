%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services IoT FleetWise is a fully managed service that you
%% can use to collect, model, and transfer vehicle data to the Amazon Web
%% Services cloud at scale.
%%
%% With Amazon Web Services IoT FleetWise, you can standardize all of your
%% vehicle data models, independent of the in-vehicle communication
%% architecture, and define data collection rules to transfer only high-value
%% data to the cloud.
%%
%% For more information, see What is Amazon Web Services IoT FleetWise? in
%% the Amazon Web Services IoT FleetWise Developer Guide.
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
         update_vehicle/2,
         update_vehicle/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds, or associates, a vehicle with a fleet.
associate_vehicle_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_vehicle_fleet(Client, Input, []).
associate_vehicle_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVehicleFleet">>, Input, Options).

%% @doc Creates a group, or batch, of vehicles.
%%
%% You must specify a decoder manifest and a vehicle model (model manifest)
%% for each vehicle.
%%
%% For more information, see Create multiple vehicles (AWS CLI) in the Amazon
%% Web Services IoT FleetWise Developer Guide.
batch_create_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_vehicle(Client, Input, []).
batch_create_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateVehicle">>, Input, Options).

%% @doc Updates a group, or batch, of vehicles.
%%
%% You must specify a decoder manifest and a vehicle model (model manifest)
%% for each vehicle.
%%
%% For more information, see Update multiple vehicles (AWS CLI) in the Amazon
%% Web Services IoT FleetWise Developer Guide.
batch_update_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_vehicle(Client, Input, []).
batch_update_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateVehicle">>, Input, Options).

%% @doc Creates an orchestration of data collection rules.
%%
%% The Amazon Web Services IoT FleetWise Edge Agent software running in
%% vehicles uses campaigns to decide how to collect and transfer data to the
%% cloud. You create campaigns in the cloud. After you or your team approve
%% campaigns, Amazon Web Services IoT FleetWise automatically deploys them to
%% vehicles.
%%
%% For more information, see Collect and transfer data with campaigns in the
%% Amazon Web Services IoT FleetWise Developer Guide.
create_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_campaign(Client, Input, []).
create_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCampaign">>, Input, Options).

%% @doc Creates the decoder manifest associated with a model manifest.
%%
%% To create a decoder manifest, the following must be true:
%%
%% <ul> <li> Every signal decoder has a unique name.
%%
%% </li> <li> Each signal decoder is associated with a network interface.
%%
%% </li> <li> Each network interface has a unique ID.
%%
%% </li> <li> The signal decoders are specified in the model manifest.
%%
%% </li> </ul>
create_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_decoder_manifest(Client, Input, []).
create_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDecoderManifest">>, Input, Options).

%% @doc Creates a fleet that represents a group of vehicles.
%%
%% You must create both a signal catalog and vehicles before you can create a
%% fleet.
%%
%% For more information, see Fleets in the Amazon Web Services IoT FleetWise
%% Developer Guide.
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates a vehicle model (model manifest) that specifies signals
%% (attributes, branches, sensors, and actuators).
%%
%% For more information, see Vehicle models in the Amazon Web Services IoT
%% FleetWise Developer Guide.
create_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_manifest(Client, Input, []).
create_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelManifest">>, Input, Options).

%% @doc Creates a collection of standardized signals that can be reused to
%% create vehicle models.
create_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_signal_catalog(Client, Input, []).
create_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSignalCatalog">>, Input, Options).

%% @doc Creates a vehicle, which is an instance of a vehicle model (model
%% manifest).
%%
%% Vehicles created from the same vehicle model consist of the same signals
%% inherited from the vehicle model.
%%
%% If you have an existing Amazon Web Services IoT thing, you can use Amazon
%% Web Services IoT FleetWise to create a vehicle and collect data from your
%% thing.
%%
%% For more information, see Create a vehicle (AWS CLI) in the Amazon Web
%% Services IoT FleetWise Developer Guide.
create_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vehicle(Client, Input, []).
create_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVehicle">>, Input, Options).

%% @doc Deletes a data collection campaign.
%%
%% Deleting a campaign suspends all data collection and removes it from any
%% vehicles.
delete_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_campaign(Client, Input, []).
delete_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCampaign">>, Input, Options).

%% @doc Deletes a decoder manifest.
%%
%% You can't delete a decoder manifest if it has vehicles associated with
%% it.
%%
%% If the decoder manifest is successfully deleted, Amazon Web Services IoT
%% FleetWise sends back an HTTP 200 response with an empty body.
delete_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_decoder_manifest(Client, Input, []).
delete_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDecoderManifest">>, Input, Options).

%% @doc Deletes a fleet.
%%
%% Before you delete a fleet, all vehicles must be dissociated from the
%% fleet. For more information, see Delete a fleet (AWS CLI) in the Amazon
%% Web Services IoT FleetWise Developer Guide.
%%
%% If the fleet is successfully deleted, Amazon Web Services IoT FleetWise
%% sends back an HTTP 200 response with an empty body.
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Deletes a vehicle model (model manifest).
%%
%% If the vehicle model is successfully deleted, Amazon Web Services IoT
%% FleetWise sends back an HTTP 200 response with an empty body.
delete_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_manifest(Client, Input, []).
delete_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelManifest">>, Input, Options).

%% @doc Deletes a signal catalog.
%%
%% If the signal catalog is successfully deleted, Amazon Web Services IoT
%% FleetWise sends back an HTTP 200 response with an empty body.
delete_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_signal_catalog(Client, Input, []).
delete_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSignalCatalog">>, Input, Options).

%% @doc Deletes a vehicle and removes it from any campaigns.
%%
%% If the vehicle is successfully deleted, Amazon Web Services IoT FleetWise
%% sends back an HTTP 200 response with an empty body.
delete_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vehicle(Client, Input, []).
delete_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVehicle">>, Input, Options).

%% @doc Removes, or disassociates, a vehicle from a fleet.
%%
%% Disassociating a vehicle from a fleet doesn't delete the vehicle.
%%
%% If the vehicle is successfully dissociated from a fleet, Amazon Web
%% Services IoT FleetWise sends back an HTTP 200 response with an empty body.
disassociate_vehicle_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_vehicle_fleet(Client, Input, []).
disassociate_vehicle_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateVehicleFleet">>, Input, Options).

%% @doc Retrieves information about a campaign.
get_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_campaign(Client, Input, []).
get_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCampaign">>, Input, Options).

%% @doc Retrieves information about a created decoder manifest.
get_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_decoder_manifest(Client, Input, []).
get_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDecoderManifest">>, Input, Options).

%% @doc Retrieves the encryption configuration for resources and data in
%% Amazon Web Services IoT FleetWise.
get_encryption_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_encryption_configuration(Client, Input, []).
get_encryption_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEncryptionConfiguration">>, Input, Options).

%% @doc Retrieves information about a fleet.
get_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_fleet(Client, Input, []).
get_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFleet">>, Input, Options).

%% @doc Retrieves the logging options.
get_logging_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_logging_options(Client, Input, []).
get_logging_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoggingOptions">>, Input, Options).

%% @doc Retrieves information about a vehicle model (model manifest).
get_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_model_manifest(Client, Input, []).
get_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModelManifest">>, Input, Options).

%% @doc Retrieves information about the status of registering your Amazon Web
%% Services account, IAM, and Amazon Timestream resources so that Amazon Web
%% Services IoT FleetWise can transfer your vehicle data to the Amazon Web
%% Services Cloud.
%%
%% For more information, including step-by-step procedures, see Setting up
%% Amazon Web Services IoT FleetWise.
%%
%% This API operation doesn't require input parameters.
get_register_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_register_account_status(Client, Input, []).
get_register_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegisterAccountStatus">>, Input, Options).

%% @doc Retrieves information about a signal catalog.
get_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_signal_catalog(Client, Input, []).
get_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSignalCatalog">>, Input, Options).

%% @doc Retrieves information about a vehicle.
get_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vehicle(Client, Input, []).
get_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVehicle">>, Input, Options).

%% @doc Retrieves information about the status of a vehicle with any
%% associated campaigns.
get_vehicle_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vehicle_status(Client, Input, []).
get_vehicle_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVehicleStatus">>, Input, Options).

%% @doc Creates a decoder manifest using your existing CAN DBC file from your
%% local device.
import_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_decoder_manifest(Client, Input, []).
import_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportDecoderManifest">>, Input, Options).

%% @doc Creates a signal catalog using your existing VSS formatted content
%% from your local device.
import_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_signal_catalog(Client, Input, []).
import_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSignalCatalog">>, Input, Options).

%% @doc Lists information about created campaigns.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_campaigns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_campaigns(Client, Input, []).
list_campaigns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCampaigns">>, Input, Options).

%% @doc Lists the network interfaces specified in a decoder manifest.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_decoder_manifest_network_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_decoder_manifest_network_interfaces(Client, Input, []).
list_decoder_manifest_network_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDecoderManifestNetworkInterfaces">>, Input, Options).

%% @doc A list of information about signal decoders specified in a decoder
%% manifest.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_decoder_manifest_signals(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_decoder_manifest_signals(Client, Input, []).
list_decoder_manifest_signals(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDecoderManifestSignals">>, Input, Options).

%% @doc Lists decoder manifests.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_decoder_manifests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_decoder_manifests(Client, Input, []).
list_decoder_manifests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDecoderManifests">>, Input, Options).

%% @doc Retrieves information for each created fleet in an Amazon Web
%% Services account.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc Retrieves a list of IDs for all fleets that the vehicle is associated
%% with.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_fleets_for_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets_for_vehicle(Client, Input, []).
list_fleets_for_vehicle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleetsForVehicle">>, Input, Options).

%% @doc Lists information about nodes specified in a vehicle model (model
%% manifest).
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_model_manifest_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_manifest_nodes(Client, Input, []).
list_model_manifest_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelManifestNodes">>, Input, Options).

%% @doc Retrieves a list of vehicle models (model manifests).
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_model_manifests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_manifests(Client, Input, []).
list_model_manifests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelManifests">>, Input, Options).

%% @doc Lists of information about the signals (nodes) specified in a signal
%% catalog.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_signal_catalog_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_signal_catalog_nodes(Client, Input, []).
list_signal_catalog_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSignalCatalogNodes">>, Input, Options).

%% @doc Lists all the created signal catalogs in an Amazon Web Services
%% account.
%%
%% You can use to list information about each signal (node) specified in a
%% signal catalog.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_signal_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_signal_catalogs(Client, Input, []).
list_signal_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSignalCatalogs">>, Input, Options).

%% @doc Lists the tags (metadata) you have assigned to the resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Retrieves a list of summaries of created vehicles.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_vehicles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vehicles(Client, Input, []).
list_vehicles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVehicles">>, Input, Options).

%% @doc Retrieves a list of summaries of all vehicles associated with a
%% fleet.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the request to return more results.
list_vehicles_in_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vehicles_in_fleet(Client, Input, []).
list_vehicles_in_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVehiclesInFleet">>, Input, Options).

%% @doc Creates or updates the encryption configuration.
%%
%% Amazon Web Services IoT FleetWise can encrypt your data and resources
%% using an Amazon Web Services managed key. Or, you can use a KMS key that
%% you own and manage. For more information, see Data encryption in the
%% Amazon Web Services IoT FleetWise Developer Guide.
put_encryption_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_encryption_configuration(Client, Input, []).
put_encryption_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEncryptionConfiguration">>, Input, Options).

%% @doc Creates or updates the logging option.
put_logging_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_logging_options(Client, Input, []).
put_logging_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLoggingOptions">>, Input, Options).

%% @doc This API operation contains deprecated parameters.
%%
%% Register your account again without the Timestream resources parameter so
%% that Amazon Web Services IoT FleetWise can remove the Timestream metadata
%% stored. You should then pass the data destination into the CreateCampaign
%% API operation.
%%
%% You must delete any existing campaigns that include an empty data
%% destination before you register your account again. For more information,
%% see the DeleteCampaign API operation.
%%
%% If you want to delete the Timestream inline policy from the service-linked
%% role, such as to mitigate an overly permissive policy, you must first
%% delete any existing campaigns. Then delete the service-linked role and
%% register your account again to enable CloudWatch metrics. For more
%% information, see DeleteServiceLinkedRole in the Identity and Access
%% Management API Reference.
%%
%% Registers your Amazon Web Services account, IAM, and Amazon Timestream
%% resources so Amazon Web Services IoT FleetWise can transfer your vehicle
%% data to the Amazon Web Services Cloud. For more information, including
%% step-by-step procedures, see Setting up Amazon Web Services IoT FleetWise.
%%
%% An Amazon Web Services account is not the same thing as a
%% &quot;user.&quot; An Amazon Web Services user is an identity that you
%% create using Identity and Access Management (IAM) and takes the form of
%% either an IAM user or an IAM role, both with credentials. A single Amazon
%% Web Services account can, and typically does, contain many users and
%% roles.
register_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_account(Client, Input, []).
register_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterAccount">>, Input, Options).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata which can be used to manage a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the given tags (metadata) from the resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a campaign.
update_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_campaign(Client, Input, []).
update_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCampaign">>, Input, Options).

%% @doc Updates a decoder manifest.
%%
%% A decoder manifest can only be updated when the status is `DRAFT'.
%% Only `ACTIVE' decoder manifests can be associated with vehicles.
update_decoder_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_decoder_manifest(Client, Input, []).
update_decoder_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDecoderManifest">>, Input, Options).

%% @doc Updates the description of an existing fleet.
%%
%% If the fleet is successfully updated, Amazon Web Services IoT FleetWise
%% sends back an HTTP 200 response with an empty HTTP body.
update_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet(Client, Input, []).
update_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleet">>, Input, Options).

%% @doc Updates a vehicle model (model manifest).
%%
%% If created vehicles are associated with a vehicle model, it can't be
%% updated.
update_model_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_manifest(Client, Input, []).
update_model_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelManifest">>, Input, Options).

%% @doc Updates a signal catalog.
update_signal_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_signal_catalog(Client, Input, []).
update_signal_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSignalCatalog">>, Input, Options).

%% @doc Updates a vehicle.
update_vehicle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vehicle(Client, Input, []).
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
