%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% You can use the Billing API to programatically list the billing views
%% available to you for a given time period.
%%
%% A billing view represents a set of billing data.
%%
%% The Billing API provides the following endpoint:
%%
%% `https://billing.us-east-1.api.aws'
-module(aws_billing).

-export([list_billing_views/2,
         list_billing_views/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% active_time_range() :: #{
%%   <<"activeAfterInclusive">> => [non_neg_integer()],
%%   <<"activeBeforeInclusive">> => [non_neg_integer()]
%% }
-type active_time_range() :: #{binary() => any()}.

%% Example:
%% billing_view_list_element() :: #{
%%   <<"arn">> => string(),
%%   <<"billingViewType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string()
%% }
-type billing_view_list_element() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_billing_views_request() :: #{
%%   <<"activeTimeRange">> := active_time_range(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_billing_views_request() :: #{binary() => any()}.

%% Example:
%% list_billing_views_response() :: #{
%%   <<"billingViews">> => list(billing_view_list_element()()),
%%   <<"nextToken">> => string()
%% }
-type list_billing_views_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type list_billing_views_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Lists the billing views available for a given time period.
%%
%% Every Amazon Web Services account has a unique `PRIMARY' billing view
%% that represents the billing data available by default. Accounts that use
%% Billing Conductor also have `BILLING_GROUP' billing views representing
%% pro forma costs associated with each created billing group.
-spec list_billing_views(aws_client:aws_client(), list_billing_views_request()) ->
    {ok, list_billing_views_response(), tuple()} |
    {error, any()} |
    {error, list_billing_views_errors(), tuple()}.
list_billing_views(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_billing_views(Client, Input, []).

-spec list_billing_views(aws_client:aws_client(), list_billing_views_request(), proplists:proplist()) ->
    {ok, list_billing_views_response(), tuple()} |
    {error, any()} |
    {error, list_billing_views_errors(), tuple()}.
list_billing_views(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillingViews">>, Input, Options).

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
    Client1 = Client#{service => <<"billing">>},
    Host = build_host(<<"billing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSBilling.", Action/binary>>}
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
