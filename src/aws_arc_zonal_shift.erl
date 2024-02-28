%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Zonal Shift API Reference Guide for Amazon Route 53
%% Application Recovery Controller (Route 53 ARC).
%%
%% You can start a zonal shift to move traffic for a load balancer resource
%% away from an Availability Zone to help your application recover quickly
%% from an impairment in an Availability Zone. For example, you can recover
%% your application from a developer's bad code deployment or from an
%% Amazon Web Services infrastructure failure in a single Availability Zone.
%%
%% You can also configure zonal autoshift for a load balancer resource. Zonal
%% autoshift is a capability in Route 53 ARC where Amazon Web Services shifts
%% away application resource traffic from an Availability Zone, on your
%% behalf, to help reduce your time to recovery during events. Amazon Web
%% Services shifts away traffic for resources that are enabled for zonal
%% autoshift whenever Amazon Web Services determines that there's an
%% issue in the Availability Zone that could potentially affect customers.
%%
%% To ensure that zonal autoshift is safe for your application, you must also
%% configure practice runs when you enable zonal autoshift for a resource.
%% Practice runs start weekly zonal shifts for a resource, to shift traffic
%% for the resource out of an Availability Zone. Practice runs make sure, on
%% a regular basis, that you have enough capacity in all the Availability
%% Zones in an Amazon Web Services Region for your application to continue to
%% operate normally when traffic for a resource is shifted away from one
%% Availability Zone.
%%
%% You must prescale resource capacity in all Availability Zones in the
%% Region where your application is deployed, before you configure practice
%% runs or enable zonal autoshift for a resource. You should not rely on
%% scaling on demand when an autoshift or practice run starts.
%%
%% For more information about using zonal shift and zonal autoshift, see the
%% Amazon Route 53 Application Recovery Controller Developer Guide:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html.
-module(aws_arc_zonal_shift).

