%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Here's how you set up to query an Amazon Route 53 private hosted zone
%% from your network:
%%
%% <ol> <li> Connect your network to a VPC using AWS Direct Connect or a VPN.
%%
%% </li> <li> Run the following AWS CLI command to create a Resolver
%% endpoint:
%%
%% <code>create-resolver-endpoint --name [endpoint_name] --direction INBOUND
%% --creator-request-id [unique_string] --security-group-ids
%% [security_group_with_inbound_rules] --ip-addresses SubnetId=[subnet_id]
%% SubnetId=[subnet_id_in_different_AZ]</code>
%%
%% Note the resolver endpoint ID that appears in the response. You'll use it
%% in step 3.
%%
%% </li> <li> Get the IP addresses for the Resolver endpoints:
%%
%% <code>get-resolver-endpoint --resolver-endpoint-id
%% [resolver_endpoint_id]</code>
%%
%% </li> <li> In your network configuration, define the IP addresses that you
%% got in step 3 as DNS servers.
%%
%% You can now query instance names in your VPCs and the names of records in
%% your private hosted zone.
%%
%% </li> </ol> You can also perform the following operations using the AWS
%% CLI:
%%
%% <ul> <li> <code>list-resolver-endpoints</code>: List all endpoints. The
%% syntax includes options for pagination and filtering.
%%
%% </li> <li> <code>update-resolver-endpoints</code>: Add IP addresses to an
%% endpoint or remove IP addresses from an endpoint.
%%
%% </li> </ul> To delete an endpoint, use the following AWS CLI command:
%%
%% <code>delete-resolver-endpoint --resolver-endpoint-id
%% [resolver_endpoint_id]</code>
-module(aws_route53resolver).

