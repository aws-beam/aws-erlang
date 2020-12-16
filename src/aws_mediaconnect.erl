%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc API for AWS Elemental MediaConnect
-module(aws_mediaconnect).

-export([add_flow_outputs/3,
         add_flow_outputs/4,
         add_flow_sources/3,
         add_flow_sources/4,
         add_flow_vpc_interfaces/3,
         add_flow_vpc_interfaces/4,
         create_flow/2,
         create_flow/3,
         delete_flow/3,
         delete_flow/4,
         describe_flow/2,
         describe_flow/3,
         describe_offering/2,
         describe_offering/3,
         describe_reservation/2,
         describe_reservation/3,
         grant_flow_entitlements/3,
         grant_flow_entitlements/4,
         list_entitlements/3,
         list_entitlements/4,
         list_flows/3,
         list_flows/4,
         list_offerings/3,
         list_offerings/4,
         list_reservations/3,
         list_reservations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         purchase_offering/3,
         purchase_offering/4,
         remove_flow_output/4,
         remove_flow_output/5,
         remove_flow_source/4,
         remove_flow_source/5,
         remove_flow_vpc_interface/4,
         remove_flow_vpc_interface/5,
         revoke_flow_entitlement/4,
         revoke_flow_entitlement/5,
         start_flow/3,
         start_flow/4,
         stop_flow/3,
         stop_flow/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_flow/3,
         update_flow/4,
         update_flow_entitlement/4,
         update_flow_entitlement/5,
         update_flow_output/4,
         update_flow_output/5,
         update_flow_source/4,
         update_flow_source/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds outputs to an existing flow.
%%
%% You can create up to 50 outputs per flow.
add_flow_outputs(Client, FlowArn, Input) ->
    add_flow_outputs(Client, FlowArn, Input, []).
add_flow_outputs(Client, FlowArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/outputs"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds Sources to flow
add_flow_sources(Client, FlowArn, Input) ->
    add_flow_sources(Client, FlowArn, Input, []).
add_flow_sources(Client, FlowArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds VPC interfaces to flow
add_flow_vpc_interfaces(Client, FlowArn, Input) ->
    add_flow_vpc_interfaces(Client, FlowArn, Input, []).
add_flow_vpc_interfaces(Client, FlowArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/vpcInterfaces"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new flow.
%%
%% The request must include one source. The request optionally can include
%% outputs (up to 50) and entitlements (up to 50).
create_flow(Client, Input) ->
    create_flow(Client, Input, []).
create_flow(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a flow.
%%
%% Before you can delete a flow, you must stop the flow.
delete_flow(Client, FlowArn, Input) ->
    delete_flow(Client, FlowArn, Input, []).
delete_flow(Client, FlowArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Displays the details of a flow.
%%
%% The response includes the flow ARN, name, and Availability Zone, as well
%% as details about the source, outputs, and entitlements.
describe_flow(Client, FlowArn)
  when is_map(Client) ->
    describe_flow(Client, FlowArn, []).
describe_flow(Client, FlowArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details of an offering.
%%
%% The response includes the offering description, duration, outbound
%% bandwidth, price, and Amazon Resource Name (ARN).
describe_offering(Client, OfferingArn)
  when is_map(Client) ->
    describe_offering(Client, OfferingArn, []).
describe_offering(Client, OfferingArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/offerings/", aws_util:encode_uri(OfferingArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details of a reservation.
%%
%% The response includes the reservation name, state, start date and time,
%% and the details of the offering that make up the rest of the reservation
%% (such as price, duration, and outbound bandwidth).
describe_reservation(Client, ReservationArn)
  when is_map(Client) ->
    describe_reservation(Client, ReservationArn, []).
describe_reservation(Client, ReservationArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/reservations/", aws_util:encode_uri(ReservationArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants entitlements to an existing flow.
grant_flow_entitlements(Client, FlowArn, Input) ->
    grant_flow_entitlements(Client, FlowArn, Input, []).
grant_flow_entitlements(Client, FlowArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/entitlements"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Displays a list of all entitlements that have been granted to this
%% account.
%%
%% This request returns 20 results per page.
list_entitlements(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_entitlements(Client, MaxResults, NextToken, []).
list_entitlements(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/entitlements"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of flows that are associated with this account.
%%
%% This request returns a paginated result.
list_flows(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_flows(Client, MaxResults, NextToken, []).
list_flows(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/flows"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of all offerings that are available to this account
%% in the current AWS Region.
%%
%% If you have an active reservation (which means you've purchased an
%% offering that has already started and hasn't expired yet), your account
%% isn't eligible for other offerings.
list_offerings(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_offerings(Client, MaxResults, NextToken, []).
list_offerings(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/offerings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of all reservations that have been purchased by this
%% account in the current AWS Region.
%%
%% This list includes all reservations in all states (such as active and
%% expired).
list_reservations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_reservations(Client, MaxResults, NextToken, []).
list_reservations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/reservations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all tags on an AWS Elemental MediaConnect resource
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Submits a request to purchase an offering.
%%
%% If you already have an active reservation, you can't purchase another
%% offering.
purchase_offering(Client, OfferingArn, Input) ->
    purchase_offering(Client, OfferingArn, Input, []).
purchase_offering(Client, OfferingArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/offerings/", aws_util:encode_uri(OfferingArn), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an output from an existing flow.
%%
%% This request can be made only on an output that does not have an
%% entitlement associated with it. If the output has an entitlement, you must
%% revoke the entitlement instead. When an entitlement is revoked from a
%% flow, the service automatically removes the associated output.
remove_flow_output(Client, FlowArn, OutputArn, Input) ->
    remove_flow_output(Client, FlowArn, OutputArn, Input, []).
remove_flow_output(Client, FlowArn, OutputArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/outputs/", aws_util:encode_uri(OutputArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a source from an existing flow.
%%
%% This request can be made only if there is more than one source on the
%% flow.
remove_flow_source(Client, FlowArn, SourceArn, Input) ->
    remove_flow_source(Client, FlowArn, SourceArn, Input, []).
remove_flow_source(Client, FlowArn, SourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source/", aws_util:encode_uri(SourceArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a VPC Interface from an existing flow.
%%
%% This request can be made only on a VPC interface that does not have a
%% Source or Output associated with it. If the VPC interface is referenced by
%% a Source or Output, you must first delete or update the Source or Output
%% to no longer reference the VPC interface.
remove_flow_vpc_interface(Client, FlowArn, VpcInterfaceName, Input) ->
    remove_flow_vpc_interface(Client, FlowArn, VpcInterfaceName, Input, []).
remove_flow_vpc_interface(Client, FlowArn, VpcInterfaceName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/vpcInterfaces/", aws_util:encode_uri(VpcInterfaceName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Revokes an entitlement from a flow.
%%
%% Once an entitlement is revoked, the content becomes unavailable to the
%% subscriber and the associated output is removed.
revoke_flow_entitlement(Client, EntitlementArn, FlowArn, Input) ->
    revoke_flow_entitlement(Client, EntitlementArn, FlowArn, Input, []).
revoke_flow_entitlement(Client, EntitlementArn, FlowArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/entitlements/", aws_util:encode_uri(EntitlementArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a flow.
start_flow(Client, FlowArn, Input) ->
    start_flow(Client, FlowArn, Input, []).
start_flow(Client, FlowArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows/start/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a flow.
stop_flow(Client, FlowArn, Input) ->
    stop_flow(Client, FlowArn, Input, []).
stop_flow(Client, FlowArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/flows/stop/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% resourceArn.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are deleted as well.
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

%% @doc Deletes specified tags from a resource.
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

%% @doc Updates flow
update_flow(Client, FlowArn, Input) ->
    update_flow(Client, FlowArn, Input, []).
update_flow(Client, FlowArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc You can change an entitlement's description, subscribers, and
%% encryption.
%%
%% If you change the subscribers, the service will remove the outputs that
%% are are used by the subscribers that are removed.
update_flow_entitlement(Client, EntitlementArn, FlowArn, Input) ->
    update_flow_entitlement(Client, EntitlementArn, FlowArn, Input, []).
update_flow_entitlement(Client, EntitlementArn, FlowArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/entitlements/", aws_util:encode_uri(EntitlementArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing flow output.
update_flow_output(Client, FlowArn, OutputArn, Input) ->
    update_flow_output(Client, FlowArn, OutputArn, Input, []).
update_flow_output(Client, FlowArn, OutputArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/outputs/", aws_util:encode_uri(OutputArn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the source of a flow.
update_flow_source(Client, FlowArn, SourceArn, Input) ->
    update_flow_source(Client, FlowArn, SourceArn, Input, []).
update_flow_source(Client, FlowArn, SourceArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/flows/", aws_util:encode_uri(FlowArn), "/source/", aws_util:encode_uri(SourceArn), ""],
    SuccessStatusCode = 202,

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
    Client1 = Client#{service => <<"mediaconnect">>},
    Host = build_host(<<"mediaconnect">>, Client1),
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
