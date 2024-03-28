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
         describe_device/4,
         describe_device/5,
         finalize_device_claim/3,
         finalize_device_claim/4,
         get_device_methods/2,
         get_device_methods/4,
         get_device_methods/5,
         initiate_device_claim/3,
         initiate_device_claim/4,
         invoke_device_method/3,
         invoke_device_method/4,
         list_device_events/4,
         list_device_events/6,
         list_device_events/7,
         list_devices/1,
         list_devices/3,
         list_devices/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         unclaim_device/3,
         unclaim_device/4,
         untag_resource/3,
         untag_resource/4,
         update_device_state/3,
         update_device_state/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_devices_request() :: #{
%%   <<"DeviceType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% device_description() :: #{
%%   <<"Arn">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"DeviceId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"RemainingLife">> => float(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type device_description() :: #{binary() => any()}.


%% Example:
%% update_device_state_request() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type update_device_state_request() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% unclaim_device_request() :: #{}
-type unclaim_device_request() :: #{}.


%% Example:
%% finalize_device_claim_request() :: #{
%%   <<"Tags">> => map()
%% }
-type finalize_device_claim_request() :: #{binary() => any()}.

%% Example:
%% update_device_state_response() :: #{}
-type update_device_state_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% claim_devices_by_claim_code_request() :: #{}
-type claim_devices_by_claim_code_request() :: #{}.


%% Example:
%% list_device_events_response() :: #{
%%   <<"Events">> => list(device_event()()),
%%   <<"NextToken">> => string()
%% }
-type list_device_events_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% initiate_device_claim_response() :: #{
%%   <<"State">> => string()
%% }
-type initiate_device_claim_response() :: #{binary() => any()}.


%% Example:
%% list_device_events_request() :: #{
%%   <<"FromTimeStamp">> := non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ToTimeStamp">> := non_neg_integer()
%% }
-type list_device_events_request() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% get_device_methods_request() :: #{}
-type get_device_methods_request() :: #{}.

%% Example:
%% initiate_device_claim_request() :: #{}
-type initiate_device_claim_request() :: #{}.

%% Example:
%% describe_device_request() :: #{}
-type describe_device_request() :: #{}.


%% Example:
%% finalize_device_claim_response() :: #{
%%   <<"State">> => string()
%% }
-type finalize_device_claim_response() :: #{binary() => any()}.

%% Example:
%% attributes() :: #{}
-type attributes() :: #{}.


%% Example:
%% get_device_methods_response() :: #{
%%   <<"DeviceMethods">> => list(device_method()())
%% }
-type get_device_methods_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_devices_response() :: #{
%%   <<"Devices">> => list(device_description()()),
%%   <<"NextToken">> => string()
%% }
-type list_devices_response() :: #{binary() => any()}.


%% Example:
%% invoke_device_method_request() :: #{
%%   <<"DeviceMethod">> => device_method(),
%%   <<"DeviceMethodParameters">> => string()
%% }
-type invoke_device_method_request() :: #{binary() => any()}.


%% Example:
%% claim_devices_by_claim_code_response() :: #{
%%   <<"ClaimCode">> => string(),
%%   <<"Total">> => integer()
%% }
-type claim_devices_by_claim_code_response() :: #{binary() => any()}.


%% Example:
%% device_event() :: #{
%%   <<"Device">> => device(),
%%   <<"StdEvent">> => string()
%% }
-type device_event() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% unclaim_device_response() :: #{
%%   <<"State">> => string()
%% }
-type unclaim_device_response() :: #{binary() => any()}.


%% Example:
%% device() :: #{
%%   <<"Attributes">> => attributes(),
%%   <<"DeviceId">> => string(),
%%   <<"Type">> => string()
%% }
-type device() :: #{binary() => any()}.


%% Example:
%% invoke_device_method_response() :: #{
%%   <<"DeviceMethodResponse">> => string()
%% }
-type invoke_device_method_response() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% range_not_satisfiable_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type range_not_satisfiable_exception() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% device_method() :: #{
%%   <<"DeviceType">> => string(),
%%   <<"MethodName">> => string()
%% }
-type device_method() :: #{binary() => any()}.


