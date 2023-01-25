%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Elastic Load Balancing
%%
%% A load balancer can distribute incoming traffic across your EC2 instances.
%%
%% This enables you to increase the availability of your application. The
%% load balancer also monitors the health of its registered instances and
%% ensures that it routes traffic only to healthy instances. You configure
%% your load balancer to accept incoming traffic by specifying one or more
%% listeners, which are configured with a protocol and port number for
%% connections from clients to the load balancer and a protocol and port
%% number for connections from the load balancer to the instances.
%%
%% Elastic Load Balancing supports three types of load balancers: Application
%% Load Balancers, Network Load Balancers, and Classic Load Balancers. You
%% can select a load balancer based on your application needs. For more
%% information, see the Elastic Load Balancing User Guide.
%%
%% This reference covers the 2012-06-01 API, which supports Classic Load
%% Balancers. The 2015-12-01 API supports Application Load Balancers and
%% Network Load Balancers.
%%
%% To get started, create a load balancer with one or more listeners using
%% `CreateLoadBalancer'. Register your instances with the load balancer
%% using `RegisterInstancesWithLoadBalancer'.
%%
%% All Elastic Load Balancing operations are idempotent, which means that
%% they complete at most one time. If you repeat an operation, it succeeds
%% with a 200 OK response code.
-module(aws_elastic_load_balancing).

