%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Marketplace Metering Service
%%
%% This reference provides descriptions of the low-level AWS Marketplace
%% Metering Service
%% API.
%%
%% AWS Marketplace sellers can use this API to submit usage data for custom
%% usage
%% dimensions.
%%
%% For information on the permissions you need to use this API, see AWS
%% Marketplace metering and entitlement API permissions:
%% https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html
%% in the
%% AWS Marketplace Seller Guide.
%%
%% Submitting Metering Records
%%
%% MeterUsage - Submits the metering record for an AWS
%% Marketplace product. `MeterUsage' is called from an EC2 instance or a
%% container running on EKS or ECS.
%%
%% BatchMeterUsage - Submits the metering record for a set of
%% customers. `BatchMeterUsage' is called from a software-as-a-service
%% (SaaS) application.
%%
%% Accepting New Customers
%%
%% ResolveCustomer - Called by a SaaS application during the
%% registration process. When a buyer visits your website during the
%% registration
%% process, the buyer submits a Registration Token through the browser. The
%% Registration Token is resolved through this API to obtain a
%% `CustomerIdentifier'
%%
%% along with the `CustomerAWSAccountId' and
%% `ProductCode'.
%%
%% Entitlement and Metering for Paid Container Products
%%
%% Paid container software products sold through AWS Marketplace must
%% integrate
%% with the AWS Marketplace Metering Service and call the
%% `RegisterUsage' operation for software entitlement and metering.
%% Free and BYOL products for Amazon ECS or Amazon EKS aren't required to
%% call
%% `RegisterUsage', but you can do so if you want to receive usage
%% data in your seller reports. For more information on using the
%% `RegisterUsage' operation, see Container-Based Products:
%% https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html.
%%
%% `BatchMeterUsage' API calls are captured by AWS CloudTrail. You can
%% use
%% Cloudtrail to verify that the SaaS metering records that you sent are
%% accurate by
%% searching for records with the `eventName' of `BatchMeterUsage'.
%% You can also use CloudTrail to audit records over time. For more
%% information, see the
%%
%% AWS CloudTrail User Guide:
%% http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html.
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


%% Example:
%% batch_meter_usage_request() :: #{
%%   <<"ProductCode">> := string(),
%%   <<"UsageRecords">> := list(usage_record()())
%% }
-type batch_meter_usage_request() :: #{binary() => any()}.

%% Example:
%% batch_meter_usage_result() :: #{
%%   <<"Results">> => list(usage_record_result()()),
%%   <<"UnprocessedRecords">> => list(usage_record()())
%% }
-type batch_meter_usage_result() :: #{binary() => any()}.

%% Example:
%% customer_not_entitled_exception() :: #{
%%   <<"message">> => string()
%% }
-type customer_not_entitled_exception() :: #{binary() => any()}.

%% Example:
%% disabled_api_exception() :: #{
%%   <<"message">> => string()
%% }
-type disabled_api_exception() :: #{binary() => any()}.

%% Example:
%% duplicate_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_request_exception() :: #{binary() => any()}.

%% Example:
%% expired_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type expired_token_exception() :: #{binary() => any()}.

%% Example:
%% internal_service_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.

%% Example:
%% invalid_customer_identifier_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_customer_identifier_exception() :: #{binary() => any()}.

%% Example:
%% invalid_endpoint_region_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_endpoint_region_exception() :: #{binary() => any()}.

%% Example:
%% invalid_product_code_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_product_code_exception() :: #{binary() => any()}.

%% Example:
%% invalid_public_key_version_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_public_key_version_exception() :: #{binary() => any()}.

%% Example:
%% invalid_region_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_region_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tag_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_exception() :: #{binary() => any()}.

%% Example:
%% invalid_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_token_exception() :: #{binary() => any()}.

%% Example:
%% invalid_usage_allocations_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_usage_allocations_exception() :: #{binary() => any()}.

%% Example:
%% invalid_usage_dimension_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_usage_dimension_exception() :: #{binary() => any()}.

%% Example:
%% meter_usage_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"ProductCode">> := string(),
%%   <<"Timestamp">> := non_neg_integer(),
%%   <<"UsageAllocations">> => list(usage_allocation()()),
%%   <<"UsageDimension">> := string(),
%%   <<"UsageQuantity">> => integer()
%% }
-type meter_usage_request() :: #{binary() => any()}.

%% Example:
%% meter_usage_result() :: #{
%%   <<"MeteringRecordId">> => string()
%% }
-type meter_usage_result() :: #{binary() => any()}.

%% Example:
%% platform_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type platform_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% register_usage_request() :: #{
%%   <<"Nonce">> => string(),
%%   <<"ProductCode">> := string(),
%%   <<"PublicKeyVersion">> := integer()
%% }
-type register_usage_request() :: #{binary() => any()}.

