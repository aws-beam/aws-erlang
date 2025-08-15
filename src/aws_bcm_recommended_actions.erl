%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Billing and Cost Management Recommended Actions API
%% to programmatically query your best practices and recommendations to
%% optimize your costs.
%%
%% The Billing and Cost Management Recommended Actions API provides the
%% following endpoint:
%%
%% https://bcm-recommended-actions.us-east-1.api.aws
-module(aws_bcm_recommended_actions).

-export([list_recommended_actions/2,
         list_recommended_actions/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% action_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"matchOption">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type action_filter() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_recommended_actions_request() :: #{
%%   <<"filter">> => request_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_recommended_actions_request() :: #{binary() => any()}.

%% Example:
%% list_recommended_actions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendedActions">> => list(recommended_action())
%% }
-type list_recommended_actions_response() :: #{binary() => any()}.

%% Example:
%% recommended_action() :: #{
%%   <<"accountId">> => string(),
%%   <<"context">> => map(),
%%   <<"feature">> => list(any()),
%%   <<"id">> => [string()],
%%   <<"lastUpdatedTimeStamp">> => [string()],
%%   <<"nextSteps">> => list(string()),
%%   <<"severity">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type recommended_action() :: #{binary() => any()}.

%% Example:
%% request_filter() :: #{
%%   <<"actions">> => list(action_filter())
%% }
-type request_filter() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type list_recommended_actions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a list of recommended actions that match the filter criteria.
-spec list_recommended_actions(aws_client:aws_client(), list_recommended_actions_request()) ->
    {ok, list_recommended_actions_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_actions_errors(), tuple()}.
list_recommended_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommended_actions(Client, Input, []).

-spec list_recommended_actions(aws_client:aws_client(), list_recommended_actions_request(), proplists:proplist()) ->
    {ok, list_recommended_actions_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_actions_errors(), tuple()}.
list_recommended_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendedActions">>, Input, Options).

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
    Client1 = Client#{service => <<"bcm-recommended-actions">>},
    Host = build_host(<<"bcm-recommended-actions">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSBillingAndCostManagementRecommendedActions.", Action/binary>>}
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
