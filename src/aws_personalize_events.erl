%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Personalize can consume real-time user event data, such as
%% stream or click data, and use
%% it for model training either alone or combined with historical data.
%%
%% For more information see
%% Recording item interaction events:
%% https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html.
-module(aws_personalize_events).

-export([put_action_interactions/2,
         put_action_interactions/3,
         put_actions/2,
         put_actions/3,
         put_events/2,
         put_events/3,
         put_items/2,
         put_items/3,
         put_users/2,
         put_users/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% action() :: #{
%%   <<"actionId">> => string(),
%%   <<"properties">> => string()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% action_interaction() :: #{
%%   <<"actionId">> => string(),
%%   <<"eventId">> => string(),
%%   <<"eventType">> => string(),
%%   <<"impression">> => list(string()),
%%   <<"properties">> => string(),
%%   <<"recommendationId">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"userId">> => string()
%% }
-type action_interaction() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"eventId">> => string(),
%%   <<"eventType">> => string(),
%%   <<"eventValue">> => float(),
%%   <<"impression">> => list(string()),
%%   <<"itemId">> => string(),
%%   <<"metricAttribution">> => metric_attribution(),
%%   <<"properties">> => string(),
%%   <<"recommendationId">> => string(),
%%   <<"sentAt">> => non_neg_integer()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.


%% Example:
%% item() :: #{
%%   <<"itemId">> => string(),
%%   <<"properties">> => string()
%% }
-type item() :: #{binary() => any()}.


%% Example:
%% metric_attribution() :: #{
%%   <<"eventAttributionSource">> => string()
%% }
-type metric_attribution() :: #{binary() => any()}.


%% Example:
%% put_action_interactions_request() :: #{
%%   <<"actionInteractions">> := list(action_interaction()),
%%   <<"trackingId">> := string()
%% }
-type put_action_interactions_request() :: #{binary() => any()}.


%% Example:
%% put_actions_request() :: #{
%%   <<"actions">> := list(action()),
%%   <<"datasetArn">> := string()
%% }
-type put_actions_request() :: #{binary() => any()}.


%% Example:
%% put_events_request() :: #{
%%   <<"eventList">> := list(event()),
%%   <<"sessionId">> := string(),
%%   <<"trackingId">> := string(),
%%   <<"userId">> => string()
%% }
-type put_events_request() :: #{binary() => any()}.


%% Example:
%% put_items_request() :: #{
%%   <<"datasetArn">> := string(),
%%   <<"items">> := list(item())
%% }
-type put_items_request() :: #{binary() => any()}.


%% Example:
%% put_users_request() :: #{
%%   <<"datasetArn">> := string(),
%%   <<"users">> := list(user())
%% }
-type put_users_request() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"properties">> => string(),
%%   <<"userId">> => string()
%% }
-type user() :: #{binary() => any()}.

-type put_action_interactions_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    invalid_input_exception().

-type put_actions_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    invalid_input_exception().

-type put_events_errors() ::
    invalid_input_exception().

-type put_items_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    invalid_input_exception().

-type put_users_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    invalid_input_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Records action interaction event data.
%%
%% An action interaction event is an interaction between a user and an
%% action.
%% For example, a user taking an action, such a enrolling in a membership
%% program or downloading your app.
%%
%% For more information about recording action interactions, see Recording
%% action interaction events:
%% https://docs.aws.amazon.com/personalize/latest/dg/recording-action-interaction-events.html.
%% For more information about actions in an Actions dataset, see Actions
%% dataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/actions-datasets.html.
-spec put_action_interactions(aws_client:aws_client(), put_action_interactions_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_action_interactions_errors(), tuple()}.
put_action_interactions(Client, Input) ->
    put_action_interactions(Client, Input, []).

-spec put_action_interactions(aws_client:aws_client(), put_action_interactions_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_action_interactions_errors(), tuple()}.
put_action_interactions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/action-interactions"],
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

%% @doc Adds one or more actions to an Actions dataset.
%%
%% For more information see
%% Importing actions individually:
%% https://docs.aws.amazon.com/personalize/latest/dg/importing-actions.html.
-spec put_actions(aws_client:aws_client(), put_actions_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_actions_errors(), tuple()}.
put_actions(Client, Input) ->
    put_actions(Client, Input, []).

-spec put_actions(aws_client:aws_client(), put_actions_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_actions_errors(), tuple()}.
put_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/actions"],
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

%% @doc Records item interaction event data.
%%
%% For more information see
%% Recording item interaction events:
%% https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html.
-spec put_events(aws_client:aws_client(), put_events_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_events_errors(), tuple()}.
put_events(Client, Input) ->
    put_events(Client, Input, []).

-spec put_events(aws_client:aws_client(), put_events_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_events_errors(), tuple()}.
put_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/events"],
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

%% @doc Adds one or more items to an Items dataset.
%%
%% For more information see
%% Importing items individually:
%% https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html.
-spec put_items(aws_client:aws_client(), put_items_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_items_errors(), tuple()}.
put_items(Client, Input) ->
    put_items(Client, Input, []).

-spec put_items(aws_client:aws_client(), put_items_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_items_errors(), tuple()}.
put_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/items"],
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

%% @doc Adds one or more users to a Users dataset.
%%
%% For more information see
%% Importing users individually:
%% https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html.
-spec put_users(aws_client:aws_client(), put_users_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_users_errors(), tuple()}.
put_users(Client, Input) ->
    put_users(Client, Input, []).

-spec put_users(aws_client:aws_client(), put_users_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_users_errors(), tuple()}.
put_users(Client, Input0, Options0) ->
    Method = post,
    Path = ["/users"],
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
    Host = build_host(<<"personalize-events">>, Client1),
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
