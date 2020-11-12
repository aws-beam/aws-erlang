%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Price List Service API (AWS Price List Service) is a centralized
%% and convenient way to programmatically query Amazon Web Services for
%% services, products, and pricing information.
%%
%% The AWS Price List Service uses standardized product attributes such as
%% `Location`, `Storage Class`, and `Operating System`, and provides prices
%% at the SKU level. You can use the AWS Price List Service to build cost
%% control and scenario planning tools, reconcile billing data, forecast
%% future spend for budgeting purposes, and provide cost benefit analysis
%% that compare your internal workloads with AWS.
%%
%% Use `GetServices` without a service code to retrieve the service codes for
%% all AWS services, then `GetServices` with a service code to retreive the
%% attribute names for that service. After you have the service code and
%% attribute names, you can use `GetAttributeValues` to see what values are
%% available for an attribute. With the service code and an attribute name
%% and value, you can use `GetProducts` to find specific products that you're
%% interested in, such as an `AmazonEC2` instance, with a `Provisioned IOPS`
%% `volumeType`.
%%
%% Service Endpoint
%%
%% AWS Price List Service API provides the following two endpoints:
%%
%% <ul> <li> https://api.pricing.us-east-1.amazonaws.com
%%
%% </li> <li> https://api.pricing.ap-south-1.amazonaws.com
%%
%% </li> </ul>
-module(aws_api_pricing).

-export([describe_services/2,
         describe_services/3,
         get_attribute_values/2,
         get_attribute_values/3,
         get_products/2,
         get_products/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the metadata for one service or a list of the metadata for
%% all services.
%%
%% Use this without a service code to get the service codes for all services.
%% Use it with a service code, such as `AmazonEC2`, to get information
%% specific to that service, such as the attribute names available for that
%% service. For example, some of the attribute names available for EC2 are
%% `volumeType`, `maxIopsVolume`, `operation`, `locationType`, and
%% `instanceCapacity10xlarge`.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Returns a list of attribute values.
%%
%% Attibutes are similar to the details in a Price List API offer file. For a
%% list of available attributes, see Offer File Definitions in the AWS
%% Billing and Cost Management User Guide.
get_attribute_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_attribute_values(Client, Input, []).
get_attribute_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAttributeValues">>, Input, Options).

%% @doc Returns a list of all products that match the filter criteria.
get_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_products(Client, Input, []).
get_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProducts">>, Input, Options).

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
    Client1 = Client#{service => <<"pricing">>},
    Host = build_host(<<"api.pricing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSPriceListService.", Action/binary>>}
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