-export([cancel_zonal_shift/3,
         cancel_zonal_shift/4,
         create_practice_run_configuration/2,
         create_practice_run_configuration/3,
         delete_practice_run_configuration/3,
         delete_practice_run_configuration/4,
         get_managed_resource/2,
         get_managed_resource/4,
         get_managed_resource/5,
         list_autoshifts/1,
         list_autoshifts/3,
         list_autoshifts/4,
         list_managed_resources/1,
         list_managed_resources/3,
         list_managed_resources/4,
         list_zonal_shifts/1,
         list_zonal_shifts/3,
         list_zonal_shifts/4,
         start_zonal_shift/2,
         start_zonal_shift/3,
         update_practice_run_configuration/3,
         update_practice_run_configuration/4,
         update_zonal_autoshift_configuration/3,
         update_zonal_autoshift_configuration/4,
         update_zonal_shift/3,
         update_zonal_shift/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancel a zonal shift in Amazon Route 53 Application Recovery
%% Controller.
%%
%% To cancel the zonal shift, specify the zonal shift ID.
%%
%% A zonal shift can be one that you've started for a resource in your
%% Amazon Web Services account in an Amazon Web Services Region, or it can be
%% a zonal shift started by a practice run with zonal autoshift.
cancel_zonal_shift(Client, ZonalShiftId, Input) ->
    cancel_zonal_shift(Client, ZonalShiftId, Input, []).
cancel_zonal_shift(Client, ZonalShiftId, Input0, Options0) ->
    Method = delete,
    Path = ["/zonalshifts/", aws_util:encode_uri(ZonalShiftId), ""],
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

%% @doc A practice run configuration for zonal autoshift is required when you
%% enable zonal autoshift.
%%
%% A practice run configuration includes specifications for blocked dates and
%% blocked time windows, and for Amazon CloudWatch alarms that you create to
%% use with practice runs. The alarms that you specify are an outcome alarm,
%% to monitor application health during practice runs and, optionally, a
%% blocking alarm, to block practice runs from starting.
%%
%% For more information, see Considerations when you configure zonal
%% autoshift:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
create_practice_run_configuration(Client, Input) ->
    create_practice_run_configuration(Client, Input, []).
create_practice_run_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the practice run configuration for a resource.
%%
%% Before you can delete a practice run configuration for a resource., you
%% must disable zonal autoshift for the resource. Practice runs must be
%% configured for zonal autoshift to be enabled.
delete_practice_run_configuration(Client, ResourceIdentifier, Input) ->
    delete_practice_run_configuration(Client, ResourceIdentifier, Input, []).
delete_practice_run_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configuration/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Get information about a resource that's been registered for zonal
%% shifts with Amazon Route 53 Application Recovery Controller in this Amazon
%% Web Services Region.
%%
%% Resources that are registered for zonal shifts are managed resources in
%% Route 53 ARC. You can start zonal shifts and configure zonal autoshift for
%% managed resources.
%%
%% At this time, you can only start a zonal shift or configure zonal
%% autoshift for Network Load Balancers and Application Load Balancers with
%% cross-zone load balancing turned off.
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

%% @doc Returns the active autoshifts for a specified resource.
list_autoshifts(Client)
  when is_map(Client) ->
    list_autoshifts(Client, #{}, #{}).

list_autoshifts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_autoshifts(Client, QueryMap, HeadersMap, []).

list_autoshifts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/autoshifts"],
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

%% @doc Lists all the resources in your Amazon Web Services account in this
%% Amazon Web Services Region that are managed for zonal shifts in Amazon
%% Route 53 Application Recovery Controller, and information about them.
%%
%% The information includes the zonal autoshift status for the resource, as
%% well as the Amazon Resource Name (ARN), the Availability Zones that each
%% resource is deployed in, and the resource name.
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

%% @doc Lists all active and completed zonal shifts in Amazon Route 53
%% Application Recovery Controller in your Amazon Web Services account in
%% this Amazon Web Services Region.
%%
%% `ListZonalShifts' returns customer-started zonal shifts, as well as
%% practice run zonal shifts that Route 53 ARC started on your behalf for
%% zonal autoshift.
%%
%% The `ListZonalShifts' operation does not list autoshifts. For more
%% information about listing autoshifts, see &quot;&gt;ListAutoshifts:
%% https://docs.aws.amazon.com/arc-zonal-shift/latest/api/API_ListAutoshifts.html.
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
        {<<"resourceIdentifier">>, maps:get(<<"resourceIdentifier">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc You start a zonal shift to temporarily move load balancer traffic
%% away from an Availability Zone in an Amazon Web Services Region, to help
%% your application recover immediately, for example, from a developer's
%% bad code deployment or from an Amazon Web Services infrastructure failure
%% in a single Availability Zone.
%%
%% You can start a zonal shift in Route 53 ARC only for managed resources in
%% your Amazon Web Services account in an Amazon Web Services Region.
%% Resources are automatically registered with Route 53 ARC by Amazon Web
%% Services services.
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
%% For more information, see Zonal shift:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html in
%% the Amazon Route 53 Application Recovery Controller Developer Guide.
start_zonal_shift(Client, Input) ->
    start_zonal_shift(Client, Input, []).
start_zonal_shift(Client, Input0, Options0) ->
    Method = post,
    Path = ["/zonalshifts"],
    SuccessStatusCode = 201,
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

%% @doc Update a practice run configuration to change one or more of the
%% following: add, change, or remove the blocking alarm; change the outcome
%% alarm; or add, change, or remove blocking dates or time windows.
update_practice_run_configuration(Client, ResourceIdentifier, Input) ->
    update_practice_run_configuration(Client, ResourceIdentifier, Input, []).
update_practice_run_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configuration/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc You can update the zonal autoshift status for a resource, to enable
%% or disable zonal autoshift.
%%
%% When zonal autoshift is `ENABLED', Amazon Web Services shifts away
%% resource traffic from an Availability Zone, on your behalf, when Amazon
%% Web Services determines that there's an issue in the Availability Zone
%% that could potentially affect customers.
update_zonal_autoshift_configuration(Client, ResourceIdentifier, Input) ->
    update_zonal_autoshift_configuration(Client, ResourceIdentifier, Input, []).
update_zonal_autoshift_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/managedresources/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Update an active zonal shift in Amazon Route 53 Application Recovery
%% Controller in your Amazon Web Services account.
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
