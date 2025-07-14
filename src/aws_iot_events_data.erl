%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT Events monitors your equipment or device fleets for failures or
%% changes in operation, and
%% triggers actions when such events occur.
%%
%% You can use IoT Events Data API commands to send inputs to
%% detectors, list detectors, and view or update a detector's status.
%%
%% For more information, see What is IoT Events?:
%% https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html
%% in the
%% IoT Events Developer Guide.
-module(aws_iot_events_data).

-export([batch_acknowledge_alarm/2,
         batch_acknowledge_alarm/3,
         batch_delete_detector/2,
         batch_delete_detector/3,
         batch_disable_alarm/2,
         batch_disable_alarm/3,
         batch_enable_alarm/2,
         batch_enable_alarm/3,
         batch_put_message/2,
         batch_put_message/3,
         batch_reset_alarm/2,
         batch_reset_alarm/3,
         batch_snooze_alarm/2,
         batch_snooze_alarm/3,
         batch_update_detector/2,
         batch_update_detector/3,
         describe_alarm/2,
         describe_alarm/4,
         describe_alarm/5,
         describe_detector/2,
         describe_detector/4,
         describe_detector/5,
         list_alarms/2,
         list_alarms/4,
         list_alarms/5,
         list_detectors/2,
         list_detectors/4,
         list_detectors/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% batch_reset_alarm_response() :: #{
%%   <<"errorEntries">> => list(batch_alarm_action_error_entry())
%% }
-type batch_reset_alarm_response() :: #{binary() => any()}.


%% Example:
%% batch_alarm_action_error_entry() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"requestId">> => string()
%% }
-type batch_alarm_action_error_entry() :: #{binary() => any()}.


%% Example:
%% detector_state() :: #{
%%   <<"stateName">> => string(),
%%   <<"timers">> => list(timer()),
%%   <<"variables">> => list(variable())
%% }
-type detector_state() :: #{binary() => any()}.


%% Example:
%% batch_snooze_alarm_request() :: #{
%%   <<"snoozeActionRequests">> := list(snooze_alarm_action_request())
%% }
-type batch_snooze_alarm_request() :: #{binary() => any()}.


%% Example:
%% alarm() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"alarmModelVersion">> => string(),
%%   <<"alarmState">> => alarm_state(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"keyValue">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"severity">> => integer()
%% }
-type alarm() :: #{binary() => any()}.


%% Example:
%% list_alarms_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_alarms_request() :: #{binary() => any()}.


%% Example:
%% acknowledge_action_configuration() :: #{
%%   <<"note">> => string()
%% }
-type acknowledge_action_configuration() :: #{binary() => any()}.


%% Example:
%% timer() :: #{
%%   <<"name">> => string(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type timer() :: #{binary() => any()}.


%% Example:
%% list_detectors_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"stateName">> => string()
%% }
-type list_detectors_request() :: #{binary() => any()}.


%% Example:
%% disable_alarm_action_request() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"note">> => string(),
%%   <<"requestId">> => string()
%% }
-type disable_alarm_action_request() :: #{binary() => any()}.


%% Example:
%% batch_acknowledge_alarm_response() :: #{
%%   <<"errorEntries">> => list(batch_alarm_action_error_entry())
%% }
-type batch_acknowledge_alarm_response() :: #{binary() => any()}.


%% Example:
%% reset_alarm_action_request() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"note">> => string(),
%%   <<"requestId">> => string()
%% }
-type reset_alarm_action_request() :: #{binary() => any()}.


%% Example:
%% batch_put_message_request() :: #{
%%   <<"messages">> := list(message())
%% }
-type batch_put_message_request() :: #{binary() => any()}.


%% Example:
%% enable_action_configuration() :: #{
%%   <<"note">> => string()
%% }
-type enable_action_configuration() :: #{binary() => any()}.


%% Example:
%% batch_delete_detector_response() :: #{
%%   <<"batchDeleteDetectorErrorEntries">> => list(batch_delete_detector_error_entry())
%% }
-type batch_delete_detector_response() :: #{binary() => any()}.


%% Example:
%% describe_detector_request() :: #{
%%   <<"keyValue">> => string()
%% }
-type describe_detector_request() :: #{binary() => any()}.


%% Example:
%% alarm_summary() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"alarmModelVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"keyValue">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"stateName">> => list(any())
%% }
-type alarm_summary() :: #{binary() => any()}.


