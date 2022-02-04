%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AppConfig Data provides the data plane APIs your application uses to
%% retrieve configuration data.
%%
%% Here's how it works:
%%
%% Your application retrieves configuration data by first establishing a
%% configuration session using the AppConfig Data `StartConfigurationSession'
%% API action. Your session's client then makes periodic calls to
%% `GetLatestConfiguration' to check for and retrieve the latest data
%% available.
%%
%% When calling `StartConfigurationSession', your code sends the following
%% information:
%%
%% <ul> <li> Identifiers (ID or name) of an AppConfig application,
%% environment, and configuration profile that the session tracks.
%%
%% </li> <li> (Optional) The minimum amount of time the session's client must
%% wait between calls to `GetLatestConfiguration'.
%%
%% </li> </ul> In response, AppConfig provides an `InitialConfigurationToken'
%% to be given to the session's client and used the first time it calls
%% `GetLatestConfiguration' for that session.
%%
%% When calling `GetLatestConfiguration', your client code sends the most
%% recent `ConfigurationToken' value it has and receives in response:
%%
%% <ul> <li> `NextPollConfigurationToken': the `ConfigurationToken' value to
%% use on the next call to `GetLatestConfiguration'.
%%
%% </li> <li> `NextPollIntervalInSeconds': the duration the client should
%% wait before making its next call to `GetLatestConfiguration'. This
%% duration may vary over the course of the session, so it should be used
%% instead of the value sent on the `StartConfigurationSession' call.
%%
%% </li> <li> The configuration: the latest data intended for the session.
%% This may be empty if the client already has the latest version of the
%% configuration.
%%
%% </li> </ul> For more information and to view example CLI commands that
%% show how to retrieve a configuration using the AppConfig Data
%% `StartConfigurationSession' and `GetLatestConfiguration' API actions, see
%% Receiving the configuration in the AppConfig User Guide.
-module(aws_appconfigdata).

-export([get_latest_configuration/2,
         get_latest_configuration/4,
         get_latest_configuration/5,
         start_configuration_session/2,
         start_configuration_session/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves the latest deployed configuration.
%%
%% This API may return empty configuration data if the client already has the
%% latest version. For more information about this API action and to view
%% example CLI commands that show how to use it with the
%% `StartConfigurationSession' API action, see Receiving the configuration in
%% the AppConfig User Guide.
%%
%% Note the following important information.
%%
%% Each configuration token is only valid for one call to
%% `GetLatestConfiguration'. The `GetLatestConfiguration' response includes a
%% `NextPollConfigurationToken' that should always replace the token used for
%% the just-completed call in preparation for the next one.
%%
%% `GetLatestConfiguration' is a priced call. For more information, see
%% Pricing.
get_latest_configuration(Client, ConfigurationToken)
  when is_map(Client) ->
    get_latest_configuration(Client, ConfigurationToken, #{}, #{}).

get_latest_configuration(Client, ConfigurationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_latest_configuration(Client, ConfigurationToken, QueryMap, HeadersMap, []).

get_latest_configuration(Client, ConfigurationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"configuration_token">>, ConfigurationToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"Next-Poll-Configuration-Token">>, <<"NextPollConfigurationToken">>},
            {<<"Next-Poll-Interval-In-Seconds">>, <<"NextPollIntervalInSeconds">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Starts a configuration session used to retrieve a deployed
%% configuration.
%%
%% For more information about this API action and to view example CLI
%% commands that show how to use it with the `GetLatestConfiguration' API
%% action, see Receiving the configuration in the AppConfig User Guide.
start_configuration_session(Client, Input) ->
    start_configuration_session(Client, Input, []).
start_configuration_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationsessions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"appconfig">>},
    Host = build_host(<<"appconfigdata">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

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