%% Example:
%% describe_device_response() :: #{
%%   <<"DeviceDescription">> => device_description()
%% }
-type describe_device_response() :: #{binary() => any()}.

-type claim_devices_by_claim_code_errors() ::
    invalid_request_exception() | 
    forbidden_exception() | 
    internal_failure_exception().

-type describe_device_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type finalize_device_claim_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_device_methods_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type initiate_device_claim_errors() ::
    resource_conflict_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type invoke_device_method_errors() ::
    resource_conflict_exception() | 
    range_not_satisfiable_exception() | 
    precondition_failed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_device_events_errors() ::
    range_not_satisfiable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_devices_errors() ::
    range_not_satisfiable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type unclaim_device_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_device_state_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds device(s) to your account (i.e., claim one or more devices) if
%% and only if you
%% received a claim code with the device(s).
-spec claim_devices_by_claim_code(aws_client:aws_client(), binary() | list(), claim_devices_by_claim_code_request()) ->
    {ok, claim_devices_by_claim_code_response(), tuple()} |
    {error, any()} |
    {error, claim_devices_by_claim_code_errors(), tuple()}.
claim_devices_by_claim_code(Client, ClaimCode, Input) ->
    claim_devices_by_claim_code(Client, ClaimCode, Input, []).

-spec claim_devices_by_claim_code(aws_client:aws_client(), binary() | list(), claim_devices_by_claim_code_request(), proplists:proplist()) ->
    {ok, claim_devices_by_claim_code_response(), tuple()} |
    {error, any()} |
    {error, claim_devices_by_claim_code_errors(), tuple()}.
