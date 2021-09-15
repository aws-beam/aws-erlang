%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon API Gateway
%%
%% Amazon API Gateway helps developers deliver robust, secure, and scalable
%% mobile and web application back ends.
%%
%% API Gateway allows developers to securely connect mobile and web
%% applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly
%% addressable web services that are hosted outside of AWS.
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
         get_account/3,
         get_account/4,
         get_api_key/2,
         get_api_key/4,
         get_api_key/5,
         get_api_keys/1,
         get_api_keys/3,
         get_api_keys/4,
         get_authorizer/3,
         get_authorizer/5,
         get_authorizer/6,
         get_authorizers/2,
         get_authorizers/4,
         get_authorizers/5,
         get_base_path_mapping/3,
         get_base_path_mapping/5,
         get_base_path_mapping/6,
         get_base_path_mappings/2,
         get_base_path_mappings/4,
         get_base_path_mappings/5,
         get_client_certificate/2,
         get_client_certificate/4,
         get_client_certificate/5,
         get_client_certificates/1,
         get_client_certificates/3,
         get_client_certificates/4,
         get_deployment/3,
         get_deployment/5,
         get_deployment/6,
         get_deployments/2,
         get_deployments/4,
         get_deployments/5,
         get_documentation_part/3,
         get_documentation_part/5,
         get_documentation_part/6,
         get_documentation_parts/2,
         get_documentation_parts/4,
         get_documentation_parts/5,
         get_documentation_version/3,
         get_documentation_version/5,
         get_documentation_version/6,
         get_documentation_versions/2,
         get_documentation_versions/4,
         get_documentation_versions/5,
         get_domain_name/2,
         get_domain_name/4,
         get_domain_name/5,
         get_domain_names/1,
         get_domain_names/3,
         get_domain_names/4,
         get_export/4,
         get_export/6,
         get_export/7,
         get_gateway_response/3,
         get_gateway_response/5,
         get_gateway_response/6,
         get_gateway_responses/2,
         get_gateway_responses/4,
         get_gateway_responses/5,
         get_integration/4,
         get_integration/6,
         get_integration/7,
         get_integration_response/5,
         get_integration_response/7,
         get_integration_response/8,
         get_method/4,
         get_method/6,
         get_method/7,
         get_method_response/5,
         get_method_response/7,
         get_method_response/8,
         get_model/3,
         get_model/5,
         get_model/6,
         get_model_template/3,
         get_model_template/5,
         get_model_template/6,
         get_models/2,
         get_models/4,
         get_models/5,
         get_request_validator/3,
         get_request_validator/5,
         get_request_validator/6,
         get_request_validators/2,
         get_request_validators/4,
         get_request_validators/5,
         get_resource/3,
         get_resource/5,
         get_resource/6,
         get_resources/2,
         get_resources/4,
         get_resources/5,
         get_rest_api/2,
         get_rest_api/4,
         get_rest_api/5,
         get_rest_apis/1,
         get_rest_apis/3,
         get_rest_apis/4,
         get_sdk/4,
         get_sdk/6,
         get_sdk/7,
         get_sdk_type/2,
         get_sdk_type/4,
         get_sdk_type/5,
         get_sdk_types/1,
         get_sdk_types/3,
         get_sdk_types/4,
         get_stage/3,
         get_stage/5,
         get_stage/6,
         get_stages/2,
         get_stages/4,
         get_stages/5,
         get_tags/2,
         get_tags/4,
         get_tags/5,
         get_usage/4,
         get_usage/6,
         get_usage/7,
         get_usage_plan/2,
         get_usage_plan/4,
         get_usage_plan/5,
         get_usage_plan_key/3,
         get_usage_plan_key/5,
         get_usage_plan_key/6,
         get_usage_plan_keys/2,
         get_usage_plan_keys/4,
         get_usage_plan_keys/5,
         get_usage_plans/1,
         get_usage_plans/3,
         get_usage_plans/4,
         get_vpc_link/2,
         get_vpc_link/4,
         get_vpc_link/5,
         get_vpc_links/1,
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

%% @doc Create an `ApiKey' resource.
%%
%% See also: AWS CLI
create_api_key(Client, Input) ->
    create_api_key(Client, Input, []).
create_api_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apikeys"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new `Authorizer' resource to an existing `RestApi' resource.
%%
%% See also: AWS CLI
create_authorizer(Client, RestApiId, Input) ->
    create_authorizer(Client, RestApiId, Input, []).
