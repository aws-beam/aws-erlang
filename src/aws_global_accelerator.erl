%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Global Accelerator</fullname>
%%
%% This is the <i>AWS Global Accelerator API Reference</i>. This guide is for
%% developers who need detailed information about AWS Global Accelerator API
%% actions, data types, and errors. For more information about Global
%% Accelerator features, see the <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html">AWS
%% Global Accelerator Developer Guide</a>.
%%
%% AWS Global Accelerator is a service in which you create accelerators to
%% improve availability and performance of your applications for local and
%% global users.
%%
%% <important> You must specify the US West (Oregon) Region to create or
%% update accelerators.
%%
%% </important> By default, Global Accelerator provides you with static IP
%% addresses that you associate with your accelerator. (Instead of using the
%% IP addresses that Global Accelerator provides, you can configure these
%% entry points to be IPv4 addresses from your own IP address ranges that you
%% bring to Global Accelerator.) The static IP addresses are anycast from the
%% AWS edge network and distribute incoming application traffic across
%% multiple endpoint resources in multiple AWS Regions, which increases the
%% availability of your applications. Endpoints can be Network Load
%% Balancers, Application Load Balancers, EC2 instances, or Elastic IP
%% addresses that are located in one AWS Region or multiple Regions.
%%
%% Global Accelerator uses the AWS global network to route traffic to the
%% optimal regional endpoint based on health, client location, and policies
%% that you configure. The service reacts instantly to changes in health or
%% configuration to ensure that internet traffic from clients is directed to
%% only healthy endpoints.
%%
%% Global Accelerator includes components that work together to help you
%% improve performance and availability for your applications:
%%
%% <dl> <dt>Static IP address</dt> <dd> By default, AWS Global Accelerator
%% provides you with a set of static IP addresses that are anycast from the
%% AWS edge network and serve as the single fixed entry points for your
%% clients. Or you can configure these entry points to be IPv4 addresses from
%% your own IP address ranges that you bring to Global Accelerator (BYOIP).
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
%% Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator
%% Developer Guide</i>. If you already have load balancers, EC2 instances, or
%% Elastic IP addresses set up for your applications, you can easily add
%% those to Global Accelerator to allow the resources to be accessed by the
%% static IP addresses.
%%
%% <important> The static IP addresses remain assigned to your accelerator
%% for as long as it exists, even if you disable the accelerator and it no
%% longer accepts or routes traffic. However, when you <i>delete</i> an
%% accelerator, you lose the static IP addresses that are assigned to it, so
%% you can no longer route traffic by using them. You can use IAM policies
%% with Global Accelerator to limit the users who have permissions to delete
%% an accelerator. For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html">Authentication
%% and Access Control</a> in the <i>AWS Global Accelerator Developer
%% Guide</i>.
%%
%% </important> </dd> <dt>Accelerator</dt> <dd> An accelerator directs
%% traffic to optimal endpoints over the AWS global network to improve
%% availability and performance for your internet applications that have a
%% global audience. Each accelerator includes one or more listeners.
%%
%% </dd> <dt>DNS name</dt> <dd> Global Accelerator assigns each accelerator a
%% default Domain Name System (DNS) name, similar to
%% <code>a1234567890abcdef.awsglobalaccelerator.com</code>, that points to
%% your Global Accelerator static IP addresses. Depending on the use case,
%% you can use your accelerator's static IP addresses or DNS name to route
%% traffic to your accelerator, or set up DNS records to route traffic using
%% your own custom domain name.
%%
%% </dd> <dt>Network zone</dt> <dd> A network zone services the static IP
%% addresses for your accelerator from a unique IP subnet. Similar to an AWS
%% Availability Zone, a network zone is an isolated unit with its own set of
%% physical infrastructure. When you configure an accelerator, by default,
%% Global Accelerator allocates two IPv4 addresses for it. If one IP address
%% from a network zone becomes unavailable due to IP address blocking by
%% certain client networks, or network disruptions, then client applications
%% can retry on the healthy static IP address from the other isolated network
%% zone.
%%
%% </dd> <dt>Listener</dt> <dd> A listener processes inbound connections from
%% clients to Global Accelerator, based on the protocol and port that you
%% configure. Each listener has one or more endpoint groups associated with
%% it, and traffic is forwarded to endpoints in one of the groups. You
%% associate endpoint groups with listeners by specifying the Regions that
%% you want to distribute traffic to. Traffic is distributed to optimal
%% endpoints within the endpoint groups associated with a listener.
%%
%% </dd> <dt>Endpoint group</dt> <dd> Each endpoint group is associated with
%% a specific AWS Region. Endpoint groups include one or more endpoints in
%% the Region. You can increase or reduce the percentage of traffic that
%% would be otherwise directed to an endpoint group by adjusting a setting
%% called a <i>traffic dial</i>. The traffic dial lets you easily do
%% performance testing or blue/green deployment testing for new releases
%% across different AWS Regions, for example.
%%
%% </dd> <dt>Endpoint</dt> <dd> An endpoint is a Network Load Balancer,
%% Application Load Balancer, EC2 instance, or Elastic IP address. Traffic is
%% routed to endpoints based on several factors, including the geo-proximity
%% to the user, the health of the endpoint, and the configuration options
%% that you choose, such as endpoint weights. For each endpoint, you can
%% configure weights, which are numbers that you can use to specify the
%% proportion of traffic to route to each one. This can be useful, for
%% example, to do performance testing within a Region.
%%
%% </dd> </dl>
-module(aws_global_accelerator).