claim_devices_by_claim_code(Client, ClaimCode, Input0, Options0) ->
    Method = put,
    Path = ["/claims/", aws_util:encode_uri(ClaimCode), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Given a device ID, returns a DescribeDeviceResponse object describing
%% the
%% details of the device.
-spec describe_device(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, DeviceId)
  when is_map(Client) ->
    describe_device(Client, DeviceId, #{}, #{}).

-spec describe_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, DeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_device(Client, DeviceId, QueryMap, HeadersMap, []).

-spec describe_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, DeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec finalize_device_claim(aws_client:aws_client(), binary() | list(), finalize_device_claim_request()) ->
    {ok, finalize_device_claim_response(), tuple()} |
    {error, any()} |
    {error, finalize_device_claim_errors(), tuple()}.
finalize_device_claim(Client, DeviceId, Input) ->
    finalize_device_claim(Client, DeviceId, Input, []).

-spec finalize_device_claim(aws_client:aws_client(), binary() | list(), finalize_device_claim_request(), proplists:proplist()) ->
    {ok, finalize_device_claim_response(), tuple()} |
    {error, any()} |
    {error, finalize_device_claim_errors(), tuple()}.
finalize_device_claim(Client, DeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/finalize-claim"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Given a device ID, returns the invokable methods associated with the
%% device.
-spec get_device_methods(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_methods_response(), tuple()} |
    {error, any()} |
    {error, get_device_methods_errors(), tuple()}.
get_device_methods(Client, DeviceId)
  when is_map(Client) ->
    get_device_methods(Client, DeviceId, #{}, #{}).

-spec get_device_methods(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_methods_response(), tuple()} |
    {error, any()} |
    {error, get_device_methods_errors(), tuple()}.
get_device_methods(Client, DeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_methods(Client, DeviceId, QueryMap, HeadersMap, []).

-spec get_device_methods(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_methods_response(), tuple()} |
    {error, any()} |
    {error, get_device_methods_errors(), tuple()}.
get_device_methods(Client, DeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/methods"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec initiate_device_claim(aws_client:aws_client(), binary() | list(), initiate_device_claim_request()) ->
    {ok, initiate_device_claim_response(), tuple()} |
    {error, any()} |
    {error, initiate_device_claim_errors(), tuple()}.
initiate_device_claim(Client, DeviceId, Input) ->
    initiate_device_claim(Client, DeviceId, Input, []).

-spec initiate_device_claim(aws_client:aws_client(), binary() | list(), initiate_device_claim_request(), proplists:proplist()) ->
    {ok, initiate_device_claim_response(), tuple()} |
    {error, any()} |
    {error, initiate_device_claim_errors(), tuple()}.
initiate_device_claim(Client, DeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/initiate-claim"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Given a device ID, issues a request to invoke a named device method
%% (with possible
%% parameters).
%%
%% See the &quot;Example POST&quot; code snippet below.
-spec invoke_device_method(aws_client:aws_client(), binary() | list(), invoke_device_method_request()) ->
    {ok, invoke_device_method_response(), tuple()} |
    {error, any()} |
    {error, invoke_device_method_errors(), tuple()}.
invoke_device_method(Client, DeviceId, Input) ->
    invoke_device_method(Client, DeviceId, Input, []).

-spec invoke_device_method(aws_client:aws_client(), binary() | list(), invoke_device_method_request(), proplists:proplist()) ->
    {ok, invoke_device_method_response(), tuple()} |
    {error, any()} |
    {error, invoke_device_method_errors(), tuple()}.
invoke_device_method(Client, DeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/methods"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Using a device ID, returns a DeviceEventsResponse object containing
%% an
%% array of events for the device.
-spec list_device_events(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_device_events_response(), tuple()} |
    {error, any()} |
    {error, list_device_events_errors(), tuple()}.
list_device_events(Client, DeviceId, FromTimeStamp, ToTimeStamp)
  when is_map(Client) ->
    list_device_events(Client, DeviceId, FromTimeStamp, ToTimeStamp, #{}, #{}).

-spec list_device_events(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_device_events_response(), tuple()} |
    {error, any()} |
    {error, list_device_events_errors(), tuple()}.
list_device_events(Client, DeviceId, FromTimeStamp, ToTimeStamp, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_device_events(Client, DeviceId, FromTimeStamp, ToTimeStamp, QueryMap, HeadersMap, []).

-spec list_device_events(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_device_events_response(), tuple()} |
    {error, any()} |
    {error, list_device_events_errors(), tuple()}.
list_device_events(Client, DeviceId, FromTimeStamp, ToTimeStamp, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"fromTimeStamp">>, FromTimeStamp},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"toTimeStamp">>, ToTimeStamp}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the 1-Click compatible devices associated with your AWS
%% account.
-spec list_devices(aws_client:aws_client()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client)
  when is_map(Client) ->
    list_devices(Client, #{}, #{}).

-spec list_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices(Client, QueryMap, HeadersMap, []).

-spec list_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deviceType">>, maps:get(<<"deviceType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with the specified resource ARN.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds or updates the tags associated with the resource ARN.
%%
%% See AWS IoT 1-Click Service Limits:
%% https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits
%% for the maximum number of tags allowed per
%% resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a device from your AWS account using its device ID.
-spec unclaim_device(aws_client:aws_client(), binary() | list(), unclaim_device_request()) ->
    {ok, unclaim_device_response(), tuple()} |
    {error, any()} |
    {error, unclaim_device_errors(), tuple()}.
unclaim_device(Client, DeviceId, Input) ->
    unclaim_device(Client, DeviceId, Input, []).

-spec unclaim_device(aws_client:aws_client(), binary() | list(), unclaim_device_request(), proplists:proplist()) ->
    {ok, unclaim_device_response(), tuple()} |
    {error, any()} |
    {error, unclaim_device_errors(), tuple()}.
unclaim_device(Client, DeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/unclaim"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Using tag keys, deletes the tags (key/value pairs) associated with
%% the specified
%% resource ARN.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Using a Boolean value (true or false), this operation
%% enables or disables the device given a device ID.
-spec update_device_state(aws_client:aws_client(), binary() | list(), update_device_state_request()) ->
    {ok, update_device_state_response(), tuple()} |
    {error, any()} |
    {error, update_device_state_errors(), tuple()}.
update_device_state(Client, DeviceId, Input) ->
    update_device_state(Client, DeviceId, Input, []).

-spec update_device_state(aws_client:aws_client(), binary() | list(), update_device_state_request(), proplists:proplist()) ->
    {ok, update_device_state_response(), tuple()} |
    {error, any()} |
    {error, update_device_state_errors(), tuple()}.
update_device_state(Client, DeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), "/state"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"iot1click">>},
    Host = build_host(<<"devices.iot1click">>, Client1),
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