%% Example:
%% simple_rule_evaluation() :: #{
%%   <<"inputPropertyValue">> => string(),
%%   <<"operator">> => list(any()),
%%   <<"thresholdValue">> => string()
%% }
-type simple_rule_evaluation() :: #{binary() => any()}.


%% Example:
%% batch_acknowledge_alarm_request() :: #{
%%   <<"acknowledgeActionRequests">> := list(acknowledge_alarm_action_request())
%% }
-type batch_acknowledge_alarm_request() :: #{binary() => any()}.


%% Example:
%% acknowledge_alarm_action_request() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"note">> => string(),
%%   <<"requestId">> => string()
%% }
-type acknowledge_alarm_action_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% detector_state_summary() :: #{
%%   <<"stateName">> => string()
%% }
-type detector_state_summary() :: #{binary() => any()}.


%% Example:
%% timer_definition() :: #{
%%   <<"name">> => string(),
%%   <<"seconds">> => integer()
%% }
-type timer_definition() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% batch_update_detector_request() :: #{
%%   <<"detectors">> := list(update_detector_request())
%% }
-type batch_update_detector_request() :: #{binary() => any()}.


%% Example:
%% batch_snooze_alarm_response() :: #{
%%   <<"errorEntries">> => list(batch_alarm_action_error_entry())
%% }
-type batch_snooze_alarm_response() :: #{binary() => any()}.


%% Example:
%% customer_action() :: #{
%%   <<"acknowledgeActionConfiguration">> => acknowledge_action_configuration(),
%%   <<"actionName">> => list(any()),
%%   <<"disableActionConfiguration">> => disable_action_configuration(),
%%   <<"enableActionConfiguration">> => enable_action_configuration(),
%%   <<"resetActionConfiguration">> => reset_action_configuration(),
%%   <<"snoozeActionConfiguration">> => snooze_action_configuration()
%% }
-type customer_action() :: #{binary() => any()}.


%% Example:
%% disable_action_configuration() :: #{
%%   <<"note">> => string()
%% }
-type disable_action_configuration() :: #{binary() => any()}.


%% Example:
%% detector_state_definition() :: #{
%%   <<"stateName">> => string(),
%%   <<"timers">> => list(timer_definition()),
%%   <<"variables">> => list(variable_definition())
%% }
-type detector_state_definition() :: #{binary() => any()}.


%% Example:
%% batch_update_detector_error_entry() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"messageId">> => string()
%% }
-type batch_update_detector_error_entry() :: #{binary() => any()}.


%% Example:
%% detector_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"detectorModelName">> => string(),
%%   <<"detectorModelVersion">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"state">> => detector_state_summary()
%% }
-type detector_summary() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% variable() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type variable() :: #{binary() => any()}.


%% Example:
%% batch_disable_alarm_request() :: #{
%%   <<"disableActionRequests">> := list(disable_alarm_action_request())
%% }
-type batch_disable_alarm_request() :: #{binary() => any()}.


%% Example:
%% list_alarms_response() :: #{
%%   <<"alarmSummaries">> => list(alarm_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_alarms_response() :: #{binary() => any()}.


%% Example:
%% reset_action_configuration() :: #{
%%   <<"note">> => string()
%% }
-type reset_action_configuration() :: #{binary() => any()}.


%% Example:
%% describe_alarm_response() :: #{
%%   <<"alarm">> => alarm()
%% }
-type describe_alarm_response() :: #{binary() => any()}.


%% Example:
%% batch_enable_alarm_request() :: #{
%%   <<"enableActionRequests">> := list(enable_alarm_action_request())
%% }
-type batch_enable_alarm_request() :: #{binary() => any()}.


%% Example:
%% batch_reset_alarm_request() :: #{
%%   <<"resetActionRequests">> := list(reset_alarm_action_request())
%% }
-type batch_reset_alarm_request() :: #{binary() => any()}.


%% Example:
%% describe_detector_response() :: #{
%%   <<"detector">> => detector()
%% }
-type describe_detector_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_detector_request() :: #{
%%   <<"detectors">> := list(delete_detector_request())
%% }
-type batch_delete_detector_request() :: #{binary() => any()}.


