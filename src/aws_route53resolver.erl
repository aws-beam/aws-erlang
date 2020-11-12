%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc When you create a VPC using Amazon VPC, you automatically get DNS
%% resolution within the VPC from Route 53 Resolver.
%%
%% By default, Resolver answers DNS queries for VPC domain names such as
%% domain names for EC2 instances or ELB load balancers. Resolver performs
%% recursive lookups against public name servers for all other domain names.
%%
%% You can also configure DNS resolution between your VPC and your network
%% over a Direct Connect or VPN connection:
%%
%% Forward DNS queries from resolvers on your network to Route 53 Resolver
%%
%% DNS resolvers on your network can forward DNS queries to Resolver in a
%% specified VPC. This allows your DNS resolvers to easily resolve domain
%% names for AWS resources such as EC2 instances or records in a Route 53
%% private hosted zone. For more information, see How DNS Resolvers on Your
%% Network Forward DNS Queries to Route 53 Resolver in the Amazon Route 53
%% Developer Guide.
%%
%% Conditionally forward queries from a VPC to resolvers on your network
%%
%% You can configure Resolver to forward queries that it receives from EC2
%% instances in your VPCs to DNS resolvers on your network. To forward
%% selected queries, you create Resolver rules that specify the domain names
%% for the DNS queries that you want to forward (such as example.com), and
%% the IP addresses of the DNS resolvers on your network that you want to
%% forward the queries to. If a query matches multiple rules (example.com,
%% acme.example.com), Resolver chooses the rule with the most specific match
%% (acme.example.com) and forwards the query to the IP addresses that you
%% specified in that rule. For more information, see How Route 53 Resolver
%% Forwards DNS Queries from Your VPCs to Your Network in the Amazon Route 53
%% Developer Guide.
%%
%% Like Amazon VPC, Resolver is regional. In each region where you have VPCs,
%% you can choose whether to forward queries from your VPCs to your network
%% (outbound queries), from your network to your VPCs (inbound queries), or
%% both.
-module(aws_route53resolver).

