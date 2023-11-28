%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Cost Optimization Hub API to programmatically
%% identify, filter, aggregate, and quantify savings for your cost
%% optimization recommendations across multiple Amazon Web Services Regions
%% and Amazon Web Services accounts in your organization.
%%
%% The Cost Optimization Hub API provides the following endpoint:
%%
%% <ul> <li> https://cost-optimization-hub.us-east-1.amazonaws.com
%%
%% </li> </ul>
-module(aws_cost_optimization_hub).

-export([get_preferences/2,
         get_preferences/3,
         get_recommendation/2,
         get_recommendation/3,
         list_enrollment_statuses/2,
         list_enrollment_statuses/3,
         list_recommendation_summaries/2,
         list_recommendation_summaries/3,
         list_recommendations/2,
         list_recommendations/3,
         update_enrollment_status/2,
         update_enrollment_status/3,
         update_preferences/2,
         update_preferences/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a set of preferences for an account in order to add
%% account-specific preferences into the service.
%%
%% These preferences impact how the savings associated with recommendations
%% are presented—estimated savings after discounts or estimated savings
%% before discounts, for example.
get_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_preferences(Client, Input, []).
get_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPreferences">>, Input, Options).

%% @doc Returns both the current and recommended resource configuration and
%% the estimated cost impact for a recommendation.
%%
%% The `recommendationId' is only valid for up to a maximum of 24 hours
%% as recommendations are refreshed daily. To retrieve the
%% `recommendationId', use the `ListRecommendations' API.
get_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation(Client, Input, []).
get_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendation">>, Input, Options).

%% @doc Retrieves the enrollment status for an account.
%%
%% It can also return the list of accounts that are enrolled under the
%% organization.
list_enrollment_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_enrollment_statuses(Client, Input, []).
list_enrollment_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnrollmentStatuses">>, Input, Options).

%% @doc Returns a concise representation of savings estimates for resources.
%%
%% Also returns de-duped savings across different types of recommendations.
%%
%% The following filters are not supported for this API:
%% `recommendationIds', `resourceArns', and `resourceIds'.
list_recommendation_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommendation_summaries(Client, Input, []).
list_recommendation_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendationSummaries">>, Input, Options).

%% @doc Returns a list of recommendations.
list_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommendations(Client, Input, []).
list_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendations">>, Input, Options).

%% @doc Updates the enrollment (opt in and opt out) status of an account to
%% the Cost Optimization Hub service.
%%
%% If the account is a management account of an organization, this action can
%% also be used to enroll member accounts of the organization.
%%
%% You must have the appropriate permissions to opt in to Cost Optimization
%% Hub and to view its recommendations. When you opt in, Cost Optimization
%% Hub automatically creates a service-linked role in your account to access
%% its data.
update_enrollment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_enrollment_status(Client, Input, []).
update_enrollment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnrollmentStatus">>, Input, Options).

%% @doc Updates a set of preferences for an account in order to add
%% account-specific preferences into the service.
%%
%% These preferences impact how the savings associated with recommendations
%% are presented.
update_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_preferences(Client, Input, []).
update_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePreferences">>, Input, Options).

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
    Client1 = Client#{service => <<"cost-optimization-hub">>},
    Host = build_host(<<"cost-optimization-hub">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"CostOptimizationHubService.", Action/binary>>}
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