%% Example:
%% list_detectors_response() :: #{
%%   <<"detectorSummaries">> => list(detector_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_detectors_response() :: #{binary() => any()}.


%% Example:
%% alarm_state() :: #{
%%   <<"customerAction">> => customer_action(),
%%   <<"ruleEvaluation">> => rule_evaluation(),
%%   <<"stateName">> => list(any()),
%%   <<"systemEvent">> => system_event()
%% }
-type alarm_state() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% variable_definition() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type variable_definition() :: #{binary() => any()}.


%% Example:
%% describe_alarm_request() :: #{
%%   <<"keyValue">> => string()
%% }
-type describe_alarm_request() :: #{binary() => any()}.


%% Example:
%% state_change_configuration() :: #{
%%   <<"triggerType">> => list(any())
%% }
-type state_change_configuration() :: #{binary() => any()}.


%% Example:
%% batch_put_message_error_entry() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"messageId">> => string()
%% }
-type batch_put_message_error_entry() :: #{binary() => any()}.


%% Example:
%% snooze_action_configuration() :: #{
%%   <<"note">> => string(),
%%   <<"snoozeDuration">> => integer()
%% }
-type snooze_action_configuration() :: #{binary() => any()}.


%% Example:
%% snooze_alarm_action_request() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"note">> => string(),
%%   <<"requestId">> => string(),
%%   <<"snoozeDuration">> => integer()
%% }
-type snooze_alarm_action_request() :: #{binary() => any()}.


%% Example:
%% system_event() :: #{
%%   <<"eventType">> => list(any()),
%%   <<"stateChangeConfiguration">> => state_change_configuration()
%% }
-type system_event() :: #{binary() => any()}.


%% Example:
%% batch_update_detector_response() :: #{
%%   <<"batchUpdateDetectorErrorEntries">> => list(batch_update_detector_error_entry())
%% }
-type batch_update_detector_response() :: #{binary() => any()}.


%% Example:
%% batch_enable_alarm_response() :: #{
%%   <<"errorEntries">> => list(batch_alarm_action_error_entry())
%% }
-type batch_enable_alarm_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_detector_error_entry() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"messageId">> => string()
%% }
-type batch_delete_detector_error_entry() :: #{binary() => any()}.


%% Example:
%% update_detector_request() :: #{
%%   <<"detectorModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"messageId">> => string(),
%%   <<"state">> => detector_state_definition()
%% }
-type update_detector_request() :: #{binary() => any()}.


%% Example:
%% batch_put_message_response() :: #{
%%   <<"BatchPutMessageErrorEntries">> => list(batch_put_message_error_entry())
%% }
-type batch_put_message_response() :: #{binary() => any()}.


%% Example:
%% rule_evaluation() :: #{
%%   <<"simpleRuleEvaluation">> => simple_rule_evaluation()
%% }
-type rule_evaluation() :: #{binary() => any()}.


%% Example:
%% detector() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"detectorModelName">> => string(),
%%   <<"detectorModelVersion">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"state">> => detector_state()
%% }
-type detector() :: #{binary() => any()}.


%% Example:
%% timestamp_value() :: #{
%%   <<"timeInMillis">> => float()
%% }
-type timestamp_value() :: #{binary() => any()}.


%% Example:
%% batch_disable_alarm_response() :: #{
%%   <<"errorEntries">> => list(batch_alarm_action_error_entry())
%% }
-type batch_disable_alarm_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"inputName">> => string(),
%%   <<"messageId">> => string(),
%%   <<"payload">> => binary(),
%%   <<"timestamp">> => timestamp_value()
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% delete_detector_request() :: #{
%%   <<"detectorModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"messageId">> => string()
%% }
-type delete_detector_request() :: #{binary() => any()}.


%% Example:
%% enable_alarm_action_request() :: #{
%%   <<"alarmModelName">> => string(),
%%   <<"keyValue">> => string(),
%%   <<"note">> => string(),
%%   <<"requestId">> => string()
%% }
-type enable_alarm_action_request() :: #{binary() => any()}.

