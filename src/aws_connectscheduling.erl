%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Scheduling actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Scheduling.html
%%
%% Scheduling data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Scheduling.html
%%
%% Use the Amazon Connect Scheduling API to work programmatically with
%% Connect Customer forecasting, capacity planning, and scheduling, and to
%% integrate these capabilities with your own systems.
%%
%% In the Connect Customer admin website, you use them to forecast contact
%% volume, plan capacity, and create and manage agent schedules.
%%
%% For more information, see Forecasting &amp; agent scheduling:
%% https://docs.aws.amazon.com/connect/latest/adminguide/forecasting-capacity-planning-scheduling.html
%% in the Connect Customer Administrator Guide.
-module(aws_connectscheduling).

-export([approve_time_off/5,
         approve_time_off/6,
         cancel_time_off/5,
         cancel_time_off/6,
         create_time_off/4,
         create_time_off/5,
         get_time_off/4,
         get_time_off/6,
         get_time_off/7,
         put_time_off_balance/5,
         put_time_off_balance/6,
         reject_time_off/5,
         reject_time_off/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% approve_time_off_request() :: #{
%%   <<"Description">> => string(),
%%   <<"RuleFailureAction">> => list(any())
%% }
-type approve_time_off_request() :: #{binary() => any()}.

%% Example:
%% approve_time_off_response() :: #{}
-type approve_time_off_response() :: #{}.


%% Example:
%% cancel_time_off_request() :: #{
%%   <<"Description">> => string()
%% }
-type cancel_time_off_request() :: #{binary() => any()}.

%% Example:
%% cancel_time_off_response() :: #{}
-type cancel_time_off_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_time_off_request() :: #{
%%   <<"ApprovalType">> := list(any()),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndAt">> := [non_neg_integer()],
%%   <<"RuleFailureAction">> => list(any()),
%%   <<"ShiftActivityId">> := string(),
%%   <<"StartAt">> := [non_neg_integer()]
%% }
-type create_time_off_request() :: #{binary() => any()}.


%% Example:
%% create_time_off_response() :: #{
%%   <<"TimeOffId">> => string()
%% }
-type create_time_off_response() :: #{binary() => any()}.


%% Example:
%% duration() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type duration() :: #{binary() => any()}.

%% Example:
%% get_time_off_request() :: #{}
-type get_time_off_request() :: #{}.


%% Example:
%% get_time_off_response() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"CreatedBy">> => list(),
%%   <<"Description">> => string(),
%%   <<"EndAt">> => [non_neg_integer()],
%%   <<"ShiftActivityId">> => string(),
%%   <<"StartAt">> => [non_neg_integer()],
%%   <<"Status">> => list(any()),
%%   <<"TimeOffId">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()],
%%   <<"UpdatedBy">> => list(),
%%   <<"UserId">> => string(),
%%   <<"ValidationResults">> => list(time_off_validation_result())
%% }
-type get_time_off_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% put_time_off_balance_request() :: #{
%%   <<"Balance">> := duration()
%% }
-type put_time_off_balance_request() :: #{binary() => any()}.

%% Example:
%% put_time_off_balance_response() :: #{}
-type put_time_off_balance_response() :: #{}.


%% Example:
%% reject_time_off_request() :: #{
%%   <<"Description">> => string()
%% }
-type reject_time_off_request() :: #{binary() => any()}.

%% Example:
%% reject_time_off_response() :: #{}
-type reject_time_off_response() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => [string()],
%%   <<"RetryAfterSeconds">> => [integer()],
%%   <<"ServiceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% time_off_validation_result() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Severity">> => list(any())
%% }
-type time_off_validation_result() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type approve_time_off_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_time_off_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_time_off_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_time_off_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_time_off_balance_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type reject_time_off_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Approves a time off request.
%%
%% Evaluates agent time off balances and group time off allowances before
%% approving. `RuleFailureAction' controls what happens when these
%% evaluations fail. The request is rejected with
%% `CONFLICTING_TIME_OFF_REQUEST' if it overlaps another time off request
%% for the user that is `APPROVED' or being approved.
%%
%% The time off request is processed asynchronously, so a successful call
%% doesn't indicate the final status. Read the resulting status with
%% `GetTimeOff' or from the time off state-change events.
%%
%% Approving an `APPROVED' request succeeds without a change. Approving a
%% `REJECTED' request evaluates the rules again, so it can end
%% `APPROVED' or `REJECTED', and repeating the call can give a
%% different result. Check the status with `GetTimeOff' before you retry.
%%
%% Returns `ConflictException' if the request is `PENDING' or
%% `CANCELLED'. `PENDING' means Connect Customer is still processing
%% the request asynchronously. Wait until `GetTimeOff' returns a status
%% other than `PENDING', and then retry.
%%
%% When the approval succeeds, Connect Customer cancels any overtime or
%% voluntary time off activity that overlaps the approved window.
%%
%% Connect Customer doesn't check whether the principal that calls this
%% operation supervises the user. The staffing group's approval settings
%% also don't apply. IAM permissions are the only control. If you allow a
%% principal to call this operation, that principal can send
%% `RuleFailureAction' `OVERRIDE' and approve a request past failed
%% rules. Grant permission for this operation only to principals that you
%% trust to override time off rules.
-spec approve_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), approve_time_off_request()) ->
    {ok, approve_time_off_response(), tuple()} |
    {error, any()} |
    {error, approve_time_off_errors(), tuple()}.
