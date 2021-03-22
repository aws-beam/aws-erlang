%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elemental MediaPackage
-module(aws_mediapackage).

-export([configure_logs/3,
         configure_logs/4,
         create_channel/2,
         create_channel/3,
         create_harvest_job/2,
         create_harvest_job/3,
         create_origin_endpoint/2,
         create_origin_endpoint/3,
         delete_channel/3,
         delete_channel/4,
         delete_origin_endpoint/3,
         delete_origin_endpoint/4,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_harvest_job/2,
         describe_harvest_job/4,
         describe_harvest_job/5,
         describe_origin_endpoint/2,
         describe_origin_endpoint/4,
         describe_origin_endpoint/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_harvest_jobs/1,
         list_harvest_jobs/3,
         list_harvest_jobs/4,
         list_origin_endpoints/1,
         list_origin_endpoints/3,
         list_origin_endpoints/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         rotate_channel_credentials/3,
         rotate_channel_credentials/4,
         rotate_ingest_endpoint_credentials/4,
         rotate_ingest_endpoint_credentials/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/3,
         update_channel/4,
         update_origin_endpoint/3,
         update_origin_endpoint/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Changes the Channel's properities to configure log subscription
configure_logs(Client, Id, Input) ->
    configure_logs(Client, Id, Input, []).
configure_logs(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), "/configure_logs"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Channel.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/channels"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new HarvestJob record.
create_harvest_job(Client, Input) ->
    create_harvest_job(Client, Input, []).
create_harvest_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/harvest_jobs"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new OriginEndpoint record.
create_origin_endpoint(Client, Input) ->
    create_origin_endpoint(Client, Input, []).
create_origin_endpoint(Client, Input0, Options) ->
    Method = post,
    Path = ["/origin_endpoints"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing Channel.
delete_channel(Client, Id, Input) ->
    delete_channel(Client, Id, Input, []).
delete_channel(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing OriginEndpoint.
delete_origin_endpoint(Client, Id, Input) ->
    delete_origin_endpoint(Client, Id, Input, []).
delete_origin_endpoint(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/origin_endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets details about a Channel.
describe_channel(Client, Id)
  when is_map(Client) ->
    describe_channel(Client, Id, #{}, #{}).

describe_channel(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, Id, QueryMap, HeadersMap, []).

describe_channel(Client, Id, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about an existing HarvestJob.
describe_harvest_job(Client, Id)
  when is_map(Client) ->
    describe_harvest_job(Client, Id, #{}, #{}).

describe_harvest_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_harvest_job(Client, Id, QueryMap, HeadersMap, []).

describe_harvest_job(Client, Id, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/harvest_jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about an existing OriginEndpoint.
describe_origin_endpoint(Client, Id)
  when is_map(Client) ->
    describe_origin_endpoint(Client, Id, #{}, #{}).

describe_origin_endpoint(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_origin_endpoint(Client, Id, QueryMap, HeadersMap, []).

describe_origin_endpoint(Client, Id, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/origin_endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of Channels.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

list_channels(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/channels"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of HarvestJob records.
list_harvest_jobs(Client)
  when is_map(Client) ->
    list_harvest_jobs(Client, #{}, #{}).

list_harvest_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_harvest_jobs(Client, QueryMap, HeadersMap, []).

list_harvest_jobs(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/harvest_jobs"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"includeChannelId">>, maps:get(<<"includeChannelId">>, QueryMap, undefined)},
        {<<"includeStatus">>, maps:get(<<"includeStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of OriginEndpoint records.
list_origin_endpoints(Client)
  when is_map(Client) ->
    list_origin_endpoints(Client, #{}, #{}).

list_origin_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_endpoints(Client, QueryMap, HeadersMap, []).

list_origin_endpoints(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/origin_endpoints"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"channelId">>, maps:get(<<"channelId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Changes the Channel's first IngestEndpoint's username and password.
%%
%% WARNING - This API is deprecated. Please use
%% RotateIngestEndpointCredentials instead
rotate_channel_credentials(Client, Id, Input) ->
    rotate_channel_credentials(Client, Id, Input, []).
rotate_channel_credentials(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), "/credentials"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Rotate the IngestEndpoint's username and password, as specified by
%% the IngestEndpoint's id.
rotate_ingest_endpoint_credentials(Client, Id, IngestEndpointId, Input) ->
    rotate_ingest_endpoint_credentials(Client, Id, IngestEndpointId, Input, []).
rotate_ingest_endpoint_credentials(Client, Id, IngestEndpointId, Input0, Options) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), "/ingest_endpoints/", aws_util:encode_uri(IngestEndpointId), "/credentials"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).


tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).


untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing Channel.
update_channel(Client, Id, Input) ->
    update_channel(Client, Id, Input, []).
update_channel(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing OriginEndpoint.
update_origin_endpoint(Client, Id, Input) ->
    update_origin_endpoint(Client, Id, Input, []).
update_origin_endpoint(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/origin_endpoints/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"mediapackage">>},
    Host = build_host(<<"mediapackage">>, Client1),
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
