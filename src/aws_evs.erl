%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic VMware Service (Amazon EVS) is a service that you can
%% use to deploy a VMware Cloud Foundation (VCF) software environment
%% directly on EC2 bare metal instances within an Amazon Virtual Private
%% Cloud (VPC).
%%
%% Workloads running on Amazon EVS are fully compatible with workloads
%% running on any standard VMware vSphere environment. This means that you
%% can migrate any VMware-based workload to Amazon EVS without workload
%% modification.
-module(aws_evs).

-export([create_environment/2,
         create_environment/3,
         create_environment_host/2,
         create_environment_host/3,
         delete_environment/2,
         delete_environment/3,
         delete_environment_host/2,
         delete_environment_host/3,
         get_environment/2,
         get_environment/3,
         list_environment_hosts/2,
         list_environment_hosts/3,
         list_environment_vlans/2,
         list_environment_vlans/3,
         list_environments/2,
         list_environments/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% check() :: #{
%%   <<"impairedSince">> => [non_neg_integer()],
%%   <<"result">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type check() :: #{binary() => any()}.

%% Example:
%% list_environment_hosts_response() :: #{
%%   <<"environmentHosts">> => list(host()()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_hosts_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_environment_vlans_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_vlans_request() :: #{binary() => any()}.

%% Example:
%% host_info_for_create() :: #{
%%   <<"dedicatedHostId">> => string(),
%%   <<"hostName">> => string(),
%%   <<"instanceType">> => list(any()),
%%   <<"keyName">> => string(),
%%   <<"placementGroupId">> => string()
%% }
-type host_info_for_create() :: #{binary() => any()}.

%% Example:
%% delete_environment_host_response() :: #{
%%   <<"environmentSummary">> => environment_summary(),
%%   <<"host">> => host()
%% }
-type delete_environment_host_response() :: #{binary() => any()}.

%% Example:
%% environment_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"environmentState">> => list(any()),
%%   <<"environmentStatus">> => list(any()),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"vcfVersion">> => list(any())
%% }
-type environment_summary() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{

%% }
-type get_environment_request() :: #{binary() => any()}.

%% Example:
%% create_environment_host_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"environmentId">> := string(),
%%   <<"host">> := host_info_for_create()
%% }
-type create_environment_host_request() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"networkInterfaceId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% initial_vlans() :: #{
%%   <<"edgeVTep">> => initial_vlan_info(),
%%   <<"expansionVlan1">> => initial_vlan_info(),
%%   <<"expansionVlan2">> => initial_vlan_info(),
%%   <<"hcx">> => initial_vlan_info(),
%%   <<"nsxUplink">> => initial_vlan_info(),
%%   <<"vMotion">> => initial_vlan_info(),
%%   <<"vSan">> => initial_vlan_info(),
%%   <<"vTep">> => initial_vlan_info(),
%%   <<"vmManagement">> => initial_vlan_info(),
%%   <<"vmkManagement">> => initial_vlan_info()
%% }
-type initial_vlans() :: #{binary() => any()}.

%% Example:
%% initial_vlan_info() :: #{
%%   <<"cidr">> => string()
%% }
-type initial_vlan_info() :: #{binary() => any()}.

%% Example:
%% tag_policy_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type tag_policy_exception() :: #{binary() => any()}.

%% Example:
%% get_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type get_environment_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% service_access_security_groups() :: #{
%%   <<"securityGroups">> => list(string()())
%% }
-type service_access_security_groups() :: #{binary() => any()}.

%% Example:
%% connectivity_info() :: #{
%%   <<"privateRouteServerPeerings">> => list(string()())
%% }
-type connectivity_info() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% environment() :: #{
%%   <<"checks">> => list(check()()),
%%   <<"connectivityInfo">> => connectivity_info(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"credentials">> => list(secret()()),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"environmentState">> => list(any()),
%%   <<"environmentStatus">> => list(any()),
%%   <<"kmsKeyId">> => [string()],
%%   <<"licenseInfo">> => list(license_info()()),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"serviceAccessSecurityGroups">> => service_access_security_groups(),
%%   <<"serviceAccessSubnetId">> => string(),
%%   <<"siteId">> => [string()],
%%   <<"stateDetails">> => string(),
%%   <<"termsAccepted">> => [boolean()],
%%   <<"vcfHostnames">> => vcf_hostnames(),
%%   <<"vcfVersion">> => list(any()),
%%   <<"vpcId">> => string()
%% }
-type environment() :: #{binary() => any()}.

