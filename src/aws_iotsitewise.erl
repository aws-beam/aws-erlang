%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an
%% AWS service that connects <a
%% href="https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications">Industrial
%% Internet of Things (IIoT)</a> devices to the power of the AWS Cloud. For
%% more information, see the <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/">AWS IoT
%% SiteWise User Guide</a>. For information about AWS IoT SiteWise quotas,
%% see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a>
%% in the <i>AWS IoT SiteWise User Guide</i>.
-module(aws_iotsitewise).

-export([associate_assets/3,
         associate_assets/4,
         batch_associate_project_assets/3,
         batch_associate_project_assets/4,
         batch_disassociate_project_assets/3,
         batch_disassociate_project_assets/4,
         batch_put_asset_property_value/2,
         batch_put_asset_property_value/3,
         create_access_policy/2,
         create_access_policy/3,
         create_asset/2,
         create_asset/3,
         create_asset_model/2,
         create_asset_model/3,
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
         describe_access_policy/2,
         describe_access_policy/3,
         describe_asset/2,
         describe_asset/3,
         describe_asset_model/2,
         describe_asset_model/3,
         describe_asset_property/3,
         describe_asset_property/4,
         describe_dashboard/2,
         describe_dashboard/3,
         describe_gateway/2,
         describe_gateway/3,
         describe_gateway_capability_configuration/3,
         describe_gateway_capability_configuration/4,
         describe_logging_options/1,
         describe_logging_options/2,
         describe_portal/2,
         describe_portal/3,
         describe_project/2,
         describe_project/3,
         disassociate_assets/3,
         disassociate_assets/4,
         get_asset_property_aggregates/12,
         get_asset_property_aggregates/13,
         get_asset_property_value/4,
         get_asset_property_value/5,
         get_asset_property_value_history/10,
         get_asset_property_value_history/11,
         list_access_policies/7,
         list_access_policies/8,
         list_asset_models/3,
         list_asset_models/4,
         list_assets/5,
         list_assets/6,
         list_associated_assets/5,
         list_associated_assets/6,
         list_dashboards/4,
         list_dashboards/5,
         list_gateways/3,
         list_gateways/4,
         list_portals/3,
         list_portals/4,
         list_project_assets/4,
         list_project_assets/5,
         list_projects/4,
         list_projects/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_logging_options/2,
         put_logging_options/3,
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
%% hierarchy defined in the parent asset's model. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html">Associating
%% Assets</a> in the <i>AWS IoT SiteWise User Guide</i>.
associate_assets(Client, AssetId, Input) ->
    associate_assets(Client, AssetId, Input, []).
associate_assets(Client, AssetId, Input0, Options) ->
    Method = post,
    Path = ["/assets/", http_uri:encode(AssetId), "/associate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a group (batch) of assets with an AWS IoT SiteWise Monitor
%% project.
batch_associate_project_assets(Client, ProjectId, Input) ->
    batch_associate_project_assets(Client, ProjectId, Input, []).
batch_associate_project_assets(Client, ProjectId, Input0, Options) ->
    Method = post,
    Path = ["/projects/", http_uri:encode(ProjectId), "/assets/associate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a group (batch) of assets from an AWS IoT SiteWise
%% Monitor project.
batch_disassociate_project_assets(Client, ProjectId, Input) ->
    batch_disassociate_project_assets(Client, ProjectId, Input, []).
batch_disassociate_project_assets(Client, ProjectId, Input0, Options) ->
    Method = post,
    Path = ["/projects/", http_uri:encode(ProjectId), "/assets/disassociate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a list of asset property values to AWS IoT SiteWise. Each value
%% is a timestamp-quality-value (TQV) data point. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html">Ingesting
%% Data Using the API</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The <code>assetId</code> and <code>propertyId</code> of an asset
%% property.
%%
%% </li> <li> A <code>propertyAlias</code>, which is a data stream alias (for
%% example, <code>/company/windfarm/3/turbine/7/temperature</code>). To
%% define an asset property's alias, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.
%%
%% </li> </ul> <important> With respect to Unix epoch time, AWS IoT SiteWise
%% accepts only TQVs that have a timestamp of no more than 15 minutes in the
%% past and no more than 5 minutes in the future. AWS IoT SiteWise rejects
%% timestamps outside of the inclusive range of [-15, +5] minutes and returns
%% a <code>TimestampOutOfRangeException</code> error.
%%
%% For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate
%% timestamps unless the newer TQV has a different quality. For example, if
%% you store a TQV <code>{T1, GOOD, V1}</code>, then storing <code>{T1, GOOD,
%% V2}</code> replaces the existing TQV.
%%
%% </important>
batch_put_asset_property_value(Client, Input) ->
    batch_put_asset_property_value(Client, Input, []).
batch_put_asset_property_value(Client, Input0, Options) ->
    Method = post,
    Path = ["/properties"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an access policy that grants the specified AWS Single Sign-On
%% user or group access to the specified AWS IoT SiteWise Monitor portal or
%% project resource.
create_access_policy(Client, Input) ->
    create_access_policy(Client, Input, []).
create_access_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/access-policies"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an asset from an existing asset model. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html">Creating
%% Assets</a> in the <i>AWS IoT SiteWise User Guide</i>.
create_asset(Client, Input) ->
    create_asset(Client, Input, []).
create_asset(Client, Input0, Options) ->
    Method = post,
    Path = ["/assets"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an asset model from specified property and hierarchy
%% definitions. You create assets from asset models. With asset models, you
%% can easily create assets of the same type that have standardized
%% definitions. Each asset created from a model inherits the asset model's
%% property and hierarchy definitions. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html">Defining
%% Asset Models</a> in the <i>AWS IoT SiteWise User Guide</i>.
create_asset_model(Client, Input) ->
    create_asset_model(Client, Input, []).
create_asset_model(Client, Input0, Options) ->
    Method = post,
    Path = ["/asset-models"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dashboard in an AWS IoT SiteWise Monitor project.
create_dashboard(Client, Input) ->
    create_dashboard(Client, Input, []).
create_dashboard(Client, Input0, Options) ->
    Method = post,
    Path = ["/dashboards"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a gateway, which is a virtual or edge device that delivers
%% industrial data streams from local servers to AWS IoT SiteWise. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html">Ingesting
%% data using a gateway</a> in the <i>AWS IoT SiteWise User Guide</i>.
create_gateway(Client, Input) ->
    create_gateway(Client, Input, []).
create_gateway(Client, Input0, Options) ->
    Method = post,
    Path = ["/20200301/gateways"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a portal, which can contain projects and dashboards. Before
%% you can create a portal, you must configure AWS Single Sign-On in the
%% current Region. AWS IoT SiteWise Monitor uses AWS SSO to manage user
%% permissions. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso">Enabling
%% AWS SSO</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% <note> Before you can sign in to a new portal, you must add at least one
%% AWS SSO user or group to that portal. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins">Adding
%% or Removing Portal Administrators</a> in the <i>AWS IoT SiteWise User
%% Guide</i>.
%%
%% </note>
create_portal(Client, Input) ->
    create_portal(Client, Input, []).
create_portal(Client, Input0, Options) ->
    Method = post,
    Path = ["/portals"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a project in the specified portal.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options) ->
    Method = post,
    Path = ["/projects"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an access policy that grants the specified AWS Single Sign-On
%% identity access to the specified AWS IoT SiteWise Monitor resource. You
%% can use this operation to revoke access to an AWS IoT SiteWise Monitor
%% resource.
delete_access_policy(Client, AccessPolicyId, Input) ->
    delete_access_policy(Client, AccessPolicyId, Input, []).
delete_access_policy(Client, AccessPolicyId, Input0, Options) ->
    Method = delete,
    Path = ["/access-policies/", http_uri:encode(AccessPolicyId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an asset. This action can't be undone. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting
%% Assets and Models</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% <note> You can't delete an asset that's associated to another asset. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html">DisassociateAssets</a>.
%%
%% </note>
delete_asset(Client, AssetId, Input) ->
    delete_asset(Client, AssetId, Input, []).
delete_asset(Client, AssetId, Input0, Options) ->
    Method = delete,
    Path = ["/assets/", http_uri:encode(AssetId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an asset model. This action can't be undone. You must delete
%% all assets created from an asset model before you can delete the model.
%% Also, you can't delete an asset model if a parent asset model exists that
%% contains a property formula expression that depends on the asset model
%% that you want to delete. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting
%% Assets and Models</a> in the <i>AWS IoT SiteWise User Guide</i>.
delete_asset_model(Client, AssetModelId, Input) ->
    delete_asset_model(Client, AssetModelId, Input, []).
delete_asset_model(Client, AssetModelId, Input0, Options) ->
    Method = delete,
    Path = ["/asset-models/", http_uri:encode(AssetModelId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dashboard from AWS IoT SiteWise Monitor.
delete_dashboard(Client, DashboardId, Input) ->
    delete_dashboard(Client, DashboardId, Input, []).
delete_dashboard(Client, DashboardId, Input0, Options) ->
    Method = delete,
    Path = ["/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a gateway from AWS IoT SiteWise. When you delete a gateway,
%% some of the gateway's files remain in your gateway's file system. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-retention.html">Data
%% retention</a> in the <i>AWS IoT SiteWise User Guide</i>.
delete_gateway(Client, GatewayId, Input) ->
    delete_gateway(Client, GatewayId, Input, []).
delete_gateway(Client, GatewayId, Input0, Options) ->
    Method = delete,
    Path = ["/20200301/gateways/", http_uri:encode(GatewayId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a portal from AWS IoT SiteWise Monitor.
delete_portal(Client, PortalId, Input) ->
    delete_portal(Client, PortalId, Input, []).
delete_portal(Client, PortalId, Input0, Options) ->
    Method = delete,
    Path = ["/portals/", http_uri:encode(PortalId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a project from AWS IoT SiteWise Monitor.
delete_project(Client, ProjectId, Input) ->
    delete_project(Client, ProjectId, Input, []).
delete_project(Client, ProjectId, Input0, Options) ->
    Method = delete,
    Path = ["/projects/", http_uri:encode(ProjectId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an access policy, which specifies an AWS SSO user or
%% group's access to an AWS IoT SiteWise Monitor portal or project.
describe_access_policy(Client, AccessPolicyId)
  when is_map(Client) ->
    describe_access_policy(Client, AccessPolicyId, []).
describe_access_policy(Client, AccessPolicyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/access-policies/", http_uri:encode(AccessPolicyId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset.
describe_asset(Client, AssetId)
  when is_map(Client) ->
    describe_asset(Client, AssetId, []).
describe_asset(Client, AssetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assets/", http_uri:encode(AssetId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset model.
describe_asset_model(Client, AssetModelId)
  when is_map(Client) ->
    describe_asset_model(Client, AssetModelId, []).
describe_asset_model(Client, AssetModelId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/asset-models/", http_uri:encode(AssetModelId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset's property.
describe_asset_property(Client, AssetId, PropertyId)
  when is_map(Client) ->
    describe_asset_property(Client, AssetId, PropertyId, []).
describe_asset_property(Client, AssetId, PropertyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assets/", http_uri:encode(AssetId), "/properties/", http_uri:encode(PropertyId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dashboard.
describe_dashboard(Client, DashboardId)
  when is_map(Client) ->
    describe_dashboard(Client, DashboardId, []).
describe_dashboard(Client, DashboardId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a gateway.
describe_gateway(Client, GatewayId)
  when is_map(Client) ->
    describe_gateway(Client, GatewayId, []).
describe_gateway(Client, GatewayId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/20200301/gateways/", http_uri:encode(GatewayId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a gateway capability configuration. Each
%% gateway capability defines data sources for a gateway. A capability
%% configuration can contain multiple data source configurations. If you
%% define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all
%% of your OPC-UA sources are stored in one capability configuration. To list
%% all capability configurations for a gateway, use <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html">DescribeGateway</a>.
describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId)
  when is_map(Client) ->
    describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, []).
describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/20200301/gateways/", http_uri:encode(GatewayId), "/capability/", http_uri:encode(CapabilityNamespace), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current AWS IoT SiteWise logging options.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, []).
describe_logging_options(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/logging"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a portal.
describe_portal(Client, PortalId)
  when is_map(Client) ->
    describe_portal(Client, PortalId, []).
describe_portal(Client, PortalId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/portals/", http_uri:encode(PortalId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a project.
describe_project(Client, ProjectId)
  when is_map(Client) ->
    describe_project(Client, ProjectId, []).
describe_project(Client, ProjectId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/projects/", http_uri:encode(ProjectId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a child asset from the given parent asset through a
%% hierarchy defined in the parent asset's model.
disassociate_assets(Client, AssetId, Input) ->
    disassociate_assets(Client, AssetId, Input, []).
disassociate_assets(Client, AssetId, Input0, Options) ->
    Method = post,
    Path = ["/assets/", http_uri:encode(AssetId), "/disassociate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets aggregated values for an asset property. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates">Querying
%% Aggregated Property Values</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The <code>assetId</code> and <code>propertyId</code> of an asset
%% property.
%%
%% </li> <li> A <code>propertyAlias</code>, which is a data stream alias (for
%% example, <code>/company/windfarm/3/turbine/7/temperature</code>). To
%% define an asset property's alias, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.
%%
%% </li> </ul>
get_asset_property_aggregates(Client, AggregateTypes, AssetId, EndDate, MaxResults, NextToken, PropertyAlias, PropertyId, Qualities, Resolution, StartDate, TimeOrdering)
  when is_map(Client) ->
    get_asset_property_aggregates(Client, AggregateTypes, AssetId, EndDate, MaxResults, NextToken, PropertyAlias, PropertyId, Qualities, Resolution, StartDate, TimeOrdering, []).
get_asset_property_aggregates(Client, AggregateTypes, AssetId, EndDate, MaxResults, NextToken, PropertyAlias, PropertyId, Qualities, Resolution, StartDate, TimeOrdering, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/properties/aggregates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"aggregateTypes">>, AggregateTypes},
        {<<"assetId">>, AssetId},
        {<<"endDate">>, EndDate},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"propertyAlias">>, PropertyAlias},
        {<<"propertyId">>, PropertyId},
        {<<"qualities">>, Qualities},
        {<<"resolution">>, Resolution},
        {<<"startDate">>, StartDate},
        {<<"timeOrdering">>, TimeOrdering}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an asset property's current value. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values">Querying
%% Current Property Values</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The <code>assetId</code> and <code>propertyId</code> of an asset
%% property.
%%
%% </li> <li> A <code>propertyAlias</code>, which is a data stream alias (for
%% example, <code>/company/windfarm/3/turbine/7/temperature</code>). To
%% define an asset property's alias, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.
%%
%% </li> </ul>
get_asset_property_value(Client, AssetId, PropertyAlias, PropertyId)
  when is_map(Client) ->
    get_asset_property_value(Client, AssetId, PropertyAlias, PropertyId, []).
get_asset_property_value(Client, AssetId, PropertyAlias, PropertyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/properties/latest"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, AssetId},
        {<<"propertyAlias">>, PropertyAlias},
        {<<"propertyId">>, PropertyId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the history of an asset property's values. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values">Querying
%% Historical Property Values</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% <ul> <li> The <code>assetId</code> and <code>propertyId</code> of an asset
%% property.
%%
%% </li> <li> A <code>propertyAlias</code>, which is a data stream alias (for
%% example, <code>/company/windfarm/3/turbine/7/temperature</code>). To
%% define an asset property's alias, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.
%%
%% </li> </ul>
get_asset_property_value_history(Client, AssetId, EndDate, MaxResults, NextToken, PropertyAlias, PropertyId, Qualities, StartDate, TimeOrdering)
  when is_map(Client) ->
    get_asset_property_value_history(Client, AssetId, EndDate, MaxResults, NextToken, PropertyAlias, PropertyId, Qualities, StartDate, TimeOrdering, []).
get_asset_property_value_history(Client, AssetId, EndDate, MaxResults, NextToken, PropertyAlias, PropertyId, Qualities, StartDate, TimeOrdering, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/properties/history"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, AssetId},
        {<<"endDate">>, EndDate},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"propertyAlias">>, PropertyAlias},
        {<<"propertyId">>, PropertyId},
        {<<"qualities">>, Qualities},
        {<<"startDate">>, StartDate},
        {<<"timeOrdering">>, TimeOrdering}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of access policies for an AWS SSO identity
%% (a user or group) or an AWS IoT SiteWise Monitor resource (a portal or
%% project).
list_access_policies(Client, IdentityId, IdentityType, MaxResults, NextToken, ResourceId, ResourceType)
  when is_map(Client) ->
    list_access_policies(Client, IdentityId, IdentityType, MaxResults, NextToken, ResourceId, ResourceType, []).
list_access_policies(Client, IdentityId, IdentityType, MaxResults, NextToken, ResourceId, ResourceType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/access-policies"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"identityId">>, IdentityId},
        {<<"identityType">>, IdentityType},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"resourceId">>, ResourceId},
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of summaries of all asset models.
list_asset_models(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_asset_models(Client, MaxResults, NextToken, []).
list_asset_models(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/asset-models"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
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
%% summaries for all of your assets, use <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html">ListAssetModels</a>
%% to get all of your asset model IDs. Then, use ListAssets to get all assets
%% for each asset model.
list_assets(Client, AssetModelId, Filter, MaxResults, NextToken)
  when is_map(Client) ->
    list_assets(Client, AssetModelId, Filter, MaxResults, NextToken, []).
list_assets(Client, AssetModelId, Filter, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assets"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"assetModelId">>, AssetModelId},
        {<<"filter">>, Filter},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of the assets associated to a parent asset
%% (<code>assetId</code>) by a given hierarchy (<code>hierarchyId</code>).
list_associated_assets(Client, AssetId, HierarchyId, MaxResults, NextToken)
  when is_map(Client) ->
    list_associated_assets(Client, AssetId, HierarchyId, MaxResults, NextToken, []).
list_associated_assets(Client, AssetId, HierarchyId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assets/", http_uri:encode(AssetId), "/hierarchies"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"hierarchyId">>, HierarchyId},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of dashboards for an AWS IoT SiteWise
%% Monitor project.
list_dashboards(Client, MaxResults, NextToken, ProjectId)
  when is_map(Client) ->
    list_dashboards(Client, MaxResults, NextToken, ProjectId, []).
list_dashboards(Client, MaxResults, NextToken, ProjectId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dashboards"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"projectId">>, ProjectId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of gateways.
list_gateways(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_gateways(Client, MaxResults, NextToken, []).
list_gateways(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/20200301/gateways"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of AWS IoT SiteWise Monitor portals.
list_portals(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_portals(Client, MaxResults, NextToken, []).
list_portals(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/portals"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of assets associated with an AWS IoT
%% SiteWise Monitor project.
list_project_assets(Client, ProjectId, MaxResults, NextToken)
  when is_map(Client) ->
    list_project_assets(Client, ProjectId, MaxResults, NextToken, []).
list_project_assets(Client, ProjectId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/projects/", http_uri:encode(ProjectId), "/assets"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of projects for an AWS IoT SiteWise
%% Monitor portal.
list_projects(Client, MaxResults, NextToken, PortalId)
  when is_map(Client) ->
    list_projects(Client, MaxResults, NextToken, PortalId, []).
list_projects(Client, MaxResults, NextToken, PortalId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/projects"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"portalId">>, PortalId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of tags for an AWS IoT SiteWise resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets logging options for AWS IoT SiteWise.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).
put_logging_options(Client, Input0, Options) ->
    Method = put,
    Path = ["/logging"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to an AWS IoT SiteWise resource. If a tag already exists
%% for the resource, this operation updates the tag's value.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from an AWS IoT SiteWise resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing access policy that specifies an AWS SSO user or
%% group's access to an AWS IoT SiteWise Monitor portal or project resource.
update_access_policy(Client, AccessPolicyId, Input) ->
    update_access_policy(Client, AccessPolicyId, Input, []).
update_access_policy(Client, AccessPolicyId, Input0, Options) ->
    Method = put,
    Path = ["/access-policies/", http_uri:encode(AccessPolicyId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset's name. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating
%% Assets and Models</a> in the <i>AWS IoT SiteWise User Guide</i>.
update_asset(Client, AssetId, Input) ->
    update_asset(Client, AssetId, Input, []).
update_asset(Client, AssetId, Input0, Options) ->
    Method = put,
    Path = ["/assets/", http_uri:encode(AssetId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset model and all of the assets that were created from
%% the model. Each asset created from the model inherits the updated asset
%% model's property and hierarchy definitions. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating
%% Assets and Models</a> in the <i>AWS IoT SiteWise User Guide</i>.
%%
%% <important> This operation overwrites the existing model with the provided
%% model. To avoid deleting your asset model's properties or hierarchies, you
%% must include their IDs and definitions in the updated asset model payload.
%% For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html">DescribeAssetModel</a>.
%%
%% If you remove a property from an asset model or update a property's
%% formula expression, AWS IoT SiteWise deletes all previous data for that
%% property. If you remove a hierarchy definition from an asset model, AWS
%% IoT SiteWise disassociates every asset associated with that hierarchy. You
%% can't change the type or data type of an existing property.
%%
%% </important>
update_asset_model(Client, AssetModelId, Input) ->
    update_asset_model(Client, AssetModelId, Input, []).
update_asset_model(Client, AssetModelId, Input0, Options) ->
    Method = put,
    Path = ["/asset-models/", http_uri:encode(AssetModelId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset property's alias and notification state.
%%
%% <important> This operation overwrites the property's existing alias and
%% notification state. To keep your existing property's alias or notification
%% state, you must include the existing values in the UpdateAssetProperty
%% request. For more information, see <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html">DescribeAssetProperty</a>.
%%
%% </important>
update_asset_property(Client, AssetId, PropertyId, Input) ->
    update_asset_property(Client, AssetId, PropertyId, Input, []).
update_asset_property(Client, AssetId, PropertyId, Input0, Options) ->
    Method = put,
    Path = ["/assets/", http_uri:encode(AssetId), "/properties/", http_uri:encode(PropertyId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an AWS IoT SiteWise Monitor dashboard.
update_dashboard(Client, DashboardId, Input) ->
    update_dashboard(Client, DashboardId, Input, []).
update_dashboard(Client, DashboardId, Input0, Options) ->
    Method = put,
    Path = ["/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a gateway's name.
update_gateway(Client, GatewayId, Input) ->
    update_gateway(Client, GatewayId, Input, []).
update_gateway(Client, GatewayId, Input0, Options) ->
    Method = put,
    Path = ["/20200301/gateways/", http_uri:encode(GatewayId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a gateway capability configuration or defines a new
%% capability configuration. Each gateway capability defines data sources for
%% a gateway. A capability configuration can contain multiple data source
%% configurations. If you define OPC-UA sources for a gateway in the AWS IoT
%% SiteWise console, all of your OPC-UA sources are stored in one capability
%% configuration. To list all capability configurations for a gateway, use <a
%% href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html">DescribeGateway</a>.
update_gateway_capability_configuration(Client, GatewayId, Input) ->
    update_gateway_capability_configuration(Client, GatewayId, Input, []).
update_gateway_capability_configuration(Client, GatewayId, Input0, Options) ->
    Method = post,
    Path = ["/20200301/gateways/", http_uri:encode(GatewayId), "/capability"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an AWS IoT SiteWise Monitor portal.
update_portal(Client, PortalId, Input) ->
    update_portal(Client, PortalId, Input, []).
update_portal(Client, PortalId, Input0, Options) ->
    Method = put,
    Path = ["/portals/", http_uri:encode(PortalId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an AWS IoT SiteWise Monitor project.
update_project(Client, ProjectId, Input) ->
    update_project(Client, ProjectId, Input, []).
update_project(Client, ProjectId, Input0, Options) ->
    Method = put,
    Path = ["/projects/", http_uri:encode(ProjectId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"iotsitewise">>},
    Host = build_host(<<"iotsitewise">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

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
