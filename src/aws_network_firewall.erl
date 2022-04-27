%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the API Reference for Network Firewall.
%%
%% This guide is for developers who need detailed information about the
%% Network Firewall API actions, data types, and errors.
%%
%% <ul> <li> The REST API requires you to handle connection details, such as
%% calculating signatures, handling request retries, and error handling. For
%% general information about using the Amazon Web Services REST APIs, see
%% Amazon Web Services APIs.
%%
%% To access Network Firewall using the REST API endpoint:
%% `https://network-firewall.<region>.amazonaws.com '
%%
%% </li> <li> Alternatively, you can use one of the Amazon Web Services SDKs
%% to access an API that's tailored to the programming language or platform
%% that you're using. For more information, see Amazon Web Services SDKs.
%%
%% </li> <li> For descriptions of Network Firewall features, including and
%% step-by-step instructions on how to use them through the Network Firewall
%% console, see the Network Firewall Developer Guide.
%%
%% </li> </ul> Network Firewall is a stateful, managed, network firewall and
%% intrusion detection and prevention service for Amazon Virtual Private
%% Cloud (Amazon VPC). With Network Firewall, you can filter traffic at the
%% perimeter of your VPC. This includes filtering traffic going to and coming
%% from an internet gateway, NAT gateway, or over VPN or Direct Connect.
%% Network Firewall uses rules that are compatible with Suricata, a free,
%% open source intrusion detection system (IDS) engine. Network Firewall
%% supports Suricata version 5.0.2. For information about Suricata, see the
%% Suricata website.
%%
%% You can use Network Firewall to monitor and protect your VPC traffic in a
%% number of ways. The following are just a few examples:
%%
%% <ul> <li> Allow domains or IP addresses for known Amazon Web Services
%% service endpoints, such as Amazon S3, and block all other forms of
%% traffic.
%%
%% </li> <li> Use custom lists of known bad domains to limit the types of
%% domain names that your applications can access.
%%
%% </li> <li> Perform deep packet inspection on traffic entering or leaving
%% your VPC.
%%
%% </li> <li> Use stateful protocol detection to filter protocols like HTTPS,
%% regardless of the port used.
%%
%% </li> </ul> To enable Network Firewall for your VPCs, you perform steps in
%% both Amazon VPC and in Network Firewall. For information about using
%% Amazon VPC, see Amazon VPC User Guide.
%%
%% To start using Network Firewall, do the following:
%%
%% <ol> <li> (Optional) If you don't already have a VPC that you want to
%% protect, create it in Amazon VPC.
%%
%% </li> <li> In Amazon VPC, in each Availability Zone where you want to have
%% a firewall endpoint, create a subnet for the sole use of Network Firewall.
%%
%% </li> <li> In Network Firewall, create stateless and stateful rule groups,
%% to define the components of the network traffic filtering behavior that
%% you want your firewall to have.
%%
%% </li> <li> In Network Firewall, create a firewall policy that uses your
%% rule groups and specifies additional default traffic filtering behavior.
%%
%% </li> <li> In Network Firewall, create a firewall and specify your new
%% firewall policy and VPC subnets. Network Firewall creates a firewall
%% endpoint in each subnet that you specify, with the behavior that's defined
%% in the firewall policy.
%%
%% </li> <li> In Amazon VPC, use ingress routing enhancements to route
%% traffic through the new firewall endpoints.
%%
%% </li> </ol>
-module(aws_network_firewall).

-export([associate_firewall_policy/2,
         associate_firewall_policy/3,
         associate_subnets/2,
         associate_subnets/3,
         create_firewall/2,
         create_firewall/3,
         create_firewall_policy/2,
         create_firewall_policy/3,
         create_rule_group/2,
         create_rule_group/3,
         delete_firewall/2,
         delete_firewall/3,
         delete_firewall_policy/2,
         delete_firewall_policy/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_rule_group/2,
         delete_rule_group/3,
         describe_firewall/2,
         describe_firewall/3,
         describe_firewall_policy/2,
         describe_firewall_policy/3,
         describe_logging_configuration/2,
         describe_logging_configuration/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         describe_rule_group/2,
         describe_rule_group/3,
         describe_rule_group_metadata/2,
         describe_rule_group_metadata/3,
         disassociate_subnets/2,
         disassociate_subnets/3,
         list_firewall_policies/2,
         list_firewall_policies/3,
         list_firewalls/2,
         list_firewalls/3,
         list_rule_groups/2,
         list_rule_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_resource_policy/2,
         put_resource_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_firewall_delete_protection/2,
         update_firewall_delete_protection/3,
         update_firewall_description/2,
         update_firewall_description/3,
         update_firewall_encryption_configuration/2,
         update_firewall_encryption_configuration/3,
         update_firewall_policy/2,
         update_firewall_policy/3,
         update_firewall_policy_change_protection/2,
         update_firewall_policy_change_protection/3,
         update_logging_configuration/2,
         update_logging_configuration/3,
         update_rule_group/2,
         update_rule_group/3,
         update_subnet_change_protection/2,
         update_subnet_change_protection/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a `FirewallPolicy' to a `Firewall'.