-export([associate_resolver_endpoint_ip_address/2,
         associate_resolver_endpoint_ip_address/3,
         associate_resolver_rule/2,
         associate_resolver_rule/3,
         create_resolver_endpoint/2,
         create_resolver_endpoint/3,
         create_resolver_rule/2,
         create_resolver_rule/3,
         delete_resolver_endpoint/2,
         delete_resolver_endpoint/3,
         delete_resolver_rule/2,
         delete_resolver_rule/3,
         disassociate_resolver_endpoint_ip_address/2,
         disassociate_resolver_endpoint_ip_address/3,
         disassociate_resolver_rule/2,
         disassociate_resolver_rule/3,
         get_resolver_endpoint/2,
         get_resolver_endpoint/3,
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
         list_resolver_rule_associations/2,
         list_resolver_rule_associations/3,
         list_resolver_rules/2,
         list_resolver_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
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

%% @doc Adds IP addresses to an inbound or an outbound resolver endpoint. If
%% you want to adding more than one IP address, submit one
%% <code>AssociateResolverEndpointIpAddress</code> request for each IP
%% address.
%%
%% To remove an IP address from an endpoint, see
%% <a>DisassociateResolverEndpointIpAddress</a>.
associate_resolver_endpoint_ip_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_endpoint_ip_address(Client, Input, []).
associate_resolver_endpoint_ip_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverEndpointIpAddress">>, Input, Options).

%% @doc Associates a resolver rule with a VPC. When you associate a rule with
%% a VPC, Resolver forwards all DNS queries for the domain name that is
%% specified in the rule and that originate in the VPC. The queries are
%% forwarded to the IP addresses for the DNS resolvers that are specified in
%% the rule. For more information about rules, see <a>CreateResolverRule</a>.
associate_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_rule(Client, Input, []).
associate_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverRule">>, Input, Options).

%% @doc Creates a resolver endpoint. There are two types of resolver
%% endpoints, inbound and outbound:
%%
%% <ul> <li> An <i>inbound resolver endpoint</i> forwards DNS queries to the
%% DNS service for a VPC from your network or another VPC.
%%
%% </li> <li> An <i>outbound resolver endpoint</i> forwards DNS queries from
%% the DNS service for a VPC to your network or another VPC.
%%
%% </li> </ul>
create_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_endpoint(Client, Input, []).
create_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverEndpoint">>, Input, Options).

%% @doc For DNS queries that originate in your VPCs, specifies which resolver
%% endpoint the queries pass through, one domain name that you want to
%% forward to your network, and the IP addresses of the DNS resolvers in your
%% network.
create_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_rule(Client, Input, []).
create_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverRule">>, Input, Options).

%% @doc Deletes a resolver endpoint. The effect of deleting a resolver
%% endpoint depends on whether it's an inbound or an outbound resolver
%% endpoint:
%%
%% <ul> <li> <b>Inbound</b>: DNS queries from your network or another VPC are
%% no longer routed to the DNS service for the specified VPC.
%%
%% </li> <li> <b>Outbound</b>: DNS queries from a VPC are no longer routed to
%% your network or to another VPC.
%%
%% </li> </ul>
delete_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_endpoint(Client, Input, []).
delete_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverEndpoint">>, Input, Options).

%% @doc Deletes a resolver rule. Before you can delete a resolver rule, you
%% must disassociate it from all the VPCs that you associated the resolver
%% rule with. For more infomation, see <a>DisassociateResolverRule</a>.
delete_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_rule(Client, Input, []).
delete_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverRule">>, Input, Options).

%% @doc Removes IP addresses from an inbound or an outbound resolver
%% endpoint. If you want to remove more than one IP address, submit one
%% <code>DisassociateResolverEndpointIpAddress</code> request for each IP
%% address.
%%
%% To add an IP address to an endpoint, see
%% <a>AssociateResolverEndpointIpAddress</a>.
disassociate_resolver_endpoint_ip_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_endpoint_ip_address(Client, Input, []).
disassociate_resolver_endpoint_ip_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverEndpointIpAddress">>, Input, Options).

%% @doc Removes the association between a specified resolver rule and a
%% specified VPC.
%%
%% <important> If you disassociate a resolver rule from a VPC, Resolver stops
%% forwarding DNS queries for the domain name that you specified in the
%% resolver rule.
%%
%% </important>
disassociate_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_rule(Client, Input, []).
disassociate_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverRule">>, Input, Options).

%% @doc Gets information about a specified resolver endpoint, such as whether
%% it's an inbound or an outbound resolver endpoint, and the current status
%% of the endpoint.
get_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_endpoint(Client, Input, []).
get_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverEndpoint">>, Input, Options).

%% @doc Gets information about a specified resolver rule, such as the domain
%% name that the rule forwards DNS queries for and the ID of the outbound
%% resolver endpoint that the rule is associated with.
get_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule(Client, Input, []).
get_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRule">>, Input, Options).

%% @doc Gets information about an association between a specified resolver
%% rule and a VPC. You associate a resolver rule and a VPC using
%% <a>AssociateResolverRule</a>.
get_resolver_rule_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule_association(Client, Input, []).
get_resolver_rule_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRuleAssociation">>, Input, Options).

%% @doc Gets information about a resolver rule policy. A resolver rule policy
%% specifies the Resolver operations and resources that you want to allow
%% another AWS account to be able to use.
get_resolver_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule_policy(Client, Input, []).
get_resolver_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRulePolicy">>, Input, Options).

%% @doc Gets the IP addresses for a specified resolver endpoint.
list_resolver_endpoint_ip_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_endpoint_ip_addresses(Client, Input, []).
list_resolver_endpoint_ip_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverEndpointIpAddresses">>, Input, Options).

%% @doc Lists all the resolver endpoints that were created using the current
%% AWS account.
list_resolver_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_endpoints(Client, Input, []).
list_resolver_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverEndpoints">>, Input, Options).

%% @doc Lists the associations that were created between resolver rules and
%% VPCs using the current AWS account.
list_resolver_rule_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_rule_associations(Client, Input, []).
list_resolver_rule_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverRuleAssociations">>, Input, Options).

%% @doc Lists the resolver rules that were created using the current AWS
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

%% @doc Specifies the Resolver operations and resources that you want to
%% allow another AWS account to be able to use.
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

%% @doc Updates the name of an inbound or an outbound resolver endpoint.
update_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_endpoint(Client, Input, []).
update_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverEndpoint">>, Input, Options).

%% @doc Updates settings for a specified resolver rule.
%% <code>ResolverRuleId</code> is required, and all other parameters are
%% optional. If you don't specify a parameter, it retains its current value.
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
