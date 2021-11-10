%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon AppIntegrations service enables you to configure and reuse
%% connections to external applications.
%%
%% For information about how you can use external applications with Amazon
%% Connect, see Set up pre-built integrations and Deliver information to
%% agents using Amazon Connect Wisdom in the Amazon Connect Administrator
%% Guide.
-module(aws_appintegrations).

-export([create_data_integration/2,
         create_data_integration/3,
         create_event_integration/2,
         create_event_integration/3,
         delete_data_integration/3,
         delete_data_integration/4,
         delete_event_integration/3,
         delete_event_integration/4,
         get_data_integration/2,
         get_data_integration/4,
         get_data_integration/5,
         get_event_integration/2,
         get_event_integration/4,
         get_event_integration/5,
         list_data_integration_associations/2,
         list_data_integration_associations/4,
         list_data_integration_associations/5,
         list_data_integrations/1,
         list_data_integrations/3,
         list_data_integrations/4,
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
         update_data_integration/3,
         update_data_integration/4,
         update_event_integration/3,
         update_event_integration/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates and persists a DataIntegration resource.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated. Use a different DataIntegration, or
%% recreate the DataIntegration using the `CreateDataIntegration' API.
create_data_integration(Client, Input) ->
    create_data_integration(Client, Input, []).
create_data_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dataIntegrations"],
    SuccessStatusCode = undefined,
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

%% @doc Creates an EventIntegration, given a specified name, description, and
%% a reference to an Amazon EventBridge bus in your account and a partner
%% event source that pushes events to that bus.
%%
%% No objects are created in the your account, only metadata that is
%% persisted on the EventIntegration control plane.
create_event_integration(Client, Input) ->
    create_event_integration(Client, Input, []).
create_event_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/eventIntegrations"],
    SuccessStatusCode = undefined,
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

%% @doc Deletes the DataIntegration.
%%
%% Only DataIntegrations that don't have any DataIntegrationAssociations can
%% be deleted. Deleting a DataIntegration also deletes the underlying Amazon
%% AppFlow flow and service linked role.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated. Use a different DataIntegration, or
%% recreate the DataIntegration using the CreateDataIntegration API.
delete_data_integration(Client, DataIntegrationIdentifier, Input) ->
    delete_data_integration(Client, DataIntegrationIdentifier, Input, []).
delete_data_integration(Client, DataIntegrationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/dataIntegrations/", aws_util:encode_uri(DataIntegrationIdentifier), ""],
    SuccessStatusCode = undefined,
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

%% @doc Deletes the specified existing event integration.
%%
%% If the event integration is associated with clients, the request is
%% rejected.
delete_event_integration(Client, Name, Input) ->
    delete_event_integration(Client, Name, Input, []).
delete_event_integration(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
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

%% @doc Returns information about the DataIntegration.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated. Use a different DataIntegration, or
%% recreate the DataIntegration using the CreateDataIntegration API.
get_data_integration(Client, Identifier)
  when is_map(Client) ->
    get_data_integration(Client, Identifier, #{}, #{}).

get_data_integration(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_integration(Client, Identifier, QueryMap, HeadersMap, []).

get_data_integration(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataIntegrations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the event integration.
get_event_integration(Client, Name)
  when is_map(Client) ->
    get_event_integration(Client, Name, #{}, #{}).

get_event_integration(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_integration(Client, Name, QueryMap, HeadersMap, []).

get_event_integration(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of DataIntegration associations in the
%% account.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated. Use a different DataIntegration, or
%% recreate the DataIntegration using the CreateDataIntegration API.
list_data_integration_associations(Client, DataIntegrationIdentifier)
  when is_map(Client) ->
    list_data_integration_associations(Client, DataIntegrationIdentifier, #{}, #{}).

list_data_integration_associations(Client, DataIntegrationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_integration_associations(Client, DataIntegrationIdentifier, QueryMap, HeadersMap, []).

list_data_integration_associations(Client, DataIntegrationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataIntegrations/", aws_util:encode_uri(DataIntegrationIdentifier), "/associations"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a paginated list of DataIntegrations in the account.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated. Use a different DataIntegration, or
%% recreate the DataIntegration using the CreateDataIntegration API.
list_data_integrations(Client)
  when is_map(Client) ->
    list_data_integrations(Client, #{}, #{}).

list_data_integrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_integrations(Client, QueryMap, HeadersMap, []).

list_data_integrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataIntegrations"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a paginated list of event integration associations in the
%% account.
list_event_integration_associations(Client, EventIntegrationName)
  when is_map(Client) ->
    list_event_integration_associations(Client, EventIntegrationName, #{}, #{}).

list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap, []).

list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eventIntegrations/", aws_util:encode_uri(EventIntegrationName), "/associations"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a paginated list of event integrations in the account.
list_event_integrations(Client)
  when is_map(Client) ->
    list_event_integrations(Client, #{}, #{}).

list_event_integrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_integrations(Client, QueryMap, HeadersMap, []).

list_event_integrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eventIntegrations"],
    SuccessStatusCode = undefined,
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

%% @doc Lists the tags for the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Removes the specified tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the description of a DataIntegration.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated. Use a different DataIntegration, or
%% recreate the DataIntegration using the CreateDataIntegration API.
update_data_integration(Client, Identifier, Input) ->
    update_data_integration(Client, Identifier, Input, []).
update_data_integration(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/dataIntegrations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates the description of an event integration.
update_event_integration(Client, Name, Input) ->
    update_event_integration(Client, Name, Input, []).
update_event_integration(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"app-integrations">>},
    Host = build_host(<<"app-integrations">>, Client1),
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
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
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
