%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Performance Insights enables you to monitor and explore different
%% dimensions of database load based on data captured from a running RDS
%% instance.
%%
%% The guide provides detailed information about Performance Insights data
%% types, parameters and errors. For more information about Performance
%% Insights capabilities see Using Amazon RDS Performance Insights in the
%% Amazon RDS User Guide.
%%
%% The AWS Performance Insights API provides visibility into the performance
%% of your RDS instance, when Performance Insights is enabled for supported
%% engine types. While Amazon CloudWatch provides the authoritative source
%% for AWS service vended monitoring metrics, AWS Performance Insights offers
%% a domain-specific view of database load measured as Average Active
%% Sessions and provided to API consumers as a 2-dimensional time-series
%% dataset. The time dimension of the data provides DB load data for each
%% time point in the queried time range, and each time point decomposes
%% overall load in relation to the requested dimensions, such as SQL,
%% Wait-event, User or Host, measured at that time point.
-module(aws_pi).

-export([describe_dimension_keys/2,
         describe_dimension_keys/3,
         get_resource_metrics/2,
         get_resource_metrics/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc For a specific time period, retrieve the top `N' dimension keys for a
%% metric.
describe_dimension_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dimension_keys(Client, Input, []).
describe_dimension_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDimensionKeys">>, Input, Options).

%% @doc Retrieve Performance Insights metrics for a set of data sources, over
%% a time period.
%%
%% You can provide specific dimension groups and dimensions, and provide
%% aggregation and filtering criteria for each group.
get_resource_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_metrics(Client, Input, []).
get_resource_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceMetrics">>, Input, Options).

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
    Client1 = Client#{service => <<"pi">>},
    Host = build_host(<<"pi">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"PerformanceInsightsv20180227.", Action/binary>>}
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