-type batch_acknowledge_alarm_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_delete_detector_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_disable_alarm_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_enable_alarm_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_put_message_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_reset_alarm_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_snooze_alarm_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_update_detector_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type describe_alarm_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_detector_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_alarms_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_detectors_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Acknowledges one or more alarms.
%%
%% The alarms change to the `ACKNOWLEDGED' state
%% after you acknowledge them.
-spec batch_acknowledge_alarm(aws_client:aws_client(), batch_acknowledge_alarm_request()) ->
    {ok, batch_acknowledge_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_acknowledge_alarm_errors(), tuple()}.
batch_acknowledge_alarm(Client, Input) ->
    batch_acknowledge_alarm(Client, Input, []).

-spec batch_acknowledge_alarm(aws_client:aws_client(), batch_acknowledge_alarm_request(), proplists:proplist()) ->
    {ok, batch_acknowledge_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_acknowledge_alarm_errors(), tuple()}.
batch_acknowledge_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/acknowledge"],
    SuccessStatusCode = 202,
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

%% @doc Deletes one or more detectors that were created.
%%
%% When a detector is deleted, its state will be cleared and the detector
%% will be removed from the list of detectors. The deleted detector will no
%% longer appear if referenced in the ListDetectors:
%% https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html
%% API call.
-spec batch_delete_detector(aws_client:aws_client(), batch_delete_detector_request()) ->
    {ok, batch_delete_detector_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_detector_errors(), tuple()}.
batch_delete_detector(Client, Input) ->
    batch_delete_detector(Client, Input, []).

-spec batch_delete_detector(aws_client:aws_client(), batch_delete_detector_request(), proplists:proplist()) ->
    {ok, batch_delete_detector_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_detector_errors(), tuple()}.
batch_delete_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detectors/delete"],
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

%% @doc Disables one or more alarms.
%%
%% The alarms change to the `DISABLED' state after
%% you disable them.
-spec batch_disable_alarm(aws_client:aws_client(), batch_disable_alarm_request()) ->
    {ok, batch_disable_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_disable_alarm_errors(), tuple()}.
batch_disable_alarm(Client, Input) ->
    batch_disable_alarm(Client, Input, []).

-spec batch_disable_alarm(aws_client:aws_client(), batch_disable_alarm_request(), proplists:proplist()) ->
    {ok, batch_disable_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_disable_alarm_errors(), tuple()}.
batch_disable_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/disable"],
    SuccessStatusCode = 202,
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

%% @doc Enables one or more alarms.
%%
%% The alarms change to the `NORMAL' state after you
%% enable them.
-spec batch_enable_alarm(aws_client:aws_client(), batch_enable_alarm_request()) ->
    {ok, batch_enable_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_enable_alarm_errors(), tuple()}.
batch_enable_alarm(Client, Input) ->
    batch_enable_alarm(Client, Input, []).

-spec batch_enable_alarm(aws_client:aws_client(), batch_enable_alarm_request(), proplists:proplist()) ->
    {ok, batch_enable_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_enable_alarm_errors(), tuple()}.
batch_enable_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/enable"],
    SuccessStatusCode = 202,
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

%% @doc Sends a set of messages to the IoT Events system.
%%
%% Each message payload is transformed into
%% the input you specify (`&quot;inputName&quot;') and ingested into any
%% detectors that monitor
%% that input. If multiple messages are sent, the order in which the messages
%% are processed isn't
%% guaranteed. To guarantee ordering, you must send messages one at a time
%% and wait for a
%% successful response.
-spec batch_put_message(aws_client:aws_client(), batch_put_message_request()) ->
    {ok, batch_put_message_response(), tuple()} |
    {error, any()} |
    {error, batch_put_message_errors(), tuple()}.
batch_put_message(Client, Input) ->
    batch_put_message(Client, Input, []).

-spec batch_put_message(aws_client:aws_client(), batch_put_message_request(), proplists:proplist()) ->
    {ok, batch_put_message_response(), tuple()} |
    {error, any()} |
    {error, batch_put_message_errors(), tuple()}.
batch_put_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/inputs/messages"],
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

%% @doc Resets one or more alarms.
%%
%% The alarms return to the `NORMAL' state after you
%% reset them.
-spec batch_reset_alarm(aws_client:aws_client(), batch_reset_alarm_request()) ->
    {ok, batch_reset_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_reset_alarm_errors(), tuple()}.
batch_reset_alarm(Client, Input) ->
    batch_reset_alarm(Client, Input, []).

-spec batch_reset_alarm(aws_client:aws_client(), batch_reset_alarm_request(), proplists:proplist()) ->
    {ok, batch_reset_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_reset_alarm_errors(), tuple()}.
batch_reset_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/reset"],
    SuccessStatusCode = 202,
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

%% @doc Changes one or more alarms to the snooze mode.
%%
%% The alarms change to the
%% `SNOOZE_DISABLED' state after you set them to the snooze mode.
-spec batch_snooze_alarm(aws_client:aws_client(), batch_snooze_alarm_request()) ->
    {ok, batch_snooze_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_snooze_alarm_errors(), tuple()}.
