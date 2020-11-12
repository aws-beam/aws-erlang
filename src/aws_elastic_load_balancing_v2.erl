%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Elastic Load Balancing
%%
%% A load balancer distributes incoming traffic across targets, such as your
%% EC2 instances.
%%
%% This enables you to increase the availability of your application. The
%% load balancer also monitors the health of its registered targets and
%% ensures that it routes traffic only to healthy targets. You configure your
%% load balancer to accept incoming traffic by specifying one or more
%% listeners, which are configured with a protocol and port number for
%% connections from clients to the load balancer. You configure a target
%% group with a protocol and port number for connections from the load
%% balancer to the targets, and with health check settings to be used when
%% checking the health status of the targets.
%%
%% Elastic Load Balancing supports the following types of load balancers:
%% Application Load Balancers, Network Load Balancers, and Classic Load
%% Balancers. This reference covers Application Load Balancers and Network
%% Load Balancers.
%%
%% An Application Load Balancer makes routing and load balancing decisions at
%% the application layer (HTTP/HTTPS). A Network Load Balancer makes routing
%% and load balancing decisions at the transport layer (TCP/TLS). Both
%% Application Load Balancers and Network Load Balancers can route requests
%% to one or more ports on each EC2 instance or container instance in your
%% virtual private cloud (VPC). For more information, see the Elastic Load
%% Balancing User Guide.
%%
%% All Elastic Load Balancing operations are idempotent, which means that
%% they complete at most one time. If you repeat an operation, it succeeds.
-module(aws_elastic_load_balancing_v2).

