%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Migration Hub Strategy Recommendations
%%
%% <p>This API reference provides descriptions, syntax, and other details
%% about each of the actions and data types for Migration Hub Strategy
%% Recommendations (Strategy Recommendations).
%%
%% The topic for each action shows the API request parameters and the
%% response. Alternatively, you can use one of the AWS SDKs to access an API
%% that is tailored to the programming language or platform that you're
%% using. For more information, see <a
%% href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p>
-module(aws_migrationhubstrategy).

-export([get_application_component_details/2,
         get_application_component_details/4,
         get_application_component_details/5,
         get_application_component_strategies/2,
         get_application_component_strategies/4,
         get_application_component_strategies/5,
         get_assessment/2,
         get_assessment/4,
         get_assessment/5,
         get_import_file_task/2,
         get_import_file_task/4,
         get_import_file_task/5,
         get_portfolio_preferences/1,
         get_portfolio_preferences/3,
         get_portfolio_preferences/4,
         get_portfolio_summary/1,
         get_portfolio_summary/3,
         get_portfolio_summary/4,
         get_recommendation_report_details/2,
         get_recommendation_report_details/4,
         get_recommendation_report_details/5,
         get_server_details/2,
         get_server_details/4,
         get_server_details/5,
         get_server_strategies/2,
         get_server_strategies/4,
         get_server_strategies/5,
         list_application_components/2,
         list_application_components/3,
         list_collectors/1,
         list_collectors/3,
         list_collectors/4,
         list_import_file_task/1,
         list_import_file_task/3,
         list_import_file_task/4,
         list_servers/2,
         list_servers/3,
         put_portfolio_preferences/2,
         put_portfolio_preferences/3,
         start_assessment/2,
         start_assessment/3,
         start_import_file_task/2,
         start_import_file_task/3,
         start_recommendation_report_generation/2,
         start_recommendation_report_generation/3,
         stop_assessment/2,
         stop_assessment/3,
         update_application_component_config/2,
         update_application_component_config/3,
         update_server_config/2,
         update_server_config/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves details about an application component.
get_application_component_details(Client, ApplicationComponentId)
  when is_map(Client) ->
    get_application_component_details(Client, ApplicationComponentId, #{}, #{}).

get_application_component_details(Client, ApplicationComponentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_component_details(Client, ApplicationComponentId, QueryMap, HeadersMap, []).

get_application_component_details(Client, ApplicationComponentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-applicationcomponent-details/", aws_util:encode_uri(ApplicationComponentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all the recommended strategies and tools for an
%% application component running on a server.
get_application_component_strategies(Client, ApplicationComponentId)
  when is_map(Client) ->
    get_application_component_strategies(Client, ApplicationComponentId, #{}, #{}).

get_application_component_strategies(Client, ApplicationComponentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_component_strategies(Client, ApplicationComponentId, QueryMap, HeadersMap, []).

get_application_component_strategies(Client, ApplicationComponentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-applicationcomponent-strategies/", aws_util:encode_uri(ApplicationComponentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status of an on-going assessment.
get_assessment(Client, Id)
  when is_map(Client) ->
    get_assessment(Client, Id, #{}, #{}).

get_assessment(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assessment(Client, Id, QueryMap, HeadersMap, []).

get_assessment(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-assessment/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details about a specific import task.
get_import_file_task(Client, Id)
  when is_map(Client) ->
    get_import_file_task(Client, Id, #{}, #{}).

get_import_file_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_file_task(Client, Id, QueryMap, HeadersMap, []).

get_import_file_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-import-file-task/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves your migration and modernization preferences.
get_portfolio_preferences(Client)
  when is_map(Client) ->
    get_portfolio_preferences(Client, #{}, #{}).

get_portfolio_preferences(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portfolio_preferences(Client, QueryMap, HeadersMap, []).

get_portfolio_preferences(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-portfolio-preferences"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves overall summary including the number of servers to rehost
%% and the overall number of anti-patterns.
get_portfolio_summary(Client)
  when is_map(Client) ->
    get_portfolio_summary(Client, #{}, #{}).

get_portfolio_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portfolio_summary(Client, QueryMap, HeadersMap, []).

get_portfolio_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-portfolio-summary"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about the specified recommendation
%% report.
get_recommendation_report_details(Client, Id)
  when is_map(Client) ->
    get_recommendation_report_details(Client, Id, #{}, #{}).

get_recommendation_report_details(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendation_report_details(Client, Id, QueryMap, HeadersMap, []).

get_recommendation_report_details(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-recommendation-report-details/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specified server.
get_server_details(Client, ServerId)
  when is_map(Client) ->
    get_server_details(Client, ServerId, #{}, #{}).

get_server_details(Client, ServerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_server_details(Client, ServerId, QueryMap, HeadersMap, []).

get_server_details(Client, ServerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-server-details/", aws_util:encode_uri(ServerId), ""],
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

%% @doc Retrieves recommended strategies and tools for the specified server.
get_server_strategies(Client, ServerId)
  when is_map(Client) ->
    get_server_strategies(Client, ServerId, #{}, #{}).

get_server_strategies(Client, ServerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_server_strategies(Client, ServerId, QueryMap, HeadersMap, []).

get_server_strategies(Client, ServerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-server-strategies/", aws_util:encode_uri(ServerId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all the application components (processes).
list_application_components(Client, Input) ->
    list_application_components(Client, Input, []).
list_application_components(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-applicationcomponents"],
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

%% @doc Retrieves a list of all the installed collectors.
list_collectors(Client)
  when is_map(Client) ->
    list_collectors(Client, #{}, #{}).

list_collectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collectors(Client, QueryMap, HeadersMap, []).

list_collectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-collectors"],
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

%% @doc Retrieves a list of all the imports performed.
list_import_file_task(Client)
  when is_map(Client) ->
    list_import_file_task(Client, #{}, #{}).

list_import_file_task(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_import_file_task(Client, QueryMap, HeadersMap, []).

list_import_file_task(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-import-file-task"],
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

%% @doc Returns a list of all the servers.
list_servers(Client, Input) ->
    list_servers(Client, Input, []).
list_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-servers"],
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

%% @doc Saves the specified migration and modernization preferences.
put_portfolio_preferences(Client, Input) ->
    put_portfolio_preferences(Client, Input, []).
put_portfolio_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/put-portfolio-preferences"],
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

%% @doc Starts the assessment of an on-premises environment.
start_assessment(Client, Input) ->
    start_assessment(Client, Input, []).
start_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-assessment"],
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

%% @doc Starts a file import.
start_import_file_task(Client, Input) ->
    start_import_file_task(Client, Input, []).
start_import_file_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-import-file-task"],
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

%% @doc Starts generating a recommendation report.
start_recommendation_report_generation(Client, Input) ->
    start_recommendation_report_generation(Client, Input, []).
start_recommendation_report_generation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-recommendation-report-generation"],
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

%% @doc Stops the assessment of an on-premises environment.
stop_assessment(Client, Input) ->
    stop_assessment(Client, Input, []).
stop_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stop-assessment"],
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

%% @doc Updates the configuration of an application component.
update_application_component_config(Client, Input) ->
    update_application_component_config(Client, Input, []).
update_application_component_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-applicationcomponent-config/"],
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

%% @doc Updates the configuration of the specified server.
update_server_config(Client, Input) ->
    update_server_config(Client, Input, []).
update_server_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-server-config/"],
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
    Client1 = Client#{service => <<"migrationhub-strategy">>},
    Host = build_host(<<"migrationhub-strategy">>, Client1),
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