-export([advertise_byoip_cidr/2,
         advertise_byoip_cidr/3,
         create_accelerator/2,
         create_accelerator/3,
         create_endpoint_group/2,
         create_endpoint_group/3,
         create_listener/2,
         create_listener/3,
         delete_accelerator/2,
         delete_accelerator/3,
         delete_endpoint_group/2,
         delete_endpoint_group/3,
         delete_listener/2,
         delete_listener/3,
         deprovision_byoip_cidr/2,
         deprovision_byoip_cidr/3,
         describe_accelerator/2,
         describe_accelerator/3,
         describe_accelerator_attributes/2,
         describe_accelerator_attributes/3,
         describe_endpoint_group/2,
         describe_endpoint_group/3,
         describe_listener/2,
         describe_listener/3,
         list_accelerators/2,
         list_accelerators/3,
         list_byoip_cidrs/2,
         list_byoip_cidrs/3,
         list_endpoint_groups/2,
         list_endpoint_groups/3,
         list_listeners/2,
         list_listeners/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         provision_byoip_cidr/2,
         provision_byoip_cidr/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_accelerator/2,
         update_accelerator/3,
         update_accelerator_attributes/2,
         update_accelerator_attributes/3,
         update_endpoint_group/2,
         update_endpoint_group/3,
         update_listener/2,
         update_listener/3,
         withdraw_byoip_cidr/2,
         withdraw_byoip_cidr/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Advertises an IPv4 address range that is provisioned for use with
%% your AWS resources through bring your own IP addresses (BYOIP). It can
%% take a few minutes before traffic to the specified addresses starts
%% routing to AWS because of propagation delays. To see an AWS CLI example of
%% advertising an address range, scroll down to <b>Example</b>.
%%
%% To stop advertising the BYOIP address range, use <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html">
%% WithdrawByoipCidr</a>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
%% Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator
%% Developer Guide</i>.
advertise_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    advertise_byoip_cidr(Client, Input, []).
advertise_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdvertiseByoipCidr">>, Input, Options).

%% @doc Create an accelerator. An accelerator includes one or more listeners
%% that process inbound connections and direct traffic to one or more
%% endpoint groups, each of which includes endpoints, such as Network Load
%% Balancers. To see an AWS CLI example of creating an accelerator, scroll
%% down to <b>Example</b>.
%%
%% If you bring your own IP address ranges to AWS Global Accelerator (BYOIP),
%% you can assign IP addresses from your own pool to your accelerator as the
%% static IP address entry points. Only one IP address from each of your IP
%% address ranges can be used for each accelerator.
%%
%% <important> You must specify the US West (Oregon) Region to create or
%% update accelerators.
%%
%% </important>
create_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_accelerator(Client, Input, []).
create_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccelerator">>, Input, Options).

%% @doc Create an endpoint group for the specified listener. An endpoint
%% group is a collection of endpoints in one AWS Region. To see an AWS CLI
%% example of creating an endpoint group, scroll down to <b>Example</b>.
create_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_group(Client, Input, []).
create_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointGroup">>, Input, Options).

%% @doc Create a listener to process inbound connections from clients to an
%% accelerator. Connections arrive to assigned static IP addresses on a port,
%% port range, or list of port ranges that you specify. To see an AWS CLI
%% example of creating a listener, scroll down to <b>Example</b>.
create_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_listener(Client, Input, []).
create_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateListener">>, Input, Options).

%% @doc Delete an accelerator. Before you can delete an accelerator, you must
%% disable it and remove all dependent resources (listeners and endpoint
%% groups). To disable the accelerator, update the accelerator to set
%% <code>Enabled</code> to false.
%%
%% <important> When you create an accelerator, by default, Global Accelerator
%% provides you with a set of two static IP addresses. Alternatively, you can
%% bring your own IP address ranges to Global Accelerator and assign IP
%% addresses from those ranges.
%%
%% The IP addresses are assigned to your accelerator for as long as it
%% exists, even if you disable the accelerator and it no longer accepts or
%% routes traffic. However, when you <i>delete</i> an accelerator, you lose
%% the static IP addresses that are assigned to the accelerator, so you can
%% no longer route traffic by using them. As a best practice, ensure that you
%% have permissions in place to avoid inadvertently deleting accelerators.
%% You can use IAM policies with Global Accelerator to limit the users who
%% have permissions to delete an accelerator. For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html">Authentication
%% and Access Control</a> in the <i>AWS Global Accelerator Developer
%% Guide</i>.
%%
%% </important>
delete_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_accelerator(Client, Input, []).
delete_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccelerator">>, Input, Options).

%% @doc Delete an endpoint group from a listener.
delete_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_group(Client, Input, []).
delete_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointGroup">>, Input, Options).

%% @doc Delete a listener from an accelerator.
delete_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_listener(Client, Input, []).
delete_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteListener">>, Input, Options).

%% @doc Releases the specified address range that you provisioned to use with
%% your AWS resources through bring your own IP addresses (BYOIP) and deletes
%% the corresponding address pool. To see an AWS CLI example of
%% deprovisioning an address range, scroll down to <b>Example</b>.
%%
%% Before you can release an address range, you must stop advertising it by
%% using <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html">WithdrawByoipCidr</a>
%% and you must not have any accelerators that are using static IP addresses
%% allocated from its address range.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
%% Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator
%% Developer Guide</i>.
deprovision_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprovision_byoip_cidr(Client, Input, []).
deprovision_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprovisionByoipCidr">>, Input, Options).

%% @doc Describe an accelerator. To see an AWS CLI example of describing an
%% accelerator, scroll down to <b>Example</b>.
describe_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_accelerator(Client, Input, []).
describe_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccelerator">>, Input, Options).

%% @doc Describe the attributes of an accelerator. To see an AWS CLI example
%% of describing the attributes of an accelerator, scroll down to
%% <b>Example</b>.
describe_accelerator_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_accelerator_attributes(Client, Input, []).
describe_accelerator_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAcceleratorAttributes">>, Input, Options).

%% @doc Describe an endpoint group. To see an AWS CLI example of describing
%% an endpoint group, scroll down to <b>Example</b>.
describe_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_group(Client, Input, []).
describe_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointGroup">>, Input, Options).

%% @doc Describe a listener. To see an AWS CLI example of describing a
%% listener, scroll down to <b>Example</b>.
describe_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listener(Client, Input, []).
describe_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListener">>, Input, Options).

%% @doc List the accelerators for an AWS account. To see an AWS CLI example
%% of listing the accelerators for an AWS account, scroll down to
%% <b>Example</b>.
list_accelerators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accelerators(Client, Input, []).
list_accelerators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccelerators">>, Input, Options).

%% @doc Lists the IP address ranges that were specified in calls to <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html">ProvisionByoipCidr</a>,
%% including the current state and a history of state changes.
%%
%% To see an AWS CLI example of listing BYOIP CIDR addresses, scroll down to
%% <b>Example</b>.
list_byoip_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_byoip_cidrs(Client, Input, []).
list_byoip_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListByoipCidrs">>, Input, Options).

%% @doc List the endpoint groups that are associated with a listener. To see
%% an AWS CLI example of listing the endpoint groups for listener, scroll
%% down to <b>Example</b>.
list_endpoint_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoint_groups(Client, Input, []).
list_endpoint_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointGroups">>, Input, Options).

%% @doc List the listeners for an accelerator. To see an AWS CLI example of
%% listing the listeners for an accelerator, scroll down to <b>Example</b>.
list_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_listeners(Client, Input, []).
list_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListListeners">>, Input, Options).

%% @doc List all tags for an accelerator. To see an AWS CLI example of
%% listing tags for an accelerator, scroll down to <b>Example</b>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
%% in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer
%% Guide</i>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Provisions an IP address range to use with your AWS resources through
%% bring your own IP addresses (BYOIP) and creates a corresponding address
%% pool. After the address range is provisioned, it is ready to be advertised
%% using <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html">
%% AdvertiseByoipCidr</a>.
%%
%% To see an AWS CLI example of provisioning an address range for BYOIP,
%% scroll down to <b>Example</b>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
%% Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator
%% Developer Guide</i>.
provision_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_byoip_cidr(Client, Input, []).
provision_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionByoipCidr">>, Input, Options).

%% @doc Add tags to an accelerator resource. To see an AWS CLI example of
%% adding tags to an accelerator, scroll down to <b>Example</b>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
%% in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer
%% Guide</i>.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Remove tags from a Global Accelerator resource. When you specify a
%% tag key, the action removes both that key and its associated value. To see
%% an AWS CLI example of removing tags from an accelerator, scroll down to
%% <b>Example</b>. The operation succeeds even if you attempt to remove tags
%% from an accelerator that was already removed.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
%% in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer
%% Guide</i>.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Update an accelerator. To see an AWS CLI example of updating an
%% accelerator, scroll down to <b>Example</b>.
%%
%% <important> You must specify the US West (Oregon) Region to create or
%% update accelerators.
%%
%% </important>
update_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_accelerator(Client, Input, []).
update_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccelerator">>, Input, Options).

%% @doc Update the attributes for an accelerator. To see an AWS CLI example
%% of updating an accelerator to enable flow logs, scroll down to
%% <b>Example</b>.
update_accelerator_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_accelerator_attributes(Client, Input, []).
update_accelerator_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAcceleratorAttributes">>, Input, Options).

%% @doc Update an endpoint group. To see an AWS CLI example of updating an
%% endpoint group, scroll down to <b>Example</b>.
update_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint_group(Client, Input, []).
update_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpointGroup">>, Input, Options).

%% @doc Update a listener. To see an AWS CLI example of updating listener,
%% scroll down to <b>Example</b>.
update_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_listener(Client, Input, []).
update_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateListener">>, Input, Options).

%% @doc Stops advertising an address range that is provisioned as an address
%% pool. You can perform this operation at most once every 10 seconds, even
%% if you specify different address ranges each time. To see an AWS CLI
%% example of withdrawing an address range for BYOIP so it will no longer be
%% advertised by AWS, scroll down to <b>Example</b>.
%%
%% It can take a few minutes before traffic to the specified addresses stops
%% routing to AWS because of propagation delays.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
%% Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator
%% Developer Guide</i>.
withdraw_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    withdraw_byoip_cidr(Client, Input, []).
withdraw_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"WithdrawByoipCidr">>, Input, Options).

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
    Client1 = Client#{service => <<"globalaccelerator">>},
    Host = build_host(<<"globalaccelerator">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"GlobalAccelerator_V20180706.", Action/binary>>}
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
