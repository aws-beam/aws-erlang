%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Outposts is a fully managed service that extends
%% Amazon Web Services infrastructure, APIs, and tools to customer premises.
%%
%% By providing local access to Amazon Web Services managed infrastructure,
%% Amazon Web Services Outposts enables customers to build and run
%% applications on premises using the same programming interfaces as in
%% Amazon Web Services Regions, while using local compute and storage
%% resources for lower latency and local data processing needs.
-module(aws_outposts).

-export([cancel_order/3,
         cancel_order/4,
         create_order/2,
         create_order/3,
         create_outpost/2,
         create_outpost/3,
         create_site/2,
         create_site/3,
         delete_outpost/3,
         delete_outpost/4,
         delete_site/3,
         delete_site/4,
         get_catalog_item/2,
         get_catalog_item/4,
         get_catalog_item/5,
         get_order/2,
         get_order/4,
         get_order/5,
         get_outpost/2,
         get_outpost/4,
         get_outpost/5,
         get_outpost_instance_types/2,
         get_outpost_instance_types/4,
         get_outpost_instance_types/5,
         get_site/2,
         get_site/4,
         get_site/5,
         get_site_address/3,
         get_site_address/5,
         get_site_address/6,
         list_catalog_items/1,
         list_catalog_items/3,
         list_catalog_items/4,
         list_orders/1,
         list_orders/3,
         list_orders/4,
         list_outposts/1,
         list_outposts/3,
         list_outposts/4,
         list_sites/1,
         list_sites/3,
         list_sites/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_outpost/3,
         update_outpost/4,
         update_site/3,
         update_site/4,
         update_site_address/3,
         update_site_address/4,
         update_site_rack_physical_properties/3,
         update_site_rack_physical_properties/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an order for an Outpost.
cancel_order(Client, OrderId, Input) ->
    cancel_order(Client, OrderId, Input, []).
cancel_order(Client, OrderId, Input0, Options0) ->
    Method = post,
    Path = ["/orders/", aws_util:encode_uri(OrderId), "/cancel"],
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

%% @doc Creates an order for an Outpost.
create_order(Client, Input) ->
    create_order(Client, Input, []).
create_order(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orders"],
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

%% @doc Creates an Outpost.
%%
%% You can specify `AvailabilityZone' or `AvailabilityZoneId'.
create_outpost(Client, Input) ->
    create_outpost(Client, Input, []).
create_outpost(Client, Input0, Options0) ->
    Method = post,
    Path = ["/outposts"],
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

%% @doc Creates a site for an Outpost.
create_site(Client, Input) ->
    create_site(Client, Input, []).
create_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sites"],
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

%% @doc Deletes the Outpost.
delete_outpost(Client, OutpostId, Input) ->
    delete_outpost(Client, OutpostId, Input, []).
delete_outpost(Client, OutpostId, Input0, Options0) ->
    Method = delete,
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
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

%% @doc Deletes the site.
delete_site(Client, SiteId, Input) ->
    delete_site(Client, SiteId, Input, []).
delete_site(Client, SiteId, Input0, Options0) ->
    Method = delete,
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
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

%% @doc Gets information about a catalog item.
get_catalog_item(Client, CatalogItemId)
  when is_map(Client) ->
    get_catalog_item(Client, CatalogItemId, #{}, #{}).

get_catalog_item(Client, CatalogItemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_catalog_item(Client, CatalogItemId, QueryMap, HeadersMap, []).

get_catalog_item(Client, CatalogItemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog/item/", aws_util:encode_uri(CatalogItemId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an order.
get_order(Client, OrderId)
  when is_map(Client) ->
    get_order(Client, OrderId, #{}, #{}).

get_order(Client, OrderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_order(Client, OrderId, QueryMap, HeadersMap, []).

get_order(Client, OrderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/orders/", aws_util:encode_uri(OrderId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified Outpost.
get_outpost(Client, OutpostId)
  when is_map(Client) ->
    get_outpost(Client, OutpostId, #{}, #{}).

get_outpost(Client, OutpostId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_outpost(Client, OutpostId, QueryMap, HeadersMap, []).

get_outpost(Client, OutpostId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the instance types for the specified Outpost.
get_outpost_instance_types(Client, OutpostId)
  when is_map(Client) ->
    get_outpost_instance_types(Client, OutpostId, #{}, #{}).

get_outpost_instance_types(Client, OutpostId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_outpost_instance_types(Client, OutpostId, QueryMap, HeadersMap, []).

get_outpost_instance_types(Client, OutpostId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), "/instanceTypes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified Outpost site.
get_site(Client, SiteId)
  when is_map(Client) ->
    get_site(Client, SiteId, #{}, #{}).

get_site(Client, SiteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site(Client, SiteId, QueryMap, HeadersMap, []).

get_site(Client, SiteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the site address.
get_site_address(Client, SiteId, AddressType)
  when is_map(Client) ->
    get_site_address(Client, SiteId, AddressType, #{}, #{}).

get_site_address(Client, SiteId, AddressType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site_address(Client, SiteId, AddressType, QueryMap, HeadersMap, []).

get_site_address(Client, SiteId, AddressType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sites/", aws_util:encode_uri(SiteId), "/address"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"AddressType">>, AddressType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use to create a list of every item in the catalog.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match an item class, storage option, or EC2 family.
%%
%% If you specify multiple filters, the filters are joined with an `AND', and
%% the request returns only results that match all of the specified filters.
list_catalog_items(Client)
  when is_map(Client) ->
    list_catalog_items(Client, #{}, #{}).

list_catalog_items(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_catalog_items(Client, QueryMap, HeadersMap, []).

list_catalog_items(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog/items"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"EC2FamilyFilter">>, maps:get(<<"EC2FamilyFilter">>, QueryMap, undefined)},
        {<<"ItemClassFilter">>, maps:get(<<"ItemClassFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SupportedStorageFilter">>, maps:get(<<"SupportedStorageFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Create a list of the Outpost orders for your Amazon Web Services
%% account.
%%
%% You can filter your request by Outpost to return a more specific list of
%% results.
list_orders(Client)
  when is_map(Client) ->
    list_orders(Client, #{}, #{}).

list_orders(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_orders(Client, QueryMap, HeadersMap, []).

list_orders(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-orders"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OutpostIdentifierFilter">>, maps:get(<<"OutpostIdentifierFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Create a list of the Outposts for your Amazon Web Services account.
%%
%% Add filters to your request to return a more specific list of results. Use
%% filters to match an Outpost lifecycle status, Availability Zone
%% (`us-east-1a'), and AZ ID (`use1-az1').
%%
%% If you specify multiple filters, the filters are joined with an `AND', and
%% the request returns only results that match all of the specified filters.
list_outposts(Client)
  when is_map(Client) ->
    list_outposts(Client, #{}, #{}).

list_outposts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_outposts(Client, QueryMap, HeadersMap, []).

list_outposts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"AvailabilityZoneFilter">>, maps:get(<<"AvailabilityZoneFilter">>, QueryMap, undefined)},
        {<<"AvailabilityZoneIdFilter">>, maps:get(<<"AvailabilityZoneIdFilter">>, QueryMap, undefined)},
        {<<"LifeCycleStatusFilter">>, maps:get(<<"LifeCycleStatusFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the sites for your Amazon Web Services account.
list_sites(Client)
  when is_map(Client) ->
    list_sites(Client, #{}, #{}).

list_sites(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sites(Client, QueryMap, HeadersMap, []).

list_sites(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sites"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
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

%% @doc Adds tags to the specified resource.
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

%% @doc Removes tags from the specified resource.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Outpost.
update_outpost(Client, OutpostId, Input) ->
    update_outpost(Client, OutpostId, Input, []).
update_outpost(Client, OutpostId, Input0, Options0) ->
    Method = patch,
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
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

%% @doc Updates the site.
update_site(Client, SiteId, Input) ->
    update_site(Client, SiteId, Input, []).
update_site(Client, SiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
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

%% @doc Updates the site address.
%%
%% To update a site address with an order `IN_PROGRESS', you must wait for
%% the order to complete or cancel the order.
%%
%% You can update the operating address before you place an order at the
%% site, or after all Outposts that belong to the site have been deactivated.
update_site_address(Client, SiteId, Input) ->
    update_site_address(Client, SiteId, Input, []).
update_site_address(Client, SiteId, Input0, Options0) ->
    Method = put,
    Path = ["/sites/", aws_util:encode_uri(SiteId), "/address"],
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

%% @doc Update the physical and logistical details for a rack at a site.
%%
%% For more information about hardware requirements for racks, see Network
%% readiness checklist in the Amazon Web Services Outposts User Guide.
%%
%% To update a rack at a site with an order of `IN_PROGRESS', you must wait
%% for the order to complete or cancel the order.
update_site_rack_physical_properties(Client, SiteId, Input) ->
    update_site_rack_physical_properties(Client, SiteId, Input, []).
update_site_rack_physical_properties(Client, SiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/sites/", aws_util:encode_uri(SiteId), "/rackPhysicalProperties"],
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
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"outposts">>},
    Host = build_host(<<"outposts">>, Client1),
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