approve_time_off(Client, InstanceId, TimeOffId, UserId, Input) ->
    approve_time_off(Client, InstanceId, TimeOffId, UserId, Input, []).

-spec approve_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), approve_time_off_request(), proplists:proplist()) ->
    {ok, approve_time_off_response(), tuple()} |
    {error, any()} |
    {error, approve_time_off_errors(), tuple()}.
approve_time_off(Client, InstanceId, TimeOffId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/scheduling/instances/", aws_util:encode_uri(InstanceId), "/users/", aws_util:encode_uri(UserId), "/timeoffs/", aws_util:encode_uri(TimeOffId), "/approve"],
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

%% @doc Cancels a time off request.
%%
%% Cancelling a `CANCELLED' request succeeds without a change. Returns
%% `ConflictException' if the request is `PENDING', which means
%% Connect Customer is still processing the request asynchronously. Wait
%% until `GetTimeOff' returns a status other than `PENDING', and then
%% retry.
-spec cancel_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), cancel_time_off_request()) ->
    {ok, cancel_time_off_response(), tuple()} |
    {error, any()} |
    {error, cancel_time_off_errors(), tuple()}.
cancel_time_off(Client, InstanceId, TimeOffId, UserId, Input) ->
    cancel_time_off(Client, InstanceId, TimeOffId, UserId, Input, []).

-spec cancel_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), cancel_time_off_request(), proplists:proplist()) ->
    {ok, cancel_time_off_response(), tuple()} |
    {error, any()} |
    {error, cancel_time_off_errors(), tuple()}.
