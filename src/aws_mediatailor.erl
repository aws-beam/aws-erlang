%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the AWS Elemental MediaTailor SDK to configure scalable ad
%% insertion for your live and VOD content. With AWS Elemental MediaTailor,
%% you can serve targeted ads to viewers while maintaining broadcast quality
%% in over-the-top (OTT) video applications. For information about using the
%% service, including detailed information about the settings covered in this
%% guide, see the AWS Elemental MediaTailor User Guide.Through the SDK, you
%% manage AWS Elemental MediaTailor configurations the same as you do through
%% the console. For example, you specify ad insertion behavior and mapping
%% information for the origin server and the ad decision server (ADS).
-module(aws_mediatailor).

-export([delete_playback_configuration/3,
         delete_playback_configuration/4,
         get_playback_configuration/2,
         get_playback_configuration/3,
         list_playback_configurations/3,
         list_playback_configurations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_playback_configuration/2,
         put_playback_configuration/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the playback configuration for the specified name.
delete_playback_configuration(Client, Name, Input) ->
    delete_playback_configuration(Client, Name, Input, []).
delete_playback_configuration(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/playbackConfiguration/", http_uri:encode(Name), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the playback configuration for the specified name.
get_playback_configuration(Client, Name)
  when is_map(Client) ->
    get_playback_configuration(Client, Name, []).
get_playback_configuration(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/playbackConfiguration/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the playback configurations defined in AWS
%% Elemental MediaTailor. You can specify a maximum number of configurations
%% to return at a time. The default maximum is 50. Results are returned in
%% pagefuls. If MediaTailor has more configurations than the specified
%% maximum, it provides parameters in the response that you can use to
%% retrieve the next pageful.
list_playback_configurations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_playback_configurations(Client, MaxResults, NextToken, []).
list_playback_configurations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/playbackConfigurations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags assigned to the specified playback
%% configuration resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds a new playback configuration to AWS Elemental MediaTailor.
put_playback_configuration(Client, Input) ->
    put_playback_configuration(Client, Input, []).
put_playback_configuration(Client, Input0, Options) ->
    Method = put,
    Path = ["/playbackConfiguration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to the specified playback configuration resource. You can
%% specify one or more tags to add.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from the specified playback configuration resource. You
%% can specify one or more tags to remove.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
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
    Client1 = Client#{service => <<"mediatailor">>},
    Host = build_host(<<"api.mediatailor">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
