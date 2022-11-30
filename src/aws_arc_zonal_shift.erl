%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the API Reference Guide for the zonal shift feature of Amazon
%% Route 53 Application Recovery Controller.
%%
%% This guide is for developers who need detailed information about zonal
%% shift API actions, data types, and errors.
%%
%% Zonal shift is in preview release for Amazon Route 53 Application Recovery
%% Controller and is subject to change.
%%
%% Zonal shift in Route 53 ARC enables you to move traffic for a load
%% balancer resource away from an Availability Zone. Starting a zonal shift
%% helps your application recover immediately, for example, from a
%% developer's bad code deployment or from an AWS infrastructure failure in a
%% single Availability Zone, reducing the impact and time lost from an issue
%% in one zone.
%%
%% Supported AWS resources are automatically registered with Route 53 ARC.
%% Resources that are registered for zonal shifts in Route 53 ARC are managed
%% resources in Route 53 ARC. You can start a zonal shift for any managed
%% resource in your account in a Region. At this time, you can only start a
%% zonal shift for Network Load Balancers and Application Load Balancers with
%% cross-zone load balancing turned off.
%%
%% Zonal shifts are temporary. You must specify an expiration when you start
%% a zonal shift, of up to three days initially. If you want to still keep
%% traffic away from an Availability Zone, you can update the zonal shift and
%% set a new expiration. You can also cancel a zonal shift, before it
%% expires, for example, if you're ready to restore traffic to the
%% Availability Zone.
%%
%% For more information about using zonal shift, see the Amazon Route 53
%% Application Recovery Controller Developer Guide.
-module(aws_arc_zonal_shift).

-export([cancel_zonal_shift/3,
         cancel_zonal_shift/4,
         get_managed_resource/2,
         get_managed_resource/4,
         get_managed_resource/5,
         list_managed_resources/1,
         list_managed_resources/3,
         list_managed_resources/4,
         list_zonal_shifts/1,
         list_zonal_shifts/3,
         list_zonal_shifts/4,
         start_zonal_shift/2,
         start_zonal_shift/3,
         update_zonal_shift/3,
         update_zonal_shift/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancel a zonal shift in Amazon Route 53 Application Recovery
%% Controller that you've started for a resource in your AWS account in an
%% AWS Region.
cancel_zonal_shift(Client, ZonalShiftId, Input) ->
    cancel_zonal_shift(Client, ZonalShiftId, Input, []).
cancel_zonal_shift(Client, ZonalShiftId, Input0, Options0) ->
    Method = delete,
    Path = ["/zonalshifts/", aws_util:encode_uri(ZonalShiftId), ""],
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

%% @doc Get information about a resource that's been registered for zonal
%% shifts with Amazon Route 53 Application Recovery Controller in this AWS
%% Region.
%%
%% Resources that are registered for zonal shifts are managed resources in
%% Route 53 ARC.
%%
%% At this time, you can only start a zonal shift for Network Load Balancers
%% and Application Load Balancers with cross-zone load balancing turned off.
get_managed_resource(Client, ResourceIdentifier)
  when is_map(Client) ->
    get_managed_resource(Client, ResourceIdentifier, #{}, #{}).

get_managed_resource(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_resource(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

get_managed_resource(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedresources/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the resources in your AWS account in this AWS Region that
%% are managed for zonal shifts in Amazon Route 53 Application Recovery
%% Controller, and information about them.
%%
%% The information includes their Amazon Resource Names (ARNs), the
%% Availability Zones the resources are deployed in, and the resource name.
list_managed_resources(Client)
  when is_map(Client) ->
    list_managed_resources(Client, #{}, #{}).

list_managed_resources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_resources(Client, QueryMap, HeadersMap, []).

list_managed_resources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedresources"],
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

%% @doc Lists all the active zonal shifts in Amazon Route 53 Application
%% Recovery Controller in your AWS account in this AWS Region.
list_zonal_shifts(Client)
  when is_map(Client) ->
    list_zonal_shifts(Client, #{}, #{}).

list_zonal_shifts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_zonal_shifts(Client, QueryMap, HeadersMap, []).

list_zonal_shifts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/zonalshifts"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc You start a zonal shift to temporarily move load balancer traffic
%% away from an Availability Zone in a AWS Region, to help your application
%% recover immediately, for example, from a developer's bad code deployment
%% or from an AWS infrastructure failure in a single Availability Zone.
%%
%% You can start a zonal shift in Route 53 ARC only for managed resources in
%% your account in an AWS Region. Resources are automatically registered with
%% Route 53 ARC by AWS services.
%%
%% At this time, you can only start a zonal shift for Network Load Balancers
%% and Application Load Balancers with cross-zone load balancing turned off.
%%
%% When you start a zonal shift, traffic for the resource is no longer routed
%% to the Availability Zone. The zonal shift is created immediately in Route
%% 53 ARC. However, it can take a short time, typically up to a few minutes,
%% for existing, in-progress connections in the Availability Zone to
%% complete.
%%
%% For more information, see Zonal shift in the Amazon Route 53 Application
%% Recovery Controller Developer Guide.
start_zonal_shift(Client, Input) ->
    start_zonal_shift(Client, Input, []).
start_zonal_shift(Client, Input0, Options0) ->
    Method = post,
    Path = ["/zonalshifts"],
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

%% @doc Update an active zonal shift in Amazon Route 53 Application Recovery
%% Controller in your AWS account.
%%
%% You can update a zonal shift to set a new expiration, or edit or replace
%% the comment for the zonal shift.
update_zonal_shift(Client, ZonalShiftId, Input) ->
    update_zonal_shift(Client, ZonalShiftId, Input, []).
update_zonal_shift(Client, ZonalShiftId, Input0, Options0) ->
    Method = patch,
    Path = ["/zonalshifts/", aws_util:encode_uri(ZonalShiftId), ""],
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
    Client1 = Client#{service => <<"arc-zonal-shift">>},
    Host = build_host(<<"arc-zonal-shift">>, Client1),
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