-export([add_listener_certificates/2,
         add_listener_certificates/3,
         add_tags/2,
         add_tags/3,
         create_listener/2,
         create_listener/3,
         create_load_balancer/2,
         create_load_balancer/3,
         create_rule/2,
         create_rule/3,
         create_target_group/2,
         create_target_group/3,
         delete_listener/2,
         delete_listener/3,
         delete_load_balancer/2,
         delete_load_balancer/3,
         delete_rule/2,
         delete_rule/3,
         delete_target_group/2,
         delete_target_group/3,
         deregister_targets/2,
         deregister_targets/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_listener_certificates/2,
         describe_listener_certificates/3,
         describe_listeners/2,
         describe_listeners/3,
         describe_load_balancer_attributes/2,
         describe_load_balancer_attributes/3,
         describe_load_balancers/2,
         describe_load_balancers/3,
         describe_rules/2,
         describe_rules/3,
         describe_s_s_l_policies/2,
         describe_s_s_l_policies/3,
         describe_tags/2,
         describe_tags/3,
         describe_target_group_attributes/2,
         describe_target_group_attributes/3,
         describe_target_groups/2,
         describe_target_groups/3,
         describe_target_health/2,
         describe_target_health/3,
         modify_listener/2,
         modify_listener/3,
         modify_load_balancer_attributes/2,
         modify_load_balancer_attributes/3,
         modify_rule/2,
         modify_rule/3,
         modify_target_group/2,
         modify_target_group/3,
         modify_target_group_attributes/2,
         modify_target_group_attributes/3,
         register_targets/2,
         register_targets/3,
         remove_listener_certificates/2,
         remove_listener_certificates/3,
         remove_tags/2,
         remove_tags/3,
         set_ip_address_type/2,
         set_ip_address_type/3,
         set_rule_priorities/2,
         set_rule_priorities/3,
         set_security_groups/2,
         set_security_groups/3,
         set_subnets/2,
         set_subnets/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds the specified SSL server certificate to the certificate list for
%% the specified HTTPS or TLS listener.
%%
%% If the certificate in already in the certificate list, the call is
%% successful but the certificate is not added again.
%%
%% To get the certificate list for a listener, use
%% `DescribeListenerCertificates`. To remove certificates from the
%% certificate list for a listener, use `RemoveListenerCertificates`. To
%% replace the default certificate for a listener, use `ModifyListener`.
%%
%% For more information, see SSL Certificates in the Application Load
%% Balancers Guide.
add_listener_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_listener_certificates(Client, Input, []).
add_listener_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddListenerCertificates">>, Input, Options).

%% @doc Adds the specified tags to the specified Elastic Load Balancing
%% resource.
%%
%% You can tag your Application Load Balancers, Network Load Balancers,
%% target groups, listeners, and rules.
%%
%% Each tag consists of a key and an optional value. If a resource already
%% has a tag with the same key, `AddTags` updates its value.
%%
%% To list the current tags for your resources, use `DescribeTags`. To remove
%% tags from your resources, use `RemoveTags`.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Creates a listener for the specified Application Load Balancer or
%% Network Load Balancer.
%%
%% To update a listener, use `ModifyListener`. When you are finished with a
%% listener, you can delete it using `DeleteListener`. If you are finished
%% with both the listener and the load balancer, you can delete them both
%% using `DeleteLoadBalancer`.
%%
%% This operation is idempotent, which means that it completes at most one
%% time. If you attempt to create multiple listeners with the same settings,
%% each call succeeds.
%%
%% For more information, see Listeners for Your Application Load Balancers in
%% the Application Load Balancers Guide and Listeners for Your Network Load
%% Balancers in the Network Load Balancers Guide.
create_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_listener(Client, Input, []).
create_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateListener">>, Input, Options).

%% @doc Creates an Application Load Balancer or a Network Load Balancer.
%%
%% When you create a load balancer, you can specify security groups, public
%% subnets, IP address type, and tags. Otherwise, you could do so later using
%% `SetSecurityGroups`, `SetSubnets`, `SetIpAddressType`, and `AddTags`.
%%
%% To create listeners for your load balancer, use `CreateListener`. To
%% describe your current load balancers, see `DescribeLoadBalancers`. When
%% you are finished with a load balancer, you can delete it using
%% `DeleteLoadBalancer`.
%%
%% For limit information, see Limits for Your Application Load Balancer in
%% the Application Load Balancers Guide and Limits for Your Network Load
%% Balancer in the Network Load Balancers Guide.
%%
%% This operation is idempotent, which means that it completes at most one
%% time. If you attempt to create multiple load balancers with the same
%% settings, each call succeeds.
%%
%% For more information, see Application Load Balancers in the Application
%% Load Balancers Guide and Network Load Balancers in the Network Load
%% Balancers Guide.
create_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer(Client, Input, []).
create_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancer">>, Input, Options).

%% @doc Creates a rule for the specified listener.
%%
%% The listener must be associated with an Application Load Balancer.
%%
%% Each rule consists of a priority, one or more actions, and one or more
%% conditions. Rules are evaluated in priority order, from the lowest value
%% to the highest value. When the conditions for a rule are met, its actions
%% are performed. If the conditions for no rules are met, the actions for the
%% default rule are performed. For more information, see Listener Rules in
%% the Application Load Balancers Guide.
%%
%% To view your current rules, use `DescribeRules`. To update a rule, use
%% `ModifyRule`. To set the priorities of your rules, use
%% `SetRulePriorities`. To delete a rule, use `DeleteRule`.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc Creates a target group.
%%
%% To register targets with the target group, use `RegisterTargets`. To
%% update the health check settings for the target group, use
%% `ModifyTargetGroup`. To monitor the health of targets in the target group,
%% use `DescribeTargetHealth`.
%%
%% To route traffic to the targets in a target group, specify the target
%% group in an action using `CreateListener` or `CreateRule`.
%%
%% To delete a target group, use `DeleteTargetGroup`.
%%
%% This operation is idempotent, which means that it completes at most one
%% time. If you attempt to create multiple target groups with the same
%% settings, each call succeeds.
%%
%% For more information, see Target Groups for Your Application Load
%% Balancers in the Application Load Balancers Guide or Target Groups for
%% Your Network Load Balancers in the Network Load Balancers Guide.
create_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_target_group(Client, Input, []).
create_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTargetGroup">>, Input, Options).

%% @doc Deletes the specified listener.
%%
%% Alternatively, your listener is deleted when you delete the load balancer
%% to which it is attached, using `DeleteLoadBalancer`.
delete_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_listener(Client, Input, []).
delete_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteListener">>, Input, Options).

%% @doc Deletes the specified Application Load Balancer or Network Load
%% Balancer and its attached listeners.
%%
%% You can't delete a load balancer if deletion protection is enabled. If the
%% load balancer does not exist or has already been deleted, the call
%% succeeds.
%%
%% Deleting a load balancer does not affect its registered targets. For
%% example, your EC2 instances continue to run and are still registered to
%% their target groups. If you no longer need these EC2 instances, you can
%% stop or terminate them.
delete_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer(Client, Input, []).
delete_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancer">>, Input, Options).

%% @doc Deletes the specified rule.
%%
%% You can't delete the default rule.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Deletes the specified target group.
%%
%% You can delete a target group if it is not referenced by any actions.
%% Deleting a target group also deletes any associated health checks.
delete_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_target_group(Client, Input, []).
delete_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTargetGroup">>, Input, Options).

%% @doc Deregisters the specified targets from the specified target group.
%%
%% After the targets are deregistered, they no longer receive traffic from
%% the load balancer.
deregister_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_targets(Client, Input, []).
deregister_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTargets">>, Input, Options).

%% @doc Describes the current Elastic Load Balancing resource limits for your
%% AWS account.
%%
%% For more information, see Limits for Your Application Load Balancers in
%% the Application Load Balancer Guide or Limits for Your Network Load
%% Balancers in the Network Load Balancers Guide.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the default certificate and the certificate list for the
%% specified HTTPS or TLS listener.
%%
%% If the default certificate is also in the certificate list, it appears
%% twice in the results (once with `IsDefault` set to true and once with
%% `IsDefault` set to false).
%%
%% For more information, see SSL Certificates in the Application Load
%% Balancers Guide.
describe_listener_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listener_certificates(Client, Input, []).
describe_listener_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListenerCertificates">>, Input, Options).

%% @doc Describes the specified listeners or the listeners for the specified
%% Application Load Balancer or Network Load Balancer.
%%
%% You must specify either a load balancer or one or more listeners.
%%
%% For an HTTPS or TLS listener, the output includes the default certificate
%% for the listener. To describe the certificate list for the listener, use
%% `DescribeListenerCertificates`.
describe_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listeners(Client, Input, []).
describe_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListeners">>, Input, Options).

%% @doc Describes the attributes for the specified Application Load Balancer
%% or Network Load Balancer.
%%
%% For more information, see Load Balancer Attributes in the Application Load
%% Balancers Guide or Load Balancer Attributes in the Network Load Balancers
%% Guide.
describe_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_attributes(Client, Input, []).
describe_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerAttributes">>, Input, Options).

%% @doc Describes the specified load balancers or all of your load balancers.
%%
%% To describe the listeners for a load balancer, use `DescribeListeners`. To
%% describe the attributes for a load balancer, use
%% `DescribeLoadBalancerAttributes`.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the specified rules or the rules for the specified
%% listener.
%%
%% You must specify either a listener or one or more rules.
describe_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rules(Client, Input, []).
describe_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRules">>, Input, Options).

%% @doc Describes the specified policies or all policies used for SSL
%% negotiation.
%%
%% For more information, see Security Policies in the Application Load
%% Balancers Guide.
describe_s_s_l_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_s_s_l_policies(Client, Input, []).
describe_s_s_l_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSSLPolicies">>, Input, Options).

%% @doc Describes the tags for the specified Elastic Load Balancing
%% resources.
%%
%% You can describe the tags for one or more Application Load Balancers,
%% Network Load Balancers, target groups, listeners, or rules.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes the attributes for the specified target group.
%%
%% For more information, see Target Group Attributes in the Application Load
%% Balancers Guide or Target Group Attributes in the Network Load Balancers
%% Guide.
describe_target_group_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_target_group_attributes(Client, Input, []).
describe_target_group_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetGroupAttributes">>, Input, Options).

%% @doc Describes the specified target groups or all of your target groups.
%%
%% By default, all target groups are described. Alternatively, you can
%% specify one of the following to filter the results: the ARN of the load
%% balancer, the names of one or more target groups, or the ARNs of one or
%% more target groups.
%%
%% To describe the targets for a target group, use `DescribeTargetHealth`. To
%% describe the attributes of a target group, use
%% `DescribeTargetGroupAttributes`.
describe_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_target_groups(Client, Input, []).
describe_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetGroups">>, Input, Options).

%% @doc Describes the health of the specified targets or all of your targets.
describe_target_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_target_health(Client, Input, []).
describe_target_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetHealth">>, Input, Options).

%% @doc Replaces the specified properties of the specified listener.
%%
%% Any properties that you do not specify remain unchanged.
%%
%% Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the
%% security policy and default certificate properties. If you change the
%% protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security
%% policy and default certificate properties.
%%
%% To add an item to a list, remove an item from a list, or update an item in
%% a list, you must provide the entire list. For example, to add an action,
%% specify a list with the current actions plus the new action.
modify_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_listener(Client, Input, []).
modify_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyListener">>, Input, Options).

%% @doc Modifies the specified attributes of the specified Application Load
%% Balancer or Network Load Balancer.
%%
%% If any of the specified attributes can't be modified as requested, the
%% call fails. Any existing attributes that you do not modify retain their
%% current values.
modify_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_load_balancer_attributes(Client, Input, []).
modify_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLoadBalancerAttributes">>, Input, Options).

%% @doc Replaces the specified properties of the specified rule.
%%
%% Any properties that you do not specify are unchanged.
%%
%% To add an item to a list, remove an item from a list, or update an item in
%% a list, you must provide the entire list. For example, to add an action,
%% specify a list with the current actions plus the new action.
%%
%% To modify the actions for the default rule, use `ModifyListener`.
modify_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_rule(Client, Input, []).
modify_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyRule">>, Input, Options).

%% @doc Modifies the health checks used when evaluating the health state of
%% the targets in the specified target group.
%%
%% To monitor the health of the targets, use `DescribeTargetHealth`.
modify_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_target_group(Client, Input, []).
modify_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTargetGroup">>, Input, Options).

%% @doc Modifies the specified attributes of the specified target group.
modify_target_group_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_target_group_attributes(Client, Input, []).
modify_target_group_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTargetGroupAttributes">>, Input, Options).

%% @doc Registers the specified targets with the specified target group.
%%
%% If the target is an EC2 instance, it must be in the `running` state when
%% you register it.
%%
%% By default, the load balancer routes requests to registered targets using
%% the protocol and port for the target group. Alternatively, you can
%% override the port for a target when you register it. You can register each
%% EC2 instance or IP address with the same target group multiple times using
%% different ports.
%%
%% With a Network Load Balancer, you cannot register instances by instance ID
%% if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1,
%% CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of
%% these types by IP address.
%%
%% To remove a target from a target group, use `DeregisterTargets`.
register_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_targets(Client, Input, []).
register_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTargets">>, Input, Options).

%% @doc Removes the specified certificate from the certificate list for the
%% specified HTTPS or TLS listener.
%%
%% You can't remove the default certificate for a listener. To replace the
%% default certificate, call `ModifyListener`.
%%
%% To list the certificates for your listener, use
%% `DescribeListenerCertificates`.
remove_listener_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_listener_certificates(Client, Input, []).
remove_listener_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveListenerCertificates">>, Input, Options).

%% @doc Removes the specified tags from the specified Elastic Load Balancing
%% resources.
%%
%% You can remove the tags for one or more Application Load Balancers,
%% Network Load Balancers, target groups, listeners, or rules.
%%
%% To list the current tags for your resources, use `DescribeTags`.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Sets the type of IP addresses used by the subnets of the specified
%% Application Load Balancer or Network Load Balancer.
set_ip_address_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_ip_address_type(Client, Input, []).
set_ip_address_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIpAddressType">>, Input, Options).

%% @doc Sets the priorities of the specified rules.
%%
%% You can reorder the rules as long as there are no priority conflicts in
%% the new order. Any existing rules that you do not specify retain their
%% current priority.
set_rule_priorities(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_rule_priorities(Client, Input, []).
set_rule_priorities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRulePriorities">>, Input, Options).

%% @doc Associates the specified security groups with the specified
%% Application Load Balancer.
%%
%% The specified security groups override the previously associated security
%% groups.
%%
%% You can't specify a security group for a Network Load Balancer.
set_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_security_groups(Client, Input, []).
set_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSecurityGroups">>, Input, Options).

%% @doc Enables the Availability Zones for the specified public subnets for
%% the specified load balancer.
%%
%% The specified subnets replace the previously enabled subnets.
%%
%% When you specify subnets for a Network Load Balancer, you must include all
%% subnets that were enabled previously, with their existing configurations,
%% plus any additional subnets.
set_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_subnets(Client, Input, []).
set_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSubnets">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"elasticloadbalancing">>},
    Host = build_host(<<"elasticloadbalancing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2015-12-01">>
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
