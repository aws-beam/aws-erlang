%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the IoT SiteWise API Reference.
%%
%% IoT SiteWise is an Amazon Web Services service that connects Industrial
%% Internet of Things (IIoT) devices to the power of the Amazon Web Services
%% Cloud. For more information, see the IoT SiteWise User Guide. For
%% information about IoT SiteWise quotas, see Quotas in the IoT SiteWise User
%% Guide.
-module(aws_iotsitewise).

-export([associate_assets/3,
         associate_assets/4,
         associate_time_series_to_asset_property/2,
         associate_time_series_to_asset_property/3,
         batch_associate_project_assets/3,
         batch_associate_project_assets/4,
         batch_disassociate_project_assets/3,
         batch_disassociate_project_assets/4,
         batch_get_asset_property_aggregates/2,
         batch_get_asset_property_aggregates/3,
         batch_get_asset_property_value/2,
         batch_get_asset_property_value/3,
         batch_get_asset_property_value_history/2,
         batch_get_asset_property_value_history/3,
         batch_put_asset_property_value/2,
         batch_put_asset_property_value/3,
         create_access_policy/2,
         create_access_policy/3,
         create_asset/2,
         create_asset/3,
         create_asset_model/2,
         create_asset_model/3,
         create_bulk_import_job/2,
         create_bulk_import_job/3,
         create_dashboard/2,
         create_dashboard/3,
         create_gateway/2,
         create_gateway/3,
         create_portal/2,
         create_portal/3,
         create_project/2,
         create_project/3,
         delete_access_policy/3,
         delete_access_policy/4,
         delete_asset/3,
         delete_asset/4,
         delete_asset_model/3,
         delete_asset_model/4,
         delete_dashboard/3,
         delete_dashboard/4,
         delete_gateway/3,
         delete_gateway/4,
         delete_portal/3,
         delete_portal/4,
         delete_project/3,
         delete_project/4,
         delete_time_series/2,
         delete_time_series/3,
         describe_access_policy/2,
         describe_access_policy/4,
         describe_access_policy/5,
         describe_asset/2,
         describe_asset/4,
         describe_asset/5,
         describe_asset_model/2,
         describe_asset_model/4,
         describe_asset_model/5,
         describe_asset_property/3,
         describe_asset_property/5,
         describe_asset_property/6,
         describe_bulk_import_job/2,
         describe_bulk_import_job/4,
         describe_bulk_import_job/5,
         describe_dashboard/2,
         describe_dashboard/4,
         describe_dashboard/5,
         describe_default_encryption_configuration/1,
         describe_default_encryption_configuration/3,
         describe_default_encryption_configuration/4,
         describe_gateway/2,
         describe_gateway/4,
         describe_gateway/5,
         describe_gateway_capability_configuration/3,
         describe_gateway_capability_configuration/5,
         describe_gateway_capability_configuration/6,
         describe_logging_options/1,
         describe_logging_options/3,
         describe_logging_options/4,
         describe_portal/2,
         describe_portal/4,
         describe_portal/5,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         describe_storage_configuration/1,
         describe_storage_configuration/3,
         describe_storage_configuration/4,
         describe_time_series/1,
         describe_time_series/3,
         describe_time_series/4,
         disassociate_assets/3,
         disassociate_assets/4,
         disassociate_time_series_from_asset_property/2,
         disassociate_time_series_from_asset_property/3,
         get_asset_property_aggregates/5,
         get_asset_property_aggregates/7,
         get_asset_property_aggregates/8,
         get_asset_property_value/1,
         get_asset_property_value/3,
         get_asset_property_value/4,
         get_asset_property_value_history/1,
         get_asset_property_value_history/3,
         get_asset_property_value_history/4,
         get_interpolated_asset_property_values/6,
         get_interpolated_asset_property_values/8,
         get_interpolated_asset_property_values/9,
         list_access_policies/1,
         list_access_policies/3,
         list_access_policies/4,
         list_asset_model_properties/2,
         list_asset_model_properties/4,
         list_asset_model_properties/5,
         list_asset_models/1,
         list_asset_models/3,
         list_asset_models/4,
         list_asset_properties/2,
         list_asset_properties/4,
         list_asset_properties/5,
         list_asset_relationships/3,
         list_asset_relationships/5,
         list_asset_relationships/6,
         list_assets/1,
         list_assets/3,
         list_assets/4,
         list_associated_assets/2,
         list_associated_assets/4,
         list_associated_assets/5,
         list_bulk_import_jobs/1,
         list_bulk_import_jobs/3,
         list_bulk_import_jobs/4,
         list_dashboards/2,
         list_dashboards/4,
         list_dashboards/5,
         list_gateways/1,
         list_gateways/3,
         list_gateways/4,
         list_portals/1,
         list_portals/3,
         list_portals/4,
         list_project_assets/2,
         list_project_assets/4,
         list_project_assets/5,
         list_projects/2,
         list_projects/4,
         list_projects/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_time_series/1,
         list_time_series/3,
         list_time_series/4,
         put_default_encryption_configuration/2,
         put_default_encryption_configuration/3,
         put_logging_options/2,
         put_logging_options/3,
         put_storage_configuration/2,
         put_storage_configuration/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_access_policy/3,
         update_access_policy/4,
         update_asset/3,
         update_asset/4,
         update_asset_model/3,
         update_asset_model/4,
         update_asset_property/4,
         update_asset_property/5,
         update_dashboard/3,
         update_dashboard/4,
         update_gateway/3,
         update_gateway/4,
         update_gateway_capability_configuration/3,
         update_gateway_capability_configuration/4,
         update_portal/3,
         update_portal/4,
         update_project/3,
         update_project/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a child asset with the given parent asset through a
%% hierarchy defined in the parent asset's model.
%%
%% For more information, see Associating assets in the IoT SiteWise User
%% Guide.
associate_assets(Client, AssetId, Input) ->
    associate_assets(Client, AssetId, Input, []).
associate_assets(Client, AssetId, Input0, Options0) ->
    Method = post,
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/associate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a time series (data stream) with an asset property.
associate_time_series_to_asset_property(Client, Input) ->
    associate_time_series_to_asset_property(Client, Input, []).
associate_time_series_to_asset_property(Client, Input0, Options0) ->
    Method = post,
    Path = ["/timeseries/associate/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"alias">>, <<"alias">>},
                     {<<"assetId">>, <<"assetId">>},
                     {<<"propertyId">>, <<"propertyId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a group (batch) of assets with an IoT SiteWise Monitor
%% project.
batch_associate_project_assets(Client, ProjectId, Input) ->
    batch_associate_project_assets(Client, ProjectId, Input, []).
batch_associate_project_assets(Client, ProjectId, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), "/assets/associate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a group (batch) of assets from an IoT SiteWise Monitor
%% project.
batch_disassociate_project_assets(Client, ProjectId, Input) ->
    batch_disassociate_project_assets(Client, ProjectId, Input, []).
batch_disassociate_project_assets(Client, ProjectId, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), "/assets/disassociate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets aggregated values (for example, average, minimum, and maximum)
%% for one or more asset properties.
%%
%% For more information, see Querying aggregates in the IoT SiteWise User
%% Guide.
batch_get_asset_property_aggregates(Client, Input) ->
    batch_get_asset_property_aggregates(Client, Input, []).
batch_get_asset_property_aggregates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties/batch/aggregates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the current value for one or more asset properties.
%%
%% For more information, see Querying current values in the IoT SiteWise User
%% Guide.
batch_get_asset_property_value(Client, Input) ->
    batch_get_asset_property_value(Client, Input, []).
batch_get_asset_property_value(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties/batch/latest"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the historical values for one or more asset properties.
%%
%% For more information, see Querying historical values in the IoT SiteWise
%% User Guide.
batch_get_asset_property_value_history(Client, Input) ->
    batch_get_asset_property_value_history(Client, Input, []).
batch_get_asset_property_value_history(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties/batch/history"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a list of asset property values to IoT SiteWise.
%%
%% Each value is a timestamp-quality-value (TQV) data point. For more
%% information, see Ingesting data using the API in the IoT SiteWise User
%% Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The `assetId' and `propertyId' of an asset property.
%%
%% </li> <li> A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty.
%%
%% </li> </ul> With respect to Unix epoch time, IoT SiteWise accepts only
%% TQVs that have a timestamp of no more than 7 days in the past and no more
%% than 10 minutes in the future. IoT SiteWise rejects timestamps outside of
%% the inclusive range of [-7 days, +10 minutes] and returns a
%% `TimestampOutOfRangeException' error.
%%
%% For each asset property, IoT SiteWise overwrites TQVs with duplicate
%% timestamps unless the newer TQV has a different quality. For example, if
%% you store a TQV `{T1, GOOD, V1}', then storing `{T1, GOOD, V2}' replaces
%% the existing TQV.
%%
%% IoT SiteWise authorizes access to each `BatchPutAssetPropertyValue' entry
%% individually. For more information, see BatchPutAssetPropertyValue
%% authorization in the IoT SiteWise User Guide.
batch_put_asset_property_value(Client, Input) ->
    batch_put_asset_property_value(Client, Input, []).
batch_put_asset_property_value(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an access policy that grants the specified identity (IAM
%% Identity Center user, IAM Identity Center group, or IAM user) access to
%% the specified IoT SiteWise Monitor portal or project resource.
create_access_policy(Client, Input) ->
    create_access_policy(Client, Input, []).
create_access_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/access-policies"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an asset from an existing asset model.
%%
%% For more information, see Creating assets in the IoT SiteWise User Guide.
create_asset(Client, Input) ->
    create_asset(Client, Input, []).
create_asset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assets"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an asset model from specified property and hierarchy
%% definitions.
%%
%% You create assets from asset models. With asset models, you can easily
%% create assets of the same type that have standardized definitions. Each
%% asset created from a model inherits the asset model's property and
%% hierarchy definitions. For more information, see Defining asset models in
%% the IoT SiteWise User Guide.
create_asset_model(Client, Input) ->
    create_asset_model(Client, Input, []).
create_asset_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/asset-models"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Defines a job to ingest data to IoT SiteWise from Amazon S3.
%%
%% For more information, see Create a bulk import job (CLI) in the Amazon
%% Simple Storage Service User Guide.
%%
%% You must enable IoT SiteWise to export data to Amazon S3 before you create
%% a bulk import job. For more information about how to configure storage
%% settings, see PutStorageConfiguration.
create_bulk_import_job(Client, Input) ->
    create_bulk_import_job(Client, Input, []).
create_bulk_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dashboard in an IoT SiteWise Monitor project.
create_dashboard(Client, Input) ->
    create_dashboard(Client, Input, []).
create_dashboard(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dashboards"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a gateway, which is a virtual or edge device that delivers
%% industrial data streams from local servers to IoT SiteWise.
%%
%% For more information, see Ingesting data using a gateway in the IoT
%% SiteWise User Guide.
create_gateway(Client, Input) ->
    create_gateway(Client, Input, []).
create_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/20200301/gateways"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a portal, which can contain projects and dashboards.
%%
%% IoT SiteWise Monitor uses IAM Identity Center or IAM to authenticate
%% portal users and manage user permissions.
%%
%% Before you can sign in to a new portal, you must add at least one identity
%% to that portal. For more information, see Adding or removing portal
%% administrators in the IoT SiteWise User Guide.
create_portal(Client, Input) ->
    create_portal(Client, Input, []).
create_portal(Client, Input0, Options0) ->
    Method = post,
    Path = ["/portals"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a project in the specified portal.
%%
%% Make sure that the project name and description don't contain confidential
%% information.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/projects"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an access policy that grants the specified identity access to
%% the specified IoT SiteWise Monitor resource.
%%
%% You can use this operation to revoke access to an IoT SiteWise Monitor
%% resource.
delete_access_policy(Client, AccessPolicyId, Input) ->
    delete_access_policy(Client, AccessPolicyId, Input, []).
delete_access_policy(Client, AccessPolicyId, Input0, Options0) ->
    Method = delete,
    Path = ["/access-policies/", aws_util:encode_uri(AccessPolicyId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an asset.
%%
%% This action can't be undone. For more information, see Deleting assets and
%% models in the IoT SiteWise User Guide.
%%
%% You can't delete an asset that's associated to another asset. For more
%% information, see DisassociateAssets.
delete_asset(Client, AssetId, Input) ->
    delete_asset(Client, AssetId, Input, []).
delete_asset(Client, AssetId, Input0, Options0) ->
    Method = delete,
    Path = ["/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an asset model.
%%
%% This action can't be undone. You must delete all assets created from an
%% asset model before you can delete the model. Also, you can't delete an
%% asset model if a parent asset model exists that contains a property
%% formula expression that depends on the asset model that you want to
%% delete. For more information, see Deleting assets and models in the IoT
%% SiteWise User Guide.
delete_asset_model(Client, AssetModelId, Input) ->
    delete_asset_model(Client, AssetModelId, Input, []).
delete_asset_model(Client, AssetModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dashboard from IoT SiteWise Monitor.
delete_dashboard(Client, DashboardId, Input) ->
    delete_dashboard(Client, DashboardId, Input, []).
delete_dashboard(Client, DashboardId, Input0, Options0) ->
    Method = delete,
    Path = ["/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a gateway from IoT SiteWise.
%%
%% When you delete a gateway, some of the gateway's files remain in your
%% gateway's file system.
delete_gateway(Client, GatewayId, Input) ->
    delete_gateway(Client, GatewayId, Input, []).
delete_gateway(Client, GatewayId, Input0, Options0) ->
    Method = delete,
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a portal from IoT SiteWise Monitor.
delete_portal(Client, PortalId, Input) ->
    delete_portal(Client, PortalId, Input, []).
delete_portal(Client, PortalId, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a project from IoT SiteWise Monitor.
delete_project(Client, ProjectId, Input) ->
    delete_project(Client, ProjectId, Input, []).
delete_project(Client, ProjectId, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a time series (data stream).
%%
%% If you delete a time series that's associated with an asset property, the
%% asset property still exists, but the time series will no longer be
%% associated with this asset property.
%%
%% To identify a time series, do one of the following:
%%
%% <ul> <li> If the time series isn't associated with an asset property,
%% specify the `alias' of the time series.
%%
%% </li> <li> If the time series is associated with an asset property,
%% specify one of the following:
%%
%% <ul> <li> The `alias' of the time series.
%%
%% </li> <li> The `assetId' and `propertyId' that identifies the asset
%% property.
%%
%% </li> </ul> </li> </ul>
delete_time_series(Client, Input) ->
    delete_time_series(Client, Input, []).
delete_time_series(Client, Input0, Options0) ->
    Method = post,
    Path = ["/timeseries/delete/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"alias">>, <<"alias">>},
                     {<<"assetId">>, <<"assetId">>},
                     {<<"propertyId">>, <<"propertyId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an access policy, which specifies an identity's access to
%% an IoT SiteWise Monitor portal or project.
describe_access_policy(Client, AccessPolicyId)
  when is_map(Client) ->
    describe_access_policy(Client, AccessPolicyId, #{}, #{}).

describe_access_policy(Client, AccessPolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_access_policy(Client, AccessPolicyId, QueryMap, HeadersMap, []).

describe_access_policy(Client, AccessPolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-policies/", aws_util:encode_uri(AccessPolicyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset.
describe_asset(Client, AssetId)
  when is_map(Client) ->
    describe_asset(Client, AssetId, #{}, #{}).

describe_asset(Client, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset(Client, AssetId, QueryMap, HeadersMap, []).

describe_asset(Client, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"excludeProperties">>, maps:get(<<"excludeProperties">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset model.
describe_asset_model(Client, AssetModelId)
  when is_map(Client) ->
    describe_asset_model(Client, AssetModelId, #{}, #{}).

describe_asset_model(Client, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_model(Client, AssetModelId, QueryMap, HeadersMap, []).

describe_asset_model(Client, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"excludeProperties">>, maps:get(<<"excludeProperties">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset property.
%%
%% When you call this operation for an attribute property, this response
%% includes the default attribute value that you define in the asset model.
%% If you update the default value in the model, this operation's response
%% includes the new default value.
%%
%% This operation doesn't return the value of the asset property. To get the
%% value of an asset property, use GetAssetPropertyValue.
describe_asset_property(Client, AssetId, PropertyId)
  when is_map(Client) ->
    describe_asset_property(Client, AssetId, PropertyId, #{}, #{}).

describe_asset_property(Client, AssetId, PropertyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_property(Client, AssetId, PropertyId, QueryMap, HeadersMap, []).

describe_asset_property(Client, AssetId, PropertyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/properties/", aws_util:encode_uri(PropertyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a bulk import job request.
%%
%% For more information, see Describe a bulk import job (CLI) in the Amazon
%% Simple Storage Service User Guide.
describe_bulk_import_job(Client, JobId)
  when is_map(Client) ->
    describe_bulk_import_job(Client, JobId, #{}, #{}).

describe_bulk_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bulk_import_job(Client, JobId, QueryMap, HeadersMap, []).

describe_bulk_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dashboard.
describe_dashboard(Client, DashboardId)
  when is_map(Client) ->
    describe_dashboard(Client, DashboardId, #{}, #{}).

describe_dashboard(Client, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard(Client, DashboardId, QueryMap, HeadersMap, []).

describe_dashboard(Client, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the default encryption configuration for
%% the Amazon Web Services account in the default or specified Region.
%%
%% For more information, see Key management in the IoT SiteWise User Guide.
describe_default_encryption_configuration(Client)
  when is_map(Client) ->
    describe_default_encryption_configuration(Client, #{}, #{}).

describe_default_encryption_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_default_encryption_configuration(Client, QueryMap, HeadersMap, []).

describe_default_encryption_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration/account/encryption"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a gateway.
describe_gateway(Client, GatewayId)
  when is_map(Client) ->
    describe_gateway(Client, GatewayId, #{}, #{}).

describe_gateway(Client, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway(Client, GatewayId, QueryMap, HeadersMap, []).

describe_gateway(Client, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a gateway capability configuration.
%%
%% Each gateway capability defines data sources for a gateway. A capability
%% configuration can contain multiple data source configurations. If you
%% define OPC-UA sources for a gateway in the IoT SiteWise console, all of
%% your OPC-UA sources are stored in one capability configuration. To list
%% all capability configurations for a gateway, use DescribeGateway.
describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId)
  when is_map(Client) ->
    describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, #{}, #{}).

describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, QueryMap, HeadersMap, []).

describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), "/capability/", aws_util:encode_uri(CapabilityNamespace), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current IoT SiteWise logging options.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, #{}, #{}).

describe_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_options(Client, QueryMap, HeadersMap, []).

describe_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a portal.
describe_portal(Client, PortalId)
  when is_map(Client) ->
    describe_portal(Client, PortalId, #{}, #{}).

describe_portal(Client, PortalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_portal(Client, PortalId, QueryMap, HeadersMap, []).

describe_portal(Client, PortalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a project.
describe_project(Client, ProjectId)
  when is_map(Client) ->
    describe_project(Client, ProjectId, #{}, #{}).

describe_project(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectId, QueryMap, HeadersMap, []).

describe_project(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the storage configuration for IoT
%% SiteWise.
describe_storage_configuration(Client)
  when is_map(Client) ->
    describe_storage_configuration(Client, #{}, #{}).

describe_storage_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_storage_configuration(Client, QueryMap, HeadersMap, []).

describe_storage_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration/account/storage"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a time series (data stream).
%%
%% To identify a time series, do one of the following:
%%
%% <ul> <li> If the time series isn't associated with an asset property,
%% specify the `alias' of the time series.
%%
%% </li> <li> If the time series is associated with an asset property,
%% specify one of the following:
%%
%% <ul> <li> The `alias' of the time series.
%%
%% </li> <li> The `assetId' and `propertyId' that identifies the asset
%% property.
%%
%% </li> </ul> </li> </ul>
describe_time_series(Client)
  when is_map(Client) ->
    describe_time_series(Client, #{}, #{}).

describe_time_series(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_time_series(Client, QueryMap, HeadersMap, []).

describe_time_series(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/timeseries/describe/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a child asset from the given parent asset through a
%% hierarchy defined in the parent asset's model.
disassociate_assets(Client, AssetId, Input) ->
    disassociate_assets(Client, AssetId, Input, []).
disassociate_assets(Client, AssetId, Input0, Options0) ->
    Method = post,
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/disassociate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a time series (data stream) from an asset property.
disassociate_time_series_from_asset_property(Client, Input) ->
    disassociate_time_series_from_asset_property(Client, Input, []).
disassociate_time_series_from_asset_property(Client, Input0, Options0) ->
    Method = post,
    Path = ["/timeseries/disassociate/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"alias">>, <<"alias">>},
                     {<<"assetId">>, <<"assetId">>},
                     {<<"propertyId">>, <<"propertyId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets aggregated values for an asset property.
%%
%% For more information, see Querying aggregates in the IoT SiteWise User
%% Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The `assetId' and `propertyId' of an asset property.
%%
%% </li> <li> A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty.
%%
%% </li> </ul>
get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate)
  when is_map(Client) ->
    get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, #{}, #{}).

get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, QueryMap, HeadersMap, []).

get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/aggregates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"aggregateTypes">>, AggregateTypes},
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"endDate">>, EndDate},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)},
        {<<"qualities">>, maps:get(<<"qualities">>, QueryMap, undefined)},
        {<<"resolution">>, Resolution},
        {<<"startDate">>, StartDate},
        {<<"timeOrdering">>, maps:get(<<"timeOrdering">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an asset property's current value.
%%
%% For more information, see Querying current values in the IoT SiteWise User
%% Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The `assetId' and `propertyId' of an asset property.
%%
%% </li> <li> A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty.
%%
%% </li> </ul>
get_asset_property_value(Client)
  when is_map(Client) ->
    get_asset_property_value(Client, #{}, #{}).

get_asset_property_value(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_property_value(Client, QueryMap, HeadersMap, []).

get_asset_property_value(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/latest"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the history of an asset property's values.
%%
%% For more information, see Querying historical values in the IoT SiteWise
%% User Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The `assetId' and `propertyId' of an asset property.
%%
%% </li> <li> A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty.
%%
%% </li> </ul>
get_asset_property_value_history(Client)
  when is_map(Client) ->
    get_asset_property_value_history(Client, #{}, #{}).

get_asset_property_value_history(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_property_value_history(Client, QueryMap, HeadersMap, []).

get_asset_property_value_history(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/history"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"endDate">>, maps:get(<<"endDate">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)},
        {<<"qualities">>, maps:get(<<"qualities">>, QueryMap, undefined)},
        {<<"startDate">>, maps:get(<<"startDate">>, QueryMap, undefined)},
        {<<"timeOrdering">>, maps:get(<<"timeOrdering">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get interpolated values for an asset property for a specified time
%% interval, during a period of time.
%%
%% If your time series is missing data points during the specified time
%% interval, you can use interpolation to estimate the missing data.
%%
%% For example, you can use this operation to return the interpolated
%% temperature values for a wind turbine every 24 hours over a duration of 7
%% days.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The `assetId' and `propertyId' of an asset property.
%%
%% </li> <li> A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty.
%%
%% </li> </ul>
get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type)
  when is_map(Client) ->
    get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, #{}, #{}).

get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, QueryMap, HeadersMap, []).

get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/interpolated"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"endTimeInSeconds">>, EndTimeInSeconds},
        {<<"endTimeOffsetInNanos">>, maps:get(<<"endTimeOffsetInNanos">>, QueryMap, undefined)},
        {<<"intervalInSeconds">>, IntervalInSeconds},
        {<<"intervalWindowInSeconds">>, maps:get(<<"intervalWindowInSeconds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)},
        {<<"quality">>, Quality},
        {<<"startTimeInSeconds">>, StartTimeInSeconds},
        {<<"startTimeOffsetInNanos">>, maps:get(<<"startTimeOffsetInNanos">>, QueryMap, undefined)},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of access policies for an identity (an IAM
%% Identity Center user, an IAM Identity Center group, or an IAM user) or an
%% IoT SiteWise Monitor resource (a portal or project).
list_access_policies(Client)
  when is_map(Client) ->
    list_access_policies(Client, #{}, #{}).

list_access_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_policies(Client, QueryMap, HeadersMap, []).

list_access_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-policies"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"iamArn">>, maps:get(<<"iamArn">>, QueryMap, undefined)},
        {<<"identityId">>, maps:get(<<"identityId">>, QueryMap, undefined)},
        {<<"identityType">>, maps:get(<<"identityType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceId">>, maps:get(<<"resourceId">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of properties associated with an asset
%% model.
%%
%% If you update properties associated with the model before you finish
%% listing all the properties, you need to start all over again.
list_asset_model_properties(Client, AssetModelId)
  when is_map(Client) ->
    list_asset_model_properties(Client, AssetModelId, #{}, #{}).

list_asset_model_properties(Client, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_model_properties(Client, AssetModelId, QueryMap, HeadersMap, []).

list_asset_model_properties(Client, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/properties"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of summaries of all asset models.
list_asset_models(Client)
  when is_map(Client) ->
    list_asset_models(Client, #{}, #{}).

list_asset_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_models(Client, QueryMap, HeadersMap, []).

list_asset_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of properties associated with an asset.
%%
%% If you update properties associated with the model before you finish
%% listing all the properties, you need to start all over again.
list_asset_properties(Client, AssetId)
  when is_map(Client) ->
    list_asset_properties(Client, AssetId, #{}, #{}).

list_asset_properties(Client, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_properties(Client, AssetId, QueryMap, HeadersMap, []).

list_asset_properties(Client, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/properties"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of asset relationships for an asset.
%%
%% You can use this operation to identify an asset's root asset and all
%% associated assets between that asset and its root.
list_asset_relationships(Client, AssetId, TraversalType)
  when is_map(Client) ->
    list_asset_relationships(Client, AssetId, TraversalType, #{}, #{}).

list_asset_relationships(Client, AssetId, TraversalType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_relationships(Client, AssetId, TraversalType, QueryMap, HeadersMap, []).

list_asset_relationships(Client, AssetId, TraversalType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/assetRelationships"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"traversalType">>, TraversalType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of asset summaries.
%%
%% You can use this operation to do the following:
%%
%% <ul> <li> List assets based on a specific asset model.
%%
%% </li> <li> List top-level assets.
%%
%% </li> </ul> You can't use this operation to list all assets. To retrieve
%% summaries for all of your assets, use ListAssetModels to get all of your
%% asset model IDs. Then, use ListAssets to get all assets for each asset
%% model.
list_assets(Client)
  when is_map(Client) ->
    list_assets(Client, #{}, #{}).

list_assets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assets(Client, QueryMap, HeadersMap, []).

list_assets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelId">>, maps:get(<<"assetModelId">>, QueryMap, undefined)},
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of associated assets.
%%
%% You can use this operation to do the following:
%%
%% <ul> <li> List child assets associated to a parent asset by a hierarchy
%% that you specify.
%%
%% </li> <li> List an asset's parent asset.
%%
%% </li> </ul>
list_associated_assets(Client, AssetId)
  when is_map(Client) ->
    list_associated_assets(Client, AssetId, #{}, #{}).

list_associated_assets(Client, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_assets(Client, AssetId, QueryMap, HeadersMap, []).

list_associated_assets(Client, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/hierarchies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"hierarchyId">>, maps:get(<<"hierarchyId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"traversalDirection">>, maps:get(<<"traversalDirection">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of bulk import job requests.
%%
%% For more information, see List bulk import jobs (CLI) in the IoT SiteWise
%% User Guide.
list_bulk_import_jobs(Client)
  when is_map(Client) ->
    list_bulk_import_jobs(Client, #{}, #{}).

list_bulk_import_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bulk_import_jobs(Client, QueryMap, HeadersMap, []).

list_bulk_import_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of dashboards for an IoT SiteWise Monitor
%% project.
list_dashboards(Client, ProjectId)
  when is_map(Client) ->
    list_dashboards(Client, ProjectId, #{}, #{}).

list_dashboards(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dashboards(Client, ProjectId, QueryMap, HeadersMap, []).

list_dashboards(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dashboards"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectId">>, ProjectId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of gateways.
list_gateways(Client)
  when is_map(Client) ->
    list_gateways(Client, #{}, #{}).

list_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateways(Client, QueryMap, HeadersMap, []).

list_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/20200301/gateways"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of IoT SiteWise Monitor portals.
list_portals(Client)
  when is_map(Client) ->
    list_portals(Client, #{}, #{}).

list_portals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_portals(Client, QueryMap, HeadersMap, []).

list_portals(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of assets associated with an IoT SiteWise
%% Monitor project.
list_project_assets(Client, ProjectId)
  when is_map(Client) ->
    list_project_assets(Client, ProjectId, #{}, #{}).

list_project_assets(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_project_assets(Client, ProjectId, QueryMap, HeadersMap, []).

list_project_assets(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectId), "/assets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of projects for an IoT SiteWise Monitor
%% portal.
list_projects(Client, PortalId)
  when is_map(Client) ->
    list_projects(Client, PortalId, #{}, #{}).

list_projects(Client, PortalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, PortalId, QueryMap, HeadersMap, []).

list_projects(Client, PortalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"portalId">>, PortalId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of tags for an IoT SiteWise resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of time series (data streams).
list_time_series(Client)
  when is_map(Client) ->
    list_time_series(Client, #{}, #{}).

list_time_series(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_time_series(Client, QueryMap, HeadersMap, []).

list_time_series(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/timeseries/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"aliasPrefix">>, maps:get(<<"aliasPrefix">>, QueryMap, undefined)},
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"timeSeriesType">>, maps:get(<<"timeSeriesType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the default encryption configuration for the Amazon Web Services
%% account.
%%
%% For more information, see Key management in the IoT SiteWise User Guide.
put_default_encryption_configuration(Client, Input) ->
    put_default_encryption_configuration(Client, Input, []).
put_default_encryption_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/account/encryption"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets logging options for IoT SiteWise.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).
put_logging_options(Client, Input0, Options0) ->
    Method = put,
    Path = ["/logging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Configures storage settings for IoT SiteWise.
put_storage_configuration(Client, Input) ->
    put_storage_configuration(Client, Input, []).
put_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/account/storage"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to an IoT SiteWise resource.
%%
%% If a tag already exists for the resource, this operation updates the tag's
%% value.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from an IoT SiteWise resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing access policy that specifies an identity's access
%% to an IoT SiteWise Monitor portal or project resource.
update_access_policy(Client, AccessPolicyId, Input) ->
    update_access_policy(Client, AccessPolicyId, Input, []).
update_access_policy(Client, AccessPolicyId, Input0, Options0) ->
    Method = put,
    Path = ["/access-policies/", aws_util:encode_uri(AccessPolicyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset's name.
%%
%% For more information, see Updating assets and models in the IoT SiteWise
%% User Guide.
update_asset(Client, AssetId, Input) ->
    update_asset(Client, AssetId, Input, []).
update_asset(Client, AssetId, Input0, Options0) ->
    Method = put,
    Path = ["/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset model and all of the assets that were created from
%% the model.
%%
%% Each asset created from the model inherits the updated asset model's
%% property and hierarchy definitions. For more information, see Updating
%% assets and models in the IoT SiteWise User Guide.
%%
%% This operation overwrites the existing model with the provided model. To
%% avoid deleting your asset model's properties or hierarchies, you must
%% include their IDs and definitions in the updated asset model payload. For
%% more information, see DescribeAssetModel.
%%
%% If you remove a property from an asset model, IoT SiteWise deletes all
%% previous data for that property. If you remove a hierarchy definition from
%% an asset model, IoT SiteWise disassociates every asset associated with
%% that hierarchy. You can't change the type or data type of an existing
%% property.
update_asset_model(Client, AssetModelId, Input) ->
    update_asset_model(Client, AssetModelId, Input, []).
update_asset_model(Client, AssetModelId, Input0, Options0) ->
    Method = put,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset property's alias and notification state.
%%
%% This operation overwrites the property's existing alias and notification
%% state. To keep your existing property's alias or notification state, you
%% must include the existing values in the UpdateAssetProperty request. For
%% more information, see DescribeAssetProperty.
update_asset_property(Client, AssetId, PropertyId, Input) ->
    update_asset_property(Client, AssetId, PropertyId, Input, []).
update_asset_property(Client, AssetId, PropertyId, Input0, Options0) ->
    Method = put,
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/properties/", aws_util:encode_uri(PropertyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an IoT SiteWise Monitor dashboard.
update_dashboard(Client, DashboardId, Input) ->
    update_dashboard(Client, DashboardId, Input, []).
update_dashboard(Client, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a gateway's name.
update_gateway(Client, GatewayId, Input) ->
    update_gateway(Client, GatewayId, Input, []).
update_gateway(Client, GatewayId, Input0, Options0) ->
    Method = put,
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a gateway capability configuration or defines a new
%% capability configuration.
%%
%% Each gateway capability defines data sources for a gateway. A capability
%% configuration can contain multiple data source configurations. If you
%% define OPC-UA sources for a gateway in the IoT SiteWise console, all of
%% your OPC-UA sources are stored in one capability configuration. To list
%% all capability configurations for a gateway, use DescribeGateway.
update_gateway_capability_configuration(Client, GatewayId, Input) ->
    update_gateway_capability_configuration(Client, GatewayId, Input, []).
update_gateway_capability_configuration(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), "/capability"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an IoT SiteWise Monitor portal.
update_portal(Client, PortalId, Input) ->
    update_portal(Client, PortalId, Input, []).
update_portal(Client, PortalId, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an IoT SiteWise Monitor project.
update_project(Client, ProjectId, Input) ->
    update_project(Client, ProjectId, Input, []).
update_project(Client, ProjectId, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"iotsitewise">>},
    Host = build_host(<<"iotsitewise">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