%% Example:
%% secret() :: #{
%%   <<"secretArn">> => [string()]
%% }
-type secret() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_environment_vlans_response() :: #{
%%   <<"environmentVlans">> => list(vlan()()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_vlans_response() :: #{binary() => any()}.

%% Example:
%% list_environments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"state">> => list(list(any())())
%% }
-type list_environments_request() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% vcf_hostnames() :: #{
%%   <<"cloudBuilder">> => string(),
%%   <<"nsx">> => string(),
%%   <<"nsxEdge1">> => string(),
%%   <<"nsxEdge2">> => string(),
%%   <<"nsxManager1">> => string(),
%%   <<"nsxManager2">> => string(),
%%   <<"nsxManager3">> => string(),
%%   <<"sddcManager">> => string(),
%%   <<"vCenter">> => string()
%% }
-type vcf_hostnames() :: #{binary() => any()}.

%% Example:
%% license_info() :: #{
%%   <<"solutionKey">> => string(),
%%   <<"vsanKey">> => string()
%% }
-type license_info() :: #{binary() => any()}.

%% Example:
%% host() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dedicatedHostId">> => string(),
%%   <<"ec2InstanceId">> => [string()],
%%   <<"hostName">> => string(),
%%   <<"hostState">> => list(any()),
%%   <<"instanceType">> => list(any()),
%%   <<"ipAddress">> => string(),
%%   <<"keyName">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"networkInterfaces">> => list(network_interface()()),
%%   <<"placementGroupId">> => string(),
%%   <<"stateDetails">> => string()
%% }
-type host() :: #{binary() => any()}.

%% Example:
%% list_environment_hosts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_hosts_request() :: #{binary() => any()}.

%% Example:
%% create_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type create_environment_response() :: #{binary() => any()}.

%% Example:
%% delete_environment_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_environment_request() :: #{binary() => any()}.

%% Example:
%% create_environment_host_response() :: #{
%%   <<"environmentSummary">> => environment_summary(),
%%   <<"host">> => host()
%% }
-type create_environment_host_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% list_environments_response() :: #{
%%   <<"environmentSummaries">> => list(environment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_response() :: #{binary() => any()}.

%% Example:
%% create_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"connectivityInfo">> := connectivity_info(),
%%   <<"environmentName">> => string(),
%%   <<"hosts">> := list(host_info_for_create()()),
%%   <<"initialVlans">> := initial_vlans(),
%%   <<"kmsKeyId">> => [string()],
%%   <<"licenseInfo">> := list(license_info()()),
%%   <<"serviceAccessSecurityGroups">> => service_access_security_groups(),
%%   <<"serviceAccessSubnetId">> := string(),
%%   <<"siteId">> := [string()],
%%   <<"tags">> => map(),
%%   <<"termsAccepted">> := [boolean()],
%%   <<"vcfHostnames">> := vcf_hostnames(),
%%   <<"vcfVersion">> := list(any()),
%%   <<"vpcId">> := string()
%% }
-type create_environment_request() :: #{binary() => any()}.

%% Example:
%% vlan() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"cidr">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"functionName">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"stateDetails">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"vlanId">> => integer(),
%%   <<"vlanState">> => list(any())
%% }
-type vlan() :: #{binary() => any()}.

%% Example:
%% delete_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type delete_environment_response() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% delete_environment_host_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"environmentId">> := string(),
%%   <<"hostName">> := string()
%% }
-type delete_environment_host_request() :: #{binary() => any()}.

-type create_environment_errors() ::
    validation_exception().

-type create_environment_host_errors() ::
    throttling_exception() | 
    validation_exception().

-type delete_environment_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type delete_environment_host_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_environment_hosts_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_environment_vlans_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_environments_errors() ::
    validation_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    resource_not_found_exception() | 
    tag_policy_exception().

-type untag_resource_errors() ::
    resource_not_found_exception() | 
    tag_policy_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon EVS environment that runs VCF software, such as
