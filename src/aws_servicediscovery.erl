%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Cloud Map
%%
%% With Cloud Map, you can configure public DNS, private DNS, or HTTP
%% namespaces that your microservice applications run in.
%%
%% When an instance becomes available, you can call the Cloud Map API to
%% register the instance with Cloud Map. For public or private DNS
%% namespaces, Cloud Map automatically creates DNS records and an optional
%% health check. Clients that submit public or private DNS queries, or HTTP
%% requests, for the service receive an answer that contains up to eight
%% healthy records.
-module(aws_servicediscovery).

-export([create_http_namespace/2,
         create_http_namespace/3,
         create_private_dns_namespace/2,
         create_private_dns_namespace/3,
         create_public_dns_namespace/2,
         create_public_dns_namespace/3,
         create_service/2,
         create_service/3,
         delete_namespace/2,
         delete_namespace/3,
         delete_service/2,
         delete_service/3,
         deregister_instance/2,
         deregister_instance/3,
         discover_instances/2,
         discover_instances/3,
         discover_instances_revision/2,
         discover_instances_revision/3,
         get_instance/2,
         get_instance/3,
         get_instances_health_status/2,
         get_instances_health_status/3,
         get_namespace/2,
         get_namespace/3,
         get_operation/2,
         get_operation/3,
         get_service/2,
         get_service/3,
         list_instances/2,
         list_instances/3,
         list_namespaces/2,
         list_namespaces/3,
         list_operations/2,
         list_operations/3,
         list_services/2,
         list_services/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_instance/2,
         register_instance/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_http_namespace/2,
         update_http_namespace/3,
         update_instance_custom_health_status/2,
         update_instance_custom_health_status/3,
         update_private_dns_namespace/2,
         update_private_dns_namespace/3,
         update_public_dns_namespace/2,
         update_public_dns_namespace/3,
         update_service/2,
         update_service/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an HTTP namespace.
%%
%% Service instances registered using an HTTP namespace can be discovered
%% using a `DiscoverInstances' request but can't be discovered using
%% DNS.
%%
%% For the current quota on the number of namespaces that you can create
%% using the same Amazon Web Services account, see Cloud Map quotas in the
%% Cloud Map Developer Guide.
create_http_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_http_namespace(Client, Input, []).
create_http_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHttpNamespace">>, Input, Options).

%% @doc Creates a private namespace based on DNS, which is visible only
%% inside a specified Amazon VPC.
%%
%% The namespace defines your service naming scheme. For example, if you name
%% your namespace `example.com' and name your service `backend', the
%% resulting DNS name for the service is `backend.example.com'. Service
%% instances that are registered using a private DNS namespace can be
%% discovered using either a `DiscoverInstances' request or using DNS.
%% For the current quota on the number of namespaces that you can create
%% using the same Amazon Web Services account, see Cloud Map quotas in the
%% Cloud Map Developer Guide.
create_private_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_private_dns_namespace(Client, Input, []).
create_private_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePrivateDnsNamespace">>, Input, Options).

%% @doc Creates a public namespace based on DNS, which is visible on the
%% internet.
%%
%% The namespace defines your service naming scheme. For example, if you name
%% your namespace `example.com' and name your service `backend', the
%% resulting DNS name for the service is `backend.example.com'. You can
%% discover instances that were registered with a public DNS namespace by
%% using either a `DiscoverInstances' request or using DNS. For the
%% current quota on the number of namespaces that you can create using the
%% same Amazon Web Services account, see Cloud Map quotas in the Cloud Map
%% Developer Guide.
%%
%% The `CreatePublicDnsNamespace' API operation is not supported in the
%% Amazon Web Services GovCloud (US) Regions.
create_public_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_dns_namespace(Client, Input, []).
create_public_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePublicDnsNamespace">>, Input, Options).

%% @doc Creates a service.
%%
%% This action defines the configuration for the following entities:
%%
%% <ul> <li> For public and private DNS namespaces, one of the following
%% combinations of DNS records in Amazon Route 53:
%%
%% <ul> <li> `A'
%%
%% </li> <li> `AAAA'
%%
%% </li> <li> `A' and `AAAA'
%%
%% </li> <li> `SRV'
%%
%% </li> <li> `CNAME'
%%
%% </li> </ul> </li> <li> Optionally, a health check
%%
%% </li> </ul> After you create the service, you can submit a
%% RegisterInstance request, and Cloud Map uses the values in the
%% configuration to create the specified entities.
%%
%% For the current quota on the number of instances that you can register
%% using the same namespace and using the same service, see Cloud Map quotas
%% in the Cloud Map Developer Guide.
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Deletes a namespace from the current account.
%%
%% If the namespace still contains one or more services, the request fails.
delete_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_namespace(Client, Input, []).
delete_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamespace">>, Input, Options).

%% @doc Deletes a specified service.
%%
%% If the service still contains one or more registered instances, the
%% request fails.
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Deletes the Amazon Route 53 DNS records and health check, if any,
%% that Cloud Map created for the specified instance.
deregister_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instance(Client, Input, []).
deregister_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstance">>, Input, Options).

%% @doc Discovers registered instances for a specified namespace and service.
%%
%% You can use `DiscoverInstances' to discover instances for any type of
%% namespace. `DiscoverInstances' returns a randomized list of instances
%% allowing customers to distribute traffic evenly across instances. For
%% public and private DNS namespaces, you can also use DNS queries to
%% discover instances.
discover_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_instances(Client, Input, []).
discover_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInstances">>, Input, Options).

%% @doc Discovers the increasing revision associated with an instance.
discover_instances_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_instances_revision(Client, Input, []).
discover_instances_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInstancesRevision">>, Input, Options).

%% @doc Gets information about a specified instance.
get_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance(Client, Input, []).
get_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstance">>, Input, Options).

%% @doc Gets the current health status (`Healthy', `Unhealthy', or
%% `Unknown') of one or more instances that are associated with a
%% specified service.
%%
%% There's a brief delay between when you register an instance and when
%% the health status for the instance is available.
get_instances_health_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instances_health_status(Client, Input, []).
get_instances_health_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstancesHealthStatus">>, Input, Options).

%% @doc Gets information about a namespace.
get_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_namespace(Client, Input, []).
get_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamespace">>, Input, Options).

%% @doc Gets information about any operation that returns an operation ID in
%% the response, such as a `CreateHttpNamespace' request.
%%
%% To get a list of operations that match specified criteria, see
%% ListOperations.
get_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operation(Client, Input, []).
get_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperation">>, Input, Options).

%% @doc Gets the settings for a specified service.
get_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service(Client, Input, []).
get_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetService">>, Input, Options).

%% @doc Lists summary information about the instances that you registered by
%% using a specified service.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Lists summary information about the namespaces that were created by
%% the current Amazon Web Services account.
list_namespaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_namespaces(Client, Input, []).
list_namespaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNamespaces">>, Input, Options).

%% @doc Lists operations that match the criteria that you specify.
list_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_operations(Client, Input, []).
list_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOperations">>, Input, Options).

%% @doc Lists summary information for all the services that are associated
%% with one or more specified namespaces.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc Lists tags for the specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates one or more records and, optionally, creates a
%% health check based on the settings in a specified service.
%%
%% When you submit a `RegisterInstance' request, the following occurs:
%%
%% <ul> <li> For each DNS record that you define in the service that's
%% specified by `ServiceId', a record is created or updated in the hosted
%% zone that's associated with the corresponding namespace.
%%
%% </li> <li> If the service includes `HealthCheckConfig', a health check
%% is created based on the settings in the health check configuration.
%%
%% </li> <li> The health check, if any, is associated with each of the new or
%% updated records.
%%
%% </li> </ul> One `RegisterInstance' request must complete before you
%% can submit another request and specify the same service ID and instance
%% ID.
%%
%% For more information, see CreateService.
%%
%% When Cloud Map receives a DNS query for the specified DNS name, it returns
%% the applicable value:
%%
%% <ul> <li> If the health check is healthy: returns all the records
%%
%% </li> <li> If the health check is unhealthy: returns the applicable value
%% for the last healthy instance
%%
%% </li> <li> If you didn't specify a health check configuration: returns
%% all the records
%%
%% </li> </ul> For the current quota on the number of instances that you can
%% register using the same namespace and using the same service, see Cloud
%% Map quotas in the Cloud Map Developer Guide.
register_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instance(Client, Input, []).
register_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstance">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an HTTP namespace.
update_http_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_http_namespace(Client, Input, []).
update_http_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHttpNamespace">>, Input, Options).

%% @doc Submits a request to change the health status of a custom health
%% check to healthy or unhealthy.
%%
%% You can use `UpdateInstanceCustomHealthStatus' to change the status
%% only for custom health checks, which you define using
%% `HealthCheckCustomConfig' when you create a service. You can't use
%% it to change the status for Route 53 health checks, which you define using
%% `HealthCheckConfig'.
%%
%% For more information, see HealthCheckCustomConfig.
update_instance_custom_health_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_custom_health_status(Client, Input, []).
update_instance_custom_health_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceCustomHealthStatus">>, Input, Options).

%% @doc Updates a private DNS namespace.
update_private_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_private_dns_namespace(Client, Input, []).
update_private_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePrivateDnsNamespace">>, Input, Options).

%% @doc Updates a public DNS namespace.
update_public_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_public_dns_namespace(Client, Input, []).
update_public_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePublicDnsNamespace">>, Input, Options).

%% @doc Submits a request to perform the following operations:
%%
%% <ul> <li> Update the TTL setting for existing `DnsRecords'
%% configurations
%%
%% </li> <li> Add, update, or delete `HealthCheckConfig' for a specified
%% service
%%
%% You can't add, update, or delete a `HealthCheckCustomConfig'
%% configuration.
%%
%% </li> </ul> For public and private DNS namespaces, note the following:
%%
%% <ul> <li> If you omit any existing `DnsRecords' or
%% `HealthCheckConfig' configurations from an `UpdateService'
%% request, the configurations are deleted from the service.
%%
%% </li> <li> If you omit an existing `HealthCheckCustomConfig'
%% configuration from an `UpdateService' request, the configuration
%% isn't deleted from the service.
%%
%% </li> </ul> When you update settings for a service, Cloud Map also updates
%% the corresponding settings in all the records and health checks that were
%% created by using the specified service.
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

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
    Client1 = Client#{service => <<"servicediscovery">>},
    Host = build_host(<<"servicediscovery">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Route53AutoNaming_v20170314.", Action/binary>>}
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
