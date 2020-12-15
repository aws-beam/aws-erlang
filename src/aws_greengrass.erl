%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Greengrass seamlessly extends AWS onto physical devices so
%% they can act locally on the data they generate, while still using the
%% cloud for management, analytics, and durable storage.
%%
%% AWS IoT Greengrass ensures your devices can respond quickly to local
%% events and operate with intermittent connectivity. AWS IoT Greengrass
%% minimizes the cost of transmitting data to the cloud by allowing you to
%% author AWS Lambda functions that execute locally.
-module(aws_greengrass).

-export([associate_role_to_group/3,
         associate_role_to_group/4,
         associate_service_role_to_account/2,
         associate_service_role_to_account/3,
         create_connector_definition/2,
         create_connector_definition/3,
         create_connector_definition_version/3,
         create_connector_definition_version/4,
         create_core_definition/2,
         create_core_definition/3,
         create_core_definition_version/3,
         create_core_definition_version/4,
         create_deployment/3,
         create_deployment/4,
         create_device_definition/2,
         create_device_definition/3,
         create_device_definition_version/3,
         create_device_definition_version/4,
         create_function_definition/2,
         create_function_definition/3,
         create_function_definition_version/3,
         create_function_definition_version/4,
         create_group/2,
         create_group/3,
         create_group_certificate_authority/3,
         create_group_certificate_authority/4,
         create_group_version/3,
         create_group_version/4,
         create_logger_definition/2,
         create_logger_definition/3,
         create_logger_definition_version/3,
         create_logger_definition_version/4,
         create_resource_definition/2,
         create_resource_definition/3,
         create_resource_definition_version/3,
         create_resource_definition_version/4,
         create_software_update_job/2,
         create_software_update_job/3,
         create_subscription_definition/2,
         create_subscription_definition/3,
         create_subscription_definition_version/3,
         create_subscription_definition_version/4,
         delete_connector_definition/3,
         delete_connector_definition/4,
         delete_core_definition/3,
         delete_core_definition/4,
         delete_device_definition/3,
         delete_device_definition/4,
         delete_function_definition/3,
         delete_function_definition/4,
         delete_group/3,
         delete_group/4,
         delete_logger_definition/3,
         delete_logger_definition/4,
         delete_resource_definition/3,
         delete_resource_definition/4,
         delete_subscription_definition/3,
         delete_subscription_definition/4,
         disassociate_role_from_group/3,
         disassociate_role_from_group/4,
         disassociate_service_role_from_account/2,
         disassociate_service_role_from_account/3,
         get_associated_role/2,
         get_associated_role/3,
         get_bulk_deployment_status/2,
         get_bulk_deployment_status/3,
         get_connectivity_info/2,
         get_connectivity_info/3,
         get_connector_definition/2,
         get_connector_definition/3,
         get_connector_definition_version/4,
         get_connector_definition_version/5,
         get_core_definition/2,
         get_core_definition/3,
         get_core_definition_version/3,
         get_core_definition_version/4,
         get_deployment_status/3,
         get_deployment_status/4,
         get_device_definition/2,
         get_device_definition/3,
         get_device_definition_version/4,
         get_device_definition_version/5,
         get_function_definition/2,
         get_function_definition/3,
         get_function_definition_version/4,
         get_function_definition_version/5,
         get_group/2,
         get_group/3,
         get_group_certificate_authority/3,
         get_group_certificate_authority/4,
         get_group_certificate_configuration/2,
         get_group_certificate_configuration/3,
         get_group_version/3,
         get_group_version/4,
         get_logger_definition/2,
         get_logger_definition/3,
         get_logger_definition_version/4,
         get_logger_definition_version/5,
         get_resource_definition/2,
         get_resource_definition/3,
         get_resource_definition_version/3,
         get_resource_definition_version/4,
         get_service_role_for_account/1,
         get_service_role_for_account/2,
         get_subscription_definition/2,
         get_subscription_definition/3,
         get_subscription_definition_version/4,
         get_subscription_definition_version/5,
         get_thing_runtime_configuration/2,
         get_thing_runtime_configuration/3,
         list_bulk_deployment_detailed_reports/4,
         list_bulk_deployment_detailed_reports/5,
         list_bulk_deployments/3,
         list_bulk_deployments/4,
         list_connector_definition_versions/4,
         list_connector_definition_versions/5,
         list_connector_definitions/3,
         list_connector_definitions/4,
         list_core_definition_versions/4,
         list_core_definition_versions/5,
         list_core_definitions/3,
         list_core_definitions/4,
         list_deployments/4,
         list_deployments/5,
         list_device_definition_versions/4,
         list_device_definition_versions/5,
         list_device_definitions/3,
         list_device_definitions/4,
         list_function_definition_versions/4,
         list_function_definition_versions/5,
         list_function_definitions/3,
         list_function_definitions/4,
         list_group_certificate_authorities/2,
         list_group_certificate_authorities/3,
         list_group_versions/4,
         list_group_versions/5,
         list_groups/3,
         list_groups/4,
         list_logger_definition_versions/4,
         list_logger_definition_versions/5,
         list_logger_definitions/3,
         list_logger_definitions/4,
         list_resource_definition_versions/4,
         list_resource_definition_versions/5,
         list_resource_definitions/3,
         list_resource_definitions/4,
         list_subscription_definition_versions/4,
         list_subscription_definition_versions/5,
         list_subscription_definitions/3,
         list_subscription_definitions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         reset_deployments/3,
         reset_deployments/4,
         start_bulk_deployment/2,
         start_bulk_deployment/3,
         stop_bulk_deployment/3,
         stop_bulk_deployment/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connectivity_info/3,
         update_connectivity_info/4,
         update_connector_definition/3,
         update_connector_definition/4,
         update_core_definition/3,
         update_core_definition/4,
         update_device_definition/3,
         update_device_definition/4,
         update_function_definition/3,
         update_function_definition/4,
         update_group/3,
         update_group/4,
         update_group_certificate_configuration/3,
         update_group_certificate_configuration/4,
         update_logger_definition/3,
         update_logger_definition/4,
         update_resource_definition/3,
         update_resource_definition/4,
         update_subscription_definition/3,
         update_subscription_definition/4,
         update_thing_runtime_configuration/3,
         update_thing_runtime_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a role with a group.
%%
%% Your Greengrass core will use the role to access AWS cloud services. The
%% role's permissions should allow Greengrass core Lambda functions to
%% perform actions against the cloud.
associate_role_to_group(Client, GroupId, Input) ->
    associate_role_to_group(Client, GroupId, Input, []).
associate_role_to_group(Client, GroupId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/role"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a role with your account.
%%
%% AWS IoT Greengrass will use the role to access your Lambda functions and
%% AWS IoT resources. This is necessary for deployments to succeed. The role
%% must have at least minimum permissions in the policy
%% ''AWSGreengrassResourceAccessRolePolicy''.
associate_service_role_to_account(Client, Input) ->
    associate_service_role_to_account(Client, Input, []).
associate_service_role_to_account(Client, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/servicerole"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a connector definition.
%%
%% You may provide the initial version of the connector definition now or use
%% ''CreateConnectorDefinitionVersion'' at a later time.
create_connector_definition(Client, Input) ->
    create_connector_definition(Client, Input, []).
create_connector_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/connectors"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a connector definition which has already been
%% defined.
create_connector_definition_version(Client, ConnectorDefinitionId, Input) ->
    create_connector_definition_version(Client, ConnectorDefinitionId, Input, []).
create_connector_definition_version(Client, ConnectorDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a core definition.
%%
%% You may provide the initial version of the core definition now or use
%% ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must
%% each contain exactly one Greengrass core.
create_core_definition(Client, Input) ->
    create_core_definition(Client, Input, []).
create_core_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/cores"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a core definition that has already been defined.
%%
%% Greengrass groups must each contain exactly one Greengrass core.
create_core_definition_version(Client, CoreDefinitionId, Input) ->
    create_core_definition_version(Client, CoreDefinitionId, Input, []).
create_core_definition_version(Client, CoreDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a deployment.
%%
%% ''CreateDeployment'' requests are idempotent with respect to the
%% ''X-Amzn-Client-Token'' token and the request parameters.
create_deployment(Client, GroupId, Input) ->
    create_deployment(Client, GroupId, Input, []).
create_deployment(Client, GroupId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a device definition.
%%
%% You may provide the initial version of the device definition now or use
%% ''CreateDeviceDefinitionVersion'' at a later time.
create_device_definition(Client, Input) ->
    create_device_definition(Client, Input, []).
create_device_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/devices"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a device definition that has already been
%% defined.
create_device_definition_version(Client, DeviceDefinitionId, Input) ->
    create_device_definition_version(Client, DeviceDefinitionId, Input, []).
create_device_definition_version(Client, DeviceDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Lambda function definition which contains a list of Lambda
%% functions and their configurations to be used in a group.
%%
%% You can create an initial version of the definition by providing a list of
%% Lambda functions and their configurations now, or use
%% ''CreateFunctionDefinitionVersion'' later.
create_function_definition(Client, Input) ->
    create_function_definition(Client, Input, []).
create_function_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/functions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a Lambda function definition that has already
%% been defined.
create_function_definition_version(Client, FunctionDefinitionId, Input) ->
    create_function_definition_version(Client, FunctionDefinitionId, Input, []).
create_function_definition_version(Client, FunctionDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a group.
%%
%% You may provide the initial version of the group or use
%% ''CreateGroupVersion'' at a later time. Tip: You can use the
%% ''gg_group_setup'' package
%% (https://github.com/awslabs/aws-greengrass-group-setup) as a library or
%% command-line application to create and deploy Greengrass groups.
create_group(Client, Input) ->
    create_group(Client, Input, []).
create_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/groups"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a CA for the group.
%%
%% If a CA already exists, it will rotate the existing CA.
create_group_certificate_authority(Client, GroupId, Input) ->
    create_group_certificate_authority(Client, GroupId, Input, []).
create_group_certificate_authority(Client, GroupId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a group which has already been defined.
create_group_version(Client, GroupId, Input) ->
    create_group_version(Client, GroupId, Input, []).
create_group_version(Client, GroupId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a logger definition.
%%
%% You may provide the initial version of the logger definition now or use
%% ''CreateLoggerDefinitionVersion'' at a later time.
create_logger_definition(Client, Input) ->
    create_logger_definition(Client, Input, []).
create_logger_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/loggers"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a logger definition that has already been
%% defined.
create_logger_definition_version(Client, LoggerDefinitionId, Input) ->
    create_logger_definition_version(Client, LoggerDefinitionId, Input, []).
create_logger_definition_version(Client, LoggerDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a resource definition which contains a list of resources to
%% be used in a group.
%%
%% You can create an initial version of the definition by providing a list of
%% resources now, or use ''CreateResourceDefinitionVersion'' later.
create_resource_definition(Client, Input) ->
    create_resource_definition(Client, Input, []).
create_resource_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/resources"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a resource definition that has already been
%% defined.
create_resource_definition_version(Client, ResourceDefinitionId, Input) ->
    create_resource_definition_version(Client, ResourceDefinitionId, Input, []).
create_resource_definition_version(Client, ResourceDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a software update for a core or group of cores (specified as
%% an IoT thing group.) Use this to update the OTA Agent as well as the
%% Greengrass core software.
%%
%% It makes use of the IoT Jobs feature which provides additional commands to
%% manage a Greengrass core software update job.
create_software_update_job(Client, Input) ->
    create_software_update_job(Client, Input, []).
create_software_update_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/updates"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a subscription definition.
%%
%% You may provide the initial version of the subscription definition now or
%% use ''CreateSubscriptionDefinitionVersion'' at a later time.
create_subscription_definition(Client, Input) ->
    create_subscription_definition(Client, Input, []).
create_subscription_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/subscriptions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a subscription definition which has already been
%% defined.
create_subscription_definition_version(Client, SubscriptionDefinitionId, Input) ->
    create_subscription_definition_version(Client, SubscriptionDefinitionId, Input, []).
create_subscription_definition_version(Client, SubscriptionDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a connector definition.
delete_connector_definition(Client, ConnectorDefinitionId, Input) ->
    delete_connector_definition(Client, ConnectorDefinitionId, Input, []).
delete_connector_definition(Client, ConnectorDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a core definition.
delete_core_definition(Client, CoreDefinitionId, Input) ->
    delete_core_definition(Client, CoreDefinitionId, Input, []).
delete_core_definition(Client, CoreDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a device definition.
delete_device_definition(Client, DeviceDefinitionId, Input) ->
    delete_device_definition(Client, DeviceDefinitionId, Input, []).
delete_device_definition(Client, DeviceDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function definition.
delete_function_definition(Client, FunctionDefinitionId, Input) ->
    delete_function_definition(Client, FunctionDefinitionId, Input, []).
delete_function_definition(Client, FunctionDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a group.
delete_group(Client, GroupId, Input) ->
    delete_group(Client, GroupId, Input, []).
delete_group(Client, GroupId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a logger definition.
delete_logger_definition(Client, LoggerDefinitionId, Input) ->
    delete_logger_definition(Client, LoggerDefinitionId, Input, []).
delete_logger_definition(Client, LoggerDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a resource definition.
delete_resource_definition(Client, ResourceDefinitionId, Input) ->
    delete_resource_definition(Client, ResourceDefinitionId, Input, []).
delete_resource_definition(Client, ResourceDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a subscription definition.
delete_subscription_definition(Client, SubscriptionDefinitionId, Input) ->
    delete_subscription_definition(Client, SubscriptionDefinitionId, Input, []).
delete_subscription_definition(Client, SubscriptionDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the role from a group.
disassociate_role_from_group(Client, GroupId, Input) ->
    disassociate_role_from_group(Client, GroupId, Input, []).
disassociate_role_from_group(Client, GroupId, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/role"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the service role from your account.
%%
%% Without a service role, deployments will not work.
disassociate_service_role_from_account(Client, Input) ->
    disassociate_service_role_from_account(Client, Input, []).
disassociate_service_role_from_account(Client, Input0, Options) ->
    Method = delete,
    Path = ["/greengrass/servicerole"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the role associated with a particular group.
get_associated_role(Client, GroupId)
  when is_map(Client) ->
    get_associated_role(Client, GroupId, []).
get_associated_role(Client, GroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/role"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the status of a bulk deployment.
get_bulk_deployment_status(Client, BulkDeploymentId)
  when is_map(Client) ->
    get_bulk_deployment_status(Client, BulkDeploymentId, []).
get_bulk_deployment_status(Client, BulkDeploymentId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/bulk/deployments/", aws_util:encode_uri(BulkDeploymentId), "/status"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the connectivity information for a core.
get_connectivity_info(Client, ThingName)
  when is_map(Client) ->
    get_connectivity_info(Client, ThingName, []).
get_connectivity_info(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/connectivityInfo"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a connector definition.
get_connector_definition(Client, ConnectorDefinitionId)
  when is_map(Client) ->
    get_connector_definition(Client, ConnectorDefinitionId, []).
get_connector_definition(Client, ConnectorDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a connector definition version, including
%% the connectors that the version contains.
%%
%% Connectors are prebuilt modules that interact with local infrastructure,
%% device protocols, AWS, and other cloud services.
get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, NextToken)
  when is_map(Client) ->
    get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, NextToken, []).
get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), "/versions/", aws_util:encode_uri(ConnectorDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a core definition version.
get_core_definition(Client, CoreDefinitionId)
  when is_map(Client) ->
    get_core_definition(Client, CoreDefinitionId, []).
get_core_definition(Client, CoreDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a core definition version.
get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId)
  when is_map(Client) ->
    get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId, []).
get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), "/versions/", aws_util:encode_uri(CoreDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the status of a deployment.
get_deployment_status(Client, DeploymentId, GroupId)
  when is_map(Client) ->
    get_deployment_status(Client, DeploymentId, GroupId, []).
get_deployment_status(Client, DeploymentId, GroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments/", aws_util:encode_uri(DeploymentId), "/status"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a device definition.
get_device_definition(Client, DeviceDefinitionId)
  when is_map(Client) ->
    get_device_definition(Client, DeviceDefinitionId, []).
get_device_definition(Client, DeviceDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a device definition version.
get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, NextToken)
  when is_map(Client) ->
    get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, NextToken, []).
get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), "/versions/", aws_util:encode_uri(DeviceDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Lambda function definition, including
%% its creation time and latest version.
get_function_definition(Client, FunctionDefinitionId)
  when is_map(Client) ->
    get_function_definition(Client, FunctionDefinitionId, []).
get_function_definition(Client, FunctionDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Lambda function definition version,
%% including which Lambda functions are included in the version and their
%% configurations.
get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, NextToken)
  when is_map(Client) ->
    get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, NextToken, []).
get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), "/versions/", aws_util:encode_uri(FunctionDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a group.
get_group(Client, GroupId)
  when is_map(Client) ->
    get_group(Client, GroupId, []).
get_group(Client, GroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retreives the CA associated with a group.
%%
%% Returns the public key of the CA.
get_group_certificate_authority(Client, CertificateAuthorityId, GroupId)
  when is_map(Client) ->
    get_group_certificate_authority(Client, CertificateAuthorityId, GroupId, []).
get_group_certificate_authority(Client, CertificateAuthorityId, GroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities/", aws_util:encode_uri(CertificateAuthorityId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current configuration for the CA used by the group.
get_group_certificate_configuration(Client, GroupId)
  when is_map(Client) ->
    get_group_certificate_configuration(Client, GroupId, []).
get_group_certificate_configuration(Client, GroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities/configuration/expiry"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a group version.
get_group_version(Client, GroupId, GroupVersionId)
  when is_map(Client) ->
    get_group_version(Client, GroupId, GroupVersionId, []).
get_group_version(Client, GroupId, GroupVersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/versions/", aws_util:encode_uri(GroupVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a logger definition.
get_logger_definition(Client, LoggerDefinitionId)
  when is_map(Client) ->
    get_logger_definition(Client, LoggerDefinitionId, []).
get_logger_definition(Client, LoggerDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a logger definition version.
get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, NextToken)
  when is_map(Client) ->
    get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, NextToken, []).
get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), "/versions/", aws_util:encode_uri(LoggerDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a resource definition, including its
%% creation time and latest version.
get_resource_definition(Client, ResourceDefinitionId)
  when is_map(Client) ->
    get_resource_definition(Client, ResourceDefinitionId, []).
get_resource_definition(Client, ResourceDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a resource definition version, including
%% which resources are included in the version.
get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId)
  when is_map(Client) ->
    get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId, []).
get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), "/versions/", aws_util:encode_uri(ResourceDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the service role that is attached to your account.
get_service_role_for_account(Client)
  when is_map(Client) ->
    get_service_role_for_account(Client, []).
get_service_role_for_account(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/servicerole"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a subscription definition.
get_subscription_definition(Client, SubscriptionDefinitionId)
  when is_map(Client) ->
    get_subscription_definition(Client, SubscriptionDefinitionId, []).
get_subscription_definition(Client, SubscriptionDefinitionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a subscription definition version.
get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, NextToken)
  when is_map(Client) ->
    get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, NextToken, []).
get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), "/versions/", aws_util:encode_uri(SubscriptionDefinitionVersionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime configuration of a thing.
get_thing_runtime_configuration(Client, ThingName)
  when is_map(Client) ->
    get_thing_runtime_configuration(Client, ThingName, []).
get_thing_runtime_configuration(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/runtimeconfig"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of the deployments that have been started in a
%% bulk deployment operation, and their current deployment status.
list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, MaxResults, NextToken)
  when is_map(Client) ->
    list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, MaxResults, NextToken, []).
list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/bulk/deployments/", aws_util:encode_uri(BulkDeploymentId), "/detailed-reports"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of bulk deployments.
list_bulk_deployments(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_bulk_deployments(Client, MaxResults, NextToken, []).
list_bulk_deployments(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/bulk/deployments"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a connector definition, which are containers
%% for connectors.
%%
%% Connectors run on the Greengrass core and contain built-in integration
%% with local infrastructure, device protocols, AWS, and other cloud
%% services.
list_connector_definition_versions(Client, ConnectorDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_connector_definition_versions(Client, ConnectorDefinitionId, MaxResults, NextToken, []).
list_connector_definition_versions(Client, ConnectorDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of connector definitions.
list_connector_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_connector_definitions(Client, MaxResults, NextToken, []).
list_connector_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/connectors"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a core definition.
list_core_definition_versions(Client, CoreDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_core_definition_versions(Client, CoreDefinitionId, MaxResults, NextToken, []).
list_core_definition_versions(Client, CoreDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of core definitions.
list_core_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_core_definitions(Client, MaxResults, NextToken, []).
list_core_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/cores"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a history of deployments for the group.
list_deployments(Client, GroupId, MaxResults, NextToken)
  when is_map(Client) ->
    list_deployments(Client, GroupId, MaxResults, NextToken, []).
list_deployments(Client, GroupId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a device definition.
list_device_definition_versions(Client, DeviceDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_device_definition_versions(Client, DeviceDefinitionId, MaxResults, NextToken, []).
list_device_definition_versions(Client, DeviceDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of device definitions.
list_device_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_device_definitions(Client, MaxResults, NextToken, []).
list_device_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/devices"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a Lambda function definition.
list_function_definition_versions(Client, FunctionDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_function_definition_versions(Client, FunctionDefinitionId, MaxResults, NextToken, []).
list_function_definition_versions(Client, FunctionDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of Lambda function definitions.
list_function_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_function_definitions(Client, MaxResults, NextToken, []).
list_function_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/functions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current CAs for a group.
list_group_certificate_authorities(Client, GroupId)
  when is_map(Client) ->
    list_group_certificate_authorities(Client, GroupId, []).
list_group_certificate_authorities(Client, GroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a group.
list_group_versions(Client, GroupId, MaxResults, NextToken)
  when is_map(Client) ->
    list_group_versions(Client, GroupId, MaxResults, NextToken, []).
list_group_versions(Client, GroupId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of groups.
list_groups(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_groups(Client, MaxResults, NextToken, []).
list_groups(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/groups"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a logger definition.
list_logger_definition_versions(Client, LoggerDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_logger_definition_versions(Client, LoggerDefinitionId, MaxResults, NextToken, []).
list_logger_definition_versions(Client, LoggerDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of logger definitions.
list_logger_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_logger_definitions(Client, MaxResults, NextToken, []).
list_logger_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/loggers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a resource definition.
list_resource_definition_versions(Client, ResourceDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_resource_definition_versions(Client, ResourceDefinitionId, MaxResults, NextToken, []).
list_resource_definition_versions(Client, ResourceDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of resource definitions.
list_resource_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_resource_definitions(Client, MaxResults, NextToken, []).
list_resource_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/resources"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a subscription definition.
list_subscription_definition_versions(Client, SubscriptionDefinitionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_subscription_definition_versions(Client, SubscriptionDefinitionId, MaxResults, NextToken, []).
list_subscription_definition_versions(Client, SubscriptionDefinitionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of subscription definitions.
list_subscription_definitions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_subscription_definitions(Client, MaxResults, NextToken, []).
list_subscription_definitions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/greengrass/definition/subscriptions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of resource tags for a resource arn.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Resets a group's deployments.
reset_deployments(Client, GroupId, Input) ->
    reset_deployments(Client, GroupId, Input, []).
reset_deployments(Client, GroupId, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments/$reset"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deploys multiple groups in one operation.
%%
%% This action starts the bulk deployment of a specified set of group
%% versions. Each group version deployment will be triggered with an adaptive
%% rate that has a fixed upper limit. We recommend that you include an
%% ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request.
%% These requests are idempotent with respect to the token and the request
%% parameters.
start_bulk_deployment(Client, Input) ->
    start_bulk_deployment(Client, Input, []).
start_bulk_deployment(Client, Input0, Options) ->
    Method = post,
    Path = ["/greengrass/bulk/deployments"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the execution of a bulk deployment.
%%
%% This action returns a status of ''Stopping'' until the deployment is
%% stopped. You cannot start a new bulk deployment while a previous
%% deployment is in the ''Stopping'' state. This action doesn't rollback
%% completed deployments or cancel pending deployments.
stop_bulk_deployment(Client, BulkDeploymentId, Input) ->
    stop_bulk_deployment(Client, BulkDeploymentId, Input, []).
stop_bulk_deployment(Client, BulkDeploymentId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/bulk/deployments/", aws_util:encode_uri(BulkDeploymentId), "/$stop"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a Greengrass resource.
%%
%% Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition',
%% 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition',
%% 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove resource tags from a Greengrass Resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the connectivity information for the core.
%%
%% Any devices that belong to the group which has this core will receive this
%% information in order to find the location of the core and connect to it.
update_connectivity_info(Client, ThingName, Input) ->
    update_connectivity_info(Client, ThingName, Input, []).
update_connectivity_info(Client, ThingName, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/connectivityInfo"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a connector definition.
update_connector_definition(Client, ConnectorDefinitionId, Input) ->
    update_connector_definition(Client, ConnectorDefinitionId, Input, []).
update_connector_definition(Client, ConnectorDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a core definition.
update_core_definition(Client, CoreDefinitionId, Input) ->
    update_core_definition(Client, CoreDefinitionId, Input, []).
update_core_definition(Client, CoreDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a device definition.
update_device_definition(Client, DeviceDefinitionId, Input) ->
    update_device_definition(Client, DeviceDefinitionId, Input, []).
update_device_definition(Client, DeviceDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Lambda function definition.
update_function_definition(Client, FunctionDefinitionId, Input) ->
    update_function_definition(Client, FunctionDefinitionId, Input, []).
update_function_definition(Client, FunctionDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a group.
update_group(Client, GroupId, Input) ->
    update_group(Client, GroupId, Input, []).
update_group(Client, GroupId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Certificate expiry time for a group.
update_group_certificate_configuration(Client, GroupId, Input) ->
    update_group_certificate_configuration(Client, GroupId, Input, []).
update_group_certificate_configuration(Client, GroupId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities/configuration/expiry"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a logger definition.
update_logger_definition(Client, LoggerDefinitionId, Input) ->
    update_logger_definition(Client, LoggerDefinitionId, Input, []).
update_logger_definition(Client, LoggerDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a resource definition.
update_resource_definition(Client, ResourceDefinitionId, Input) ->
    update_resource_definition(Client, ResourceDefinitionId, Input, []).
update_resource_definition(Client, ResourceDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a subscription definition.
update_subscription_definition(Client, SubscriptionDefinitionId, Input) ->
    update_subscription_definition(Client, SubscriptionDefinitionId, Input, []).
update_subscription_definition(Client, SubscriptionDefinitionId, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the runtime configuration of a thing.
update_thing_runtime_configuration(Client, ThingName, Input) ->
    update_thing_runtime_configuration(Client, ThingName, Input, []).
update_thing_runtime_configuration(Client, ThingName, Input0, Options) ->
    Method = put,
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/runtimeconfig"],
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
    Client1 = Client#{service => <<"greengrass">>},
    Host = build_host(<<"greengrass">>, Client1),
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