%% SDDC Manager, NSX Manager, and vCenter Server.
%%
%% During environment creation, Amazon EVS performs validations on DNS
%% settings, provisions VLAN subnets and hosts, and deploys the supplied
%% version of VCF.
%%
%% It can take several hours to create an environment. After the deployment
%% completes, you can configure VCF according to your unique requirements.
%%
%% You cannot use the `dedicatedHostId' and `placementGroupId'
%% parameters together in the same `CreateEnvironment' action. This
%% results in a `ValidationException' response.
%%
%% EC2 instances created through Amazon EVS do not support associating an IAM
%% instance profile.
-spec create_environment(aws_client:aws_client(), create_environment_request()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_request(), proplists:proplist()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironment">>, Input, Options).

%% @doc Creates an ESXi host and adds it to an Amazon EVS environment.
%%
%% Amazon EVS supports 4-16 hosts per environment.
%%
%% This action can only be used after the Amazon EVS environment is deployed.
%% All Amazon EVS hosts are created with the latest AMI release version for
%% the respective VCF version of the environment.
%%
%% You can use the `dedicatedHostId' parameter to specify an Amazon EC2
%% Dedicated Host for ESXi host creation.
%%
%% You can use the `placementGroupId' parameter to specify a cluster or
%% partition placement group to launch EC2 instances into.
%%
%% You cannot use the `dedicatedHostId' and `placementGroupId'
%% parameters together in the same `CreateEnvironmentHost' action. This
%% results in a `ValidationException' response.
%%
%% EC2 instances created through Amazon EVS do not support associating an IAM
%% instance profile.
-spec create_environment_host(aws_client:aws_client(), create_environment_host_request()) ->
    {ok, create_environment_host_response(), tuple()} |
    {error, any()} |
    {error, create_environment_host_errors(), tuple()}.
create_environment_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_host(Client, Input, []).

-spec create_environment_host(aws_client:aws_client(), create_environment_host_request(), proplists:proplist()) ->
    {ok, create_environment_host_response(), tuple()} |
    {error, any()} |
    {error, create_environment_host_errors(), tuple()}.
create_environment_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentHost">>, Input, Options).

%% @doc Deletes an Amazon EVS environment.
%%
%% Amazon EVS environments will only be enabled for deletion once the hosts
%% are deleted. You can delete hosts using the `DeleteEnvironmentHost'
%% action.
%%
%% Environment deletion also deletes the associated Amazon EVS VLAN subnets.
%% Other associated Amazon Web Services resources are not deleted. These
%% resources may continue to incur costs.
-spec delete_environment(aws_client:aws_client(), delete_environment_request()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment(Client, Input, []).

-spec delete_environment(aws_client:aws_client(), delete_environment_request(), proplists:proplist()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironment">>, Input, Options).

%% @doc Deletes a host from an Amazon EVS environment.
%%
%% Before deleting a host, you must unassign and decommission the host from
%% within the SDDC Manager user interface. Not doing so could impact the
%% availability of your virtual machines or result in data loss.
-spec delete_environment_host(aws_client:aws_client(), delete_environment_host_request()) ->
    {ok, delete_environment_host_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_host_errors(), tuple()}.
delete_environment_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_host(Client, Input, []).

-spec delete_environment_host(aws_client:aws_client(), delete_environment_host_request(), proplists:proplist()) ->
    {ok, delete_environment_host_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_host_errors(), tuple()}.
delete_environment_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentHost">>, Input, Options).

%% @doc Returns a description of the specified environment.
-spec get_environment(aws_client:aws_client(), get_environment_request()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_environment(Client, Input, []).

-spec get_environment(aws_client:aws_client(), get_environment_request(), proplists:proplist()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnvironment">>, Input, Options).

%% @doc List the hosts within an environment.
-spec list_environment_hosts(aws_client:aws_client(), list_environment_hosts_request()) ->
    {ok, list_environment_hosts_response(), tuple()} |
    {error, any()} |
    {error, list_environment_hosts_errors(), tuple()}.
list_environment_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_hosts(Client, Input, []).

-spec list_environment_hosts(aws_client:aws_client(), list_environment_hosts_request(), proplists:proplist()) ->
    {ok, list_environment_hosts_response(), tuple()} |
    {error, any()} |
    {error, list_environment_hosts_errors(), tuple()}.
list_environment_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentHosts">>, Input, Options).

%% @doc Lists environment VLANs that are associated with the specified
%% environment.
-spec list_environment_vlans(aws_client:aws_client(), list_environment_vlans_request()) ->
    {ok, list_environment_vlans_response(), tuple()} |
    {error, any()} |
    {error, list_environment_vlans_errors(), tuple()}.
list_environment_vlans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_vlans(Client, Input, []).

-spec list_environment_vlans(aws_client:aws_client(), list_environment_vlans_request(), proplists:proplist()) ->
    {ok, list_environment_vlans_response(), tuple()} |
    {error, any()} |
    {error, list_environment_vlans_errors(), tuple()}.
list_environment_vlans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentVlans">>, Input, Options).

%% @doc Lists the Amazon EVS environments in your Amazon Web Services account
%% in the specified Amazon Web Services Region.
-spec list_environments(aws_client:aws_client(), list_environments_request()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environments(Client, Input, []).

-spec list_environments(aws_client:aws_client(), list_environments_request(), proplists:proplist()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironments">>, Input, Options).

%% @doc Lists the tags for an Amazon EVS resource.
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

%% @doc Associates the specified tags to an Amazon EVS resource with the
%% specified `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they aren't changed. When a resource is deleted, the tags
%% associated with that resource are also deleted. Tags that you create for
%% Amazon EVS resources don't propagate to any other resources associated
%% with the environment. For example, if you tag an environment with this
%% operation, that tag doesn't automatically propagate to the VLAN
%% subnets and hosts associated with the environment.
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

%% @doc Deletes specified tags from an Amazon EVS resource.
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
    Client1 = Client#{service => <<"evs">>},
    Host = build_host(<<"evs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AmazonElasticVMwareService.", Action/binary>>}
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
