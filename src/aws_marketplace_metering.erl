%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Marketplace Metering Service</fullname>
%%
%% This reference provides descriptions of the low-level AWS Marketplace
%% Metering Service API.
%%
%% AWS Marketplace sellers can use this API to submit usage data for custom
%% usage dimensions.
%%
%% <b>Submitting Metering Records</b>
%%
%% <ul> <li> <i>MeterUsage</i>- Submits the metering record for a Marketplace
%% product. MeterUsage is called from an EC2 instance.
%%
%% </li> <li> <i>BatchMeterUsage</i>- Submits the metering record for a set
%% of customers. BatchMeterUsage is called from a software-as-a-service
%% (SaaS) application.
%%
%% </li> </ul> <b>Accepting New Customers</b>
%%
%% <ul> <li> <i>ResolveCustomer</i>- Called by a SaaS application during the
%% registration process. When a buyer visits your website during the
%% registration process, the buyer submits a Registration Token through the
%% browser. The Registration Token is resolved through this API to obtain a
%% CustomerIdentifier and Product Code.
%%
%% </li> </ul> <b>Entitlement and Metering for Paid Container Products</b>
%%
%% <ul> <li> Paid container software products sold through AWS Marketplace
%% must integrate with the AWS Marketplace Metering Service and call the
%% RegisterUsage operation for software entitlement and metering. Calling
%% RegisterUsage from containers running outside of Amazon Elastic Container
%% Service (Amazon ECR) isn't supported. Free and BYOL products for ECS
%% aren't required to call RegisterUsage, but you can do so if you want to
%% receive usage data in your seller reports. For more information on using
%% the RegisterUsage operation, see <a
%% href="https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html">Container-Based
%% Products</a>.
%%
%% </li> </ul> BatchMeterUsage API calls are captured by AWS CloudTrail. You
%% can use Cloudtrail to verify that the SaaS metering records that you sent
%% are accurate by searching for records with the eventName of
%% BatchMeterUsage. You can also use CloudTrail to audit records over time.
%% For more information, see the <i> <a
%% href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html">AWS
%% CloudTrail User Guide</a> </i>.
-module(aws_marketplace_metering).

-export([batch_meter_usage/2,
         batch_meter_usage/3,
         meter_usage/2,
         meter_usage/3,
         register_usage/2,
         register_usage/3,
         resolve_customer/2,
         resolve_customer/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc BatchMeterUsage is called from a SaaS application listed on the AWS
%% Marketplace to post metering records for a set of customers.
%%
%% For identical requests, the API is idempotent; requests can be retried
%% with the same records or a subset of the input records.
%%
%% Every request to BatchMeterUsage is for one product. If you need to meter
%% usage for multiple products, you must make multiple calls to
%% BatchMeterUsage.
%%
%% BatchMeterUsage can process up to 25 UsageRecords at a time.
batch_meter_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_meter_usage(Client, Input, []).
batch_meter_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchMeterUsage">>, Input, Options).

%% @doc API to emit metering records. For identical requests, the API is
%% idempotent. It simply returns the metering record ID.
%%
%% MeterUsage is authenticated on the buyer's AWS account, generally when
%% running from an EC2 instance on the AWS Marketplace.
meter_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    meter_usage(Client, Input, []).
meter_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MeterUsage">>, Input, Options).

%% @doc Paid container software products sold through AWS Marketplace must
%% integrate with the AWS Marketplace Metering Service and call the
%% RegisterUsage operation for software entitlement and metering. Calling
%% RegisterUsage from containers running outside of ECS is not currently
%% supported. Free and BYOL products for ECS aren't required to call
%% RegisterUsage, but you may choose to do so if you would like to receive
%% usage data in your seller reports. The sections below explain the behavior
%% of RegisterUsage. RegisterUsage performs two primary functions: metering
%% and entitlement.
%%
%% <ul> <li> <i>Entitlement</i>: RegisterUsage allows you to verify that the
%% customer running your paid software is subscribed to your product on AWS
%% Marketplace, enabling you to guard against unauthorized use. Your
%% container image that integrates with RegisterUsage is only required to
%% guard against unauthorized use at container startup, as such a
%% CustomerNotSubscribedException/PlatformNotSupportedException will only be
%% thrown on the initial call to RegisterUsage. Subsequent calls from the
%% same Amazon ECS task instance (e.g. task-id) will not throw a
%% CustomerNotSubscribedException, even if the customer unsubscribes while
%% the Amazon ECS task is still running.
%%
%% </li> <li> <i>Metering</i>: RegisterUsage meters software use per ECS
%% task, per hour, with usage prorated to the second. A minimum of 1 minute
%% of usage applies to tasks that are short lived. For example, if a customer
%% has a 10 node ECS cluster and creates an ECS service configured as a
%% Daemon Set, then ECS will launch a task on all 10 cluster nodes and the
%% customer will be charged: (10 * hourly_rate). Metering for software use is
%% automatically handled by the AWS Marketplace Metering Control Plane --
%% your software is not required to perform any metering specific actions,
%% other than call RegisterUsage once for metering of software use to
%% commence. The AWS Marketplace Metering Control Plane will also continue to
%% bill customers for running ECS tasks, regardless of the customers
%% subscription state, removing the need for your software to perform
%% entitlement checks at runtime.
%%
%% </li> </ul>
register_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_usage(Client, Input, []).
register_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterUsage">>, Input, Options).

%% @doc ResolveCustomer is called by a SaaS application during the
%% registration process. When a buyer visits your website during the
%% registration process, the buyer submits a registration token through their
%% browser. The registration token is resolved through this API to obtain a
%% CustomerIdentifier and product code.
resolve_customer(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_customer(Client, Input, []).
resolve_customer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveCustomer">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = get_host(<<"metering.marketplace">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSMPMeteringService.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
