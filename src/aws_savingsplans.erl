%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Savings Plans are a pricing model that offer significant savings on
%% AWS usage (for example, on Amazon EC2 instances).
%%
%% You commit to a consistent amount of usage, in USD per hour, for a term of
%% 1 or 3 years, and receive a lower price for that usage. For more
%% information, see the AWS Savings Plans User Guide.
-module(aws_savingsplans).

-export([create_savings_plan/2,
         create_savings_plan/3,
         delete_queued_savings_plan/2,
         delete_queued_savings_plan/3,
         describe_savings_plan_rates/2,
         describe_savings_plan_rates/3,
         describe_savings_plans/2,
         describe_savings_plans/3,
         describe_savings_plans_offering_rates/2,
         describe_savings_plans_offering_rates/3,
         describe_savings_plans_offerings/2,
         describe_savings_plans_offerings/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Savings Plan.
create_savings_plan(Client, Input) ->
    create_savings_plan(Client, Input, []).
create_savings_plan(Client, Input0, Options) ->
    Method = post,
    Path = ["/CreateSavingsPlan"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the queued purchase for the specified Savings Plan.
delete_queued_savings_plan(Client, Input) ->
    delete_queued_savings_plan(Client, Input, []).
delete_queued_savings_plan(Client, Input0, Options) ->
    Method = post,
    Path = ["/DeleteQueuedSavingsPlan"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the specified Savings Plans rates.
describe_savings_plan_rates(Client, Input) ->
    describe_savings_plan_rates(Client, Input, []).
describe_savings_plan_rates(Client, Input0, Options) ->
    Method = post,
    Path = ["/DescribeSavingsPlanRates"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the specified Savings Plans.
describe_savings_plans(Client, Input) ->
    describe_savings_plans(Client, Input, []).
describe_savings_plans(Client, Input0, Options) ->
    Method = post,
    Path = ["/DescribeSavingsPlans"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the specified Savings Plans offering rates.
describe_savings_plans_offering_rates(Client, Input) ->
    describe_savings_plans_offering_rates(Client, Input, []).
describe_savings_plans_offering_rates(Client, Input0, Options) ->
    Method = post,
    Path = ["/DescribeSavingsPlansOfferingRates"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the specified Savings Plans offerings.
describe_savings_plans_offerings(Client, Input) ->
    describe_savings_plans_offerings(Client, Input, []).
describe_savings_plans_offerings(Client, Input0, Options) ->
    Method = post,
    Path = ["/DescribeSavingsPlansOfferings"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListTagsForResource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/TagResource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/UntagResource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"savingsplans">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"savingsplans">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