%% Example:
%% register_usage_result() :: #{
%%   <<"PublicKeyRotationTimestamp">> => non_neg_integer(),
%%   <<"Signature">> => string()
%% }
-type register_usage_result() :: #{binary() => any()}.

%% Example:
%% resolve_customer_request() :: #{
%%   <<"RegistrationToken">> := string()
%% }
-type resolve_customer_request() :: #{binary() => any()}.

%% Example:
%% resolve_customer_result() :: #{
%%   <<"CustomerAWSAccountId">> => string(),
%%   <<"CustomerIdentifier">> => string(),
%%   <<"ProductCode">> => string()
%% }
-type resolve_customer_result() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% timestamp_out_of_bounds_exception() :: #{
%%   <<"message">> => string()
%% }
-type timestamp_out_of_bounds_exception() :: #{binary() => any()}.

%% Example:
%% usage_allocation() :: #{
%%   <<"AllocatedUsageQuantity">> => integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type usage_allocation() :: #{binary() => any()}.

%% Example:
%% usage_record() :: #{
%%   <<"CustomerIdentifier">> => string(),
%%   <<"Dimension">> => string(),
%%   <<"Quantity">> => integer(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"UsageAllocations">> => list(usage_allocation()())
%% }
-type usage_record() :: #{binary() => any()}.

%% Example:
%% usage_record_result() :: #{
%%   <<"MeteringRecordId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UsageRecord">> => usage_record()
%% }
-type usage_record_result() :: #{binary() => any()}.

-type batch_meter_usage_errors() ::
    timestamp_out_of_bounds_exception() | 
    throttling_exception() | 
    invalid_usage_dimension_exception() | 
    invalid_usage_allocations_exception() | 
    invalid_tag_exception() | 
    invalid_product_code_exception() | 
    invalid_customer_identifier_exception() | 
    internal_service_error_exception() | 
    disabled_api_exception().

-type meter_usage_errors() ::
    timestamp_out_of_bounds_exception() | 
    throttling_exception() | 
    invalid_usage_dimension_exception() | 
    invalid_usage_allocations_exception() | 
    invalid_tag_exception() | 
    invalid_product_code_exception() | 
    invalid_endpoint_region_exception() | 
    internal_service_error_exception() | 
    duplicate_request_exception() | 
    customer_not_entitled_exception().

-type register_usage_errors() ::
    throttling_exception() | 
    platform_not_supported_exception() | 
    invalid_region_exception() | 
    invalid_public_key_version_exception() | 
    invalid_product_code_exception() | 
    internal_service_error_exception() | 
    disabled_api_exception() | 
    customer_not_entitled_exception().

-type resolve_customer_errors() ::
    throttling_exception() | 
    invalid_token_exception() | 
    internal_service_error_exception() | 
    expired_token_exception() | 
    disabled_api_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% `BatchMeterUsage' is called from a SaaS application listed on AWS
%% Marketplace to post metering records for a set of customers.
%%
%% For identical requests, the API is idempotent; requests can be retried
%% with the same
%% records or a subset of the input records.
%%
%% Every request to `BatchMeterUsage' is for one product. If you need to
%% meter
%% usage for multiple products, you must make multiple calls to
%% `BatchMeterUsage'.
%%
%% Usage records are expected to be submitted as quickly as possible after
%% the event that
%% is being recorded, and are not accepted more than 6 hours after the event.
%%
%% `BatchMeterUsage' can process up to 25 `UsageRecords' at a
%% time.
%%
%% A `UsageRecord' can optionally include multiple usage allocations, to
%% provide customers with usage data split into buckets by tags that you
%% define (or allow
%% the customer to define).
%%
%% `BatchMeterUsage' returns a list of `UsageRecordResult' objects,
%% showing the result for each `UsageRecord', as well as a list of
%% `UnprocessedRecords', indicating errors in the service side that you
%% should retry.
%%
%% `BatchMeterUsage' requests must be less than 1MB in size.
%%
%% For an example of using `BatchMeterUsage', see BatchMeterUsage code
%% example:
%% https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example
%% in the AWS Marketplace Seller
%% Guide.
-spec batch_meter_usage(aws_client:aws_client(), batch_meter_usage_request()) ->
    {ok, batch_meter_usage_result(), tuple()} |
    {error, any()} |
    {error, batch_meter_usage_errors(), tuple()}.
batch_meter_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_meter_usage(Client, Input, []).

-spec batch_meter_usage(aws_client:aws_client(), batch_meter_usage_request(), proplists:proplist()) ->
    {ok, batch_meter_usage_result(), tuple()} |
    {error, any()} |
    {error, batch_meter_usage_errors(), tuple()}.
batch_meter_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchMeterUsage">>, Input, Options).

