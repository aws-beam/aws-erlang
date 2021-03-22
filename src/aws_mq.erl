%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon MQ is a managed message broker service for Apache ActiveMQ and
%% RabbitMQ that makes it easy to set up and operate message brokers in the
%% cloud.
%%
%% A message broker allows software applications and components to
%% communicate using various programming languages, operating systems, and
%% formal messaging protocols.
-module(aws_mq).

-export([create_broker/2,
         create_broker/3,
         create_configuration/2,
         create_configuration/3,
         create_tags/3,
         create_tags/4,
         create_user/4,
         create_user/5,
         delete_broker/3,
         delete_broker/4,
         delete_tags/3,
         delete_tags/4,
         delete_user/4,
         delete_user/5,
         describe_broker/2,
         describe_broker/4,
         describe_broker/5,
         describe_broker_engine_types/1,
         describe_broker_engine_types/3,
         describe_broker_engine_types/4,
         describe_broker_instance_options/1,
         describe_broker_instance_options/3,
         describe_broker_instance_options/4,
         describe_configuration/2,
         describe_configuration/4,
         describe_configuration/5,
         describe_configuration_revision/3,
         describe_configuration_revision/5,
         describe_configuration_revision/6,
         describe_user/3,
         describe_user/5,
         describe_user/6,
         list_brokers/1,
         list_brokers/3,
         list_brokers/4,
         list_configuration_revisions/2,
         list_configuration_revisions/4,
         list_configuration_revisions/5,
         list_configurations/1,
         list_configurations/3,
         list_configurations/4,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_users/2,
         list_users/4,
         list_users/5,
         reboot_broker/3,
         reboot_broker/4,
         update_broker/3,
         update_broker/4,
         update_configuration/3,
         update_configuration/4,
         update_user/4,
         update_user/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a broker.
%%
%% Note: This API is asynchronous.
create_broker(Client, Input) ->
    create_broker(Client, Input, []).
create_broker(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/brokers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new configuration for the specified configuration name.
%%
%% Amazon MQ uses the default configuration (the engine type and version).
create_configuration(Client, Input) ->
    create_configuration(Client, Input, []).
create_configuration(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/configurations"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Add a tag to a resource.
create_tags(Client, ResourceArn, Input) ->
    create_tags(Client, ResourceArn, Input, []).
create_tags(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an ActiveMQ user.
create_user(Client, BrokerId, Username, Input) ->
    create_user(Client, BrokerId, Username, Input, []).
create_user(Client, BrokerId, Username, Input0, Options) ->
    Method = post,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a broker.
%%
%% Note: This API is asynchronous.
delete_broker(Client, BrokerId, Input) ->
    delete_broker(Client, BrokerId, Input, []).
delete_broker(Client, BrokerId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a resource.
delete_tags(Client, ResourceArn, Input) ->
    delete_tags(Client, ResourceArn, Input, []).
delete_tags(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an ActiveMQ user.
delete_user(Client, BrokerId, Username, Input) ->
    delete_user(Client, BrokerId, Username, Input, []).
delete_user(Client, BrokerId, Username, Input0, Options) ->
    Method = delete,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about the specified broker.
describe_broker(Client, BrokerId)
  when is_map(Client) ->
    describe_broker(Client, BrokerId, #{}, #{}).

describe_broker(Client, BrokerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_broker(Client, BrokerId, QueryMap, HeadersMap, []).

describe_broker(Client, BrokerId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe available engine types and versions.
describe_broker_engine_types(Client)
  when is_map(Client) ->
    describe_broker_engine_types(Client, #{}, #{}).

describe_broker_engine_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_broker_engine_types(Client, QueryMap, HeadersMap, []).

describe_broker_engine_types(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/broker-engine-types"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe available broker instance options.
describe_broker_instance_options(Client)
  when is_map(Client) ->
    describe_broker_instance_options(Client, #{}, #{}).

describe_broker_instance_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_broker_instance_options(Client, QueryMap, HeadersMap, []).

describe_broker_instance_options(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/broker-instance-options"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"hostInstanceType">>, maps:get(<<"hostInstanceType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"storageType">>, maps:get(<<"storageType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified configuration.
describe_configuration(Client, ConfigurationId)
  when is_map(Client) ->
    describe_configuration(Client, ConfigurationId, #{}, #{}).

describe_configuration(Client, ConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration(Client, ConfigurationId, QueryMap, HeadersMap, []).

describe_configuration(Client, ConfigurationId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the specified configuration revision for the specified
%% configuration.
describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision)
  when is_map(Client) ->
    describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, #{}, #{}).

describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, QueryMap, HeadersMap, []).

describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), "/revisions/", aws_util:encode_uri(ConfigurationRevision), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ActiveMQ user.
describe_user(Client, BrokerId, Username)
  when is_map(Client) ->
    describe_user(Client, BrokerId, Username, #{}, #{}).

describe_user(Client, BrokerId, Username, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user(Client, BrokerId, Username, QueryMap, HeadersMap, []).

describe_user(Client, BrokerId, Username, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all brokers.
list_brokers(Client)
  when is_map(Client) ->
    list_brokers(Client, #{}, #{}).

list_brokers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_brokers(Client, QueryMap, HeadersMap, []).

list_brokers(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/brokers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all revisions for the specified configuration.
list_configuration_revisions(Client, ConfigurationId)
  when is_map(Client) ->
    list_configuration_revisions(Client, ConfigurationId, #{}, #{}).

list_configuration_revisions(Client, ConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_revisions(Client, ConfigurationId, QueryMap, HeadersMap, []).

list_configuration_revisions(Client, ConfigurationId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), "/revisions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all configurations.
list_configurations(Client)
  when is_map(Client) ->
    list_configurations(Client, #{}, #{}).

list_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configurations(Client, QueryMap, HeadersMap, []).

list_configurations(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/configurations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
list_tags(Client, ResourceArn)
  when is_map(Client) ->
    list_tags(Client, ResourceArn, #{}, #{}).

list_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all ActiveMQ users.
list_users(Client, BrokerId)
  when is_map(Client) ->
    list_users(Client, BrokerId, #{}, #{}).

list_users(Client, BrokerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, BrokerId, QueryMap, HeadersMap, []).

list_users(Client, BrokerId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Reboots a broker.
%%
%% Note: This API is asynchronous.
reboot_broker(Client, BrokerId, Input) ->
    reboot_broker(Client, BrokerId, Input, []).
reboot_broker(Client, BrokerId, Input0, Options) ->
    Method = post,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/reboot"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a pending configuration change to a broker.
update_broker(Client, BrokerId, Input) ->
    update_broker(Client, BrokerId, Input, []).
update_broker(Client, BrokerId, Input0, Options) ->
    Method = put,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified configuration.
update_configuration(Client, ConfigurationId, Input) ->
    update_configuration(Client, ConfigurationId, Input, []).
update_configuration(Client, ConfigurationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the information for an ActiveMQ user.
update_user(Client, BrokerId, Username, Input) ->
    update_user(Client, BrokerId, Username, Input, []).
update_user(Client, BrokerId, Username, Input0, Options) ->
    Method = put,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
    SuccessStatusCode = 200,

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
    Client1 = Client#{service => <<"mq">>},
    Host = build_host(<<"mq">>, Client1),
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
