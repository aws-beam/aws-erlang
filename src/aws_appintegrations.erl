%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% The Amazon AppIntegrations service enables you to configure and reuse
%% connections to external applications.
%%
%% For information about how you can use external applications with Amazon
%% Connect, see Set up pre-built integrations in the Amazon Connect
%% Administrator Guide.
-module(aws_appintegrations).

-export([create_event_integration/2,
         create_event_integration/3,
         delete_event_integration/3,
         delete_event_integration/4,
         get_event_integration/2,
         get_event_integration/4,
         get_event_integration/5,
         list_event_integration_associations/2,
         list_event_integration_associations/4,
         list_event_integration_associations/5,
         list_event_integrations/1,
         list_event_integrations/3,
         list_event_integrations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_event_integration/3,
         update_event_integration/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Creates an EventIntegration, given a specified name, description, and a
%% reference to an Amazon Eventbridge bus in your account and a partner event
%% source that will push events to that bus. No objects are created in the
%% your account, only metadata that is persisted on the EventIntegration
%% control plane.
create_event_integration(Client, Input) ->
    create_event_integration(Client, Input, []).
create_event_integration(Client, Input0, Options) ->
    Method = post,
    Path = ["/eventIntegrations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Deletes the specified existing event integration. If the event integration
%% is associated with clients, the request is rejected.
delete_event_integration(Client, Name, Input) ->
    delete_event_integration(Client, Name, Input, []).
delete_event_integration(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Return information about the event integration.
get_event_integration(Client, Name)
  when is_map(Client) ->
    get_event_integration(Client, Name, #{}, #{}).

get_event_integration(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_integration(Client, Name, QueryMap, HeadersMap, []).

get_event_integration(Client, Name, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Returns a paginated list of event integration associations in the account.
list_event_integration_associations(Client, EventIntegrationName)
  when is_map(Client) ->
    list_event_integration_associations(Client, EventIntegrationName, #{}, #{}).

list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap, []).

list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/eventIntegrations/", aws_util:encode_uri(EventIntegrationName), "/associations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Returns a paginated list of event integrations in the account.
list_event_integrations(Client)
  when is_map(Client) ->
    list_event_integrations(Client, #{}, #{}).

list_event_integrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_integrations(Client, QueryMap, HeadersMap, []).

list_event_integrations(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/eventIntegrations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Lists the tags for the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Adds the specified tags to the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Removes the specified tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The Amazon AppIntegrations APIs are in preview release and are
%% subject to change.
%%
%% Updates the description of an event integration.
update_event_integration(Client, Name, Input) ->
    update_event_integration(Client, Name, Input, []).
update_event_integration(Client, Name, Input0, Options) ->
    Method = patch,
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"app-integrations">>},
    Host = build_host(<<"app-integrations">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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