cancel_time_off(Client, InstanceId, TimeOffId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/scheduling/instances/", aws_util:encode_uri(InstanceId), "/users/", aws_util:encode_uri(UserId), "/timeoffs/", aws_util:encode_uri(TimeOffId), "/cancel"],
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

%% @doc Creates a time off request for a user.
%%
%% You don't provide a status, because Connect Customer owns the request
%% lifecycle. To get the decided status, call `GetTimeOff' or use the
%% time off state-change events.
%%
%% `ApprovalType' controls who approves the request. You can specify one
%% of the following values:
%%
%% `AWAIT_APPROVAL': the request waits in `AWAITING_APPROVAL' until
%% you call `ApproveTimeOff' or `RejectTimeOff'. Rule evaluation and
%% the overlap check run at approval, not at creation. A waiting request
%% doesn't reserve its window, so another request for the same window can
%% be approved first.
%%
%% `AUTOMATIC': Connect Customer evaluates the rules (time off balances
%% and group allowances) and decides the request. The request can be
%% `PENDING' while Connect Customer decides, and then ends `APPROVED'
%% or `REJECTED'. If it overlaps another time off request for the user,
%% the requested time off ends `REJECTED' with
%% `CONFLICTING_TIME_OFF_REQUEST'. It also ends `REJECTED' if it
%% overlaps overtime or voluntary time off. If the whole window is in the
%% past, Connect Customer records failed rules as `WARNING' and
%% doesn't reject the request, whatever the `RuleFailureAction'.
%%
%% The staffing group's Supervisor approval needed setting doesn't
%% apply to this operation. `ApprovalType' alone decides whether the
%% request waits for approval. The operation fails with
%% `ValidationException' on `UserId' in the following cases:
%%
%% The user isn't in a staffing group, or the staffing group isn't
%% associated with a forecast group.
%%
%% Time off isn't enabled:
%% https://docs.aws.amazon.com/connect/latest/adminguide/enable-to.html for
%% the user's staffing group, or the user's staff rules don't
%% allow time off.
%%
%% To change the dates of a request, cancel it with `CancelTimeOff' and
%% create a new request. The new request has a new `TimeOffId'.
%%
%% Connect Customer doesn't check whether the principal that calls this
%% operation supervises the user. The staffing group's approval settings
%% also don't apply. IAM permissions are the only control. If you allow a
%% principal to call this operation, that principal can send
%% `ApprovalType' `AUTOMATIC' with `RuleFailureAction'
%% `OVERRIDE' and approve a request past failed rules. Grant permission
%% for this operation only to principals that you trust to override time off
%% rules.
%%
%% For information about time off in the Connect Customer admin website, see
%% Time off management:
%% https://docs.aws.amazon.com/connect/latest/adminguide/scheduling-time-off.html
%% in the Connect Customer Administrator Guide.
-spec create_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), create_time_off_request()) ->
    {ok, create_time_off_response(), tuple()} |
    {error, any()} |
    {error, create_time_off_errors(), tuple()}.
create_time_off(Client, InstanceId, UserId, Input) ->
    create_time_off(Client, InstanceId, UserId, Input, []).

-spec create_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), create_time_off_request(), proplists:proplist()) ->
    {ok, create_time_off_response(), tuple()} |
    {error, any()} |
    {error, create_time_off_errors(), tuple()}.
create_time_off(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/scheduling/instances/", aws_util:encode_uri(InstanceId), "/users/", aws_util:encode_uri(UserId), "/timeoffs"],
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

%% @doc Returns a time off request, including its current status and
%% validation results.
-spec get_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_time_off_response(), tuple()} |
    {error, any()} |
    {error, get_time_off_errors(), tuple()}.
get_time_off(Client, InstanceId, TimeOffId, UserId)
  when is_map(Client) ->
    get_time_off(Client, InstanceId, TimeOffId, UserId, #{}, #{}).

-spec get_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_time_off_response(), tuple()} |
    {error, any()} |
    {error, get_time_off_errors(), tuple()}.
get_time_off(Client, InstanceId, TimeOffId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_time_off(Client, InstanceId, TimeOffId, UserId, QueryMap, HeadersMap, []).

-spec get_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_time_off_response(), tuple()} |
    {error, any()} |
    {error, get_time_off_errors(), tuple()}.
get_time_off(Client, InstanceId, TimeOffId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scheduling/instances/", aws_util:encode_uri(InstanceId), "/users/", aws_util:encode_uri(UserId), "/timeoffs/", aws_util:encode_uri(TimeOffId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the time off balance for one user and shift activity.
%%
%% The value replaces the existing balance rather than adjusting it, so you
%% can safely retry the call. This operation can't remove a balance. To
%% remove one, upload a blank balance in the Connect Customer admin website.
%% For more information, see Import an agent's time off balance:
%% https://docs.aws.amazon.com/connect/latest/adminguide/upload-timeoff-balance.html
%% in the Connect Customer Administrator Guide.
-spec put_time_off_balance(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_time_off_balance_request()) ->
    {ok, put_time_off_balance_response(), tuple()} |
    {error, any()} |
    {error, put_time_off_balance_errors(), tuple()}.
put_time_off_balance(Client, InstanceId, ShiftActivityId, UserId, Input) ->
    put_time_off_balance(Client, InstanceId, ShiftActivityId, UserId, Input, []).

-spec put_time_off_balance(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_time_off_balance_request(), proplists:proplist()) ->
    {ok, put_time_off_balance_response(), tuple()} |
    {error, any()} |
    {error, put_time_off_balance_errors(), tuple()}.
put_time_off_balance(Client, InstanceId, ShiftActivityId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/scheduling/instances/", aws_util:encode_uri(InstanceId), "/users/", aws_util:encode_uri(UserId), "/timeoff-balances/", aws_util:encode_uri(ShiftActivityId), ""],
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

%% @doc Rejects a time off request.
%%
%% Rejecting a `REJECTED' request succeeds without a change. Returns
%% `ConflictException' if the request is `PENDING' or
%% `CANCELLED'. `PENDING' means Connect Customer is still processing
%% the request asynchronously. Wait until `GetTimeOff' returns a status
%% other than `PENDING', and then retry.
-spec reject_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), reject_time_off_request()) ->
    {ok, reject_time_off_response(), tuple()} |
    {error, any()} |
    {error, reject_time_off_errors(), tuple()}.
reject_time_off(Client, InstanceId, TimeOffId, UserId, Input) ->
    reject_time_off(Client, InstanceId, TimeOffId, UserId, Input, []).

-spec reject_time_off(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), reject_time_off_request(), proplists:proplist()) ->
    {ok, reject_time_off_response(), tuple()} |
    {error, any()} |
    {error, reject_time_off_errors(), tuple()}.
reject_time_off(Client, InstanceId, TimeOffId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/scheduling/instances/", aws_util:encode_uri(InstanceId), "/users/", aws_util:encode_uri(UserId), "/timeoffs/", aws_util:encode_uri(TimeOffId), "/reject"],
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"connect">>},
    DefaultHost = build_host(<<"connect">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_CONNECTSCHEDULING">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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