%% @doc API to emit metering records.
%%
%% For identical requests, the API is idempotent. It simply
%% returns the metering record ID.
%%
%% `MeterUsage' is authenticated on the buyer's AWS account using
%% credentials
%% from the EC2 instance, ECS task, or EKS pod.
%%
%% `MeterUsage' can optionally include multiple usage allocations, to
%% provide
%% customers with usage data split into buckets by tags that you define (or
%% allow the
%% customer to define).
%%
%% Usage records are expected to be submitted as quickly as possible after
%% the event that
%% is being recorded, and are not accepted more than 6 hours after the event.
-spec meter_usage(aws_client:aws_client(), meter_usage_request()) ->
    {ok, meter_usage_result(), tuple()} |
    {error, any()} |
    {error, meter_usage_errors(), tuple()}.
meter_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    meter_usage(Client, Input, []).

-spec meter_usage(aws_client:aws_client(), meter_usage_request(), proplists:proplist()) ->
    {ok, meter_usage_result(), tuple()} |
    {error, any()} |
    {error, meter_usage_errors(), tuple()}.
meter_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MeterUsage">>, Input, Options).

%% @doc Paid container software products sold through AWS Marketplace must
%% integrate with the
%% AWS Marketplace Metering Service and call the `RegisterUsage'
%% operation for
%% software entitlement and metering.
%%
%% Free and BYOL products for Amazon ECS or Amazon EKS
%% aren't required to call `RegisterUsage', but you may choose to do
%% so if you
%% would like to receive usage data in your seller reports. The sections
%% below explain the
%% behavior of `RegisterUsage'. `RegisterUsage' performs two primary
%% functions: metering and entitlement.
%%
%% Entitlement: `RegisterUsage' allows you to
%% verify that the customer running your paid software is subscribed to your
%% product on AWS Marketplace, enabling you to guard against unauthorized
%% use. Your
%% container image that integrates with `RegisterUsage' is only required
%% to guard against unauthorized use at container startup, as such a
%% `CustomerNotSubscribedException' or
%% `PlatformNotSupportedException' will only be thrown on the
%% initial call to `RegisterUsage'. Subsequent calls from the same
%% Amazon ECS task instance (e.g. task-id) or Amazon EKS pod will not throw a
%% `CustomerNotSubscribedException', even if the customer
%% unsubscribes while the Amazon ECS task or Amazon EKS pod is still
%% running.
%%
%% Metering: `RegisterUsage' meters software use
%% per ECS task, per hour, or per pod for Amazon EKS with usage prorated to
%% the
%% second. A minimum of 1 minute of usage applies to tasks that are short
%% lived.
%% For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster
%% and a
%% service configured as a Daemon Set, then Amazon ECS or Amazon EKS will
%% launch a
%% task on all 10 cluster nodes and the customer will be charged: (10 *
%% hourly_rate). Metering for software use is automatically handled by the
%% AWS
%% Marketplace Metering Control Plane -- your software is not required to
%% perform
%% any metering specific actions, other than call `RegisterUsage' once
%% for metering of software use to commence. The AWS Marketplace Metering
%% Control
%% Plane will also continue to bill customers for running ECS tasks and
%% Amazon EKS
%% pods, regardless of the customers subscription state, removing the need
%% for your
%% software to perform entitlement checks at runtime.
-spec register_usage(aws_client:aws_client(), register_usage_request()) ->
    {ok, register_usage_result(), tuple()} |
    {error, any()} |
    {error, register_usage_errors(), tuple()}.
register_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_usage(Client, Input, []).

-spec register_usage(aws_client:aws_client(), register_usage_request(), proplists:proplist()) ->
    {ok, register_usage_result(), tuple()} |
    {error, any()} |
    {error, register_usage_errors(), tuple()}.
register_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterUsage">>, Input, Options).

%% @doc
%% `ResolveCustomer' is called by a SaaS application during the
%% registration
%% process.
%%
%% When a buyer visits your website during the registration process, the
%% buyer
%% submits a registration token through their browser. The registration token
%% is resolved
%% through this API to obtain a `CustomerIdentifier'
%% along with the
%% `CustomerAWSAccountId' and
%% `ProductCode'.
%%
%% The API needs to called from the seller account id used to publish the
%% SaaS
%% application to successfully resolve the token.
%%
%% For an example of using `ResolveCustomer', see ResolveCustomer code
%% example:
%% https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example
%% in the AWS Marketplace Seller
%% Guide.
-spec resolve_customer(aws_client:aws_client(), resolve_customer_request()) ->
    {ok, resolve_customer_result(), tuple()} |
    {error, any()} |
    {error, resolve_customer_errors(), tuple()}.
resolve_customer(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_customer(Client, Input, []).

-spec resolve_customer(aws_client:aws_client(), resolve_customer_request(), proplists:proplist()) ->
    {ok, resolve_customer_result(), tuple()} |
    {error, any()} |
    {error, resolve_customer_errors(), tuple()}.
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
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"metering.marketplace">>},
    Host = build_host(<<"metering.marketplace">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSMPMeteringService.", Action/binary>>}
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
