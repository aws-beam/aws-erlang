%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon API Gateway V2
-module(aws_apigatewayv2).

-export([create_api/2,
         create_api/3,
         create_api_mapping/3,
         create_api_mapping/4,
         create_authorizer/3,
         create_authorizer/4,
         create_deployment/3,
         create_deployment/4,
         create_domain_name/2,
         create_domain_name/3,
         create_integration/3,
         create_integration/4,
         create_integration_response/4,
         create_integration_response/5,
         create_model/3,
         create_model/4,
         create_route/3,
         create_route/4,
         create_route_response/4,
         create_route_response/5,
         create_stage/3,
         create_stage/4,
         create_vpc_link/2,
         create_vpc_link/3,
         delete_access_log_settings/4,
         delete_access_log_settings/5,
         delete_api/3,
         delete_api/4,
         delete_api_mapping/4,
         delete_api_mapping/5,
         delete_authorizer/4,
         delete_authorizer/5,
         delete_cors_configuration/3,
         delete_cors_configuration/4,
         delete_deployment/4,
         delete_deployment/5,
         delete_domain_name/3,
         delete_domain_name/4,
         delete_integration/4,
         delete_integration/5,
         delete_integration_response/5,
         delete_integration_response/6,
         delete_model/4,
         delete_model/5,
         delete_route/4,
         delete_route/5,
         delete_route_request_parameter/5,
         delete_route_request_parameter/6,
         delete_route_response/5,
         delete_route_response/6,
         delete_route_settings/5,
         delete_route_settings/6,
         delete_stage/4,
         delete_stage/5,
         delete_vpc_link/3,
         delete_vpc_link/4,
         export_api/7,
         export_api/8,
         get_api/2,
         get_api/3,
         get_api_mapping/3,
         get_api_mapping/4,
         get_api_mappings/4,
         get_api_mappings/5,
         get_apis/3,
         get_apis/4,
         get_authorizer/3,
         get_authorizer/4,
         get_authorizers/4,
         get_authorizers/5,
         get_deployment/3,
         get_deployment/4,
         get_deployments/4,
         get_deployments/5,
         get_domain_name/2,
         get_domain_name/3,
         get_domain_names/3,
         get_domain_names/4,
         get_integration/3,
         get_integration/4,
         get_integration_response/4,
         get_integration_response/5,
         get_integration_responses/5,
         get_integration_responses/6,
         get_integrations/4,
         get_integrations/5,
         get_model/3,
         get_model/4,
         get_model_template/3,
         get_model_template/4,
         get_models/4,
         get_models/5,
         get_route/3,
         get_route/4,
         get_route_response/4,
         get_route_response/5,
         get_route_responses/5,
         get_route_responses/6,
         get_routes/4,
         get_routes/5,
         get_stage/3,
         get_stage/4,
         get_stages/4,
         get_stages/5,
         get_tags/2,
         get_tags/3,
         get_vpc_link/2,
         get_vpc_link/3,
         get_vpc_links/3,
         get_vpc_links/4,
         import_api/2,
         import_api/3,
         reimport_api/3,
         reimport_api/4,
         reset_authorizers_cache/4,
         reset_authorizers_cache/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_api/3,
         update_api/4,
         update_api_mapping/4,
         update_api_mapping/5,
         update_authorizer/4,
         update_authorizer/5,
         update_deployment/4,
         update_deployment/5,
         update_domain_name/3,
         update_domain_name/4,
         update_integration/4,
         update_integration/5,
         update_integration_response/5,
         update_integration_response/6,
         update_model/4,
         update_model/5,
         update_route/4,
         update_route/5,
         update_route_response/5,
         update_route_response/6,
         update_stage/4,
         update_stage/5,
         update_vpc_link/3,
         update_vpc_link/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Api resource.
create_api(Client, Input) ->
    create_api(Client, Input, []).
create_api(Client, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an API mapping.
create_api_mapping(Client, DomainName, Input) ->
    create_api_mapping(Client, DomainName, Input, []).
create_api_mapping(Client, DomainName, Input0, Options) ->
    Method = post,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Authorizer for an API.
create_authorizer(Client, ApiId, Input) ->
    create_authorizer(Client, ApiId, Input, []).
create_authorizer(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Deployment for an API.
create_deployment(Client, ApiId, Input) ->
    create_deployment(Client, ApiId, Input, []).
create_deployment(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a domain name.
create_domain_name(Client, Input) ->
    create_domain_name(Client, Input, []).
create_domain_name(Client, Input0, Options) ->
    Method = post,
    Path = ["/v2/domainnames"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Integration.
create_integration(Client, ApiId, Input) ->
    create_integration(Client, ApiId, Input, []).
create_integration(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an IntegrationResponses.
create_integration_response(Client, ApiId, IntegrationId, Input) ->
    create_integration_response(Client, ApiId, IntegrationId, Input, []).
create_integration_response(Client, ApiId, IntegrationId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Model for an API.
create_model(Client, ApiId, Input) ->
    create_model(Client, ApiId, Input, []).
create_model(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Route for an API.
create_route(Client, ApiId, Input) ->
    create_route(Client, ApiId, Input, []).
create_route(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a RouteResponse for a Route.
create_route_response(Client, ApiId, RouteId, Input) ->
    create_route_response(Client, ApiId, RouteId, Input, []).
create_route_response(Client, ApiId, RouteId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Stage for an API.
create_stage(Client, ApiId, Input) ->
    create_stage(Client, ApiId, Input, []).
create_stage(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a VPC link.
create_vpc_link(Client, Input) ->
    create_vpc_link(Client, Input, []).
create_vpc_link(Client, Input0, Options) ->
    Method = post,
    Path = ["/v2/vpclinks"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the AccessLogSettings for a Stage.
%%
%% To disable access logging for a Stage, delete its AccessLogSettings.
delete_access_log_settings(Client, ApiId, StageName, Input) ->
    delete_access_log_settings(Client, ApiId, StageName, Input, []).
delete_access_log_settings(Client, ApiId, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), "/accesslogsettings"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Api resource.
delete_api(Client, ApiId, Input) ->
    delete_api(Client, ApiId, Input, []).
delete_api(Client, ApiId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an API mapping.
delete_api_mapping(Client, ApiMappingId, DomainName, Input) ->
    delete_api_mapping(Client, ApiMappingId, DomainName, Input, []).
delete_api_mapping(Client, ApiMappingId, DomainName, Input0, Options) ->
    Method = delete,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings/", aws_util:encode_uri(ApiMappingId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Authorizer.
delete_authorizer(Client, ApiId, AuthorizerId, Input) ->
    delete_authorizer(Client, ApiId, AuthorizerId, Input, []).
delete_authorizer(Client, ApiId, AuthorizerId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CORS configuration.
delete_cors_configuration(Client, ApiId, Input) ->
    delete_cors_configuration(Client, ApiId, Input, []).
delete_cors_configuration(Client, ApiId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/cors"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Deployment.
delete_deployment(Client, ApiId, DeploymentId, Input) ->
    delete_deployment(Client, ApiId, DeploymentId, Input, []).
delete_deployment(Client, ApiId, DeploymentId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a domain name.
delete_domain_name(Client, DomainName, Input) ->
    delete_domain_name(Client, DomainName, Input, []).
delete_domain_name(Client, DomainName, Input0, Options) ->
    Method = delete,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Integration.
delete_integration(Client, ApiId, IntegrationId, Input) ->
    delete_integration(Client, ApiId, IntegrationId, Input, []).
delete_integration(Client, ApiId, IntegrationId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an IntegrationResponses.
delete_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input) ->
    delete_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input, []).
delete_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses/", aws_util:encode_uri(IntegrationResponseId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Model.
delete_model(Client, ApiId, ModelId, Input) ->
    delete_model(Client, ApiId, ModelId, Input, []).
delete_model(Client, ApiId, ModelId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Route.
delete_route(Client, ApiId, RouteId, Input) ->
    delete_route(Client, ApiId, RouteId, Input, []).
delete_route(Client, ApiId, RouteId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a route request parameter.
delete_route_request_parameter(Client, ApiId, RequestParameterKey, RouteId, Input) ->
    delete_route_request_parameter(Client, ApiId, RequestParameterKey, RouteId, Input, []).
delete_route_request_parameter(Client, ApiId, RequestParameterKey, RouteId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/requestparameters/", aws_util:encode_uri(RequestParameterKey), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a RouteResponse.
delete_route_response(Client, ApiId, RouteId, RouteResponseId, Input) ->
    delete_route_response(Client, ApiId, RouteId, RouteResponseId, Input, []).
delete_route_response(Client, ApiId, RouteId, RouteResponseId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses/", aws_util:encode_uri(RouteResponseId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the RouteSettings for a stage.
delete_route_settings(Client, ApiId, RouteKey, StageName, Input) ->
    delete_route_settings(Client, ApiId, RouteKey, StageName, Input, []).
delete_route_settings(Client, ApiId, RouteKey, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), "/routesettings/", aws_util:encode_uri(RouteKey), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Stage.
delete_stage(Client, ApiId, StageName, Input) ->
    delete_stage(Client, ApiId, StageName, Input, []).
delete_stage(Client, ApiId, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a VPC link.
delete_vpc_link(Client, VpcLinkId, Input) ->
    delete_vpc_link(Client, VpcLinkId, Input, []).
delete_vpc_link(Client, VpcLinkId, Input0, Options) ->
    Method = delete,
    Path = ["/v2/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Exports a definition of an API in a particular output format and
%% specification.
export_api(Client, ApiId, Specification, ExportVersion, IncludeExtensions, OutputType, StageName)
  when is_map(Client) ->
    export_api(Client, ApiId, Specification, ExportVersion, IncludeExtensions, OutputType, StageName, []).
export_api(Client, ApiId, Specification, ExportVersion, IncludeExtensions, OutputType, StageName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/exports/", aws_util:encode_uri(Specification), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"exportVersion">>, ExportVersion},
        {<<"includeExtensions">>, IncludeExtensions},
        {<<"outputType">>, OutputType},
        {<<"stageName">>, StageName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Api resource.
get_api(Client, ApiId)
  when is_map(Client) ->
    get_api(Client, ApiId, []).
get_api(Client, ApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an API mapping.
get_api_mapping(Client, ApiMappingId, DomainName)
  when is_map(Client) ->
    get_api_mapping(Client, ApiMappingId, DomainName, []).
get_api_mapping(Client, ApiMappingId, DomainName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings/", aws_util:encode_uri(ApiMappingId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets API mappings.
get_api_mappings(Client, DomainName, MaxResults, NextToken)
  when is_map(Client) ->
    get_api_mappings(Client, DomainName, MaxResults, NextToken, []).
get_api_mappings(Client, DomainName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of Api resources.
get_apis(Client, MaxResults, NextToken)
  when is_map(Client) ->
    get_apis(Client, MaxResults, NextToken, []).
get_apis(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Authorizer.
get_authorizer(Client, ApiId, AuthorizerId)
  when is_map(Client) ->
    get_authorizer(Client, ApiId, AuthorizerId, []).
get_authorizer(Client, ApiId, AuthorizerId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Authorizers for an API.
get_authorizers(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    get_authorizers(Client, ApiId, MaxResults, NextToken, []).
get_authorizers(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a Deployment.
get_deployment(Client, ApiId, DeploymentId)
  when is_map(Client) ->
    get_deployment(Client, ApiId, DeploymentId, []).
get_deployment(Client, ApiId, DeploymentId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Deployments for an API.
get_deployments(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    get_deployments(Client, ApiId, MaxResults, NextToken, []).
get_deployments(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a domain name.
get_domain_name(Client, DomainName)
  when is_map(Client) ->
    get_domain_name(Client, DomainName, []).
get_domain_name(Client, DomainName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the domain names for an AWS account.
get_domain_names(Client, MaxResults, NextToken)
  when is_map(Client) ->
    get_domain_names(Client, MaxResults, NextToken, []).
get_domain_names(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/domainnames"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Integration.
get_integration(Client, ApiId, IntegrationId)
  when is_map(Client) ->
    get_integration(Client, ApiId, IntegrationId, []).
get_integration(Client, ApiId, IntegrationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an IntegrationResponses.
get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId)
  when is_map(Client) ->
    get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, []).
get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses/", aws_util:encode_uri(IntegrationResponseId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the IntegrationResponses for an Integration.
get_integration_responses(Client, ApiId, IntegrationId, MaxResults, NextToken)
  when is_map(Client) ->
    get_integration_responses(Client, ApiId, IntegrationId, MaxResults, NextToken, []).
get_integration_responses(Client, ApiId, IntegrationId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Integrations for an API.
get_integrations(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    get_integrations(Client, ApiId, MaxResults, NextToken, []).
get_integrations(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a Model.
get_model(Client, ApiId, ModelId)
  when is_map(Client) ->
    get_model(Client, ApiId, ModelId, []).
get_model(Client, ApiId, ModelId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a model template.
get_model_template(Client, ApiId, ModelId)
  when is_map(Client) ->
    get_model_template(Client, ApiId, ModelId, []).
get_model_template(Client, ApiId, ModelId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), "/template"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Models for an API.
get_models(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    get_models(Client, ApiId, MaxResults, NextToken, []).
get_models(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a Route.
get_route(Client, ApiId, RouteId)
  when is_map(Client) ->
    get_route(Client, ApiId, RouteId, []).
get_route(Client, ApiId, RouteId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a RouteResponse.
get_route_response(Client, ApiId, RouteId, RouteResponseId)
  when is_map(Client) ->
    get_route_response(Client, ApiId, RouteId, RouteResponseId, []).
get_route_response(Client, ApiId, RouteId, RouteResponseId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses/", aws_util:encode_uri(RouteResponseId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the RouteResponses for a Route.
get_route_responses(Client, ApiId, RouteId, MaxResults, NextToken)
  when is_map(Client) ->
    get_route_responses(Client, ApiId, RouteId, MaxResults, NextToken, []).
get_route_responses(Client, ApiId, RouteId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Routes for an API.
get_routes(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    get_routes(Client, ApiId, MaxResults, NextToken, []).
get_routes(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a Stage.
get_stage(Client, ApiId, StageName)
  when is_map(Client) ->
    get_stage(Client, ApiId, StageName, []).
get_stage(Client, ApiId, StageName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Stages for an API.
get_stages(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    get_stages(Client, ApiId, MaxResults, NextToken, []).
get_stages(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of Tag resources.
get_tags(Client, ResourceArn)
  when is_map(Client) ->
    get_tags(Client, ResourceArn, []).
get_tags(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a VPC link.
get_vpc_link(Client, VpcLinkId)
  when is_map(Client) ->
    get_vpc_link(Client, VpcLinkId, []).
get_vpc_link(Client, VpcLinkId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of VPC links.
get_vpc_links(Client, MaxResults, NextToken)
  when is_map(Client) ->
    get_vpc_links(Client, MaxResults, NextToken, []).
get_vpc_links(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2/vpclinks"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports an API.
import_api(Client, Input) ->
    import_api(Client, Input, []).
import_api(Client, Input0, Options) ->
    Method = put,
    Path = ["/v2/apis"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"basepath">>, <<"Basepath">>},
                     {<<"failOnWarnings">>, <<"FailOnWarnings">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options ++ [{should_send_body_as_binary, true}], SuccessStatusCode).

%% @doc Puts an Api resource.
reimport_api(Client, ApiId, Input) ->
    reimport_api(Client, ApiId, Input, []).
reimport_api(Client, ApiId, Input0, Options) ->
    Method = put,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"basepath">>, <<"Basepath">>},
                     {<<"failOnWarnings">>, <<"FailOnWarnings">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options ++ [{should_send_body_as_binary, true}], SuccessStatusCode).

%% @doc Resets all authorizer cache entries for the specified stage.
%%
%% Supported only for HTTP API Lambda authorizers.
reset_authorizers_cache(Client, ApiId, StageName, Input) ->
    reset_authorizers_cache(Client, ApiId, StageName, Input, []).
reset_authorizers_cache(Client, ApiId, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), "/cache/authorizers"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Tag resource to represent a tag.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Tag.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Api resource.
update_api(Client, ApiId, Input) ->
    update_api(Client, ApiId, Input, []).
update_api(Client, ApiId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The API mapping.
update_api_mapping(Client, ApiMappingId, DomainName, Input) ->
    update_api_mapping(Client, ApiMappingId, DomainName, Input, []).
update_api_mapping(Client, ApiMappingId, DomainName, Input0, Options) ->
    Method = patch,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings/", aws_util:encode_uri(ApiMappingId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Authorizer.
update_authorizer(Client, ApiId, AuthorizerId, Input) ->
    update_authorizer(Client, ApiId, AuthorizerId, Input, []).
update_authorizer(Client, ApiId, AuthorizerId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Deployment.
update_deployment(Client, ApiId, DeploymentId, Input) ->
    update_deployment(Client, ApiId, DeploymentId, Input, []).
update_deployment(Client, ApiId, DeploymentId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a domain name.
update_domain_name(Client, DomainName, Input) ->
    update_domain_name(Client, DomainName, Input, []).
update_domain_name(Client, DomainName, Input0, Options) ->
    Method = patch,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Integration.
update_integration(Client, ApiId, IntegrationId, Input) ->
    update_integration(Client, ApiId, IntegrationId, Input, []).
update_integration(Client, ApiId, IntegrationId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an IntegrationResponses.
update_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input) ->
    update_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input, []).
update_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses/", aws_util:encode_uri(IntegrationResponseId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Model.
update_model(Client, ApiId, ModelId, Input) ->
    update_model(Client, ApiId, ModelId, Input, []).
update_model(Client, ApiId, ModelId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Route.
update_route(Client, ApiId, RouteId, Input) ->
    update_route(Client, ApiId, RouteId, Input, []).
update_route(Client, ApiId, RouteId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a RouteResponse.
update_route_response(Client, ApiId, RouteId, RouteResponseId, Input) ->
    update_route_response(Client, ApiId, RouteId, RouteResponseId, Input, []).
update_route_response(Client, ApiId, RouteId, RouteResponseId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses/", aws_util:encode_uri(RouteResponseId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Stage.
update_stage(Client, ApiId, StageName, Input) ->
    update_stage(Client, ApiId, StageName, Input, []).
update_stage(Client, ApiId, StageName, Input0, Options) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a VPC link.
update_vpc_link(Client, VpcLinkId, Input) ->
    update_vpc_link(Client, VpcLinkId, Input, []).
update_vpc_link(Client, VpcLinkId, Input0, Options) ->
    Method = patch,
    Path = ["/v2/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
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
    Client1 = Client#{service => <<"apigateway">>},
    Host = build_host(<<"apigateway">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get_value(<<"Body">>, Input);
        _ ->
          encode_payload(Input)
      end,

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