-export([add_tags/2,
         add_tags/3,
         apply_security_groups_to_load_balancer/2,
         apply_security_groups_to_load_balancer/3,
         attach_load_balancer_to_subnets/2,
         attach_load_balancer_to_subnets/3,
         configure_health_check/2,
         configure_health_check/3,
         create_app_cookie_stickiness_policy/2,
         create_app_cookie_stickiness_policy/3,
         create_lb_cookie_stickiness_policy/2,
         create_lb_cookie_stickiness_policy/3,
         create_load_balancer/2,
         create_load_balancer/3,
         create_load_balancer_listeners/2,
         create_load_balancer_listeners/3,
         create_load_balancer_policy/2,
         create_load_balancer_policy/3,
         delete_load_balancer/2,
         delete_load_balancer/3,
         delete_load_balancer_listeners/2,
         delete_load_balancer_listeners/3,
         delete_load_balancer_policy/2,
         delete_load_balancer_policy/3,
         deregister_instances_from_load_balancer/2,
         deregister_instances_from_load_balancer/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_instance_health/2,
         describe_instance_health/3,
         describe_load_balancer_attributes/2,
         describe_load_balancer_attributes/3,
         describe_load_balancer_policies/2,
         describe_load_balancer_policies/3,
         describe_load_balancer_policy_types/2,
         describe_load_balancer_policy_types/3,
         describe_load_balancers/2,
         describe_load_balancers/3,
         describe_tags/2,
         describe_tags/3,
         detach_load_balancer_from_subnets/2,
         detach_load_balancer_from_subnets/3,
         disable_availability_zones_for_load_balancer/2,
         disable_availability_zones_for_load_balancer/3,
         enable_availability_zones_for_load_balancer/2,
         enable_availability_zones_for_load_balancer/3,
         modify_load_balancer_attributes/2,
         modify_load_balancer_attributes/3,
         register_instances_with_load_balancer/2,
         register_instances_with_load_balancer/3,
         remove_tags/2,
         remove_tags/3,
         set_load_balancer_listener_ssl_certificate/2,
         set_load_balancer_listener_ssl_certificate/3,
         set_load_balancer_policies_for_backend_server/2,
         set_load_balancer_policies_for_backend_server/3,
         set_load_balancer_policies_of_listener/2,
         set_load_balancer_policies_of_listener/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds the specified tags to the specified load balancer.
%%
%% Each load balancer can have a maximum of 10 tags.
%%
%% Each tag consists of a key and an optional value. If a tag with the same
%% key is already associated with the load balancer, `AddTags' updates
%% its value.
%%
%% For more information, see Tag Your Classic Load Balancer in the Classic
%% Load Balancers Guide.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Associates one or more security groups with your load balancer in a
%% virtual private cloud (VPC).
%%
%% The specified security groups override the previously associated security
%% groups.
%%
%% For more information, see Security Groups for Load Balancers in a VPC in
%% the Classic Load Balancers Guide.
apply_security_groups_to_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_security_groups_to_load_balancer(Client, Input, []).
apply_security_groups_to_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplySecurityGroupsToLoadBalancer">>, Input, Options).

%% @doc Adds one or more subnets to the set of configured subnets for the
%% specified load balancer.
%%
%% The load balancer evenly distributes requests across all registered
%% subnets. For more information, see Add or Remove Subnets for Your Load
%% Balancer in a VPC in the Classic Load Balancers Guide.
attach_load_balancer_to_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_to_subnets(Client, Input, []).
attach_load_balancer_to_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerToSubnets">>, Input, Options).

%% @doc Specifies the health check settings to use when evaluating the health
%% state of your EC2 instances.
%%
%% For more information, see Configure Health Checks for Your Load Balancer
%% in the Classic Load Balancers Guide.
configure_health_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    configure_health_check(Client, Input, []).
configure_health_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfigureHealthCheck">>, Input, Options).

%% @doc Generates a stickiness policy with sticky session lifetimes that
%% follow that of an application-generated cookie.
%%
%% This policy can be associated only with HTTP/HTTPS listeners.
%%
%% This policy is similar to the policy created by
%% `CreateLBCookieStickinessPolicy', except that the lifetime of the
%% special Elastic Load Balancing cookie, `AWSELB', follows the lifetime
%% of the application-generated cookie specified in the policy configuration.
%% The load balancer only inserts a new stickiness cookie when the
%% application response includes a new application cookie.
%%
%% If the application cookie is explicitly removed or expires, the session
%% stops being sticky until a new application cookie is issued.
%%
%% For more information, see Application-Controlled Session Stickiness in the
%% Classic Load Balancers Guide.
create_app_cookie_stickiness_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_cookie_stickiness_policy(Client, Input, []).
create_app_cookie_stickiness_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppCookieStickinessPolicy">>, Input, Options).

%% @doc Generates a stickiness policy with sticky session lifetimes
%% controlled by the lifetime of the browser (user-agent) or a specified
%% expiration period.
%%
%% This policy can be associated only with HTTP/HTTPS listeners.
%%
%% When a load balancer implements this policy, the load balancer uses a
%% special cookie to track the instance for each request. When the load
%% balancer receives a request, it first checks to see if this cookie is
%% present in the request. If so, the load balancer sends the request to the
%% application server specified in the cookie. If not, the load balancer
%% sends the request to a server that is chosen based on the existing
%% load-balancing algorithm.
%%
%% A cookie is inserted into the response for binding subsequent requests
%% from the same user to that server. The validity of the cookie is based on
%% the cookie expiration time, which is specified in the policy
%% configuration.
%%
%% For more information, see Duration-Based Session Stickiness in the Classic
%% Load Balancers Guide.
create_lb_cookie_stickiness_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_lb_cookie_stickiness_policy(Client, Input, []).
create_lb_cookie_stickiness_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLBCookieStickinessPolicy">>, Input, Options).

%% @doc Creates a Classic Load Balancer.
%%
%% You can add listeners, security groups, subnets, and tags when you create
%% your load balancer, or you can add them later using
%% `CreateLoadBalancerListeners',
%% `ApplySecurityGroupsToLoadBalancer',
%% `AttachLoadBalancerToSubnets', and `AddTags'.
%%
%% To describe your current load balancers, see `DescribeLoadBalancers'.
%% When you are finished with a load balancer, you can delete it using
%% `DeleteLoadBalancer'.
%%
%% You can create up to 20 load balancers per region per account. You can
%% request an increase for the number of load balancers for your account. For
%% more information, see Limits for Your Classic Load Balancer in the Classic
%% Load Balancers Guide.
create_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer(Client, Input, []).
create_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancer">>, Input, Options).

%% @doc Creates one or more listeners for the specified load balancer.
%%
%% If a listener with the specified port does not already exist, it is
%% created; otherwise, the properties of the new listener must match the
%% properties of the existing listener.
%%
%% For more information, see Listeners for Your Classic Load Balancer in the
%% Classic Load Balancers Guide.
create_load_balancer_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer_listeners(Client, Input, []).
create_load_balancer_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancerListeners">>, Input, Options).

%% @doc Creates a policy with the specified attributes for the specified load
%% balancer.
%%
%% Policies are settings that are saved for your load balancer and that can
%% be applied to the listener or the application server, depending on the
%% policy type.
create_load_balancer_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer_policy(Client, Input, []).
create_load_balancer_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancerPolicy">>, Input, Options).

%% @doc Deletes the specified load balancer.
%%
%% If you are attempting to recreate a load balancer, you must reconfigure
%% all settings. The DNS name associated with a deleted load balancer are no
%% longer usable. The name and associated DNS record of the deleted load
%% balancer no longer exist and traffic sent to any of its IP addresses is no
%% longer delivered to your instances.
%%
%% If the load balancer does not exist or has already been deleted, the call
%% to `DeleteLoadBalancer' still succeeds.
delete_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer(Client, Input, []).
delete_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancer">>, Input, Options).

%% @doc Deletes the specified listeners from the specified load balancer.
delete_load_balancer_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer_listeners(Client, Input, []).
delete_load_balancer_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancerListeners">>, Input, Options).

%% @doc Deletes the specified policy from the specified load balancer.
%%
%% This policy must not be enabled for any listeners.
delete_load_balancer_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer_policy(Client, Input, []).
delete_load_balancer_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancerPolicy">>, Input, Options).

%% @doc Deregisters the specified instances from the specified load balancer.
%%
%% After the instance is deregistered, it no longer receives traffic from the
%% load balancer.
%%
%% You can use `DescribeLoadBalancers' to verify that the instance is
%% deregistered from the load balancer.
%%
%% For more information, see Register or De-Register EC2 Instances in the
%% Classic Load Balancers Guide.
deregister_instances_from_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instances_from_load_balancer(Client, Input, []).
deregister_instances_from_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstancesFromLoadBalancer">>, Input, Options).

%% @doc Describes the current Elastic Load Balancing resource limits for your
%% AWS account.
%%
%% For more information, see Limits for Your Classic Load Balancer in the
%% Classic Load Balancers Guide.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the state of the specified instances with respect to the
%% specified load balancer.
%%
%% If no instances are specified, the call describes the state of all
%% instances that are currently registered with the load balancer. If
%% instances are specified, their state is returned even if they are no
%% longer registered with the load balancer. The state of terminated
%% instances is not returned.
describe_instance_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_health(Client, Input, []).
describe_instance_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceHealth">>, Input, Options).

%% @doc Describes the attributes for the specified load balancer.
describe_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_attributes(Client, Input, []).
describe_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerAttributes">>, Input, Options).

%% @doc Describes the specified policies.
%%
%% If you specify a load balancer name, the action returns the descriptions
%% of all policies created for the load balancer. If you specify a policy
%% name associated with your load balancer, the action returns the
%% description of that policy. If you don't specify a load balancer name,
%% the action returns descriptions of the specified sample policies, or
%% descriptions of all sample policies. The names of the sample policies have
%% the `ELBSample-' prefix.
describe_load_balancer_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_policies(Client, Input, []).
describe_load_balancer_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerPolicies">>, Input, Options).

%% @doc Describes the specified load balancer policy types or all load
%% balancer policy types.
%%
%% The description of each type indicates how it can be used. For example,
%% some policies can be used only with layer 7 listeners, some policies can
%% be used only with layer 4 listeners, and some policies can be used only
%% with your EC2 instances.
%%
%% You can use `CreateLoadBalancerPolicy' to create a policy
%% configuration for any of these policy types. Then, depending on the policy
%% type, use either `SetLoadBalancerPoliciesOfListener' or
%% `SetLoadBalancerPoliciesForBackendServer' to set the policy.
describe_load_balancer_policy_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_policy_types(Client, Input, []).
describe_load_balancer_policy_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerPolicyTypes">>, Input, Options).

%% @doc Describes the specified the load balancers.
%%
%% If no load balancers are specified, the call describes all of your load
%% balancers.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the tags associated with the specified load balancers.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Removes the specified subnets from the set of configured subnets for
%% the load balancer.
%%
%% After a subnet is removed, all EC2 instances registered with the load
%% balancer in the removed subnet go into the `OutOfService' state. Then,
%% the load balancer balances the traffic among the remaining routable
%% subnets.
detach_load_balancer_from_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_load_balancer_from_subnets(Client, Input, []).
detach_load_balancer_from_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachLoadBalancerFromSubnets">>, Input, Options).

%% @doc Removes the specified Availability Zones from the set of Availability
%% Zones for the specified load balancer in EC2-Classic or a default VPC.
%%
%% For load balancers in a non-default VPC, use
%% `DetachLoadBalancerFromSubnets'.
%%
%% There must be at least one Availability Zone registered with a load
%% balancer at all times. After an Availability Zone is removed, all
%% instances registered with the load balancer that are in the removed
%% Availability Zone go into the `OutOfService' state. Then, the load
%% balancer attempts to equally balance the traffic among its remaining
%% Availability Zones.
%%
%% For more information, see Add or Remove Availability Zones in the Classic
%% Load Balancers Guide.
disable_availability_zones_for_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_availability_zones_for_load_balancer(Client, Input, []).
disable_availability_zones_for_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAvailabilityZonesForLoadBalancer">>, Input, Options).

%% @doc Adds the specified Availability Zones to the set of Availability
%% Zones for the specified load balancer in EC2-Classic or a default VPC.
%%
%% For load balancers in a non-default VPC, use
%% `AttachLoadBalancerToSubnets'.
%%
%% The load balancer evenly distributes requests across all its registered
%% Availability Zones that contain instances. For more information, see Add
%% or Remove Availability Zones in the Classic Load Balancers Guide.
enable_availability_zones_for_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_availability_zones_for_load_balancer(Client, Input, []).
enable_availability_zones_for_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAvailabilityZonesForLoadBalancer">>, Input, Options).

%% @doc Modifies the attributes of the specified load balancer.
%%
%% You can modify the load balancer attributes, such as `AccessLogs',
%% `ConnectionDraining', and `CrossZoneLoadBalancing' by either
%% enabling or disabling them. Or, you can modify the load balancer attribute
%% `ConnectionSettings' by specifying an idle connection timeout value
%% for your load balancer.
%%
%% For more information, see the following in the Classic Load Balancers
%% Guide:
%%
%% <ul> <li> Cross-Zone Load Balancing
%%
%% </li> <li> Connection Draining
%%
%% </li> <li> Access Logs
%%
%% </li> <li> Idle Connection Timeout
%%
%% </li> </ul>
modify_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_load_balancer_attributes(Client, Input, []).
modify_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLoadBalancerAttributes">>, Input, Options).

%% @doc Adds the specified instances to the specified load balancer.
%%
%% The instance must be a running instance in the same network as the load
%% balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances
%% and a load balancer in a VPC with ClassicLink enabled, you can link the
%% EC2-Classic instances to that VPC and then register the linked EC2-Classic
%% instances with the load balancer in the VPC.
%%
%% Note that `RegisterInstanceWithLoadBalancer' completes when the
%% request has been registered. Instance registration takes a little time to
%% complete. To check the state of the registered instances, use
%% `DescribeLoadBalancers' or `DescribeInstanceHealth'.
%%
%% After the instance is registered, it starts receiving traffic and requests
%% from the load balancer. Any instance that is not in one of the
%% Availability Zones registered for the load balancer is moved to the
%% `OutOfService' state. If an Availability Zone is added to the load
%% balancer later, any instances registered with the load balancer move to
%% the `InService' state.
%%
%% To deregister instances from a load balancer, use
%% `DeregisterInstancesFromLoadBalancer'.
%%
%% For more information, see Register or De-Register EC2 Instances in the
%% Classic Load Balancers Guide.
register_instances_with_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instances_with_load_balancer(Client, Input, []).
register_instances_with_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstancesWithLoadBalancer">>, Input, Options).

%% @doc Removes one or more tags from the specified load balancer.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Sets the certificate that terminates the specified listener's SSL
%% connections.
%%
%% The specified certificate replaces any prior certificate that was used on
%% the same load balancer and port.
%%
%% For more information about updating your SSL certificate, see Replace the
%% SSL Certificate for Your Load Balancer in the Classic Load Balancers
%% Guide.
set_load_balancer_listener_ssl_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_balancer_listener_ssl_certificate(Client, Input, []).
set_load_balancer_listener_ssl_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBalancerListenerSSLCertificate">>, Input, Options).

%% @doc Replaces the set of policies associated with the specified port on
%% which the EC2 instance is listening with a new set of policies.
%%
%% At this time, only the back-end server authentication policy type can be
%% applied to the instance ports; this policy type is composed of multiple
%% public key policies.
%%
%% Each time you use `SetLoadBalancerPoliciesForBackendServer' to enable
%% the policies, use the `PolicyNames' parameter to list the policies
%% that you want to enable.
%%
%% You can use `DescribeLoadBalancers' or
%% `DescribeLoadBalancerPolicies' to verify that the policy is associated
%% with the EC2 instance.
%%
%% For more information about enabling back-end instance authentication, see
%% Configure Back-end Instance Authentication in the Classic Load Balancers
%% Guide. For more information about Proxy Protocol, see Configure Proxy
%% Protocol Support in the Classic Load Balancers Guide.
set_load_balancer_policies_for_backend_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_balancer_policies_for_backend_server(Client, Input, []).
set_load_balancer_policies_for_backend_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBalancerPoliciesForBackendServer">>, Input, Options).

%% @doc Replaces the current set of policies for the specified load balancer
%% port with the specified set of policies.
%%
%% To enable back-end server authentication, use
%% `SetLoadBalancerPoliciesForBackendServer'.
%%
%% For more information about setting policies, see Update the SSL
%% Negotiation Configuration, Duration-Based Session Stickiness, and
%% Application-Controlled Session Stickiness in the Classic Load Balancers
%% Guide.
set_load_balancer_policies_of_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_balancer_policies_of_listener(Client, Input, []).
set_load_balancer_policies_of_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBalancerPoliciesOfListener">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticloadbalancing">>},
    Host = build_host(<<"elasticloadbalancing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2012-06-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
