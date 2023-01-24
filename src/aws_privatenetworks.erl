%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Private 5G is a managed service that makes it
%% easy to deploy, operate, and scale your own private mobile network at your
%% on-premises location.
%%
%% Private 5G provides the pre-configured hardware and software for mobile
%% networks, helps automate setup, and scales capacity on demand to support
%% additional devices as needed.
-module(aws_privatenetworks).

-export([acknowledge_order_receipt/2,
         acknowledge_order_receipt/3,
         activate_device_identifier/2,
         activate_device_identifier/3,
         activate_network_site/2,
         activate_network_site/3,
         configure_access_point/2,
         configure_access_point/3,
         create_network/2,
         create_network/3,
         create_network_site/2,
         create_network_site/3,
         deactivate_device_identifier/2,
         deactivate_device_identifier/3,
         delete_network/3,
         delete_network/4,
         delete_network_site/3,
         delete_network_site/4,
         get_device_identifier/2,
         get_device_identifier/4,
         get_device_identifier/5,
         get_network/2,
         get_network/4,
         get_network/5,
         get_network_resource/2,
         get_network_resource/4,
         get_network_resource/5,
         get_network_site/2,
         get_network_site/4,
         get_network_site/5,
         get_order/2,
         get_order/4,
         get_order/5,
         list_device_identifiers/2,
         list_device_identifiers/3,
         list_network_resources/2,
         list_network_resources/3,
         list_network_sites/2,
         list_network_sites/3,
         list_networks/2,
         list_networks/3,
         list_orders/2,
         list_orders/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         ping/1,
         ping/3,
         ping/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_network_site/2,
         update_network_site/3,
         update_network_site_plan/2,
         update_network_site_plan/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Acknowledges that the specified network order was received.
acknowledge_order_receipt(Client, Input) ->
    acknowledge_order_receipt(Client, Input, []).
acknowledge_order_receipt(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/orders/acknowledge"],
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

%% @doc Activates the specified device identifier.
activate_device_identifier(Client, Input) ->
    activate_device_identifier(Client, Input, []).
activate_device_identifier(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/device-identifiers/activate"],
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

%% @doc Activates the specified network site.
activate_network_site(Client, Input) ->
    activate_network_site(Client, Input, []).
activate_network_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-sites/activate"],
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

%% @doc Configures the specified network resource.
%%
%% Use this action to specify the geographic position of the hardware. You
%% must provide Certified Professional Installer (CPI) credentials in the
%% request so that we can obtain spectrum grants. For more information, see
%% Radio units in the Amazon Web Services Private 5G User Guide.
configure_access_point(Client, Input) ->
    configure_access_point(Client, Input, []).
configure_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-resources/configure"],
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

%% @doc Creates a network.
create_network(Client, Input) ->
    create_network(Client, Input, []).
create_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/networks"],
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

%% @doc Creates a network site.
create_network_site(Client, Input) ->
    create_network_site(Client, Input, []).
create_network_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-sites"],
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

%% @doc Deactivates the specified device identifier.
deactivate_device_identifier(Client, Input) ->
    deactivate_device_identifier(Client, Input, []).
deactivate_device_identifier(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/device-identifiers/deactivate"],
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

%% @doc Deletes the specified network.
%%
%% You must delete network sites before you delete the network. For more
%% information, see DeleteNetworkSite in the API Reference for Amazon Web
%% Services Private 5G.
delete_network(Client, NetworkArn, Input) ->
    delete_network(Client, NetworkArn, Input, []).
delete_network(Client, NetworkArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/networks/", aws_util:encode_uri(NetworkArn), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified network site.
%%
%% Return the hardware after you delete the network site. You are responsible
%% for minimum charges. For more information, see Hardware returns in the
%% Amazon Web Services Private 5G User Guide.
delete_network_site(Client, NetworkSiteArn, Input) ->
    delete_network_site(Client, NetworkSiteArn, Input, []).
delete_network_site(Client, NetworkSiteArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/network-sites/", aws_util:encode_uri(NetworkSiteArn), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified device identifier.
get_device_identifier(Client, DeviceIdentifierArn)
  when is_map(Client) ->
    get_device_identifier(Client, DeviceIdentifierArn, #{}, #{}).

get_device_identifier(Client, DeviceIdentifierArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_identifier(Client, DeviceIdentifierArn, QueryMap, HeadersMap, []).

get_device_identifier(Client, DeviceIdentifierArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/device-identifiers/", aws_util:encode_uri(DeviceIdentifierArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified network.
get_network(Client, NetworkArn)
  when is_map(Client) ->
    get_network(Client, NetworkArn, #{}, #{}).

get_network(Client, NetworkArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network(Client, NetworkArn, QueryMap, HeadersMap, []).

get_network(Client, NetworkArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/networks/", aws_util:encode_uri(NetworkArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified network resource.
get_network_resource(Client, NetworkResourceArn)
  when is_map(Client) ->
    get_network_resource(Client, NetworkResourceArn, #{}, #{}).

get_network_resource(Client, NetworkResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resource(Client, NetworkResourceArn, QueryMap, HeadersMap, []).

get_network_resource(Client, NetworkResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/network-resources/", aws_util:encode_uri(NetworkResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified network site.
get_network_site(Client, NetworkSiteArn)
  when is_map(Client) ->
    get_network_site(Client, NetworkSiteArn, #{}, #{}).

get_network_site(Client, NetworkSiteArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_site(Client, NetworkSiteArn, QueryMap, HeadersMap, []).

get_network_site(Client, NetworkSiteArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/network-sites/", aws_util:encode_uri(NetworkSiteArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified order.
get_order(Client, OrderArn)
  when is_map(Client) ->
    get_order(Client, OrderArn, #{}, #{}).

get_order(Client, OrderArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_order(Client, OrderArn, QueryMap, HeadersMap, []).

get_order(Client, OrderArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/orders/", aws_util:encode_uri(OrderArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists device identifiers.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match the Amazon Resource Name (ARN) of an order, the status of
%% device identifiers, or the ARN of the traffic group.
%%
%% <p>If you specify multiple filters, filters are joined with an OR, and the
%% request returns results that match all of the specified filters.
list_device_identifiers(Client, Input) ->
    list_device_identifiers(Client, Input, []).
list_device_identifiers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/device-identifiers/list"],
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

%% @doc Lists network resources.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match the Amazon Resource Name (ARN) of an order or the status
%% of network resources.
%%
%% If you specify multiple filters, filters are joined with an OR, and the
%% request returns results that match all of the specified filters.
list_network_resources(Client, Input) ->
    list_network_resources(Client, Input, []).
list_network_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-resources"],
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

%% @doc Lists network sites.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match the status of the network site.
list_network_sites(Client, Input) ->
    list_network_sites(Client, Input, []).
list_network_sites(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-sites/list"],
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

%% @doc Lists networks.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match the status of the network.
list_networks(Client, Input) ->
    list_networks(Client, Input, []).
list_networks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/networks/list"],
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

%% @doc Lists orders.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match the Amazon Resource Name (ARN) of the network site or the
%% status of the order.
%%
%% If you specify multiple filters, filters are joined with an OR, and the
%% request returns results that match all of the specified filters.
list_orders(Client, Input) ->
    list_orders(Client, Input, []).
list_orders(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/orders/list"],
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
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Checks the health of the service.
ping(Client)
  when is_map(Client) ->
    ping(Client, #{}, #{}).

ping(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    ping(Client, QueryMap, HeadersMap, []).

ping(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ping"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds tags to the specified resource.
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

%% @doc Removes tags from the specified resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified network site.
update_network_site(Client, Input) ->
    update_network_site(Client, Input, []).
update_network_site(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/network-sites/site"],
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

%% @doc Updates the specified network site plan.
update_network_site_plan(Client, Input) ->
    update_network_site_plan(Client, Input, []).
update_network_site_plan(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/network-sites/plan"],
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
    Client1 = Client#{service => <<"private-networks">>},
    Host = build_host(<<"private-networks">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