%%
%% A firewall policy defines how to monitor and manage your VPC network
%% traffic, using a collection of inspection rule groups and other settings.
%% Each firewall requires one firewall policy association, and you can use
%% the same firewall policy for multiple firewalls.
associate_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_firewall_policy(Client, Input, []).
associate_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFirewallPolicy">>, Input, Options).

%% @doc Associates the specified subnets in the Amazon VPC to the firewall.
%%
%% You can specify one subnet for each of the Availability Zones that the VPC
%% spans.
%%
%% This request creates an Network Firewall firewall endpoint in each of the
%% subnets. To enable the firewall's protections, you must also modify the
%% VPC's route tables for each subnet's Availability Zone, to redirect the
%% traffic that's coming into and going out of the zone through the firewall
%% endpoint.
associate_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_subnets(Client, Input, []).
associate_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSubnets">>, Input, Options).

%% @doc Creates an Network Firewall `Firewall' and accompanying
%% `FirewallStatus' for a VPC.
%%
%% The firewall defines the configuration settings for an Network Firewall
%% firewall. The settings that you can define at creation include the
%% firewall policy, the subnets in your VPC to use for the firewall
%% endpoints, and any tags that are attached to the firewall Amazon Web
%% Services resource.
%%
%% After you create a firewall, you can provide additional settings, like the
%% logging configuration.
%%
%% To update the settings for a firewall, you use the operations that apply
%% to the settings themselves, for example `UpdateLoggingConfiguration',
%% `AssociateSubnets', and `UpdateFirewallDeleteProtection'.
%%
%% To manage a firewall's tags, use the standard Amazon Web Services resource
%% tagging operations, `ListTagsForResource', `TagResource', and
%% `UntagResource'.
%%
%% To retrieve information about firewalls, use `ListFirewalls' and
%% `DescribeFirewall'.
create_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall(Client, Input, []).
create_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewall">>, Input, Options).

%% @doc Creates the firewall policy for the firewall according to the
%% specifications.
%%
%% An Network Firewall firewall policy defines the behavior of a firewall, in
%% a collection of stateless and stateful rule groups and other settings. You
%% can use one firewall policy for multiple firewalls.
create_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall_policy(Client, Input, []).
create_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewallPolicy">>, Input, Options).

%% @doc Creates the specified stateless or stateful rule group, which
%% includes the rules for network traffic inspection, a capacity setting, and
%% tags.
%%
%% You provide your rule group specification in your request using either
%% `RuleGroup' or `Rules'.
create_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_group(Client, Input, []).
create_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleGroup">>, Input, Options).

%% @doc Deletes the specified `Firewall' and its `FirewallStatus'.
%%
%% This operation requires the firewall's `DeleteProtection' flag to be
%% `FALSE'. You can't revert this operation.
%%
%% You can check whether a firewall is in use by reviewing the route tables
%% for the Availability Zones where you have firewall subnet mappings.
%% Retrieve the subnet mappings by calling `DescribeFirewall'. You define and
%% update the route tables through Amazon VPC. As needed, update the route
%% tables for the zones to remove the firewall endpoints. When the route
%% tables no longer use the firewall endpoints, you can remove the firewall
%% safely.
%%
%% To delete a firewall, remove the delete protection if you need to using
%% `UpdateFirewallDeleteProtection', then delete the firewall by calling
%% `DeleteFirewall'.
delete_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall(Client, Input, []).
delete_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewall">>, Input, Options).