batch_snooze_alarm(Client, Input) ->
    batch_snooze_alarm(Client, Input, []).

-spec batch_snooze_alarm(aws_client:aws_client(), batch_snooze_alarm_request(), proplists:proplist()) ->
    {ok, batch_snooze_alarm_response(), tuple()} |
    {error, any()} |
    {error, batch_snooze_alarm_errors(), tuple()}.
batch_snooze_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/snooze"],
    SuccessStatusCode = 202,
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

%% @doc Updates the state, variable values, and timer settings of one or more
%% detectors
%% (instances) of a specified detector model.
-spec batch_update_detector(aws_client:aws_client(), batch_update_detector_request()) ->
    {ok, batch_update_detector_response(), tuple()} |
    {error, any()} |
    {error, batch_update_detector_errors(), tuple()}.
batch_update_detector(Client, Input) ->
    batch_update_detector(Client, Input, []).

-spec batch_update_detector(aws_client:aws_client(), batch_update_detector_request(), proplists:proplist()) ->
    {ok, batch_update_detector_response(), tuple()} |
    {error, any()} |
    {error, batch_update_detector_errors(), tuple()}.
batch_update_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detectors"],
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

%% @doc Retrieves information about an alarm.
-spec describe_alarm(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_alarm_response(), tuple()} |
    {error, any()} |
    {error, describe_alarm_errors(), tuple()}.
describe_alarm(Client, AlarmModelName)
  when is_map(Client) ->
    describe_alarm(Client, AlarmModelName, #{}, #{}).

-spec describe_alarm(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_alarm_response(), tuple()} |
    {error, any()} |
    {error, describe_alarm_errors(), tuple()}.
describe_alarm(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alarm(Client, AlarmModelName, QueryMap, HeadersMap, []).

-spec describe_alarm(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_alarm_response(), tuple()} |
    {error, any()} |
    {error, describe_alarm_errors(), tuple()}.
describe_alarm(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarms/", aws_util:encode_uri(AlarmModelName), "/keyValues"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"keyValue">>, maps:get(<<"keyValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified detector (instance).
-spec describe_detector(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_errors(), tuple()}.
describe_detector(Client, DetectorModelName)
  when is_map(Client) ->
    describe_detector(Client, DetectorModelName, #{}, #{}).

-spec describe_detector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_errors(), tuple()}.
describe_detector(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detector(Client, DetectorModelName, QueryMap, HeadersMap, []).

-spec describe_detector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_errors(), tuple()}.
describe_detector(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detectors/", aws_util:encode_uri(DetectorModelName), "/keyValues"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"keyValue">>, maps:get(<<"keyValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists one or more alarms.
%%
%% The operation returns only the metadata associated with each
%% alarm.
-spec list_alarms(aws_client:aws_client(), binary() | list()) ->
    {ok, list_alarms_response(), tuple()} |
    {error, any()} |
    {error, list_alarms_errors(), tuple()}.
list_alarms(Client, AlarmModelName)
  when is_map(Client) ->
    list_alarms(Client, AlarmModelName, #{}, #{}).

-spec list_alarms(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_alarms_response(), tuple()} |
    {error, any()} |
    {error, list_alarms_errors(), tuple()}.
list_alarms(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alarms(Client, AlarmModelName, QueryMap, HeadersMap, []).

-spec list_alarms(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_alarms_response(), tuple()} |
    {error, any()} |
    {error, list_alarms_errors(), tuple()}.
list_alarms(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarms/", aws_util:encode_uri(AlarmModelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists detectors (the instances of a detector model).
-spec list_detectors(aws_client:aws_client(), binary() | list()) ->
    {ok, list_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_detectors_errors(), tuple()}.
list_detectors(Client, DetectorModelName)
  when is_map(Client) ->
    list_detectors(Client, DetectorModelName, #{}, #{}).

-spec list_detectors(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_detectors_errors(), tuple()}.
list_detectors(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detectors(Client, DetectorModelName, QueryMap, HeadersMap, []).

-spec list_detectors(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_detectors_errors(), tuple()}.
list_detectors(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detectors/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"stateName">>, maps:get(<<"stateName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"ioteventsdata">>},
    Host = build_host(<<"data.iotevents">>, Client1),
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
