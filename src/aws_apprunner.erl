%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc App Runner
%%
%% App Runner is an application service that provides a fast, simple, and
%% cost-effective way to go directly from an existing container image or
%% source code to a running service in the Amazon Web Services Cloud in
%% seconds.
%%
%% You don't need to learn new technologies, decide which compute service
%% to use, or understand how to provision and configure Amazon Web Services
%% resources.
%%
%% App Runner connects directly to your container registry or source code
%% repository. It provides an automatic delivery pipeline with fully managed
%% operations, high performance, scalability, and security.
%%
%% For more information about App Runner, see the App Runner Developer Guide.
%% For release information, see the App Runner Release Notes.
%%
%% To install the Software Development Kits (SDKs), Integrated Development
%% Environment (IDE) Toolkits, and command line tools that you can use to
%% access the API, see Tools for Amazon Web Services.
%%
%% Endpoints
%%
%% For a list of Region-specific endpoints that App Runner supports, see App
%% Runner endpoints and quotas in the Amazon Web Services General Reference.
-module(aws_apprunner).

-export([associate_custom_domain/2,
         associate_custom_domain/3,
         create_auto_scaling_configuration/2,
         create_auto_scaling_configuration/3,
         create_connection/2,
         create_connection/3,
         create_observability_configuration/2,
         create_observability_configuration/3,
         create_service/2,
         create_service/3,
         create_vpc_connector/2,
         create_vpc_connector/3,
         create_vpc_ingress_connection/2,
         create_vpc_ingress_connection/3,
         delete_auto_scaling_configuration/2,
         delete_auto_scaling_configuration/3,
         delete_connection/2,
         delete_connection/3,
         delete_observability_configuration/2,
         delete_observability_configuration/3,
         delete_service/2,
         delete_service/3,
         delete_vpc_connector/2,
         delete_vpc_connector/3,
         delete_vpc_ingress_connection/2,
         delete_vpc_ingress_connection/3,
         describe_auto_scaling_configuration/2,
         describe_auto_scaling_configuration/3,
         describe_custom_domains/2,
         describe_custom_domains/3,
         describe_observability_configuration/2,
         describe_observability_configuration/3,
         describe_service/2,
         describe_service/3,
         describe_vpc_connector/2,
         describe_vpc_connector/3,
         describe_vpc_ingress_connection/2,
         describe_vpc_ingress_connection/3,
         disassociate_custom_domain/2,
         disassociate_custom_domain/3,
         list_auto_scaling_configurations/2,
         list_auto_scaling_configurations/3,
         list_connections/2,
         list_connections/3,
         list_observability_configurations/2,
         list_observability_configurations/3,
         list_operations/2,
         list_operations/3,
         list_services/2,
         list_services/3,
         list_services_for_auto_scaling_configuration/2,
         list_services_for_auto_scaling_configuration/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_vpc_connectors/2,
         list_vpc_connectors/3,
         list_vpc_ingress_connections/2,
         list_vpc_ingress_connections/3,
         pause_service/2,
         pause_service/3,
         resume_service/2,
         resume_service/3,
         start_deployment/2,
         start_deployment/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_default_auto_scaling_configuration/2,
         update_default_auto_scaling_configuration/3,
         update_service/2,
         update_service/3,
         update_vpc_ingress_connection/2,
         update_vpc_ingress_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associate your own domain name with the App Runner subdomain URL of
%% your App Runner service.
%%
%% After you call `AssociateCustomDomain' and receive a successful
%% response, use the information in the `CustomDomain' record that's
%% returned to add CNAME records to your Domain Name System (DNS). For each
%% mapped domain name, add a mapping to the target App Runner subdomain and
%% one or more certificate validation records. App Runner then performs DNS
%% validation to verify that you own or control the domain name that you
%% associated. App Runner tracks domain validity in a certificate stored in
%% AWS Certificate Manager (ACM).
associate_custom_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_custom_domain(Client, Input, []).
associate_custom_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateCustomDomain">>, Input, Options).

%% @doc Create an App Runner automatic scaling configuration resource.
%%
%% App Runner requires this resource when you create or update App Runner
%% services and you require non-default auto scaling settings. You can share
%% an auto scaling configuration across multiple services.
%%
%% Create multiple revisions of a configuration by calling this action
%% multiple times using the same `AutoScalingConfigurationName'. The call
%% returns incremental `AutoScalingConfigurationRevision' values. When
%% you create a service and configure an auto scaling configuration resource,
%% the service uses the latest active revision of the auto scaling
%% configuration by default. You can optionally configure the service to use
%% a specific revision.
%%
%% Configure a higher `MinSize' to increase the spread of your App Runner
%% service over more Availability Zones in the Amazon Web Services Region.
%% The tradeoff is a higher minimal cost.
%%
%% Configure a lower `MaxSize' to control your cost. The tradeoff is
%% lower responsiveness during peak demand.
create_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_scaling_configuration(Client, Input, []).
create_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoScalingConfiguration">>, Input, Options).

%% @doc Create an App Runner connection resource.
%%
%% App Runner requires a connection resource when you create App Runner
%% services that access private repositories from certain third-party
%% providers. You can share a connection across multiple services.
%%
%% A connection resource is needed to access GitHub and Bitbucket
%% repositories. Both require a user interface approval process through the
%% App Runner console before you can use the connection.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Create an App Runner observability configuration resource.
%%
%% App Runner requires this resource when you create or update App Runner
%% services and you want to enable non-default observability features. You
%% can share an observability configuration across multiple services.
%%
%% Create multiple revisions of a configuration by calling this action
%% multiple times using the same `ObservabilityConfigurationName'. The
%% call returns incremental `ObservabilityConfigurationRevision' values.
%% When you create a service and configure an observability configuration
%% resource, the service uses the latest active revision of the observability
%% configuration by default. You can optionally configure the service to use
%% a specific revision.
%%
%% The observability configuration resource is designed to configure multiple
%% features (currently one feature, tracing). This action takes optional
%% parameters that describe the configuration of these features (currently
%% one parameter, `TraceConfiguration'). If you don't specify a
%% feature parameter, App Runner doesn't enable the feature.
create_observability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_observability_configuration(Client, Input, []).
create_observability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateObservabilityConfiguration">>, Input, Options).

%% @doc Create an App Runner service.
%%
%% After the service is created, the action also automatically starts a
%% deployment.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the ListOperations call to track the
%% operation's progress.
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Create an App Runner VPC connector resource.
%%
%% App Runner requires this resource when you want to associate your App
%% Runner service to a custom Amazon Virtual Private Cloud (Amazon VPC).
create_vpc_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_connector(Client, Input, []).
create_vpc_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcConnector">>, Input, Options).

%% @doc Create an App Runner VPC Ingress Connection resource.
%%
%% App Runner requires this resource when you want to associate your App
%% Runner service with an Amazon VPC endpoint.
create_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_ingress_connection(Client, Input, []).
create_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcIngressConnection">>, Input, Options).

%% @doc Delete an App Runner automatic scaling configuration resource.
%%
%% You can delete a top level auto scaling configuration, a specific revision
%% of one, or all revisions associated with the top level configuration. You
%% can't delete the default auto scaling configuration or a configuration
%% that's used by one or more App Runner services.
delete_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_auto_scaling_configuration(Client, Input, []).
delete_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutoScalingConfiguration">>, Input, Options).

%% @doc Delete an App Runner connection.
%%
%% You must first ensure that there are no running App Runner services that
%% use this connection. If there are any, the `DeleteConnection' action
%% fails.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Delete an App Runner observability configuration resource.
%%
%% You can delete a specific revision or the latest active revision. You
%% can't delete a configuration that's used by one or more App Runner
%% services.
delete_observability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_observability_configuration(Client, Input, []).
delete_observability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteObservabilityConfiguration">>, Input, Options).

%% @doc Delete an App Runner service.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations' call to track the
%% operation's progress.
%%
%% Make sure that you don't have any active VPCIngressConnections
%% associated with the service you want to delete.
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Delete an App Runner VPC connector resource.
%%
%% You can't delete a connector that's used by one or more App Runner
%% services.
delete_vpc_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_connector(Client, Input, []).
delete_vpc_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcConnector">>, Input, Options).

%% @doc Delete an App Runner VPC Ingress Connection resource that's
%% associated with an App Runner service.
%%
%% The VPC Ingress Connection must be in one of the following states to be
%% deleted:
%%
%% <ul> <li> `AVAILABLE'
%%
%% </li> <li> `FAILED_CREATION'
%%
%% </li> <li> `FAILED_UPDATE'
%%
%% </li> <li> `FAILED_DELETION'
%%
%% </li> </ul>
delete_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_ingress_connection(Client, Input, []).
delete_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcIngressConnection">>, Input, Options).

%% @doc Return a full description of an App Runner automatic scaling
%% configuration resource.
describe_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_configuration(Client, Input, []).
describe_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingConfiguration">>, Input, Options).

%% @doc Return a description of custom domain names that are associated with
%% an App Runner service.
describe_custom_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_domains(Client, Input, []).
describe_custom_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomDomains">>, Input, Options).

%% @doc Return a full description of an App Runner observability
%% configuration resource.
describe_observability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_observability_configuration(Client, Input, []).
describe_observability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeObservabilityConfiguration">>, Input, Options).

%% @doc Return a full description of an App Runner service.
describe_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service(Client, Input, []).
describe_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeService">>, Input, Options).

%% @doc Return a description of an App Runner VPC connector resource.
describe_vpc_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_connector(Client, Input, []).
describe_vpc_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcConnector">>, Input, Options).

%% @doc Return a full description of an App Runner VPC Ingress Connection
%% resource.
describe_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_ingress_connection(Client, Input, []).
describe_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcIngressConnection">>, Input, Options).

%% @doc Disassociate a custom domain name from an App Runner service.
%%
%% Certificates tracking domain validity are associated with a custom domain
%% and are stored in AWS Certificate Manager (ACM). These certificates
%% aren't deleted as part of this action. App Runner delays certificate
%% deletion for 30 days after a domain is disassociated from your service.
disassociate_custom_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_custom_domain(Client, Input, []).
disassociate_custom_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateCustomDomain">>, Input, Options).

%% @doc Returns a list of active App Runner automatic scaling configurations
%% in your Amazon Web Services account.
%%
%% You can query the revisions for a specific configuration name or the
%% revisions for all active configurations in your account. You can
%% optionally query only the latest revision of each requested name.
%%
%% To retrieve a full description of a particular configuration revision,
%% call and provide one of the ARNs returned by
%% `ListAutoScalingConfigurations'.
list_auto_scaling_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_auto_scaling_configurations(Client, Input, []).
list_auto_scaling_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutoScalingConfigurations">>, Input, Options).

%% @doc Returns a list of App Runner connections that are associated with
%% your Amazon Web Services account.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc Returns a list of active App Runner observability configurations in
%% your Amazon Web Services account.
%%
%% You can query the revisions for a specific configuration name or the
%% revisions for all active configurations in your account. You can
%% optionally query only the latest revision of each requested name.
%%
%% To retrieve a full description of a particular configuration revision,
%% call and provide one of the ARNs returned by
%% `ListObservabilityConfigurations'.
list_observability_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_observability_configurations(Client, Input, []).
list_observability_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListObservabilityConfigurations">>, Input, Options).

%% @doc Return a list of operations that occurred on an App Runner service.
%%
%% The resulting list of `OperationSummary' objects is sorted in reverse
%% chronological order. The first object on the list represents the last
%% started operation.
list_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_operations(Client, Input, []).
list_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOperations">>, Input, Options).

%% @doc Returns a list of running App Runner services in your Amazon Web
%% Services account.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc Returns a list of the associated App Runner services using an auto
%% scaling configuration.
list_services_for_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services_for_auto_scaling_configuration(Client, Input, []).
list_services_for_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServicesForAutoScalingConfiguration">>, Input, Options).

%% @doc List tags that are associated with for an App Runner resource.
%%
%% The response contains a list of tag key-value pairs.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of App Runner VPC connectors in your Amazon Web
%% Services account.
list_vpc_connectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_connectors(Client, Input, []).
list_vpc_connectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcConnectors">>, Input, Options).

%% @doc Return a list of App Runner VPC Ingress Connections in your Amazon
%% Web Services account.
list_vpc_ingress_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_ingress_connections(Client, Input, []).
list_vpc_ingress_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcIngressConnections">>, Input, Options).

%% @doc Pause an active App Runner service.
%%
%% App Runner reduces compute capacity for the service to zero and loses
%% state (for example, ephemeral storage is removed).
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations' call to track the
%% operation's progress.
pause_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    pause_service(Client, Input, []).
pause_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PauseService">>, Input, Options).

%% @doc Resume an active App Runner service.
%%
%% App Runner provisions compute capacity for the service.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations' call to track the
%% operation's progress.
resume_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_service(Client, Input, []).
resume_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeService">>, Input, Options).

%% @doc Initiate a manual deployment of the latest commit in a source code
%% repository or the latest image in a source image repository to an App
%% Runner service.
%%
%% For a source code repository, App Runner retrieves the commit and builds a
%% Docker image. For a source image repository, App Runner retrieves the
%% latest Docker image. In both cases, App Runner then deploys the new image
%% to your service and starts a new container instance.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations' call to track the
%% operation's progress.
start_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_deployment(Client, Input, []).
start_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDeployment">>, Input, Options).

%% @doc Add tags to, or update the tag values of, an App Runner resource.
%%
%% A tag is a key-value pair.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Remove tags from an App Runner resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Update an auto scaling configuration to be the default.
%%
%% The existing default auto scaling configuration will be set to non-default
%% automatically.
update_default_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_auto_scaling_configuration(Client, Input, []).
update_default_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultAutoScalingConfiguration">>, Input, Options).

%% @doc Update an App Runner service.
%%
%% You can update the source configuration and instance configuration of the
%% service. You can also update the ARN of the auto scaling configuration
%% resource that's associated with the service. However, you can't
%% change the name or the encryption configuration of the service. These can
%% be set only when you create the service.
%%
%% To update the tags applied to your service, use the separate actions
%% `TagResource' and `UntagResource'.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations' call to track the
%% operation's progress.
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%% @doc Update an existing App Runner VPC Ingress Connection resource.
%%
%% The VPC Ingress Connection must be in one of the following states to be
%% updated:
%%
%% <ul> <li> AVAILABLE
%%
%% </li> <li> FAILED_CREATION
%%
%% </li> <li> FAILED_UPDATE
%%
%% </li> </ul>
update_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vpc_ingress_connection(Client, Input, []).
update_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVpcIngressConnection">>, Input, Options).

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
    Client1 = Client#{service => <<"apprunner">>},
    Host = build_host(<<"apprunner">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AppRunner.", Action/binary>>}
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
