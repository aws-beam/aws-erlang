%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amplify UI Builder API provides a programmatic interface for
%% creating and configuring user interface (UI) component libraries and
%% themes for use in your Amplify applications.
%%
%% You can then connect these UI components to an application's backend
%% Amazon Web Services resources.
%%
%% You can also use the Amplify Studio visual designer to create UI
%% components and model data for an app. For more information, see
%% Introduction in the Amplify Docs.
%%
%% The Amplify Framework is a comprehensive set of SDKs, libraries, tools,
%% and documentation for client app development. For more information, see
%% the Amplify Framework. For more information about deploying an Amplify
%% application to Amazon Web Services, see the Amplify User Guide.
-module(aws_amplifyuibuilder).

-export([create_component/4,
         create_component/5,
         create_theme/4,
         create_theme/5,
         delete_component/5,
         delete_component/6,
         delete_theme/5,
         delete_theme/6,
         exchange_code_for_token/3,
         exchange_code_for_token/4,
         export_components/3,
         export_components/5,
         export_components/6,
         export_themes/3,
         export_themes/5,
         export_themes/6,
         get_component/4,
         get_component/6,
         get_component/7,
         get_theme/4,
         get_theme/6,
         get_theme/7,
         list_components/3,
         list_components/5,
         list_components/6,
         list_themes/3,
         list_themes/5,
         list_themes/6,
         refresh_token/3,
         refresh_token/4,
         update_component/5,
         update_component/6,
         update_theme/5,
         update_theme/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new component for an Amplify app.
create_component(Client, AppId, EnvironmentName, Input) ->
    create_component(Client, AppId, EnvironmentName, Input, []).
create_component(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a theme to apply to the components in an Amplify app.
create_theme(Client, AppId, EnvironmentName, Input) ->
    create_theme(Client, AppId, EnvironmentName, Input, []).
create_theme(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a component from an Amplify app.
delete_component(Client, AppId, EnvironmentName, Id, Input) ->
    delete_component(Client, AppId, EnvironmentName, Id, Input, []).
delete_component(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
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

%% @doc Deletes a theme from an Amplify app.
delete_theme(Client, AppId, EnvironmentName, Id, Input) ->
    delete_theme(Client, AppId, EnvironmentName, Id, Input, []).
delete_theme(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
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

%% @doc Exchanges an access code for a token.
exchange_code_for_token(Client, Provider, Input) ->
    exchange_code_for_token(Client, Provider, Input, []).
exchange_code_for_token(Client, Provider, Input0, Options0) ->
    Method = post,
    Path = ["/tokens/", aws_util:encode_uri(Provider), ""],
    SuccessStatusCode = 200,
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

%% @doc Exports component configurations to code that is ready to integrate
%% into an Amplify app.
export_components(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    export_components(Client, AppId, EnvironmentName, #{}, #{}).

export_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

export_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports theme configurations to code that is ready to integrate into
%% an Amplify app.
export_themes(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    export_themes(Client, AppId, EnvironmentName, #{}, #{}).

export_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

export_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an existing component for an Amplify app.
get_component(Client, AppId, EnvironmentName, Id)
  when is_map(Client) ->
    get_component(Client, AppId, EnvironmentName, Id, #{}, #{}).

get_component(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, []).

get_component(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an existing theme for an Amplify app.
get_theme(Client, AppId, EnvironmentName, Id)
  when is_map(Client) ->
    get_theme(Client, AppId, EnvironmentName, Id, #{}, #{}).

get_theme(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_theme(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, []).

get_theme(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of components for a specified Amplify app and
%% backend environment.
list_components(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    list_components(Client, AppId, EnvironmentName, #{}, #{}).

list_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

list_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of themes for a specified Amplify app and backend
%% environment.
list_themes(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    list_themes(Client, AppId, EnvironmentName, #{}, #{}).

list_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

list_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Refreshes a previously issued access token that might have expired.
refresh_token(Client, Provider, Input) ->
    refresh_token(Client, Provider, Input, []).
refresh_token(Client, Provider, Input0, Options0) ->
    Method = post,
    Path = ["/tokens/", aws_util:encode_uri(Provider), "/refresh"],
    SuccessStatusCode = 200,
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

%% @doc Updates an existing component.
update_component(Client, AppId, EnvironmentName, Id, Input) ->
    update_component(Client, AppId, EnvironmentName, Id, Input, []).
update_component(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing theme.
update_theme(Client, AppId, EnvironmentName, Id, Input) ->
    update_theme(Client, AppId, EnvironmentName, Id, Input, []).
update_theme(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"amplifyuibuilder">>},
    Host = build_host(<<"amplifyuibuilder">>, Client1),
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