%% @doc Deletes the specified `FirewallPolicy'.
delete_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_policy(Client, Input, []).
delete_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallPolicy">>, Input, Options).

%% @doc Deletes a resource policy that you created in a `PutResourcePolicy'
%% request.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes the specified `RuleGroup'.
delete_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_group(Client, Input, []).
delete_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleGroup">>, Input, Options).

%% @doc Returns the data objects for the specified firewall.
describe_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_firewall(Client, Input, []).
describe_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFirewall">>, Input, Options).

%% @doc Returns the data objects for the specified firewall policy.
describe_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_firewall_policy(Client, Input, []).
describe_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFirewallPolicy">>, Input, Options).

%% @doc Returns the logging configuration for the specified firewall.
describe_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_logging_configuration(Client, Input, []).
describe_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoggingConfiguration">>, Input, Options).

%% @doc Retrieves a resource policy that you created in a `PutResourcePolicy'
%% request.
describe_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policy(Client, Input, []).
describe_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicy">>, Input, Options).

%% @doc Returns the data objects for the specified rule group.
describe_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule_group(Client, Input, []).
describe_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRuleGroup">>, Input, Options).

%% @doc High-level information about a rule group, returned by operations
%% like create and describe.
%%
%% You can use the information provided in the metadata to retrieve and
%% manage a rule group. You can retrieve all objects for a rule group by
%% calling `DescribeRuleGroup'.
describe_rule_group_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule_group_metadata(Client, Input, []).
describe_rule_group_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRuleGroupMetadata">>, Input, Options).

%% @doc Removes the specified subnet associations from the firewall.
%%
%% This removes the firewall endpoints from the subnets and removes any
%% network filtering protections that the endpoints were providing.
disassociate_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_subnets(Client, Input, []).
disassociate_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSubnets">>, Input, Options).

%% @doc Retrieves the metadata for the firewall policies that you have
%% defined.
%%
%% Depending on your setting for max results and the number of firewall
%% policies, a single call might not return the full list.
list_firewall_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_policies(Client, Input, []).
list_firewall_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallPolicies">>, Input, Options).

%% @doc Retrieves the metadata for the firewalls that you have defined.
%%
%% If you provide VPC identifiers in your request, this returns only the
%% firewalls for those VPCs.
%%
%% Depending on your setting for max results and the number of firewalls, a
%% single call might not return the full list.
list_firewalls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewalls(Client, Input, []).
list_firewalls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewalls">>, Input, Options).

%% @doc Retrieves the metadata for the rule groups that you have defined.
%%
%% Depending on your setting for max results and the number of rule groups, a
%% single call might not return the full list.
list_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_groups(Client, Input, []).
list_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleGroups">>, Input, Options).

%% @doc Retrieves the tags associated with the specified resource.
%%
%% Tags are key:value pairs that you can use to categorize and manage your
%% resources, for purposes like billing. For example, you might set the tag
%% key to "customer" and the value to the customer name or ID. You can
%% specify one or more tags to add to each Amazon Web Services resource, up
%% to 50 tags for a resource.
%%
%% You can tag the Amazon Web Services resources that you manage through
%% Network Firewall: firewalls, firewall policies, and rule groups.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates an IAM policy for your rule group or firewall
%% policy.
%%
%% Use this to share rule groups and firewall policies between accounts. This
%% operation works in conjunction with the Amazon Web Services Resource
%% Access Manager (RAM) service to manage resource sharing for Network
%% Firewall.
%%
%% Use this operation to create or update a resource policy for your rule
%% group or firewall policy. In the policy, you specify the accounts that you
%% want to share the resource with and the operations that you want the
%% accounts to be able to perform.
%%
%% When you add an account in the resource policy, you then run the following
%% Resource Access Manager (RAM) operations to access and accept the shared
%% rule group or firewall policy.
%%
%% <ul> <li> GetResourceShareInvitations - Returns the Amazon Resource Names
%% (ARNs) of the resource share invitations.
%%
%% </li> <li> AcceptResourceShareInvitation - Accepts the share invitation
%% for a specified resource share.
%%
%% </li> </ul> For additional information about resource sharing using RAM,
%% see Resource Access Manager User Guide.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Adds the specified tags to the specified resource.
%%
%% Tags are key:value pairs that you can use to categorize and manage your
%% resources, for purposes like billing. For example, you might set the tag
%% key to "customer" and the value to the customer name or ID. You can
%% specify one or more tags to add to each Amazon Web Services resource, up
%% to 50 tags for a resource.
%%
%% You can tag the Amazon Web Services resources that you manage through
%% Network Firewall: firewalls, firewall policies, and rule groups.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the tags with the specified keys from the specified resource.
%%
%% Tags are key:value pairs that you can use to categorize and manage your
%% resources, for purposes like billing. For example, you might set the tag
%% key to "customer" and the value to the customer name or ID. You can
%% specify one or more tags to add to each Amazon Web Services resource, up
%% to 50 tags for a resource.
%%
%% You can manage tags for the Amazon Web Services resources that you manage
%% through Network Firewall: firewalls, firewall policies, and rule groups.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the flag, `DeleteProtection', which indicates whether it is
%% possible to delete the firewall.
%%
%% If the flag is set to `TRUE', the firewall is protected against deletion.
%% This setting helps protect against accidentally deleting a firewall that's
%% in use.
update_firewall_delete_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_delete_protection(Client, Input, []).
update_firewall_delete_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallDeleteProtection">>, Input, Options).

%% @doc Modifies the description for the specified firewall.
%%
%% Use the description to help you identify the firewall when you're working
%% with it.
update_firewall_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_description(Client, Input, []).
update_firewall_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallDescription">>, Input, Options).

%% @doc A complex type that contains settings for encryption of your firewall
%% resources.
update_firewall_encryption_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_encryption_configuration(Client, Input, []).
update_firewall_encryption_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallEncryptionConfiguration">>, Input, Options).

%% @doc Updates the properties of the specified firewall policy.
update_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_policy(Client, Input, []).
update_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallPolicy">>, Input, Options).

%% @doc Modifies the flag, `ChangeProtection', which indicates whether it is
%% possible to change the firewall.
%%
%% If the flag is set to `TRUE', the firewall is protected from changes. This
%% setting helps protect against accidentally changing a firewall that's in
%% use.
update_firewall_policy_change_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_policy_change_protection(Client, Input, []).
update_firewall_policy_change_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallPolicyChangeProtection">>, Input, Options).

%% @doc Sets the logging configuration for the specified firewall.
%%
%% To change the logging configuration, retrieve the `LoggingConfiguration'
%% by calling `DescribeLoggingConfiguration', then change it and provide the
%% modified object to this update call. You must change the logging
%% configuration one `LogDestinationConfig' at a time inside the retrieved
%% `LoggingConfiguration' object.
%%
%% You can perform only one of the following actions in any call to
%% `UpdateLoggingConfiguration':
%%
%% <ul> <li> Create a new log destination object by adding a single
%% `LogDestinationConfig' array element to `LogDestinationConfigs'.
%%
%% </li> <li> Delete a log destination object by removing a single
%% `LogDestinationConfig' array element from `LogDestinationConfigs'.
%%
%% </li> <li> Change the `LogDestination' setting in a single
%% `LogDestinationConfig' array element.
%%
%% </li> </ul> You can't change the `LogDestinationType' or `LogType' in a
%% `LogDestinationConfig'. To change these settings, delete the existing
%% `LogDestinationConfig' object and create a new one, using two separate
%% calls to this update operation.
update_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_logging_configuration(Client, Input, []).
update_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLoggingConfiguration">>, Input, Options).

%% @doc Updates the rule settings for the specified rule group.
%%
%% You use a rule group by reference in one or more firewall policies. When
%% you modify a rule group, you modify all firewall policies that use the
%% rule group.
%%
%% To update a rule group, first call `DescribeRuleGroup' to retrieve the
%% current `RuleGroup' object, update the object as needed, and then provide
%% the updated object to this call.
update_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_group(Client, Input, []).
update_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleGroup">>, Input, Options).

%% @doc
update_subnet_change_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subnet_change_protection(Client, Input, []).
update_subnet_change_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubnetChangeProtection">>, Input, Options).

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
    Client1 = Client#{service => <<"network-firewall">>},
    Host = build_host(<<"network-firewall">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"NetworkFirewall_20201112.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