create_authorizer(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new `BasePathMapping' resource.
create_base_path_mapping(Client, DomainName, Input) ->
    create_base_path_mapping(Client, DomainName, Input, []).
create_base_path_mapping(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Deployment' resource, which makes a specified `RestApi'
%% callable over the internet.
create_deployment(Client, RestApiId, Input) ->
    create_deployment(Client, RestApiId, Input, []).
create_deployment(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


create_documentation_part(Client, RestApiId, Input) ->
    create_documentation_part(Client, RestApiId, Input, []).
create_documentation_part(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


create_documentation_version(Client, RestApiId, Input) ->
    create_documentation_version(Client, RestApiId, Input, []).
create_documentation_version(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new domain name.
create_domain_name(Client, Input) ->
    create_domain_name(Client, Input, []).
create_domain_name(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domainnames"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new `Model' resource to an existing `RestApi' resource.
create_model(Client, RestApiId, Input) ->
    create_model(Client, RestApiId, Input, []).
create_model(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `ReqeustValidator' of a given `RestApi'.
create_request_validator(Client, RestApiId, Input) ->
    create_request_validator(Client, RestApiId, Input, []).
create_request_validator(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Resource' resource.
create_resource(Client, ParentId, RestApiId, Input) ->
    create_resource(Client, ParentId, RestApiId, Input, []).
create_resource(Client, ParentId, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ParentId), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new `RestApi' resource.
create_rest_api(Client, Input) ->
    create_rest_api(Client, Input, []).
create_rest_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restapis"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new `Stage' resource that references a pre-existing
%% `Deployment' for the API.
create_stage(Client, RestApiId, Input) ->
    create_stage(Client, RestApiId, Input, []).
create_stage(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a usage plan with the throttle and quota limits, as well as
%% the associated API stages, specified in the payload.
create_usage_plan(Client, Input) ->
    create_usage_plan(Client, Input, []).
create_usage_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/usageplans"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a usage plan key for adding an existing API key to a usage
%% plan.
create_usage_plan_key(Client, UsagePlanId, Input) ->
    create_usage_plan_key(Client, UsagePlanId, Input, []).
create_usage_plan_key(Client, UsagePlanId, Input0, Options0) ->
    Method = post,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a VPC link, under the caller's account in a selected region,
%% in an asynchronous operation that typically takes 2-4 minutes to complete
%% and become operational.
%%
%% The caller must have permissions to create and update VPC Endpoint
%% services.
create_vpc_link(Client, Input) ->
    create_vpc_link(Client, Input, []).
create_vpc_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vpclinks"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `ApiKey' resource.
delete_api_key(Client, ApiKey, Input) ->
    delete_api_key(Client, ApiKey, Input, []).
delete_api_key(Client, ApiKey, Input0, Options0) ->
    Method = delete,
    Path = ["/apikeys/", aws_util:encode_uri(ApiKey), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing `Authorizer' resource.
%%
%% See also: AWS CLI
delete_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    delete_authorizer(Client, AuthorizerId, RestApiId, Input, []).
delete_authorizer(Client, AuthorizerId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `BasePathMapping' resource.
delete_base_path_mapping(Client, BasePath, DomainName, Input) ->
    delete_base_path_mapping(Client, BasePath, DomainName, Input, []).
delete_base_path_mapping(Client, BasePath, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings/", aws_util:encode_uri(BasePath), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `ClientCertificate' resource.
delete_client_certificate(Client, ClientCertificateId, Input) ->
    delete_client_certificate(Client, ClientCertificateId, Input, []).
delete_client_certificate(Client, ClientCertificateId, Input0, Options0) ->
    Method = delete,
    Path = ["/clientcertificates/", aws_util:encode_uri(ClientCertificateId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Deployment' resource.
%%
%% Deleting a deployment will only succeed if there are no `Stage' resources
%% associated with it.
delete_deployment(Client, DeploymentId, RestApiId, Input) ->
    delete_deployment(Client, DeploymentId, RestApiId, Input, []).
delete_deployment(Client, DeploymentId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


delete_documentation_part(Client, DocumentationPartId, RestApiId, Input) ->
    delete_documentation_part(Client, DocumentationPartId, RestApiId, Input, []).
delete_documentation_part(Client, DocumentationPartId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts/", aws_util:encode_uri(DocumentationPartId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


delete_documentation_version(Client, DocumentationVersion, RestApiId, Input) ->
    delete_documentation_version(Client, DocumentationVersion, RestApiId, Input, []).
delete_documentation_version(Client, DocumentationVersion, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions/", aws_util:encode_uri(DocumentationVersion), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `DomainName' resource.
delete_domain_name(Client, DomainName, Input) ->
    delete_domain_name(Client, DomainName, Input, []).
delete_domain_name(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Clears any customization of a `GatewayResponse' of a specified
%% response type on the given `RestApi' and resets it with the default
%% settings.
delete_gateway_response(Client, ResponseType, RestApiId, Input) ->
    delete_gateway_response(Client, ResponseType, RestApiId, Input, []).
delete_gateway_response(Client, ResponseType, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Represents a delete integration.
delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).
delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Represents a delete integration response.
delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing `Method' resource.
delete_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    delete_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
delete_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing `MethodResponse' resource.
delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a model.
delete_model(Client, ModelName, RestApiId, Input) ->
    delete_model(Client, ModelName, RestApiId, Input, []).
delete_model(Client, ModelName, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `RequestValidator' of a given `RestApi'.
delete_request_validator(Client, RequestValidatorId, RestApiId, Input) ->
    delete_request_validator(Client, RequestValidatorId, RestApiId, Input, []).
delete_request_validator(Client, RequestValidatorId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators/", aws_util:encode_uri(RequestValidatorId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Resource' resource.
delete_resource(Client, ResourceId, RestApiId, Input) ->
    delete_resource(Client, ResourceId, RestApiId, Input, []).
delete_resource(Client, ResourceId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified API.
delete_rest_api(Client, RestApiId, Input) ->
    delete_rest_api(Client, RestApiId, Input, []).
delete_rest_api(Client, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Stage' resource.
delete_stage(Client, RestApiId, StageName, Input) ->
    delete_stage(Client, RestApiId, StageName, Input, []).
delete_stage(Client, RestApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a usage plan of a given plan Id.
delete_usage_plan(Client, UsagePlanId, Input) ->
    delete_usage_plan(Client, UsagePlanId, Input, []).
delete_usage_plan(Client, UsagePlanId, Input0, Options0) ->
    Method = delete,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a usage plan key and remove the underlying API key from the
%% associated usage plan.
delete_usage_plan_key(Client, KeyId, UsagePlanId, Input) ->
    delete_usage_plan_key(Client, KeyId, UsagePlanId, Input, []).
delete_usage_plan_key(Client, KeyId, UsagePlanId, Input0, Options0) ->
    Method = delete,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys/", aws_util:encode_uri(KeyId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing `VpcLink' of a specified identifier.
delete_vpc_link(Client, VpcLinkId, Input) ->
    delete_vpc_link(Client, VpcLinkId, Input, []).
delete_vpc_link(Client, VpcLinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Flushes all authorizer cache entries on a stage.
flush_stage_authorizers_cache(Client, RestApiId, StageName, Input) ->
    flush_stage_authorizers_cache(Client, RestApiId, StageName, Input, []).
flush_stage_authorizers_cache(Client, RestApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/cache/authorizers"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Flushes a stage's cache.
flush_stage_cache(Client, RestApiId, StageName, Input) ->
    flush_stage_cache(Client, RestApiId, StageName, Input, []).
flush_stage_cache(Client, RestApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/cache/data"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates a `ClientCertificate' resource.
generate_client_certificate(Client, Input) ->
    generate_client_certificate(Client, Input, []).
generate_client_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/clientcertificates"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the current `Account' resource.
get_account(Client)
  when is_map(Client) ->
    get_account(Client, #{}, #{}).

get_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, QueryMap, HeadersMap, []).

get_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current `ApiKey' resource.
get_api_key(Client, ApiKey)
  when is_map(Client) ->
    get_api_key(Client, ApiKey, #{}, #{}).

get_api_key(Client, ApiKey, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_key(Client, ApiKey, QueryMap, HeadersMap, []).

get_api_key(Client, ApiKey, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apikeys/", aws_util:encode_uri(ApiKey), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeValue">>, maps:get(<<"includeValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current `ApiKeys' resource.
get_api_keys(Client)
  when is_map(Client) ->
    get_api_keys(Client, #{}, #{}).

get_api_keys(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_keys(Client, QueryMap, HeadersMap, []).

get_api_keys(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apikeys"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"customerId">>, maps:get(<<"customerId">>, QueryMap, undefined)},
        {<<"includeValues">>, maps:get(<<"includeValues">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing `Authorizer' resource.
%%
%% See also: AWS CLI
get_authorizer(Client, AuthorizerId, RestApiId)
  when is_map(Client) ->
    get_authorizer(Client, AuthorizerId, RestApiId, #{}, #{}).

get_authorizer(Client, AuthorizerId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_authorizer(Client, AuthorizerId, RestApiId, QueryMap, HeadersMap, []).

get_authorizer(Client, AuthorizerId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing `Authorizers' resource.
%%
%% See also: AWS CLI
get_authorizers(Client, RestApiId)
  when is_map(Client) ->
    get_authorizers(Client, RestApiId, #{}, #{}).

get_authorizers(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_authorizers(Client, RestApiId, QueryMap, HeadersMap, []).

get_authorizers(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a `BasePathMapping' resource.
get_base_path_mapping(Client, BasePath, DomainName)
  when is_map(Client) ->
    get_base_path_mapping(Client, BasePath, DomainName, #{}, #{}).

get_base_path_mapping(Client, BasePath, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_base_path_mapping(Client, BasePath, DomainName, QueryMap, HeadersMap, []).

get_base_path_mapping(Client, BasePath, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings/", aws_util:encode_uri(BasePath), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a collection of `BasePathMapping' resources.
get_base_path_mappings(Client, DomainName)
  when is_map(Client) ->
    get_base_path_mappings(Client, DomainName, #{}, #{}).

get_base_path_mappings(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_base_path_mappings(Client, DomainName, QueryMap, HeadersMap, []).

get_base_path_mappings(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current `ClientCertificate' resource.
get_client_certificate(Client, ClientCertificateId)
  when is_map(Client) ->
    get_client_certificate(Client, ClientCertificateId, #{}, #{}).

get_client_certificate(Client, ClientCertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_client_certificate(Client, ClientCertificateId, QueryMap, HeadersMap, []).

get_client_certificate(Client, ClientCertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clientcertificates/", aws_util:encode_uri(ClientCertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of `ClientCertificate' resources.
get_client_certificates(Client)
  when is_map(Client) ->
    get_client_certificates(Client, #{}, #{}).

get_client_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_client_certificates(Client, QueryMap, HeadersMap, []).

get_client_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clientcertificates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a `Deployment' resource.
get_deployment(Client, DeploymentId, RestApiId)
  when is_map(Client) ->
    get_deployment(Client, DeploymentId, RestApiId, #{}, #{}).

get_deployment(Client, DeploymentId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, DeploymentId, RestApiId, QueryMap, HeadersMap, []).

get_deployment(Client, DeploymentId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"embed">>, maps:get(<<"embed">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a `Deployments' collection.
get_deployments(Client, RestApiId)
  when is_map(Client) ->
    get_deployments(Client, RestApiId, #{}, #{}).

get_deployments(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployments(Client, RestApiId, QueryMap, HeadersMap, []).

get_deployments(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_documentation_part(Client, DocumentationPartId, RestApiId)
  when is_map(Client) ->
    get_documentation_part(Client, DocumentationPartId, RestApiId, #{}, #{}).

get_documentation_part(Client, DocumentationPartId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_part(Client, DocumentationPartId, RestApiId, QueryMap, HeadersMap, []).

get_documentation_part(Client, DocumentationPartId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts/", aws_util:encode_uri(DocumentationPartId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_documentation_parts(Client, RestApiId)
  when is_map(Client) ->
    get_documentation_parts(Client, RestApiId, #{}, #{}).

get_documentation_parts(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_parts(Client, RestApiId, QueryMap, HeadersMap, []).

get_documentation_parts(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"locationStatus">>, maps:get(<<"locationStatus">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"path">>, maps:get(<<"path">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_documentation_version(Client, DocumentationVersion, RestApiId)
  when is_map(Client) ->
    get_documentation_version(Client, DocumentationVersion, RestApiId, #{}, #{}).

get_documentation_version(Client, DocumentationVersion, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_version(Client, DocumentationVersion, RestApiId, QueryMap, HeadersMap, []).

get_documentation_version(Client, DocumentationVersion, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions/", aws_util:encode_uri(DocumentationVersion), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_documentation_versions(Client, RestApiId)
  when is_map(Client) ->
    get_documentation_versions(Client, RestApiId, #{}, #{}).

get_documentation_versions(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_versions(Client, RestApiId, QueryMap, HeadersMap, []).

get_documentation_versions(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a domain name that is contained in a simpler, more
%% intuitive URL that can be called.
get_domain_name(Client, DomainName)
  when is_map(Client) ->
    get_domain_name(Client, DomainName, #{}, #{}).

get_domain_name(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_name(Client, DomainName, QueryMap, HeadersMap, []).

get_domain_name(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a collection of `DomainName' resources.
get_domain_names(Client)
  when is_map(Client) ->
    get_domain_names(Client, #{}, #{}).

get_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_names(Client, QueryMap, HeadersMap, []).

get_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports a deployed version of a `RestApi' in a specified format.
get_export(Client, ExportType, RestApiId, StageName)
  when is_map(Client) ->
    get_export(Client, ExportType, RestApiId, StageName, #{}, #{}).

get_export(Client, ExportType, RestApiId, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export(Client, ExportType, RestApiId, StageName, QueryMap, HeadersMap, []).

get_export(Client, ExportType, RestApiId, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/exports/", aws_util:encode_uri(ExportType), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Accept">>, maps:get(<<"Accept">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"">>, maps:get(<<"">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Gets a `GatewayResponse' of a specified response type on the given
%% `RestApi'.
get_gateway_response(Client, ResponseType, RestApiId)
  when is_map(Client) ->
    get_gateway_response(Client, ResponseType, RestApiId, #{}, #{}).

get_gateway_response(Client, ResponseType, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gateway_response(Client, ResponseType, RestApiId, QueryMap, HeadersMap, []).

get_gateway_response(Client, ResponseType, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the `GatewayResponses' collection on the given `RestApi'.
%%
%% If an API developer has not added any definitions for gateway responses,
%% the result will be the API Gateway-generated default `GatewayResponses'
%% collection for the supported response types.
get_gateway_responses(Client, RestApiId)
  when is_map(Client) ->
    get_gateway_responses(Client, RestApiId, #{}, #{}).

get_gateway_responses(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gateway_responses(Client, RestApiId, QueryMap, HeadersMap, []).

get_gateway_responses(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the integration settings.
get_integration(Client, HttpMethod, ResourceId, RestApiId)
  when is_map(Client) ->
    get_integration(Client, HttpMethod, ResourceId, RestApiId, #{}, #{}).

get_integration(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, []).

get_integration(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a get integration response.
get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode)
  when is_map(Client) ->
    get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, #{}, #{}).

get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, []).

get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing `Method' resource.
get_method(Client, HttpMethod, ResourceId, RestApiId)
  when is_map(Client) ->
    get_method(Client, HttpMethod, ResourceId, RestApiId, #{}, #{}).

get_method(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_method(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, []).

get_method(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a `MethodResponse' resource.
get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode)
  when is_map(Client) ->
    get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, #{}, #{}).

get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, []).

get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing model defined for a `RestApi' resource.
get_model(Client, ModelName, RestApiId)
  when is_map(Client) ->
    get_model(Client, ModelName, RestApiId, #{}, #{}).

get_model(Client, ModelName, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model(Client, ModelName, RestApiId, QueryMap, HeadersMap, []).

get_model(Client, ModelName, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"flatten">>, maps:get(<<"flatten">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a sample mapping template that can be used to transform a
%% payload into the structure of a model.
get_model_template(Client, ModelName, RestApiId)
  when is_map(Client) ->
    get_model_template(Client, ModelName, RestApiId, #{}, #{}).

get_model_template(Client, ModelName, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_template(Client, ModelName, RestApiId, QueryMap, HeadersMap, []).

get_model_template(Client, ModelName, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), "/default_template"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes existing `Models' defined for a `RestApi' resource.
get_models(Client, RestApiId)
  when is_map(Client) ->
    get_models(Client, RestApiId, #{}, #{}).

get_models(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_models(Client, RestApiId, QueryMap, HeadersMap, []).

get_models(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a `RequestValidator' of a given `RestApi'.
get_request_validator(Client, RequestValidatorId, RestApiId)
  when is_map(Client) ->
    get_request_validator(Client, RequestValidatorId, RestApiId, #{}, #{}).

get_request_validator(Client, RequestValidatorId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_request_validator(Client, RequestValidatorId, RestApiId, QueryMap, HeadersMap, []).

get_request_validator(Client, RequestValidatorId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators/", aws_util:encode_uri(RequestValidatorId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the `RequestValidators' collection of a given `RestApi'.
get_request_validators(Client, RestApiId)
  when is_map(Client) ->
    get_request_validators(Client, RestApiId, #{}, #{}).

get_request_validators(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_request_validators(Client, RestApiId, QueryMap, HeadersMap, []).

get_request_validators(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a resource.
get_resource(Client, ResourceId, RestApiId)
  when is_map(Client) ->
    get_resource(Client, ResourceId, RestApiId, #{}, #{}).

get_resource(Client, ResourceId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource(Client, ResourceId, RestApiId, QueryMap, HeadersMap, []).

get_resource(Client, ResourceId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"embed">>, maps:get(<<"embed">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a collection of `Resource' resources.
get_resources(Client, RestApiId)
  when is_map(Client) ->
    get_resources(Client, RestApiId, #{}, #{}).

get_resources(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resources(Client, RestApiId, QueryMap, HeadersMap, []).

get_resources(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"embed">>, maps:get(<<"embed">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the `RestApi' resource in the collection.
get_rest_api(Client, RestApiId)
  when is_map(Client) ->
    get_rest_api(Client, RestApiId, #{}, #{}).

get_rest_api(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rest_api(Client, RestApiId, QueryMap, HeadersMap, []).

get_rest_api(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the `RestApis' resources for your collection.
get_rest_apis(Client)
  when is_map(Client) ->
    get_rest_apis(Client, #{}, #{}).

get_rest_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rest_apis(Client, QueryMap, HeadersMap, []).

get_rest_apis(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a client SDK for a `RestApi' and `Stage'.
get_sdk(Client, RestApiId, SdkType, StageName)
  when is_map(Client) ->
    get_sdk(Client, RestApiId, SdkType, StageName, #{}, #{}).

get_sdk(Client, RestApiId, SdkType, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sdk(Client, RestApiId, SdkType, StageName, QueryMap, HeadersMap, []).

get_sdk(Client, RestApiId, SdkType, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/sdks/", aws_util:encode_uri(SdkType), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"">>, maps:get(<<"">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
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
    get_sdk_type(Client, Id, #{}, #{}).

get_sdk_type(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sdk_type(Client, Id, QueryMap, HeadersMap, []).

get_sdk_type(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdktypes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_sdk_types(Client)
  when is_map(Client) ->
    get_sdk_types(Client, #{}, #{}).

get_sdk_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sdk_types(Client, QueryMap, HeadersMap, []).

get_sdk_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdktypes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a `Stage' resource.
get_stage(Client, RestApiId, StageName)
  when is_map(Client) ->
    get_stage(Client, RestApiId, StageName, #{}, #{}).

get_stage(Client, RestApiId, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stage(Client, RestApiId, StageName, QueryMap, HeadersMap, []).

get_stage(Client, RestApiId, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more `Stage' resources.
get_stages(Client, RestApiId)
  when is_map(Client) ->
    get_stages(Client, RestApiId, #{}, #{}).

get_stages(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stages(Client, RestApiId, QueryMap, HeadersMap, []).

get_stages(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"deploymentId">>, maps:get(<<"deploymentId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the `Tags' collection for a given resource.
get_tags(Client, ResourceArn)
  when is_map(Client) ->
    get_tags(Client, ResourceArn, #{}, #{}).

get_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

get_tags(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the usage data of a usage plan in a specified time interval.
get_usage(Client, UsagePlanId, EndDate, StartDate)
  when is_map(Client) ->
    get_usage(Client, UsagePlanId, EndDate, StartDate, #{}, #{}).

get_usage(Client, UsagePlanId, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage(Client, UsagePlanId, EndDate, StartDate, QueryMap, HeadersMap, []).

get_usage(Client, UsagePlanId, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/usage"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"endDate">>, EndDate},
        {<<"keyId">>, maps:get(<<"keyId">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)},
        {<<"startDate">>, StartDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a usage plan of a given plan identifier.
get_usage_plan(Client, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan(Client, UsagePlanId, #{}, #{}).

get_usage_plan(Client, UsagePlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plan(Client, UsagePlanId, QueryMap, HeadersMap, []).

get_usage_plan(Client, UsagePlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a usage plan key of a given key identifier.
get_usage_plan_key(Client, KeyId, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan_key(Client, KeyId, UsagePlanId, #{}, #{}).

get_usage_plan_key(Client, KeyId, UsagePlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plan_key(Client, KeyId, UsagePlanId, QueryMap, HeadersMap, []).

get_usage_plan_key(Client, KeyId, UsagePlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys/", aws_util:encode_uri(KeyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all the usage plan keys representing the API keys added to a
%% specified usage plan.
get_usage_plan_keys(Client, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan_keys(Client, UsagePlanId, #{}, #{}).

get_usage_plan_keys(Client, UsagePlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plan_keys(Client, UsagePlanId, QueryMap, HeadersMap, []).

get_usage_plan_keys(Client, UsagePlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all the usage plans of the caller's account.
get_usage_plans(Client)
  when is_map(Client) ->
    get_usage_plans(Client, #{}, #{}).

get_usage_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plans(Client, QueryMap, HeadersMap, []).

get_usage_plans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"keyId">>, maps:get(<<"keyId">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a specified VPC link under the caller's account in a region.
get_vpc_link(Client, VpcLinkId)
  when is_map(Client) ->
    get_vpc_link(Client, VpcLinkId, #{}, #{}).

get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap, []).

get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the `VpcLinks' collection under the caller's account in a
%% selected region.
get_vpc_links(Client)
  when is_map(Client) ->
    get_vpc_links(Client, #{}, #{}).

get_vpc_links(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_links(Client, QueryMap, HeadersMap, []).

get_vpc_links(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vpclinks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Import API keys from an external source, such as a CSV-formatted
%% file.
import_api_keys(Client, Input) ->
    import_api_keys(Client, Input, []).
import_api_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apikeys?mode=import"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"format">>, <<"format">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


import_documentation_parts(Client, RestApiId, Input) ->
    import_documentation_parts(Client, RestApiId, Input, []).
import_documentation_parts(Client, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"mode">>, <<"mode">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A feature of the API Gateway control service for creating a new API
%% from an external API definition file.
import_rest_api(Client, Input) ->
    import_rest_api(Client, Input, []).
import_rest_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restapis?mode=import"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"">>, <<"parameters">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a customization of a `GatewayResponse' of a specified
%% response type and status code on the given `RestApi'.
put_gateway_response(Client, ResponseType, RestApiId, Input) ->
    put_gateway_response(Client, ResponseType, RestApiId, Input, []).
put_gateway_response(Client, ResponseType, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets up a method's integration.
put_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    put_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).
put_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Represents a put integration.
put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add a method to an existing `Resource' resource.
put_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    put_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
put_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a `MethodResponse' to an existing `Method' resource.
put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A feature of the API Gateway control service for updating an existing
%% API with an input of external API definitions.
%%
%% The update can take the form of merging the supplied definition into the
%% existing API or overwriting the existing API.
put_rest_api(Client, RestApiId, Input) ->
    put_rest_api(Client, RestApiId, Input, []).
put_rest_api(Client, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"mode">>, <<"mode">>},
                     {<<"">>, <<"parameters">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates a tag on a given resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Simulate the execution of an `Authorizer' in your `RestApi' with
%% headers, parameters, and an incoming request body.
%%
%% See also: Use Lambda Function as Authorizer Use Cognito User Pool as
%% Authorizer
test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input, []).
test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Simulate the execution of a `Method' in your `RestApi' with headers,
%% parameters, and an incoming request body.
test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a given resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the current `Account' resource.
update_account(Client, Input) ->
    update_account(Client, Input, []).
update_account(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/account"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about an `ApiKey' resource.
update_api_key(Client, ApiKey, Input) ->
    update_api_key(Client, ApiKey, Input, []).
update_api_key(Client, ApiKey, Input0, Options0) ->
    Method = patch,
    Path = ["/apikeys/", aws_util:encode_uri(ApiKey), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing `Authorizer' resource.
%%
%% See also: AWS CLI
update_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    update_authorizer(Client, AuthorizerId, RestApiId, Input, []).
update_authorizer(Client, AuthorizerId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the `BasePathMapping' resource.
update_base_path_mapping(Client, BasePath, DomainName, Input) ->
    update_base_path_mapping(Client, BasePath, DomainName, Input, []).
update_base_path_mapping(Client, BasePath, DomainName, Input0, Options0) ->
    Method = patch,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings/", aws_util:encode_uri(BasePath), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about an `ClientCertificate' resource.
update_client_certificate(Client, ClientCertificateId, Input) ->
    update_client_certificate(Client, ClientCertificateId, Input, []).
update_client_certificate(Client, ClientCertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/clientcertificates/", aws_util:encode_uri(ClientCertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a `Deployment' resource.
update_deployment(Client, DeploymentId, RestApiId, Input) ->
    update_deployment(Client, DeploymentId, RestApiId, Input, []).
update_deployment(Client, DeploymentId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


update_documentation_part(Client, DocumentationPartId, RestApiId, Input) ->
    update_documentation_part(Client, DocumentationPartId, RestApiId, Input, []).
update_documentation_part(Client, DocumentationPartId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts/", aws_util:encode_uri(DocumentationPartId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).


update_documentation_version(Client, DocumentationVersion, RestApiId, Input) ->
    update_documentation_version(Client, DocumentationVersion, RestApiId, Input, []).
update_documentation_version(Client, DocumentationVersion, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions/", aws_util:encode_uri(DocumentationVersion), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the `DomainName' resource.
update_domain_name(Client, DomainName, Input) ->
    update_domain_name(Client, DomainName, Input, []).
update_domain_name(Client, DomainName, Input0, Options0) ->
    Method = patch,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `GatewayResponse' of a specified response type on the given
%% `RestApi'.
update_gateway_response(Client, ResponseType, RestApiId, Input) ->
    update_gateway_response(Client, ResponseType, RestApiId, Input, []).
update_gateway_response(Client, ResponseType, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Represents an update integration.
update_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    update_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).
update_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Represents an update integration response.
update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing `Method' resource.
update_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    update_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).
update_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing `MethodResponse' resource.
update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).
update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a model.
update_model(Client, ModelName, RestApiId, Input) ->
    update_model(Client, ModelName, RestApiId, Input, []).
update_model(Client, ModelName, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `RequestValidator' of a given `RestApi'.
update_request_validator(Client, RequestValidatorId, RestApiId, Input) ->
    update_request_validator(Client, RequestValidatorId, RestApiId, Input, []).
update_request_validator(Client, RequestValidatorId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators/", aws_util:encode_uri(RequestValidatorId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a `Resource' resource.
update_resource(Client, ResourceId, RestApiId, Input) ->
    update_resource(Client, ResourceId, RestApiId, Input, []).
update_resource(Client, ResourceId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about the specified API.
update_rest_api(Client, RestApiId, Input) ->
    update_rest_api(Client, RestApiId, Input, []).
update_rest_api(Client, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about a `Stage' resource.
update_stage(Client, RestApiId, StageName, Input) ->
    update_stage(Client, RestApiId, StageName, Input, []).
update_stage(Client, RestApiId, StageName, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Grants a temporary extension to the remaining quota of a usage plan
%% associated with a specified API key.
update_usage(Client, KeyId, UsagePlanId, Input) ->
    update_usage(Client, KeyId, UsagePlanId, Input, []).
update_usage(Client, KeyId, UsagePlanId, Input0, Options0) ->
    Method = patch,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys/", aws_util:encode_uri(KeyId), "/usage"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a usage plan of a given plan Id.
update_usage_plan(Client, UsagePlanId, Input) ->
    update_usage_plan(Client, UsagePlanId, Input, []).
update_usage_plan(Client, UsagePlanId, Input0, Options0) ->
    Method = patch,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing `VpcLink' of a specified identifier.
update_vpc_link(Client, VpcLinkId, Input) ->
    update_vpc_link(Client, VpcLinkId, Input, []).
update_vpc_link(Client, VpcLinkId, Input0, Options0) ->
    Method = patch,
    Path = ["/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
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
