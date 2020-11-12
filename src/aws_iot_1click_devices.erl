%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes all of the AWS IoT 1-Click device-related API operations
%% for the service.
%%
%% Also provides sample requests, responses, and errors for the supported web
%% services
%% protocols.
-module(aws_iot_1click_devices).

-export([claim_devices_by_claim_code/3,
         claim_devices_by_claim_code/4,
         describe_device/2,
         describe_device/3,
         finalize_device_claim/3,
         finalize_device_claim/4,
         get_device_methods/2,
         get_device_methods/3,
         initiate_device_claim/3,
         initiate_device_claim/4,
         invoke_device_method/3,
         invoke_device_method/4,
         list_device_events/6,
         list_device_events/7,
         list_devices/4,
         list_devices/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/3,
         tag_resource/4,
         unclaim_device/3,
         unclaim_device/4,
         untag_resource/3,
         untag_resource/4,
         update_device_state/3,
         update_device_state/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds device(s) to your account (i.e., claim one or more devices) if
%% and only if you
%% received a claim code with the device(s).
claim_devices_by_claim_code(Client, ClaimCode, Input) ->
    claim_devices_by_claim_code(Client, ClaimCode, Input, []).
claim_devices_by_claim_code(Client, ClaimCode, Input0, Options) ->
    Method = put,
    Path = ["/claims/", http_uri:encode(ClaimCode), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Given a device ID, returns a DescribeDeviceResponse object describing
%% the
%% details of the device.
describe_device(Client, DeviceId)
  when is_map(Client) ->
    describe_device(Client, DeviceId, []).
describe_device(Client, DeviceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/devices/", http_uri:encode(DeviceId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Given a device ID, finalizes the claim request for the associated
%% device.
%%
%% Claiming a device consists of initiating a claim, then publishing a device
%% event,
%% and finalizing the claim. For a device of type button, a device event can
%% be published by simply clicking the device.
finalize_device_claim(Client, DeviceId, Input) ->
    finalize_device_claim(Client, DeviceId, Input, []).
finalize_device_claim(Client, DeviceId, Input0, Options) ->
    Method = put,
    Path = ["/devices/", http_uri:encode(DeviceId), "/finalize-claim"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Given a device ID, returns the invokable methods associated with the
%% device.
get_device_methods(Client, DeviceId)
  when is_map(Client) ->
    get_device_methods(Client, DeviceId, []).
get_device_methods(Client, DeviceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/devices/", http_uri:encode(DeviceId), "/methods"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Given a device ID, initiates a claim request for the associated
%% device.
%%
%% Claiming a device consists of initiating a claim, then publishing a device
%% event,
%% and finalizing the claim. For a device of type button, a device event can
%% be published by simply clicking the device.
initiate_device_claim(Client, DeviceId, Input) ->
    initiate_device_claim(Client, DeviceId, Input, []).
initiate_device_claim(Client, DeviceId, Input0, Options) ->
    Method = put,
    Path = ["/devices/", http_uri:encode(DeviceId), "/initiate-claim"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Given a device ID, issues a request to invoke a named device method
%% (with possible
%% parameters).
%%
%% See the "Example POST" code snippet below.
invoke_device_method(Client, DeviceId, Input) ->
    invoke_device_method(Client, DeviceId, Input, []).
invoke_device_method(Client, DeviceId, Input0, Options) ->
    Method = post,
    Path = ["/devices/", http_uri:encode(DeviceId), "/methods"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Using a device ID, returns a DeviceEventsResponse object containing
%% an
%% array of events for the device.
list_device_events(Client, DeviceId, FromTimeStamp, MaxResults, NextToken, ToTimeStamp)
  when is_map(Client) ->
    list_device_events(Client, DeviceId, FromTimeStamp, MaxResults, NextToken, ToTimeStamp, []).
list_device_events(Client, DeviceId, FromTimeStamp, MaxResults, NextToken, ToTimeStamp, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/devices/", http_uri:encode(DeviceId), "/events"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"fromTimeStamp">>, FromTimeStamp},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"toTimeStamp">>, ToTimeStamp}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the 1-Click compatible devices associated with your AWS
%% account.
list_devices(Client, DeviceType, MaxResults, NextToken)
  when is_map(Client) ->
    list_devices(Client, DeviceType, MaxResults, NextToken, []).
list_devices(Client, DeviceType, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/devices"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"deviceType">>, DeviceType},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with the specified resource ARN.
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

%% @doc Adds or updates the tags associated with the resource ARN.
%%
%% See AWS IoT 1-Click Service Limits for the maximum number of tags allowed
%% per
%% resource.
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

%% @doc Disassociates a device from your AWS account using its device ID.
unclaim_device(Client, DeviceId, Input) ->
    unclaim_device(Client, DeviceId, Input, []).
unclaim_device(Client, DeviceId, Input0, Options) ->
    Method = put,
    Path = ["/devices/", http_uri:encode(DeviceId), "/unclaim"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Using tag keys, deletes the tags (key/value pairs) associated with
%% the specified
%% resource ARN.
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

%% @doc Using a Boolean value (true or false), this operation
%% enables or disables the device given a device ID.
update_device_state(Client, DeviceId, Input) ->
    update_device_state(Client, DeviceId, Input, []).
update_device_state(Client, DeviceId, Input0, Options) ->
    Method = put,
    Path = ["/devices/", http_uri:encode(DeviceId), "/state"],
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
    Client1 = Client#{service => <<"iot1click">>},
    Host = build_host(<<"devices.iot1click">>, Client1),
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