-export([associate_resolver_endpoint_ip_address/2,
         associate_resolver_endpoint_ip_address/3,
         associate_resolver_query_log_config/2,
         associate_resolver_query_log_config/3,
         associate_resolver_rule/2,
         associate_resolver_rule/3,
         create_resolver_endpoint/2,
         create_resolver_endpoint/3,
         create_resolver_query_log_config/2,
         create_resolver_query_log_config/3,
         create_resolver_rule/2,
         create_resolver_rule/3,
         delete_resolver_endpoint/2,
         delete_resolver_endpoint/3,
         delete_resolver_query_log_config/2,
         delete_resolver_query_log_config/3,
         delete_resolver_rule/2,
         delete_resolver_rule/3,
         disassociate_resolver_endpoint_ip_address/2,
         disassociate_resolver_endpoint_ip_address/3,
         disassociate_resolver_query_log_config/2,
         disassociate_resolver_query_log_config/3,
         disassociate_resolver_rule/2,
         disassociate_resolver_rule/3,
         get_resolver_endpoint/2,
         get_resolver_endpoint/3,
         get_resolver_query_log_config/2,
         get_resolver_query_log_config/3,
         get_resolver_query_log_config_association/2,
         get_resolver_query_log_config_association/3,
         get_resolver_query_log_config_policy/2,
         get_resolver_query_log_config_policy/3,
         get_resolver_rule/2,
         get_resolver_rule/3,
         get_resolver_rule_association/2,
         get_resolver_rule_association/3,
         get_resolver_rule_policy/2,
         get_resolver_rule_policy/3,
         list_resolver_endpoint_ip_addresses/2,
         list_resolver_endpoint_ip_addresses/3,
         list_resolver_endpoints/2,
         list_resolver_endpoints/3,
         list_resolver_query_log_config_associations/2,
         list_resolver_query_log_config_associations/3,
         list_resolver_query_log_configs/2,
         list_resolver_query_log_configs/3,
         list_resolver_rule_associations/2,
         list_resolver_rule_associations/3,
         list_resolver_rules/2,
         list_resolver_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_resolver_query_log_config_policy/2,
         put_resolver_query_log_config_policy/3,
         put_resolver_rule_policy/2,
         put_resolver_rule_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_resolver_endpoint/2,
         update_resolver_endpoint/3,
         update_resolver_rule/2,
         update_resolver_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds IP addresses to an inbound or an outbound Resolver endpoint.
%%
%% If you want to add more than one IP address, submit one
%% `AssociateResolverEndpointIpAddress' request for each IP address.
%%
%% To remove an IP address from an endpoint, see
%% DisassociateResolverEndpointIpAddress.
associate_resolver_endpoint_ip_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_endpoint_ip_address(Client, Input, []).
associate_resolver_endpoint_ip_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverEndpointIpAddress">>, Input, Options).

%% @doc Associates an Amazon VPC with a specified query logging
%% configuration.
%%
%% Route 53 Resolver logs DNS queries that originate in all of the Amazon
%% VPCs that are associated with a specified query logging configuration. To
%% associate more than one VPC with a configuration, submit one
%% `AssociateResolverQueryLogConfig' request for each VPC.
%%
%% The VPCs that you associate with a query logging configuration must be in
%% the same Region as the configuration.
%%
%% To remove a VPC from a query logging configuration, see
%% DisassociateResolverQueryLogConfig.
associate_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_query_log_config(Client, Input, []).
associate_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverQueryLogConfig">>, Input, Options).

%% @doc Associates a Resolver rule with a VPC.
%%
%% When you associate a rule with a VPC, Resolver forwards all DNS queries
%% for the domain name that is specified in the rule and that originate in
%% the VPC. The queries are forwarded to the IP addresses for the DNS
%% resolvers that are specified in the rule. For more information about
%% rules, see CreateResolverRule.
associate_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_rule(Client, Input, []).
associate_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverRule">>, Input, Options).

%% @doc Creates a Resolver endpoint.
%%
%% There are two types of Resolver endpoints, inbound and outbound:
%%
%% <ul> <li> An inbound Resolver endpoint forwards DNS queries to the DNS
%% service for a VPC from your network.
%%
%% </li> <li> An outbound Resolver endpoint forwards DNS queries from the DNS
%% service for a VPC to your network.
%%
%% </li> </ul>
create_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_endpoint(Client, Input, []).
create_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverEndpoint">>, Input, Options).

%% @doc Creates a Resolver query logging configuration, which defines where
%% you want Resolver to save DNS query logs that originate in your VPCs.
%%
%% Resolver can log queries only for VPCs that are in the same Region as the
%% query logging configuration.
%%
%% To specify which VPCs you want to log queries for, you use
%% `AssociateResolverQueryLogConfig'. For more information, see
%% AssociateResolverQueryLogConfig.
%%
%% You can optionally use AWS Resource Access Manager (AWS RAM) to share a
%% query logging configuration with other AWS accounts. The other accounts
%% can then associate VPCs with the configuration. The query logs that
%% Resolver creates for a configuration include all DNS queries that
%% originate in all VPCs that are associated with the configuration.
create_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_query_log_config(Client, Input, []).
create_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverQueryLogConfig">>, Input, Options).

%% @doc For DNS queries that originate in your VPCs, specifies which Resolver
%% endpoint the queries pass through, one domain name that you want to
%% forward to your network, and the IP addresses of the DNS resolvers in your
%% network.
create_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_rule(Client, Input, []).
create_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverRule">>, Input, Options).

%% @doc Deletes a Resolver endpoint.
%%
%% The effect of deleting a Resolver endpoint depends on whether it's an
%% inbound or an outbound Resolver endpoint:
%%
%% <ul> <li> Inbound: DNS queries from your network are no longer routed to
%% the DNS service for the specified VPC.
%%
%% </li> <li> Outbound: DNS queries from a VPC are no longer routed to your
%% network.
%%
%% </li> </ul>
delete_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_endpoint(Client, Input, []).
delete_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverEndpoint">>, Input, Options).

%% @doc Deletes a query logging configuration.
%%
%% When you delete a configuration, Resolver stops logging DNS queries for
%% all of the Amazon VPCs that are associated with the configuration. This
%% also applies if the query logging configuration is shared with other AWS
%% accounts, and the other accounts have associated VPCs with the shared
%% configuration.
%%
%% Before you can delete a query logging configuration, you must first
%% disassociate all VPCs from the configuration. See
%% DisassociateResolverQueryLogConfig.
%%
%% If you used Resource Access Manager (RAM) to share a query logging
%% configuration with other accounts, you must stop sharing the configuration
%% before you can delete a configuration. The accounts that you shared the
%% configuration with can first disassociate VPCs that they associated with
%% the configuration, but that's not necessary. If you stop sharing the
%% configuration, those VPCs are automatically disassociated from the
%% configuration.
delete_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_query_log_config(Client, Input, []).
delete_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverQueryLogConfig">>, Input, Options).

%% @doc Deletes a Resolver rule.
%%
%% Before you can delete a Resolver rule, you must disassociate it from all
%% the VPCs that you associated the Resolver rule with. For more information,
%% see DisassociateResolverRule.
delete_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_rule(Client, Input, []).
delete_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverRule">>, Input, Options).

%% @doc Removes IP addresses from an inbound or an outbound Resolver
%% endpoint.
%%
%% If you want to remove more than one IP address, submit one
%% `DisassociateResolverEndpointIpAddress' request for each IP address.
%%
%% To add an IP address to an endpoint, see
%% AssociateResolverEndpointIpAddress.
disassociate_resolver_endpoint_ip_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_endpoint_ip_address(Client, Input, []).
disassociate_resolver_endpoint_ip_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverEndpointIpAddress">>, Input, Options).

%% @doc Disassociates a VPC from a query logging configuration.
%%
%% Before you can delete a query logging configuration, you must first
%% disassociate all VPCs from the configuration. If you used Resource Access
%% Manager (RAM) to share a query logging configuration with other accounts,
%% VPCs can be disassociated from the configuration in the following ways:
%%
%% The accounts that you shared the configuration with can disassociate VPCs
%% from the configuration.
%%
%% You can stop sharing the configuration.
disassociate_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_query_log_config(Client, Input, []).
disassociate_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverQueryLogConfig">>, Input, Options).

%% @doc Removes the association between a specified Resolver rule and a
%% specified VPC.
%%
%% If you disassociate a Resolver rule from a VPC, Resolver stops forwarding
%% DNS queries for the domain name that you specified in the Resolver rule.
disassociate_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_rule(Client, Input, []).
disassociate_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverRule">>, Input, Options).

%% @doc Gets information about a specified Resolver endpoint, such as whether
%% it's an inbound or an outbound Resolver endpoint, and the current status
%% of the endpoint.
get_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_endpoint(Client, Input, []).
get_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverEndpoint">>, Input, Options).

%% @doc Gets information about a specified Resolver query logging
%% configuration, such as the number of VPCs that the configuration is
%% logging queries for and the location that logs are sent to.
get_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_query_log_config(Client, Input, []).
get_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverQueryLogConfig">>, Input, Options).

%% @doc Gets information about a specified association between a Resolver
%% query logging configuration and an Amazon VPC.
%%
%% When you associate a VPC with a query logging configuration, Resolver logs
%% DNS queries that originate in that VPC.
get_resolver_query_log_config_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_query_log_config_association(Client, Input, []).
get_resolver_query_log_config_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverQueryLogConfigAssociation">>, Input, Options).

%% @doc Gets information about a query logging policy.
%%
%% A query logging policy specifies the Resolver query logging operations and
%% resources that you want to allow another AWS account to be able to use.
get_resolver_query_log_config_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_query_log_config_policy(Client, Input, []).
get_resolver_query_log_config_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverQueryLogConfigPolicy">>, Input, Options).

%% @doc Gets information about a specified Resolver rule, such as the domain
%% name that the rule forwards DNS queries for and the ID of the outbound
%% Resolver endpoint that the rule is associated with.
get_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule(Client, Input, []).
get_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRule">>, Input, Options).

%% @doc Gets information about an association between a specified Resolver
%% rule and a VPC.
%%
%% You associate a Resolver rule and a VPC using AssociateResolverRule.
get_resolver_rule_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule_association(Client, Input, []).
get_resolver_rule_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRuleAssociation">>, Input, Options).

%% @doc Gets information about a Resolver rule policy.
%%
%% A Resolver rule policy specifies the Resolver operations and resources
%% that you want to allow another AWS account to be able to use.
get_resolver_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule_policy(Client, Input, []).
get_resolver_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRulePolicy">>, Input, Options).

%% @doc Gets the IP addresses for a specified Resolver endpoint.
list_resolver_endpoint_ip_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_endpoint_ip_addresses(Client, Input, []).
list_resolver_endpoint_ip_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverEndpointIpAddresses">>, Input, Options).

%% @doc Lists all the Resolver endpoints that were created using the current
%% AWS account.
list_resolver_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_endpoints(Client, Input, []).
list_resolver_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverEndpoints">>, Input, Options).

%% @doc Lists information about associations between Amazon VPCs and query
%% logging configurations.
list_resolver_query_log_config_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_query_log_config_associations(Client, Input, []).
list_resolver_query_log_config_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverQueryLogConfigAssociations">>, Input, Options).

%% @doc Lists information about the specified query logging configurations.
%%
%% Each configuration defines where you want Resolver to save DNS query logs
%% and specifies the VPCs that you want to log queries for.
list_resolver_query_log_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_query_log_configs(Client, Input, []).
list_resolver_query_log_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverQueryLogConfigs">>, Input, Options).

%% @doc Lists the associations that were created between Resolver rules and
%% VPCs using the current AWS account.
list_resolver_rule_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_rule_associations(Client, Input, []).
list_resolver_rule_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverRuleAssociations">>, Input, Options).

%% @doc Lists the Resolver rules that were created using the current AWS
%% account.
list_resolver_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_rules(Client, Input, []).
list_resolver_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverRules">>, Input, Options).

%% @doc Lists the tags that you associated with the specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Specifies an AWS account that you want to share a query logging
%% configuration with, the query logging configuration that you want to
%% share, and the operations that you want the account to be able to perform
%% on the configuration.
put_resolver_query_log_config_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resolver_query_log_config_policy(Client, Input, []).
put_resolver_query_log_config_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResolverQueryLogConfigPolicy">>, Input, Options).

%% @doc Specifies an AWS account that you want to share rules with, the
%% Resolver rules that you want to share, and the operations that you want
%% the account to be able to perform on those rules.
put_resolver_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resolver_rule_policy(Client, Input, []).
put_resolver_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResolverRulePolicy">>, Input, Options).

%% @doc Adds one or more tags to a specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from a specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the name of an inbound or an outbound Resolver endpoint.
update_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_endpoint(Client, Input, []).
update_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverEndpoint">>, Input, Options).

%% @doc Updates settings for a specified Resolver rule.
%%
%% `ResolverRuleId' is required, and all other parameters are optional. If
%% you don't specify a parameter, it retains its current value.
update_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_rule(Client, Input, []).
update_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverRule">>, Input, Options).

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
    Client1 = Client#{service => <<"route53resolver">>},
    Host = build_host(<<"route53resolver">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Route53Resolver.", Action/binary>>}
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
