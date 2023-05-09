%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc SimSpace Weaver (SimSpace Weaver) is a managed service that you can
%% use to build and operate large-scale spatial simulations in the Amazon Web
%% Services Cloud.
%%
%% For example, you can create a digital twin of a city, crowd simulations
%% with millions of people and objects, and massively multiplayer games with
%% hundreds of thousands of connected players. For more information about
%% SimSpace Weaver, see the SimSpace Weaver User Guide .
%%
%% This API reference describes the API operations and data types that you
%% can use to communicate directly with SimSpace Weaver.
%%
%% SimSpace Weaver also provides the SimSpace Weaver app SDK, which you use
%% for app development. The SimSpace Weaver app SDK API reference is included
%% in the SimSpace Weaver app SDK documentation. This documentation is part
%% of the SimSpace Weaver app SDK distributable package.
-module(aws_simspaceweaver).

-export([create_snapshot/2,
         create_snapshot/3,
         delete_app/2,
         delete_app/3,
         delete_simulation/2,
         delete_simulation/3,
         describe_app/4,
         describe_app/6,
         describe_app/7,
         describe_simulation/2,
         describe_simulation/4,
         describe_simulation/5,
         list_apps/2,
         list_apps/4,
         list_apps/5,
         list_simulations/1,
         list_simulations/3,
         list_simulations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_app/2,
         start_app/3,
         start_clock/2,
         start_clock/3,
         start_simulation/2,
         start_simulation/3,
         stop_app/2,
         stop_app/3,
         stop_clock/2,
         stop_clock/3,
         stop_simulation/2,
         stop_simulation/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a snapshot of the specified simulation.
%%
%% A snapshot is a file that contains simulation state data at a specific
%% time. The state data saved in a snapshot includes entity data from the
%% State Fabric, the simulation configuration specified in the schema, and
%% the clock tick number. You can use the snapshot to initialize a new
%% simulation. For more information about snapshots, see Snapshots in the
%% SimSpace Weaver User Guide.
%%
%% You specify a `Destination' when you create a snapshot. The
%% `Destination' is the name of an Amazon S3 bucket and an optional
%% `ObjectKeyPrefix'. The `ObjectKeyPrefix' is usually the name of a
%% folder in the bucket. SimSpace Weaver creates a `snapshot' folder
%% inside the `Destination' and places the snapshot file there.
%%
%% The snapshot file is an Amazon S3 object. It has an object key with the
%% form: `
%% object-key-prefix/snapshot/simulation-name-YYMMdd-HHmm-ss.zip', where:
%%
%% <ul> <li> ` YY ' is the 2-digit year
%%
%% </li> <li> ` MM ' is the 2-digit month
%%
%% </li> <li> ` dd ' is the 2-digit day of the month
%%
%% </li> <li> ` HH ' is the 2-digit hour (24-hour clock)
%%
%% </li> <li> ` mm ' is the 2-digit minutes
%%
%% </li> <li> ` ss ' is the 2-digit seconds
%%
%% </li> </ul>
create_snapshot(Client, Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createsnapshot"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the instance of the given custom app.
delete_app(Client, Input) ->
    delete_app(Client, Input, []).
delete_app(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deleteapp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"app">>, <<"App">>},
                     {<<"domain">>, <<"Domain">>},
                     {<<"simulation">>, <<"Simulation">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all SimSpace Weaver resources assigned to the given
%% simulation.
%%
%% Your simulation uses resources in other Amazon Web Services. This API
%% operation doesn't delete resources in other Amazon Web Services.
delete_simulation(Client, Input) ->
    delete_simulation(Client, Input, []).
delete_simulation(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deletesimulation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"simulation">>, <<"Simulation">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the state of the given custom app.
describe_app(Client, App, Domain, Simulation)
  when is_map(Client) ->
    describe_app(Client, App, Domain, Simulation, #{}, #{}).

describe_app(Client, App, Domain, Simulation, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app(Client, App, Domain, Simulation, QueryMap, HeadersMap, []).

describe_app(Client, App, Domain, Simulation, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/describeapp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"app">>, App},
        {<<"domain">>, Domain},
        {<<"simulation">>, Simulation}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current state of the given simulation.
describe_simulation(Client, Simulation)
  when is_map(Client) ->
    describe_simulation(Client, Simulation, #{}, #{}).

describe_simulation(Client, Simulation, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_simulation(Client, Simulation, QueryMap, HeadersMap, []).

describe_simulation(Client, Simulation, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/describesimulation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"simulation">>, Simulation}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all custom apps or service apps for the given simulation and
%% domain.
list_apps(Client, Simulation)
  when is_map(Client) ->
    list_apps(Client, Simulation, #{}, #{}).

list_apps(Client, Simulation, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apps(Client, Simulation, QueryMap, HeadersMap, []).

list_apps(Client, Simulation, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listapps"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, maps:get(<<"domain">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"simulation">>, Simulation}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SimSpace Weaver simulations in the Amazon Web Services
%% account used to make the API call.
list_simulations(Client)
  when is_map(Client) ->
    list_simulations(Client, #{}, #{}).

list_simulations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_simulations(Client, QueryMap, HeadersMap, []).

list_simulations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listsimulations"],
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

%% @doc Lists all tags on a SimSpace Weaver resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a custom app with the configuration specified in the
%% simulation schema.
start_app(Client, Input) ->
    start_app(Client, Input, []).
start_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startapp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts the simulation clock.
start_clock(Client, Input) ->
    start_clock(Client, Input, []).
start_clock(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startclock"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a simulation with the given name.
%%
%% You must choose to start your simulation from a schema or from a snapshot.
%% For more information about the schema, see the schema reference in the
%% SimSpace Weaver User Guide. For more information about snapshots, see
%% Snapshots in the SimSpace Weaver User Guide.
start_simulation(Client, Input) ->
    start_simulation(Client, Input, []).
start_simulation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startsimulation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the given custom app and shuts down all of its allocated
%% compute resources.
stop_app(Client, Input) ->
    stop_app(Client, Input, []).
stop_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stopapp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the simulation clock.
stop_clock(Client, Input) ->
    stop_clock(Client, Input, []).
stop_clock(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stopclock"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the given simulation.
%%
%% You can't restart a simulation after you stop it. If you want to
%% restart a simulation, then you must stop it, delete it, and start a new
%% instance of it.
stop_simulation(Client, Input) ->
    stop_simulation(Client, Input, []).
stop_simulation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stopsimulation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a SimSpace Weaver resource.
%%
%% For more information about tags, see Tagging Amazon Web Services resources
%% in the Amazon Web Services General Reference.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a SimSpace Weaver resource.
%%
%% For more information about tags, see Tagging Amazon Web Services resources
%% in the Amazon Web Services General Reference.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
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
    Client1 = Client#{service => <<"simspaceweaver">>},
    Host = build_host(<<"simspaceweaver">>, Client1),
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
