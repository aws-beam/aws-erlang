%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon API Gateway</fullname>
%%
%% Amazon API Gateway helps developers deliver robust, secure, and scalable
%% mobile and web application back ends. API Gateway allows developers to
%% securely connect mobile and web applications to APIs that run on AWS
%% Lambda, Amazon EC2, or other publicly addressable web services that are
%% hosted outside of AWS.
-module(aws_api_gateway).

-export([create_api_key/2,
         create_api_key/3,
         create_authorizer/3,
         create_authorizer/4,
         create_base_path_mapping/3,
         create_base_path_mapping/4,
         create_deployment/3,
         create_deployment/4,
         create_documentation_part/3,
         create_documentation_part/4,
         create_documentation_version/3,
         create_documentation_version/4,
         create_domain_name/2,
         create_domain_name/3,
         create_model/3,
         create_model/4,
         create_request_validator/3,
         create_request_validator/4,
         create_resource/4,
         create_resource/5,
         create_rest_api/2,
         create_rest_api/3,
         create_stage/3,
         create_stage/4,
         create_usage_plan/2,
         create_usage_plan/3,
         create_usage_plan_key/3,
         create_usage_plan_key/4,
         create_vpc_link/2,
         create_vpc_link/3,
         delete_api_key/3,
         delete_api_key/4,
         delete_authorizer/4,
         delete_authorizer/5,
         delete_base_path_mapping/4,
         delete_base_path_mapping/5,
         delete_client_certificate/3,
         delete_client_certificate/4,
         delete_deployment/4,
         delete_deployment/5,
         delete_documentation_part/4,
         delete_documentation_part/5,
         delete_documentation_version/4,
         delete_documentation_version/5,
         delete_domain_name/3,
         delete_domain_name/4,
         delete_gateway_response/4,
         delete_gateway_response/5,
         delete_integration/5,
         delete_integration/6,
         delete_integration_response/6,
         delete_integration_response/7,
         delete_method/5,
         delete_method/6,
         delete_method_response/6,
         delete_method_response/7,
         delete_model/4,
         delete_model/5,
         delete_request_validator/4,
         delete_request_validator/5,
         delete_resource/4,
         delete_resource/5,
         delete_rest_api/3,
         delete_rest_api/4,
         delete_stage/4,
         delete_stage/5,
         delete_usage_plan/3,
         delete_usage_plan/4,
         delete_usage_plan_key/4,
         delete_usage_plan_key/5,
         delete_vpc_link/3,
         delete_vpc_link/4,
         flush_stage_authorizers_cache/4,
         flush_stage_authorizers_cache/5,
         flush_stage_cache/4,
         flush_stage_cache/5,
         generate_client_certificate/2,
         generate_client_certificate/3,
         get_account/1,
         get_account/2,
         get_api_key/3,
         get_api_key/4,
         get_api_keys/6,
         get_api_keys/7,
         get_authorizer/3,
         get_authorizer/4,
         get_authorizers/4,
         get_authorizers/5,
         get_base_path_mapping/3,
         get_base_path_mapping/4,
         get_base_path_mappings/4,
         get_base_path_mappings/5,
         get_client_certificate/2,
         get_client_certificate/3,
         get_client_certificates/3,
         get_client_certificates/4,
         get_deployment/4,
         get_deployment/5,
         get_deployments/4,
         get_deployments/5,
         get_documentation_part/3,
         get_documentation_part/4,
         get_documentation_parts/8,
         get_documentation_parts/9,
         get_documentation_version/3,
         get_documentation_version/4,
         get_documentation_versions/4,
         get_documentation_versions/5,
         get_domain_name/2,
         get_domain_name/3,
         get_domain_names/3,
         get_domain_names/4,
         get_export/6,
         get_export/7,
         get_gateway_response/3,
         get_gateway_response/4,
         get_gateway_responses/4,
         get_gateway_responses/5,
         get_integration/4,
         get_integration/5,
         get_integration_response/5,
         get_integration_response/6,
         get_method/4,
         get_method/5,
         get_method_response/5,
         get_method_response/6,
         get_model/4,
         get_model/5,
         get_model_template/3,
         get_model_template/4,
         get_models/4,
         get_models/5,
         get_request_validator/3,
         get_request_validator/4,
         get_request_validators/4,
         get_request_validators/5,
         get_resource/4,
         get_resource/5,
         get_resources/5,
         get_resources/6,
         get_rest_api/2,
         get_rest_api/3,
         get_rest_apis/3,
         get_rest_apis/4,
         get_sdk/5,
         get_sdk/6,
         get_sdk_type/2,
         get_sdk_type/3,
         get_sdk_types/3,
         get_sdk_types/4,
         get_stage/3,
         get_stage/4,
         get_stages/3,
         get_stages/4,
         get_tags/4,
         get_tags/5,
         get_usage/7,
         get_usage/8,
         get_usage_plan/2,
         get_usage_plan/3,
         get_usage_plan_key/3,
         get_usage_plan_key/4,
         get_usage_plan_keys/5,
         get_usage_plan_keys/6,
         get_usage_plans/4,
         get_usage_plans/5,
         get_vpc_link/2,
         get_vpc_link/3,
         get_vpc_links/3,
         get_vpc_links/4,
         import_api_keys/2,
         import_api_keys/3,
         import_documentation_parts/3,
         import_documentation_parts/4,
         import_rest_api/2,
         import_rest_api/3,
         put_gateway_response/4,
         put_gateway_response/5,
         put_integration/5,
         put_integration/6,
         put_integration_response/6,
         put_integration_response/7,
         put_method/5,
         put_method/6,
         put_method_response/6,
         put_method_response/7,
         put_rest_api/3,
         put_rest_api/4,
         tag_resource/3,
         tag_resource/4,
         test_invoke_authorizer/4,
         test_invoke_authorizer/5,
         test_invoke_method/5,
         test_invoke_method/6,
         untag_resource/3,
         untag_resource/4,
         update_account/2,
         update_account/3,
         update_api_key/3,
         update_api_key/4,
         update_authorizer/4,
         update_authorizer/5,
         update_base_path_mapping/4,
         update_base_path_mapping/5,
         update_client_certificate/3,
         update_client_certificate/4,
         update_deployment/4,
         update_deployment/5,
         update_documentation_part/4,
         update_documentation_part/5,
         update_documentation_version/4,
         update_documentation_version/5,
         update_domain_name/3,
         update_domain_name/4,
         update_gateway_response/4,
         update_gateway_response/5,
         update_integration/5,
         update_integration/6,
         update_integration_response/6,
         update_integration_response/7,
         update_method/5,
         update_method/6,
         update_method_response/6,
         update_method_response/7,
         update_model/4,
         update_model/5,
         update_request_validator/4,
         update_request_validator/5,
         update_resource/4,
         update_resource/5,
         update_rest_api/3,
         update_rest_api/4,
         update_stage/4,
         update_stage/5,
         update_usage/4,
         update_usage/5,
         update_usage_plan/3,
         update_usage_plan/4,
         update_vpc_link/3,
         update_vpc_link/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create an <a>ApiKey</a> resource.
%%
%% <div class="seeAlso"><a
%% href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html">AWS
%% CLI</a></div>
create_api_key(Client, Input) ->
    create_api_key(Client, Input, []).
create_api_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/apikeys"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new <a>Authorizer</a> resource to an existing <a>RestApi</a>
%% resource.
%%
%% <div class="seeAlso"><a
%% href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html">AWS
%% CLI</a></div>
create_authorizer(Client, RestApiId, Input) ->
    create_authorizer(Client, RestApiId, Input, []).
create_authorizer(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/authorizers"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new <a>BasePathMapping</a> resource.
create_base_path_mapping(Client, DomainName, Input) ->
    create_base_path_mapping(Client, DomainName, Input, []).
create_base_path_mapping(Client, DomainName, Input0, Options) ->
    Method = post,
    Path = ["/domainnames/", http_uri:encode(DomainName), "/basepathmappings"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a <a>Deployment</a> resource, which makes a specified
%% <a>RestApi</a> callable over the internet.
create_deployment(Client, RestApiId, Input) ->
    create_deployment(Client, RestApiId, Input, []).
create_deployment(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/deployments"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


create_documentation_part(Client, RestApiId, Input) ->
    create_documentation_part(Client, RestApiId, Input, []).
create_documentation_part(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/parts"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


create_documentation_version(Client, RestApiId, Input) ->
    create_documentation_version(Client, RestApiId, Input, []).
create_documentation_version(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/versions"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new domain name.
create_domain_name(Client, Input) ->
    create_domain_name(Client, Input, []).
create_domain_name(Client, Input0, Options) ->
    Method = post,
    Path = ["/domainnames"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new <a>Model</a> resource to an existing <a>RestApi</a>
%% resource.
create_model(Client, RestApiId, Input) ->
    create_model(Client, RestApiId, Input, []).
create_model(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/models"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a <a>ReqeustValidator</a> of a given <a>RestApi</a>.
create_request_validator(Client, RestApiId, Input) ->
    create_request_validator(Client, RestApiId, Input, []).
create_request_validator(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/requestvalidators"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a <a>Resource</a> resource.
create_resource(Client, ParentId, RestApiId, Input) ->
    create_resource(Client, ParentId, RestApiId, Input, []).
create_resource(Client, ParentId, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ParentId), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new <a>RestApi</a> resource.
create_rest_api(Client, Input) ->
    create_rest_api(Client, Input, []).
create_rest_api(Client, Input0, Options) ->
    Method = post,
    Path = ["/restapis"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new <a>Stage</a> resource that references a pre-existing
%% <a>Deployment</a> for the API.
create_stage(Client, RestApiId, Input) ->
    create_stage(Client, RestApiId, Input, []).
create_stage(Client, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a usage plan with the throttle and quota limits, as well as
%% the associated API stages, specified in the payload.
create_usage_plan(Client, Input) ->
    create_usage_plan(Client, Input, []).
create_usage_plan(Client, Input0, Options) ->
    Method = post,
    Path = ["/usageplans"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a usage plan key for adding an existing API key to a usage
%% plan.
create_usage_plan_key(Client, UsagePlanId, Input) ->
    create_usage_plan_key(Client, UsagePlanId, Input, []).
create_usage_plan_key(Client, UsagePlanId, Input0, Options) ->
    Method = post,
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), "/keys"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a VPC link, under the caller's account in a selected region,
%% in an asynchronous operation that typically takes 2-4 minutes to complete
%% and become operational. The caller must have permissions to create and
%% update VPC Endpoint services.
create_vpc_link(Client, Input) ->
    create_vpc_link(Client, Input, []).
create_vpc_link(Client, Input0, Options) ->
    Method = post,
    Path = ["/vpclinks"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the <a>ApiKey</a> resource.
delete_api_key(Client, ApiKey, Input) ->
    delete_api_key(Client, ApiKey, Input, []).
delete_api_key(Client, ApiKey, Input0, Options) ->
    Method = delete,
    Path = ["/apikeys/", http_uri:encode(ApiKey), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing <a>Authorizer</a> resource.
%%
%% <div class="seeAlso"><a
%% href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html">AWS
%% CLI</a></div>
delete_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    delete_authorizer(Client, AuthorizerId, RestApiId, Input, []).
delete_authorizer(Client, AuthorizerId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/authorizers/", http_uri:encode(AuthorizerId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the <a>BasePathMapping</a> resource.
delete_base_path_mapping(Client, BasePath, DomainName, Input) ->
    delete_base_path_mapping(Client, BasePath, DomainName, Input, []).
delete_base_path_mapping(Client, BasePath, DomainName, Input0, Options) ->
    Method = delete,
    Path = ["/domainnames/", http_uri:encode(DomainName), "/basepathmappings/", http_uri:encode(BasePath), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the <a>ClientCertificate</a> resource.
delete_client_certificate(Client, ClientCertificateId, Input) ->
    delete_client_certificate(Client, ClientCertificateId, Input, []).
delete_client_certificate(Client, ClientCertificateId, Input0, Options) ->
    Method = delete,
    Path = ["/clientcertificates/", http_uri:encode(ClientCertificateId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a <a>Deployment</a> resource. Deleting a deployment will only
%% succeed if there are no <a>Stage</a> resources associated with it.
delete_deployment(Client, DeploymentId, RestApiId, Input) ->
    delete_deployment(Client, DeploymentId, RestApiId, Input, []).
delete_deployment(Client, DeploymentId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/deployments/", http_uri:encode(DeploymentId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


delete_documentation_part(Client, DocumentationPartId, RestApiId, Input) ->
    delete_documentation_part(Client, DocumentationPartId, RestApiId, Input, []).
delete_documentation_part(Client, DocumentationPartId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/parts/", http_uri:encode(DocumentationPartId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


delete_documentation_version(Client, DocumentationVersion, RestApiId, Input) ->
    delete_documentation_version(Client, DocumentationVersion, RestApiId, Input, []).
delete_documentation_version(Client, DocumentationVersion, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/versions/", http_uri:encode(DocumentationVersion), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the <a>DomainName</a> resource.
delete_domain_name(Client, DomainName, Input) ->
    delete_domain_name(Client, DomainName, Input, []).
delete_domain_name(Client, DomainName, Input0, Options) ->
    Method = delete,
    Path = ["/domainnames/", http_uri:encode(DomainName), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Clears any customization of a <a>GatewayResponse</a> of a specified
%% response type on the given <a>RestApi</a> and resets it with the default
%% settings.
delete_gateway_response(Client, ResponseType, RestApiId, Input) ->
    delete_gateway_response(Client, ResponseType, RestApiId, Input, []).
delete_gateway_response(Client, ResponseType, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/gatewayresponses/", http_uri:encode(ResponseType), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Represents a delete integration.
delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).
delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Represents a delete integration response.
delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing <a>Method</a> resource.
delete_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    delete_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
delete_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing <a>MethodResponse</a> resource.
delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a model.
delete_model(Client, ModelName, RestApiId, Input) ->
    delete_model(Client, ModelName, RestApiId, Input, []).
delete_model(Client, ModelName, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/models/", http_uri:encode(ModelName), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a <a>RequestValidator</a> of a given <a>RestApi</a>.
delete_request_validator(Client, RequestValidatorId, RestApiId, Input) ->
    delete_request_validator(Client, RequestValidatorId, RestApiId, Input, []).
delete_request_validator(Client, RequestValidatorId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/requestvalidators/", http_uri:encode(RequestValidatorId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a <a>Resource</a> resource.
delete_resource(Client, ResourceId, RestApiId, Input) ->
    delete_resource(Client, ResourceId, RestApiId, Input, []).
delete_resource(Client, ResourceId, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified API.
delete_rest_api(Client, RestApiId, Input) ->
    delete_rest_api(Client, RestApiId, Input, []).
delete_rest_api(Client, RestApiId, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a <a>Stage</a> resource.
delete_stage(Client, RestApiId, StageName, Input) ->
    delete_stage(Client, RestApiId, StageName, Input, []).
delete_stage(Client, RestApiId, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a usage plan of a given plan Id.
delete_usage_plan(Client, UsagePlanId, Input) ->
    delete_usage_plan(Client, UsagePlanId, Input, []).
delete_usage_plan(Client, UsagePlanId, Input0, Options) ->
    Method = delete,
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a usage plan key and remove the underlying API key from the
%% associated usage plan.
delete_usage_plan_key(Client, KeyId, UsagePlanId, Input) ->
    delete_usage_plan_key(Client, KeyId, UsagePlanId, Input, []).
delete_usage_plan_key(Client, KeyId, UsagePlanId, Input0, Options) ->
    Method = delete,
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), "/keys/", http_uri:encode(KeyId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing <a>VpcLink</a> of a specified identifier.
delete_vpc_link(Client, VpcLinkId, Input) ->
    delete_vpc_link(Client, VpcLinkId, Input, []).
delete_vpc_link(Client, VpcLinkId, Input0, Options) ->
    Method = delete,
    Path = ["/vpclinks/", http_uri:encode(VpcLinkId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Flushes all authorizer cache entries on a stage.
flush_stage_authorizers_cache(Client, RestApiId, StageName, Input) ->
    flush_stage_authorizers_cache(Client, RestApiId, StageName, Input, []).
flush_stage_authorizers_cache(Client, RestApiId, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), "/cache/authorizers"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Flushes a stage's cache.
flush_stage_cache(Client, RestApiId, StageName, Input) ->
    flush_stage_cache(Client, RestApiId, StageName, Input, []).
flush_stage_cache(Client, RestApiId, StageName, Input0, Options) ->
    Method = delete,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), "/cache/data"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Generates a <a>ClientCertificate</a> resource.
generate_client_certificate(Client, Input) ->
    generate_client_certificate(Client, Input, []).
generate_client_certificate(Client, Input0, Options) ->
    Method = post,
    Path = ["/clientcertificates"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the current <a>Account</a> resource.
get_account(Client)
  when is_map(Client) ->
    get_account(Client, []).
get_account(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/account"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current <a>ApiKey</a> resource.
get_api_key(Client, ApiKey, IncludeValue)
  when is_map(Client) ->
    get_api_key(Client, ApiKey, IncludeValue, []).
get_api_key(Client, ApiKey, IncludeValue, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/apikeys/", http_uri:encode(ApiKey), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"includeValue">>, IncludeValue}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current <a>ApiKeys</a> resource.
get_api_keys(Client, CustomerId, IncludeValues, Limit, NameQuery, Position)
  when is_map(Client) ->
    get_api_keys(Client, CustomerId, IncludeValues, Limit, NameQuery, Position, []).
get_api_keys(Client, CustomerId, IncludeValues, Limit, NameQuery, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/apikeys"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"customerId">>, CustomerId},
        {<<"includeValues">>, IncludeValues},
        {<<"limit">>, Limit},
        {<<"name">>, NameQuery},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing <a>Authorizer</a> resource.
%%
%% <div class="seeAlso"><a
%% href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html">AWS
%% CLI</a></div>
get_authorizer(Client, AuthorizerId, RestApiId)
  when is_map(Client) ->
    get_authorizer(Client, AuthorizerId, RestApiId, []).
get_authorizer(Client, AuthorizerId, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/authorizers/", http_uri:encode(AuthorizerId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing <a>Authorizers</a> resource.
%%
%% <div class="seeAlso"><a
%% href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html">AWS
%% CLI</a></div>
get_authorizers(Client, RestApiId, Limit, Position)
  when is_map(Client) ->
    get_authorizers(Client, RestApiId, Limit, Position, []).
get_authorizers(Client, RestApiId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/authorizers"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a <a>BasePathMapping</a> resource.
get_base_path_mapping(Client, BasePath, DomainName)
  when is_map(Client) ->
    get_base_path_mapping(Client, BasePath, DomainName, []).
get_base_path_mapping(Client, BasePath, DomainName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/domainnames/", http_uri:encode(DomainName), "/basepathmappings/", http_uri:encode(BasePath), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a collection of <a>BasePathMapping</a> resources.
get_base_path_mappings(Client, DomainName, Limit, Position)
  when is_map(Client) ->
    get_base_path_mappings(Client, DomainName, Limit, Position, []).
get_base_path_mappings(Client, DomainName, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/domainnames/", http_uri:encode(DomainName), "/basepathmappings"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current <a>ClientCertificate</a> resource.
get_client_certificate(Client, ClientCertificateId)
  when is_map(Client) ->
    get_client_certificate(Client, ClientCertificateId, []).
get_client_certificate(Client, ClientCertificateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clientcertificates/", http_uri:encode(ClientCertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of <a>ClientCertificate</a> resources.
get_client_certificates(Client, Limit, Position)
  when is_map(Client) ->
    get_client_certificates(Client, Limit, Position, []).
get_client_certificates(Client, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clientcertificates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a <a>Deployment</a> resource.
get_deployment(Client, DeploymentId, RestApiId, Embed)
  when is_map(Client) ->
    get_deployment(Client, DeploymentId, RestApiId, Embed, []).
get_deployment(Client, DeploymentId, RestApiId, Embed, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/deployments/", http_uri:encode(DeploymentId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"embed">>, Embed}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a <a>Deployments</a> collection.
get_deployments(Client, RestApiId, Limit, Position)
  when is_map(Client) ->
    get_deployments(Client, RestApiId, Limit, Position, []).
get_deployments(Client, RestApiId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/deployments"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).


get_documentation_part(Client, DocumentationPartId, RestApiId)
  when is_map(Client) ->
    get_documentation_part(Client, DocumentationPartId, RestApiId, []).
get_documentation_part(Client, DocumentationPartId, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/parts/", http_uri:encode(DocumentationPartId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).


get_documentation_parts(Client, RestApiId, Limit, LocationStatus, NameQuery, Path, Position, Type)
  when is_map(Client) ->
    get_documentation_parts(Client, RestApiId, Limit, LocationStatus, NameQuery, Path, Position, Type, []).
get_documentation_parts(Client, RestApiId, Limit, LocationStatus, NameQuery, Path, Position, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/parts"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"locationStatus">>, LocationStatus},
        {<<"name">>, NameQuery},
        {<<"path">>, Path},
        {<<"position">>, Position},
        {<<"type">>, Type}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).


get_documentation_version(Client, DocumentationVersion, RestApiId)
  when is_map(Client) ->
    get_documentation_version(Client, DocumentationVersion, RestApiId, []).
get_documentation_version(Client, DocumentationVersion, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/versions/", http_uri:encode(DocumentationVersion), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).


get_documentation_versions(Client, RestApiId, Limit, Position)
  when is_map(Client) ->
    get_documentation_versions(Client, RestApiId, Limit, Position, []).
get_documentation_versions(Client, RestApiId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a domain name that is contained in a simpler, more
%% intuitive URL that can be called.
get_domain_name(Client, DomainName)
  when is_map(Client) ->
    get_domain_name(Client, DomainName, []).
get_domain_name(Client, DomainName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/domainnames/", http_uri:encode(DomainName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a collection of <a>DomainName</a> resources.
get_domain_names(Client, Limit, Position)
  when is_map(Client) ->
    get_domain_names(Client, Limit, Position, []).
get_domain_names(Client, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/domainnames"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports a deployed version of a <a>RestApi</a> in a specified format.
get_export(Client, ExportType, RestApiId, StageName, Parameters, Accepts)
  when is_map(Client) ->
    get_export(Client, ExportType, RestApiId, StageName, Parameters, Accepts, []).
get_export(Client, ExportType, RestApiId, StageName, Parameters, Accepts, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), "/exports/", http_uri:encode(ExportType), ""],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Accept">>, Accepts}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0 =
      [
        {<<"">>, Parameters}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    case request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Disposition">>, <<"contentDisposition">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a <a>GatewayResponse</a> of a specified response type on the
%% given <a>RestApi</a>.
get_gateway_response(Client, ResponseType, RestApiId)
  when is_map(Client) ->
    get_gateway_response(Client, ResponseType, RestApiId, []).
get_gateway_response(Client, ResponseType, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/gatewayresponses/", http_uri:encode(ResponseType), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the <a>GatewayResponses</a> collection on the given
%% <a>RestApi</a>. If an API developer has not added any definitions for
%% gateway responses, the result will be the API Gateway-generated default
%% <a>GatewayResponses</a> collection for the supported response types.
get_gateway_responses(Client, RestApiId, Limit, Position)
  when is_map(Client) ->
    get_gateway_responses(Client, RestApiId, Limit, Position, []).
get_gateway_responses(Client, RestApiId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/gatewayresponses"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the integration settings.
get_integration(Client, HttpMethod, ResourceId, RestApiId)
  when is_map(Client) ->
    get_integration(Client, HttpMethod, ResourceId, RestApiId, []).
get_integration(Client, HttpMethod, ResourceId, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a get integration response.
get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode)
  when is_map(Client) ->
    get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, []).
get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing <a>Method</a> resource.
get_method(Client, HttpMethod, ResourceId, RestApiId)
  when is_map(Client) ->
    get_method(Client, HttpMethod, ResourceId, RestApiId, []).
get_method(Client, HttpMethod, ResourceId, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a <a>MethodResponse</a> resource.
get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode)
  when is_map(Client) ->
    get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, []).
get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing model defined for a <a>RestApi</a> resource.
get_model(Client, ModelName, RestApiId, Flatten)
  when is_map(Client) ->
    get_model(Client, ModelName, RestApiId, Flatten, []).
get_model(Client, ModelName, RestApiId, Flatten, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/models/", http_uri:encode(ModelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"flatten">>, Flatten}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a sample mapping template that can be used to transform a
%% payload into the structure of a model.
get_model_template(Client, ModelName, RestApiId)
  when is_map(Client) ->
    get_model_template(Client, ModelName, RestApiId, []).
get_model_template(Client, ModelName, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/models/", http_uri:encode(ModelName), "/default_template"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes existing <a>Models</a> defined for a <a>RestApi</a>
%% resource.
get_models(Client, RestApiId, Limit, Position)
  when is_map(Client) ->
    get_models(Client, RestApiId, Limit, Position, []).
get_models(Client, RestApiId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/models"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a <a>RequestValidator</a> of a given <a>RestApi</a>.
get_request_validator(Client, RequestValidatorId, RestApiId)
  when is_map(Client) ->
    get_request_validator(Client, RequestValidatorId, RestApiId, []).
get_request_validator(Client, RequestValidatorId, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/requestvalidators/", http_uri:encode(RequestValidatorId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the <a>RequestValidators</a> collection of a given
%% <a>RestApi</a>.
get_request_validators(Client, RestApiId, Limit, Position)
  when is_map(Client) ->
    get_request_validators(Client, RestApiId, Limit, Position, []).
get_request_validators(Client, RestApiId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/requestvalidators"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a resource.
get_resource(Client, ResourceId, RestApiId, Embed)
  when is_map(Client) ->
    get_resource(Client, ResourceId, RestApiId, Embed, []).
get_resource(Client, ResourceId, RestApiId, Embed, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"embed">>, Embed}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a collection of <a>Resource</a> resources.
get_resources(Client, RestApiId, Embed, Limit, Position)
  when is_map(Client) ->
    get_resources(Client, RestApiId, Embed, Limit, Position, []).
get_resources(Client, RestApiId, Embed, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"embed">>, Embed},
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the <a>RestApi</a> resource in the collection.
get_rest_api(Client, RestApiId)
  when is_map(Client) ->
    get_rest_api(Client, RestApiId, []).
get_rest_api(Client, RestApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the <a>RestApis</a> resources for your collection.
get_rest_apis(Client, Limit, Position)
  when is_map(Client) ->
    get_rest_apis(Client, Limit, Position, []).
get_rest_apis(Client, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a client SDK for a <a>RestApi</a> and <a>Stage</a>.
get_sdk(Client, RestApiId, SdkType, StageName, Parameters)
  when is_map(Client) ->
    get_sdk(Client, RestApiId, SdkType, StageName, Parameters, []).
get_sdk(Client, RestApiId, SdkType, StageName, Parameters, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), "/sdks/", http_uri:encode(SdkType), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0 =
      [
        {<<"">>, Parameters}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    case request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Disposition">>, <<"contentDisposition">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.


get_sdk_type(Client, Id)
  when is_map(Client) ->
    get_sdk_type(Client, Id, []).
get_sdk_type(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/sdktypes/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).


get_sdk_types(Client, Limit, Position)
  when is_map(Client) ->
    get_sdk_types(Client, Limit, Position, []).
get_sdk_types(Client, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/sdktypes"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a <a>Stage</a> resource.
get_stage(Client, RestApiId, StageName)
  when is_map(Client) ->
    get_stage(Client, RestApiId, StageName, []).
get_stage(Client, RestApiId, StageName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more <a>Stage</a> resources.
get_stages(Client, RestApiId, DeploymentId)
  when is_map(Client) ->
    get_stages(Client, RestApiId, DeploymentId, []).
get_stages(Client, RestApiId, DeploymentId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"deploymentId">>, DeploymentId}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the <a>Tags</a> collection for a given resource.
get_tags(Client, ResourceArn, Limit, Position)
  when is_map(Client) ->
    get_tags(Client, ResourceArn, Limit, Position, []).
get_tags(Client, ResourceArn, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the usage data of a usage plan in a specified time interval.
get_usage(Client, UsagePlanId, EndDate, KeyId, Limit, Position, StartDate)
  when is_map(Client) ->
    get_usage(Client, UsagePlanId, EndDate, KeyId, Limit, Position, StartDate, []).
get_usage(Client, UsagePlanId, EndDate, KeyId, Limit, Position, StartDate, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), "/usage"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"endDate">>, EndDate},
        {<<"keyId">>, KeyId},
        {<<"limit">>, Limit},
        {<<"position">>, Position},
        {<<"startDate">>, StartDate}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a usage plan of a given plan identifier.
get_usage_plan(Client, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan(Client, UsagePlanId, []).
get_usage_plan(Client, UsagePlanId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a usage plan key of a given key identifier.
get_usage_plan_key(Client, KeyId, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan_key(Client, KeyId, UsagePlanId, []).
get_usage_plan_key(Client, KeyId, UsagePlanId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), "/keys/", http_uri:encode(KeyId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all the usage plan keys representing the API keys added to a
%% specified usage plan.
get_usage_plan_keys(Client, UsagePlanId, Limit, NameQuery, Position)
  when is_map(Client) ->
    get_usage_plan_keys(Client, UsagePlanId, Limit, NameQuery, Position, []).
get_usage_plan_keys(Client, UsagePlanId, Limit, NameQuery, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), "/keys"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"name">>, NameQuery},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all the usage plans of the caller's account.
get_usage_plans(Client, KeyId, Limit, Position)
  when is_map(Client) ->
    get_usage_plans(Client, KeyId, Limit, Position, []).
get_usage_plans(Client, KeyId, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/usageplans"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"keyId">>, KeyId},
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a specified VPC link under the caller's account in a region.
get_vpc_link(Client, VpcLinkId)
  when is_map(Client) ->
    get_vpc_link(Client, VpcLinkId, []).
get_vpc_link(Client, VpcLinkId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/vpclinks/", http_uri:encode(VpcLinkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the <a>VpcLinks</a> collection under the caller's account in a
%% selected region.
get_vpc_links(Client, Limit, Position)
  when is_map(Client) ->
    get_vpc_links(Client, Limit, Position, []).
get_vpc_links(Client, Limit, Position, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/vpclinks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"limit">>, Limit},
        {<<"position">>, Position}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Import API keys from an external source, such as a CSV-formatted
%% file.
import_api_keys(Client, Input) ->
    import_api_keys(Client, Input, []).
import_api_keys(Client, Input0, Options) ->
    Method = post,
    Path = ["/apikeys?mode=import"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"format">>, <<"format">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


import_documentation_parts(Client, RestApiId, Input) ->
    import_documentation_parts(Client, RestApiId, Input, []).
import_documentation_parts(Client, RestApiId, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/parts"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"mode">>, <<"mode">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc A feature of the API Gateway control service for creating a new API
%% from an external API definition file.
import_rest_api(Client, Input) ->
    import_rest_api(Client, Input, []).
import_rest_api(Client, Input0, Options) ->
    Method = post,
    Path = ["/restapis?mode=import"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"">>, <<"parameters">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a customization of a <a>GatewayResponse</a> of a specified
%% response type and status code on the given <a>RestApi</a>.
put_gateway_response(Client, ResponseType, RestApiId, Input) ->
    put_gateway_response(Client, ResponseType, RestApiId, Input, []).
put_gateway_response(Client, ResponseType, RestApiId, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/gatewayresponses/", http_uri:encode(ResponseType), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets up a method's integration.
put_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    put_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).
put_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Represents a put integration.
put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Add a method to an existing <a>Resource</a> resource.
put_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    put_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
put_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a <a>MethodResponse</a> to an existing <a>Method</a> resource.
put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc A feature of the API Gateway control service for updating an existing
%% API with an input of external API definitions. The update can take the
%% form of merging the supplied definition into the existing API or
%% overwriting the existing API.
put_rest_api(Client, RestApiId, Input) ->
    put_rest_api(Client, RestApiId, Input, []).
put_rest_api(Client, RestApiId, Input0, Options) ->
    Method = put,
    Path = ["/restapis/", http_uri:encode(RestApiId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"mode">>, <<"mode">>},
                     {<<"">>, <<"parameters">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates a tag on a given resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = put,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Simulate the execution of an <a>Authorizer</a> in your <a>RestApi</a>
%% with headers, parameters, and an incoming request body.
%%
%% <div class="seeAlso"> <a
%% href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-use-lambda-authorizer.html">Use
%% Lambda Function as Authorizer</a> <a
%% href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html">Use
%% Cognito User Pool as Authorizer</a> </div>
test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input, []).
test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/authorizers/", http_uri:encode(AuthorizerId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Simulate the execution of a <a>Method</a> in your <a>RestApi</a> with
%% headers, parameters, and an incoming request body.
test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = post,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a given resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the current <a>Account</a> resource.
update_account(Client, Input) ->
    update_account(Client, Input, []).
update_account(Client, Input0, Options) ->
    Method = patch,
    Path = ["/account"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about an <a>ApiKey</a> resource.
update_api_key(Client, ApiKey, Input) ->
    update_api_key(Client, ApiKey, Input, []).
update_api_key(Client, ApiKey, Input0, Options) ->
    Method = patch,
    Path = ["/apikeys/", http_uri:encode(ApiKey), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing <a>Authorizer</a> resource.
%%
%% <div class="seeAlso"><a
%% href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html">AWS
%% CLI</a></div>
update_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    update_authorizer(Client, AuthorizerId, RestApiId, Input, []).
update_authorizer(Client, AuthorizerId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/authorizers/", http_uri:encode(AuthorizerId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the <a>BasePathMapping</a> resource.
update_base_path_mapping(Client, BasePath, DomainName, Input) ->
    update_base_path_mapping(Client, BasePath, DomainName, Input, []).
update_base_path_mapping(Client, BasePath, DomainName, Input0, Options) ->
    Method = patch,
    Path = ["/domainnames/", http_uri:encode(DomainName), "/basepathmappings/", http_uri:encode(BasePath), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about an <a>ClientCertificate</a> resource.
update_client_certificate(Client, ClientCertificateId, Input) ->
    update_client_certificate(Client, ClientCertificateId, Input, []).
update_client_certificate(Client, ClientCertificateId, Input0, Options) ->
    Method = patch,
    Path = ["/clientcertificates/", http_uri:encode(ClientCertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a <a>Deployment</a> resource.
update_deployment(Client, DeploymentId, RestApiId, Input) ->
    update_deployment(Client, DeploymentId, RestApiId, Input, []).
update_deployment(Client, DeploymentId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/deployments/", http_uri:encode(DeploymentId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


update_documentation_part(Client, DocumentationPartId, RestApiId, Input) ->
    update_documentation_part(Client, DocumentationPartId, RestApiId, Input, []).
update_documentation_part(Client, DocumentationPartId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/parts/", http_uri:encode(DocumentationPartId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).


update_documentation_version(Client, DocumentationVersion, RestApiId, Input) ->
    update_documentation_version(Client, DocumentationVersion, RestApiId, Input, []).
update_documentation_version(Client, DocumentationVersion, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/documentation/versions/", http_uri:encode(DocumentationVersion), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the <a>DomainName</a> resource.
update_domain_name(Client, DomainName, Input) ->
    update_domain_name(Client, DomainName, Input, []).
update_domain_name(Client, DomainName, Input0, Options) ->
    Method = patch,
    Path = ["/domainnames/", http_uri:encode(DomainName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a <a>GatewayResponse</a> of a specified response type on the
%% given <a>RestApi</a>.
update_gateway_response(Client, ResponseType, RestApiId, Input) ->
    update_gateway_response(Client, ResponseType, RestApiId, Input, []).
update_gateway_response(Client, ResponseType, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/gatewayresponses/", http_uri:encode(ResponseType), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Represents an update integration.
update_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    update_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).
update_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Represents an update integration response.
update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/integration/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing <a>Method</a> resource.
update_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    update_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
update_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing <a>MethodResponse</a> resource.
update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), "/methods/", http_uri:encode(HttpMethod), "/responses/", http_uri:encode(StatusCode), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a model.
update_model(Client, ModelName, RestApiId, Input) ->
    update_model(Client, ModelName, RestApiId, Input, []).
update_model(Client, ModelName, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/models/", http_uri:encode(ModelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a <a>RequestValidator</a> of a given <a>RestApi</a>.
update_request_validator(Client, RequestValidatorId, RestApiId, Input) ->
    update_request_validator(Client, RequestValidatorId, RestApiId, Input, []).
update_request_validator(Client, RequestValidatorId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/requestvalidators/", http_uri:encode(RequestValidatorId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a <a>Resource</a> resource.
update_resource(Client, ResourceId, RestApiId, Input) ->
    update_resource(Client, ResourceId, RestApiId, Input, []).
update_resource(Client, ResourceId, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/resources/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the specified API.
update_rest_api(Client, RestApiId, Input) ->
    update_rest_api(Client, RestApiId, Input, []).
update_rest_api(Client, RestApiId, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a <a>Stage</a> resource.
update_stage(Client, RestApiId, StageName, Input) ->
    update_stage(Client, RestApiId, StageName, Input, []).
update_stage(Client, RestApiId, StageName, Input0, Options) ->
    Method = patch,
    Path = ["/restapis/", http_uri:encode(RestApiId), "/stages/", http_uri:encode(StageName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Grants a temporary extension to the remaining quota of a usage plan
%% associated with a specified API key.
update_usage(Client, KeyId, UsagePlanId, Input) ->
    update_usage(Client, KeyId, UsagePlanId, Input, []).
update_usage(Client, KeyId, UsagePlanId, Input0, Options) ->
    Method = patch,
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), "/keys/", http_uri:encode(KeyId), "/usage"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a usage plan of a given plan Id.
update_usage_plan(Client, UsagePlanId, Input) ->
    update_usage_plan(Client, UsagePlanId, Input, []).
update_usage_plan(Client, UsagePlanId, Input0, Options) ->
    Method = patch,
    Path = ["/usageplans/", http_uri:encode(UsagePlanId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing <a>VpcLink</a> of a specified identifier.
update_vpc_link(Client, VpcLinkId, Input) ->
    update_vpc_link(Client, VpcLinkId, Input, []).
update_vpc_link(Client, VpcLinkId, Input0, Options) ->
    Method = patch,
    Path = ["/vpclinks/", http_uri:encode(VpcLinkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

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
    Host = get_host(<<"apigateway">>, Client1),
    URL0 = get_url(Host, Path, Client1),
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
