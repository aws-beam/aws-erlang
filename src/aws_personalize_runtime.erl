%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_personalize_runtime).

-export([get_action_recommendations/2,
         get_action_recommendations/3,
         get_personalized_ranking/2,
         get_personalized_ranking/3,
         get_recommendations/2,
         get_recommendations/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_action_recommendations_request() :: #{
%%   <<"campaignArn">> => string(),
%%   <<"filterArn">> => string(),
%%   <<"filterValues">> => map(),
%%   <<"numResults">> => integer(),
%%   <<"userId">> => string()
%% }
-type get_action_recommendations_request() :: #{binary() => any()}.


%% Example:
%% get_action_recommendations_response() :: #{
%%   <<"actionList">> => list(predicted_action()),
%%   <<"recommendationId">> => string()
%% }
-type get_action_recommendations_response() :: #{binary() => any()}.


%% Example:
%% get_personalized_ranking_request() :: #{
%%   <<"campaignArn">> := string(),
%%   <<"context">> => map(),
%%   <<"filterArn">> => string(),
%%   <<"filterValues">> => map(),
%%   <<"inputList">> := list(string()),
%%   <<"metadataColumns">> => map(),
%%   <<"userId">> := string()
%% }
-type get_personalized_ranking_request() :: #{binary() => any()}.


%% Example:
%% get_personalized_ranking_response() :: #{
%%   <<"personalizedRanking">> => list(predicted_item()),
%%   <<"recommendationId">> => string()
%% }
-type get_personalized_ranking_response() :: #{binary() => any()}.


%% Example:
%% get_recommendations_request() :: #{
%%   <<"campaignArn">> => string(),
%%   <<"context">> => map(),
%%   <<"filterArn">> => string(),
%%   <<"filterValues">> => map(),
%%   <<"itemId">> => string(),
%%   <<"metadataColumns">> => map(),
%%   <<"numResults">> => integer(),
%%   <<"promotions">> => list(promotion()),
%%   <<"recommenderArn">> => string(),
%%   <<"userId">> => string()
%% }
-type get_recommendations_request() :: #{binary() => any()}.


%% Example:
%% get_recommendations_response() :: #{
%%   <<"itemList">> => list(predicted_item()),
%%   <<"recommendationId">> => string()
%% }
-type get_recommendations_response() :: #{binary() => any()}.


%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.


%% Example:
%% predicted_action() :: #{
%%   <<"actionId">> => string(),
%%   <<"score">> => float()
%% }
-type predicted_action() :: #{binary() => any()}.


%% Example:
%% predicted_item() :: #{
%%   <<"itemId">> => string(),
%%   <<"metadata">> => map(),
%%   <<"promotionName">> => string(),
%%   <<"reason">> => list(string()),
%%   <<"score">> => float()
%% }
-type predicted_item() :: #{binary() => any()}.


%% Example:
%% promotion() :: #{
%%   <<"filterArn">> => string(),
%%   <<"filterValues">> => map(),
%%   <<"name">> => string(),
%%   <<"percentPromotedItems">> => integer()
%% }
-type promotion() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

-type get_action_recommendations_errors() ::
    resource_not_found_exception() | 
    invalid_input_exception().

-type get_personalized_ranking_errors() ::
    resource_not_found_exception() | 
    invalid_input_exception().

-type get_recommendations_errors() ::
    resource_not_found_exception() | 
    invalid_input_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a list of recommended actions in sorted in descending order
%% by prediction score.
%%
%% Use the `GetActionRecommendations' API if you have a custom
%% campaign that deploys a solution version trained with a
%% PERSONALIZED_ACTIONS recipe.
%%
%% For more information about PERSONALIZED_ACTIONS recipes, see
%% PERSONALIZED_ACTIONS recipes:
%% https://docs.aws.amazon.com/personalize/latest/dg/nexts-best-action-recipes.html.
%% For more information about getting action recommendations, see Getting
%% action recommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/get-action-recommendations.html.
-spec get_action_recommendations(aws_client:aws_client(), get_action_recommendations_request()) ->
    {ok, get_action_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_action_recommendations_errors(), tuple()}.
get_action_recommendations(Client, Input) ->
    get_action_recommendations(Client, Input, []).

-spec get_action_recommendations(aws_client:aws_client(), get_action_recommendations_request(), proplists:proplist()) ->
    {ok, get_action_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_action_recommendations_errors(), tuple()}.
get_action_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/action-recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Re-ranks a list of recommended items for the given user.
%%
%% The first item in the list is
%% deemed the most likely item to be of interest to the user.
%%
%% The solution backing the campaign must have been created using a recipe of
%% type
%% PERSONALIZED_RANKING.
-spec get_personalized_ranking(aws_client:aws_client(), get_personalized_ranking_request()) ->
    {ok, get_personalized_ranking_response(), tuple()} |
    {error, any()} |
    {error, get_personalized_ranking_errors(), tuple()}.
get_personalized_ranking(Client, Input) ->
    get_personalized_ranking(Client, Input, []).

-spec get_personalized_ranking(aws_client:aws_client(), get_personalized_ranking_request(), proplists:proplist()) ->
    {ok, get_personalized_ranking_response(), tuple()} |
    {error, any()} |
    {error, get_personalized_ranking_errors(), tuple()}.
get_personalized_ranking(Client, Input0, Options0) ->
    Method = post,
    Path = ["/personalize-ranking"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of recommended items.
%%
%% For campaigns, the campaign's Amazon Resource Name (ARN) is required
%% and the required user and item input depends on the recipe type used to
%% create the solution backing the campaign as follows:
%%
%% USER_PERSONALIZATION - `userId' required, `itemId' not used
%%
%% RELATED_ITEMS - `itemId' required, `userId' not used
%%
%% Campaigns that are backed by a solution created using a recipe of type
%% PERSONALIZED_RANKING use the API.
%%
%% For recommenders, the recommender's ARN is required and the required
%% item and user input depends on the use case (domain-based recipe) backing
%% the recommender.
%% For information on use case requirements see Choosing recommender use
%% cases:
%% https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html.
-spec get_recommendations(aws_client:aws_client(), get_recommendations_request()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, Input) ->
    get_recommendations(Client, Input, []).

-spec get_recommendations(aws_client:aws_client(), get_recommendations_request(), proplists:proplist()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"personalize">>},
    Host = build_host(<<"personalize-runtime">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
