%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Marketplace Entitlement Service
%%
%% This reference provides descriptions of the AWS Marketplace Entitlement
%% Service
%% API.
%%
%% AWS Marketplace Entitlement Service is used to determine the entitlement
%% of a customer to
%% a given product. An entitlement represents capacity in a product owned by
%% the customer. For
%% example, a customer might own some number of users or seats in an SaaS
%% application or some
%% amount of data capacity in a multi-tenant database.
%%
%% Getting Entitlement Records
%%
%% GetEntitlements- Gets the entitlements for a Marketplace
%% product.
-module(aws_marketplace_entitlement).

-export([get_entitlements/2,
         get_entitlements/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% entitlement() :: #{
%%   <<"CustomerAWSAccountId">> => string(),
%%   <<"CustomerIdentifier">> => string(),
%%   <<"Dimension">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"ProductCode">> => string(),
%%   <<"Value">> => entitlement_value()
%% }
-type entitlement() :: #{binary() => any()}.

%% Example:
%% entitlement_value() :: #{
%%   <<"BooleanValue">> => boolean(),
%%   <<"DoubleValue">> => float(),
%%   <<"IntegerValue">> => integer(),
%%   <<"StringValue">> => string()
%% }
-type entitlement_value() :: #{binary() => any()}.

%% Example:
%% get_entitlements_request() :: #{
%%   <<"Filter">> => map(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProductCode">> := string()
%% }
-type get_entitlements_request() :: #{binary() => any()}.

%% Example:
%% get_entitlements_result() :: #{
%%   <<"Entitlements">> => list(entitlement()),
%%   <<"NextToken">> => string()
%% }
-type get_entitlements_result() :: #{binary() => any()}.

%% Example:
%% internal_service_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

-type get_entitlements_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_service_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc GetEntitlements retrieves entitlement values for a given product.
%%
%% The results can be
%% filtered based on customer identifier, AWS account ID, or product
%% dimensions.
%%
%% The `CustomerIdentifier' parameter is on path for deprecation. Use
%% `CustomerAWSAccountID' instead.
%%
%% These parameters are mutually exclusive. You can't specify both
%% `CustomerIdentifier' and `CustomerAWSAccountID' in the same
%% request.
-spec get_entitlements(aws_client:aws_client(), get_entitlements_request()) ->
    {ok, get_entitlements_result(), tuple()} |
    {error, any()} |
    {error, get_entitlements_errors(), tuple()}.
get_entitlements(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entitlements(Client, Input, []).

-spec get_entitlements(aws_client:aws_client(), get_entitlements_request(), proplists:proplist()) ->
    {ok, get_entitlements_result(), tuple()} |
    {error, any()} |
    {error, get_entitlements_errors(), tuple()}.
get_entitlements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntitlements">>, Input, Options).

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
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = build_host(<<"entitlement.marketplace">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSMPEntitlementService.", Action/binary>>}
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
