%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Catalog API actions allow you to manage your entities through list,
%% describe, and update capabilities.
%%
%% An entity can be a product or an offer on AWS Marketplace.
%%
%% You can automate your entity update process by integrating the AWS
%% Marketplace Catalog API with your AWS Marketplace product build or
%% deployment pipelines. You can also create your own applications on top of
%% the Catalog API to manage your products on AWS Marketplace.
-module(aws_marketplace_catalog).

-export([cancel_change_set/2,
         cancel_change_set/3,
         describe_change_set/3,
         describe_change_set/5,
         describe_change_set/6,
         describe_entity/3,
         describe_entity/5,
         describe_entity/6,
         list_change_sets/2,
         list_change_sets/3,
         list_entities/2,
         list_entities/3,
         start_change_set/2,
         start_change_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Used to cancel an open change request.
%%
%% Must be sent before the status of the request changes to `APPLYING', the
%% final stage of completing your change request. You can describe a change
%% during the 60-day request history retention period for API calls.
cancel_change_set(Client, Input) ->
    cancel_change_set(Client, Input, []).
cancel_change_set(Client, Input0, Options) ->
    Method = patch,
    Path = ["/CancelChangeSet"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"catalog">>, <<"Catalog">>},
                     {<<"changeSetId">>, <<"ChangeSetId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Provides information about a given change set.
describe_change_set(Client, Catalog, ChangeSetId)
  when is_map(Client) ->
    describe_change_set(Client, Catalog, ChangeSetId, #{}, #{}).

describe_change_set(Client, Catalog, ChangeSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_change_set(Client, Catalog, ChangeSetId, QueryMap, HeadersMap, []).

describe_change_set(Client, Catalog, ChangeSetId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/DescribeChangeSet"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"catalog">>, Catalog},
        {<<"changeSetId">>, ChangeSetId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the metadata and content of the entity.
describe_entity(Client, Catalog, EntityId)
  when is_map(Client) ->
    describe_entity(Client, Catalog, EntityId, #{}, #{}).

describe_entity(Client, Catalog, EntityId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_entity(Client, Catalog, EntityId, QueryMap, HeadersMap, []).

describe_entity(Client, Catalog, EntityId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/DescribeEntity"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"catalog">>, Catalog},
        {<<"entityId">>, EntityId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of change sets owned by the account being used to
%% make the call.
%%
%% You can filter this list by providing any combination of `entityId',
%% `ChangeSetName', and status. If you provide more than one filter, the API
%% operation applies a logical AND between the filters.
%%
%% You can describe a change during the 60-day request history retention
%% period for API calls.
list_change_sets(Client, Input) ->
    list_change_sets(Client, Input, []).
list_change_sets(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListChangeSets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Provides the list of entities of a given type.
list_entities(Client, Input) ->
    list_entities(Client, Input, []).
list_entities(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListEntities"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This operation allows you to request changes for your entities.
%%
%% Within a single ChangeSet, you cannot start the same change type against
%% the same entity multiple times. Additionally, when a ChangeSet is running,
%% all the entities targeted by the different changes are locked until the
%% ChangeSet has completed (either succeeded, cancelled, or failed). If you
%% try to start a ChangeSet containing a change against an entity that is
%% already locked, you will receive a `ResourceInUseException'.
%%
%% For example, you cannot start the ChangeSet described in the example below
%% because it contains two changes to execute the same change type
%% (`AddRevisions') against the same entity (`entity-id@1)'.
start_change_set(Client, Input) ->
    start_change_set(Client, Input, []).
start_change_set(Client, Input0, Options) ->
    Method = post,
    Path = ["/StartChangeSet"],
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
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = build_host(<<"catalog.marketplace">>, Client1),
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
