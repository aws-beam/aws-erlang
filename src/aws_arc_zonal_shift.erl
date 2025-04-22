%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the API Reference Guide for zonal shift and zonal
%% autoshift in Amazon Route 53 Application Recovery Controller (ARC).
%%
%% You can start a zonal shift to move traffic for a load balancer resource
%% away from an Availability Zone to
%% help your application recover quickly from an impairment in an
%% Availability Zone. For example,
%% you can recover your application from a developer's bad code
%% deployment or from an
%% Amazon Web Services infrastructure failure in a single Availability Zone.
%%
%% You can also configure zonal autoshift for supported load balancer
%% resources. Zonal autoshift
%% is a capability in ARC where you authorize Amazon Web Services to shift
%% away application resource
%% traffic from an Availability Zone during events, on your behalf, to help
%% reduce your time to recovery.
%% Amazon Web Services starts an autoshift when internal telemetry indicates
%% that there is an Availability
%% Zone impairment that could potentially impact customers.
%%
%% To help make sure that zonal autoshift is safe for your application, you
%% must
%% also configure practice runs when you enable zonal autoshift for a
%% resource. Practice runs start
%% weekly zonal shifts for a resource, to shift traffic for the resource away
%% from an Availability Zone.
%% Practice runs help you to make sure, on a regular basis, that you have
%% enough capacity in all the
%% Availability Zones in an Amazon Web Services Region for your application
%% to continue to operate normally
%% when traffic for a resource is shifted away from one Availability Zone.
%%
%% Before you configure practice runs or enable zonal autoshift, we strongly
%% recommend
%% that you prescale your application resource capacity in all Availability
%% Zones in the Region where
%% your application resources are deployed. You should not rely on scaling on
%% demand when an
%% autoshift or practice run starts. Zonal autoshift, including practice
%% runs, works independently,
%% and does not wait for auto scaling actions to complete. Relying on auto
%% scaling, instead of
%% pre-scaling, can result in loss of availability.
%%
%% If you use auto scaling to handle regular cycles of traffic, we strongly
%% recommend that you configure
%% the minimum capacity of your auto scaling to continue operating normally
%% with the loss of an
%% Availability Zone.
%%
%% Be aware that ARC does not inspect the health of individual resources.
%% Amazon Web Services only starts an
%% autoshift when Amazon Web Services telemetry detects that there is an
%% Availability Zone impairment that could
%% potentially impact customers. In some cases, resources might be shifted
%% away that are not experiencing
%% impact.
%%
%% For more information about using zonal shift and zonal autoshift, see the
%% Amazon Route 53 Application Recovery Controller
%% Developer Guide:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html.
-module(aws_arc_zonal_shift).

-export([cancel_zonal_shift/3,
         cancel_zonal_shift/4,
         create_practice_run_configuration/2,
         create_practice_run_configuration/3,
         delete_practice_run_configuration/3,
         delete_practice_run_configuration/4,
         get_autoshift_observer_notification_status/1,
         get_autoshift_observer_notification_status/3,
         get_autoshift_observer_notification_status/4,
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
         update_autoshift_observer_notification_status/2,
         update_autoshift_observer_notification_status/3,
         update_practice_run_configuration/3,
         update_practice_run_configuration/4,
         update_zonal_autoshift_configuration/3,
         update_zonal_autoshift_configuration/4,
         update_zonal_shift/3,
         update_zonal_shift/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_managed_resources_response() :: #{
%%   <<"items">> => list(managed_resource_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_managed_resources_response() :: #{binary() => any()}.


%% Example:
%% get_managed_resource_response() :: #{
%%   <<"appliedWeights">> => map(),
%%   <<"arn">> => string(),
%%   <<"autoshifts">> => list(autoshift_in_resource()()),
%%   <<"name">> => string(),
%%   <<"practiceRunConfiguration">> => practice_run_configuration(),
%%   <<"zonalAutoshiftStatus">> => list(any()),
%%   <<"zonalShifts">> => list(zonal_shift_in_resource()())
%% }
-type get_managed_resource_response() :: #{binary() => any()}.


%% Example:
%% list_zonal_shifts_response() :: #{
%%   <<"items">> => list(zonal_shift_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_zonal_shifts_response() :: #{binary() => any()}.


%% Example:
%% update_zonal_shift_request() :: #{
%%   <<"comment">> => string(),
%%   <<"expiresIn">> => string()
%% }
-type update_zonal_shift_request() :: #{binary() => any()}.


%% Example:
%% autoshift_summary() :: #{
%%   <<"awayFrom">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type autoshift_summary() :: #{binary() => any()}.


%% Example:
%% list_autoshifts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"status">> => list(any())
%% }
-type list_autoshifts_request() :: #{binary() => any()}.


%% Example:
%% zonal_shift() :: #{
%%   <<"awayFrom">> := string(),
%%   <<"comment">> := string(),
%%   <<"expiryTime">> := non_neg_integer(),
%%   <<"resourceIdentifier">> := string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"status">> := list(any()),
%%   <<"zonalShiftId">> := string()
%% }
-type zonal_shift() :: #{binary() => any()}.


%% Example:
%% autoshift_in_resource() :: #{
%%   <<"appliedStatus">> => list(any()),
%%   <<"awayFrom">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type autoshift_in_resource() :: #{binary() => any()}.


%% Example:
%% managed_resource_summary() :: #{
%%   <<"appliedWeights">> => map(),
%%   <<"arn">> => string(),
%%   <<"autoshifts">> => list(autoshift_in_resource()()),
%%   <<"availabilityZones">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"practiceRunStatus">> => list(any()),
%%   <<"zonalAutoshiftStatus">> => list(any()),
%%   <<"zonalShifts">> => list(zonal_shift_in_resource()())
%% }
-type managed_resource_summary() :: #{binary() => any()}.


%% Example:
%% update_zonal_autoshift_configuration_request() :: #{
%%   <<"zonalAutoshiftStatus">> := list(any())
%% }
-type update_zonal_autoshift_configuration_request() :: #{binary() => any()}.


%% Example:
%% zonal_shift_summary() :: #{
%%   <<"awayFrom">> => string(),
%%   <<"comment">> => string(),
%%   <<"expiryTime">> => non_neg_integer(),
%%   <<"practiceRunOutcome">> => list(any()),
%%   <<"resourceIdentifier">> => string(),
%%   <<"shiftType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"zonalShiftId">> => string()
%% }
-type zonal_shift_summary() :: #{binary() => any()}.

%% Example:
%% cancel_zonal_shift_request() :: #{}
-type cancel_zonal_shift_request() :: #{}.


%% Example:
%% update_practice_run_configuration_request() :: #{
%%   <<"blockedDates">> => list(string()()),
%%   <<"blockedWindows">> => list(string()()),
%%   <<"blockingAlarms">> => list(control_condition()()),
%%   <<"outcomeAlarms">> => list(control_condition()())
%% }
-type update_practice_run_configuration_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any()),
%%   <<"zonalShiftId">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% zonal_shift_in_resource() :: #{
%%   <<"appliedStatus">> => list(any()),
%%   <<"awayFrom">> => string(),
%%   <<"comment">> => string(),
%%   <<"expiryTime">> => non_neg_integer(),
%%   <<"practiceRunOutcome">> => list(any()),
%%   <<"resourceIdentifier">> => string(),
%%   <<"shiftType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"zonalShiftId">> => string()
%% }
-type zonal_shift_in_resource() :: #{binary() => any()}.


%% Example:
%% list_zonal_shifts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"resourceIdentifier">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_zonal_shifts_request() :: #{binary() => any()}.


%% Example:
%% list_managed_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_managed_resources_request() :: #{binary() => any()}.


%% Example:
%% update_zonal_autoshift_configuration_response() :: #{
%%   <<"resourceIdentifier">> => string(),
%%   <<"zonalAutoshiftStatus">> => list(any())
%% }
-type update_zonal_autoshift_configuration_response() :: #{binary() => any()}.


%% Example:
%% control_condition() :: #{
%%   <<"alarmIdentifier">> => string(),
%%   <<"type">> => list(any())
%% }
-type control_condition() :: #{binary() => any()}.


%% Example:
%% update_autoshift_observer_notification_status_response() :: #{
%%   <<"status">> => list(any())
%% }
-type update_autoshift_observer_notification_status_response() :: #{binary() => any()}.


%% Example:
%% create_practice_run_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"practiceRunConfiguration">> => practice_run_configuration(),
%%   <<"zonalAutoshiftStatus">> => list(any())
%% }
-type create_practice_run_configuration_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% update_autoshift_observer_notification_status_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_autoshift_observer_notification_status_request() :: #{binary() => any()}.


%% Example:
%% get_autoshift_observer_notification_status_response() :: #{
%%   <<"status">> => list(any())
%% }
-type get_autoshift_observer_notification_status_response() :: #{binary() => any()}.

%% Example:
%% get_managed_resource_request() :: #{}
-type get_managed_resource_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% start_zonal_shift_request() :: #{
%%   <<"awayFrom">> := string(),
%%   <<"comment">> := string(),
%%   <<"expiresIn">> := string(),
%%   <<"resourceIdentifier">> := string()
%% }
-type start_zonal_shift_request() :: #{binary() => any()}.

%% Example:
%% delete_practice_run_configuration_request() :: #{}
-type delete_practice_run_configuration_request() :: #{}.


%% Example:
%% list_autoshifts_response() :: #{
%%   <<"items">> => list(autoshift_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autoshifts_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_practice_run_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"practiceRunConfiguration">> => practice_run_configuration(),
%%   <<"zonalAutoshiftStatus">> => list(any())
%% }
-type update_practice_run_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_practice_run_configuration_request() :: #{
%%   <<"blockedDates">> => list(string()()),
%%   <<"blockedWindows">> => list(string()()),
%%   <<"blockingAlarms">> => list(control_condition()()),
%%   <<"outcomeAlarms">> := list(control_condition()()),
%%   <<"resourceIdentifier">> := string()
%% }
-type create_practice_run_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_autoshift_observer_notification_status_request() :: #{}
-type get_autoshift_observer_notification_status_request() :: #{}.


%% Example:
%% practice_run_configuration() :: #{
%%   <<"blockedDates">> => list(string()()),
%%   <<"blockedWindows">> => list(string()()),
%%   <<"blockingAlarms">> => list(control_condition()()),
%%   <<"outcomeAlarms">> => list(control_condition()())
%% }
-type practice_run_configuration() :: #{binary() => any()}.


%% Example:
%% delete_practice_run_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"zonalAutoshiftStatus">> => list(any())
%% }
-type delete_practice_run_configuration_response() :: #{binary() => any()}.

-type cancel_zonal_shift_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_practice_run_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_practice_run_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_autoshift_observer_notification_status_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_managed_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_autoshifts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_managed_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_zonal_shifts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type start_zonal_shift_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_autoshift_observer_notification_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_practice_run_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_zonal_autoshift_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_zonal_shift_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancel a zonal shift in Amazon Route 53 Application Recovery
%% Controller.
%%
%% To cancel the zonal shift, specify the zonal shift ID.
%%
%% A zonal shift can be one that you've started for a resource in your
%% Amazon Web Services account
%% in an Amazon Web Services Region, or it can be a zonal shift started by a
%% practice run with zonal
%% autoshift.
-spec cancel_zonal_shift(aws_client:aws_client(), binary() | list(), cancel_zonal_shift_request()) ->
    {ok, zonal_shift(), tuple()} |
    {error, any()} |
    {error, cancel_zonal_shift_errors(), tuple()}.
cancel_zonal_shift(Client, ZonalShiftId, Input) ->
    cancel_zonal_shift(Client, ZonalShiftId, Input, []).

-spec cancel_zonal_shift(aws_client:aws_client(), binary() | list(), cancel_zonal_shift_request(), proplists:proplist()) ->
    {ok, zonal_shift(), tuple()} |
    {error, any()} |
    {error, cancel_zonal_shift_errors(), tuple()}.
cancel_zonal_shift(Client, ZonalShiftId, Input0, Options0) ->
    Method = delete,
    Path = ["/zonalshifts/", aws_util:encode_uri(ZonalShiftId), ""],
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

%% @doc A practice run configuration for zonal autoshift is required when you
%% enable zonal autoshift.
%%
%% A practice run configuration includes specifications for blocked dates and
%% blocked time windows,
%% and for Amazon CloudWatch alarms that you create to use with practice
%% runs. The alarms that you specify are an
%% outcome alarm, to monitor application health during practice runs and,
%% optionally, a blocking alarm, to block practice runs from starting.
%%
%% When a resource has a practice run configuration, ARC starts zonal shifts
%% for the resource
%% weekly, to shift traffic for practice runs. Practice runs help you to
%% ensure that
%% shifting away traffic from an Availability Zone during an autoshift is
%% safe for your application.
%%
%% For more information, see
%%
%% Considerations when you configure zonal autoshift:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
-spec create_practice_run_configuration(aws_client:aws_client(), create_practice_run_configuration_request()) ->
    {ok, create_practice_run_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_practice_run_configuration_errors(), tuple()}.
create_practice_run_configuration(Client, Input) ->
    create_practice_run_configuration(Client, Input, []).

-spec create_practice_run_configuration(aws_client:aws_client(), create_practice_run_configuration_request(), proplists:proplist()) ->
    {ok, create_practice_run_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_practice_run_configuration_errors(), tuple()}.
create_practice_run_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the practice run configuration for a resource.
%%
%% Before you can delete
%% a practice run configuration for a resource., you must disable zonal
%% autoshift for
%% the resource. Practice runs must be configured for zonal autoshift to be
%% enabled.
-spec delete_practice_run_configuration(aws_client:aws_client(), binary() | list(), delete_practice_run_configuration_request()) ->
    {ok, delete_practice_run_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_practice_run_configuration_errors(), tuple()}.
delete_practice_run_configuration(Client, ResourceIdentifier, Input) ->
    delete_practice_run_configuration(Client, ResourceIdentifier, Input, []).

-spec delete_practice_run_configuration(aws_client:aws_client(), binary() | list(), delete_practice_run_configuration_request(), proplists:proplist()) ->
    {ok, delete_practice_run_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_practice_run_configuration_errors(), tuple()}.
delete_practice_run_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configuration/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Returns the status of the autoshift observer notification.
%%
%% Autoshift observer notifications notify you through Amazon EventBridge
%% when there is an autoshift event for zonal autoshift. The status can be
%% `ENABLED' or `DISABLED'. When `ENABLED', a notification is
%% sent when an autoshift is triggered. When `DISABLED', notifications
%% are not sent.
-spec get_autoshift_observer_notification_status(aws_client:aws_client()) ->
    {ok, get_autoshift_observer_notification_status_response(), tuple()} |
    {error, any()} |
    {error, get_autoshift_observer_notification_status_errors(), tuple()}.
get_autoshift_observer_notification_status(Client)
  when is_map(Client) ->
    get_autoshift_observer_notification_status(Client, #{}, #{}).

-spec get_autoshift_observer_notification_status(aws_client:aws_client(), map(), map()) ->
    {ok, get_autoshift_observer_notification_status_response(), tuple()} |
    {error, any()} |
    {error, get_autoshift_observer_notification_status_errors(), tuple()}.
get_autoshift_observer_notification_status(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_autoshift_observer_notification_status(Client, QueryMap, HeadersMap, []).

-spec get_autoshift_observer_notification_status(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_autoshift_observer_notification_status_response(), tuple()} |
    {error, any()} |
    {error, get_autoshift_observer_notification_status_errors(), tuple()}.
get_autoshift_observer_notification_status(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/autoshift-observer-notification"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about a resource that's been registered for zonal
%% shifts with Amazon Route 53 Application Recovery Controller in this Amazon
%% Web Services Region.
%%
%% Resources that are registered for
%% zonal shifts are managed resources in ARC. You can start zonal shifts and
%% configure zonal autoshift for managed resources.
-spec get_managed_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_resource_response(), tuple()} |
    {error, any()} |
    {error, get_managed_resource_errors(), tuple()}.
get_managed_resource(Client, ResourceIdentifier)
  when is_map(Client) ->
    get_managed_resource(Client, ResourceIdentifier, #{}, #{}).

-spec get_managed_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_resource_response(), tuple()} |
    {error, any()} |
    {error, get_managed_resource_errors(), tuple()}.
get_managed_resource(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_resource(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

-spec get_managed_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_resource_response(), tuple()} |
    {error, any()} |
    {error, get_managed_resource_errors(), tuple()}.
get_managed_resource(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedresources/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the autoshifts for an Amazon Web Services Region.
%%
%% By default, the call returns
%% only `ACTIVE' autoshifts. Optionally, you can specify the `status'
%% parameter to return
%% `COMPLETED' autoshifts.
-spec list_autoshifts(aws_client:aws_client()) ->
    {ok, list_autoshifts_response(), tuple()} |
    {error, any()} |
    {error, list_autoshifts_errors(), tuple()}.
list_autoshifts(Client)
  when is_map(Client) ->
    list_autoshifts(Client, #{}, #{}).

-spec list_autoshifts(aws_client:aws_client(), map(), map()) ->
    {ok, list_autoshifts_response(), tuple()} |
    {error, any()} |
    {error, list_autoshifts_errors(), tuple()}.
list_autoshifts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_autoshifts(Client, QueryMap, HeadersMap, []).

-spec list_autoshifts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_autoshifts_response(), tuple()} |
    {error, any()} |
    {error, list_autoshifts_errors(), tuple()}.
list_autoshifts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/autoshifts"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the resources in your Amazon Web Services account in this
%% Amazon Web Services Region that are managed for
%% zonal shifts in Amazon Route 53 Application Recovery Controller, and
%% information about them.
%%
%% The information includes the zonal autoshift status for the resource,
%% as well as the Amazon Resource Name (ARN), the Availability Zones that
%% each resource is deployed in, and
%% the resource name.
-spec list_managed_resources(aws_client:aws_client()) ->
    {ok, list_managed_resources_response(), tuple()} |
    {error, any()} |
    {error, list_managed_resources_errors(), tuple()}.
list_managed_resources(Client)
  when is_map(Client) ->
    list_managed_resources(Client, #{}, #{}).

-spec list_managed_resources(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_resources_response(), tuple()} |
    {error, any()} |
    {error, list_managed_resources_errors(), tuple()}.
list_managed_resources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_resources(Client, QueryMap, HeadersMap, []).

-spec list_managed_resources(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_resources_response(), tuple()} |
    {error, any()} |
    {error, list_managed_resources_errors(), tuple()}.
list_managed_resources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedresources"],
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

%% @doc Lists all active and completed zonal shifts in Amazon Route 53
%% Application Recovery Controller in your Amazon Web Services account in
%% this Amazon Web Services Region.
-spec list_zonal_shifts(aws_client:aws_client()) ->
    {ok, list_zonal_shifts_response(), tuple()} |
    {error, any()} |
    {error, list_zonal_shifts_errors(), tuple()}.
list_zonal_shifts(Client)
  when is_map(Client) ->
    list_zonal_shifts(Client, #{}, #{}).

-spec list_zonal_shifts(aws_client:aws_client(), map(), map()) ->
    {ok, list_zonal_shifts_response(), tuple()} |
    {error, any()} |
    {error, list_zonal_shifts_errors(), tuple()}.
list_zonal_shifts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_zonal_shifts(Client, QueryMap, HeadersMap, []).

-spec list_zonal_shifts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_zonal_shifts_response(), tuple()} |
    {error, any()} |
    {error, list_zonal_shifts_errors(), tuple()}.
list_zonal_shifts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/zonalshifts"],
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
        {<<"resourceIdentifier">>, maps:get(<<"resourceIdentifier">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc You start a zonal shift to temporarily move load balancer traffic
%% away from an Availability Zone in an Amazon Web Services Region,
%% to help your application recover immediately, for example, from a
%% developer's bad code deployment or from an Amazon Web Services
%% infrastructure failure in a single Availability Zone.
%%
%% You can start a zonal shift in ARC only for managed
%% resources in your Amazon Web Services account in an Amazon Web Services
%% Region. Resources are automatically registered with ARC
%% by Amazon Web Services services.
%%
%% At this time, you can only start a zonal shift for Network Load Balancers
%% and Application Load Balancers with cross-zone load balancing turned off.
%%
%% When you start a zonal shift, traffic for the resource is no longer routed
%% to the Availability Zone. The
%% zonal shift is created immediately in ARC. However, it can take a short
%% time, typically up to a few minutes,
%% for existing, in-progress connections in the Availability Zone to
%% complete.
%%
%% For more information, see Zonal shift:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
-spec start_zonal_shift(aws_client:aws_client(), start_zonal_shift_request()) ->
    {ok, zonal_shift(), tuple()} |
    {error, any()} |
    {error, start_zonal_shift_errors(), tuple()}.
start_zonal_shift(Client, Input) ->
    start_zonal_shift(Client, Input, []).

-spec start_zonal_shift(aws_client:aws_client(), start_zonal_shift_request(), proplists:proplist()) ->
    {ok, zonal_shift(), tuple()} |
    {error, any()} |
    {error, start_zonal_shift_errors(), tuple()}.
start_zonal_shift(Client, Input0, Options0) ->
    Method = post,
    Path = ["/zonalshifts"],
    SuccessStatusCode = 201,
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

%% @doc Update the status of autoshift observer notification.
%%
%% Autoshift observer
%% notification enables you to be notified, through Amazon EventBridge, when
%% there is an autoshift event for zonal autoshift.
%%
%% If the status is `ENABLED',
%% ARC includes all autoshift events when you use the EventBridge pattern
%% `Autoshift In Progress'. When the status is `DISABLED',
%% ARC includes only autoshift events for autoshifts when one or more of your
%% resources is included in the autoshift.
%%
%% For more information, see
%%
%% Notifications for practice runs and autoshifts:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
-spec update_autoshift_observer_notification_status(aws_client:aws_client(), update_autoshift_observer_notification_status_request()) ->
    {ok, update_autoshift_observer_notification_status_response(), tuple()} |
    {error, any()} |
    {error, update_autoshift_observer_notification_status_errors(), tuple()}.
update_autoshift_observer_notification_status(Client, Input) ->
    update_autoshift_observer_notification_status(Client, Input, []).

-spec update_autoshift_observer_notification_status(aws_client:aws_client(), update_autoshift_observer_notification_status_request(), proplists:proplist()) ->
    {ok, update_autoshift_observer_notification_status_response(), tuple()} |
    {error, any()} |
    {error, update_autoshift_observer_notification_status_errors(), tuple()}.
update_autoshift_observer_notification_status(Client, Input0, Options0) ->
    Method = put,
    Path = ["/autoshift-observer-notification"],
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

%% @doc Update a practice run configuration to change one or more of the
%% following: add,
%% change, or remove the blocking alarm; change the outcome alarm; or add,
%% change,
%% or remove blocking dates or time windows.
-spec update_practice_run_configuration(aws_client:aws_client(), binary() | list(), update_practice_run_configuration_request()) ->
    {ok, update_practice_run_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_practice_run_configuration_errors(), tuple()}.
update_practice_run_configuration(Client, ResourceIdentifier, Input) ->
    update_practice_run_configuration(Client, ResourceIdentifier, Input, []).

-spec update_practice_run_configuration(aws_client:aws_client(), binary() | list(), update_practice_run_configuration_request(), proplists:proplist()) ->
    {ok, update_practice_run_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_practice_run_configuration_errors(), tuple()}.
update_practice_run_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configuration/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc The zonal autoshift configuration for a resource includes the
%% practice run configuration and the status for
%% running autoshifts, zonal autoshift status.
%%
%% When a resource has a practice run configuation, Route 53 ARC
%% starts weekly zonal shifts for the resource, to shift traffic away from an
%% Availability Zone. Weekly practice
%% runs help you to make sure that your application can continue to operate
%% normally with the loss of one Availability Zone.
%%
%% You can update the zonal autoshift autoshift status to enable or disable
%% zonal autoshift. When zonal
%% autoshift is `ENABLED', you authorize Amazon Web Services to shift
%% away resource traffic for
%% an application from an Availability Zone during events, on your behalf, to
%% help reduce time to recovery.
%% Traffic is also shifted away for the required weekly practice runs.
-spec update_zonal_autoshift_configuration(aws_client:aws_client(), binary() | list(), update_zonal_autoshift_configuration_request()) ->
    {ok, update_zonal_autoshift_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_zonal_autoshift_configuration_errors(), tuple()}.
update_zonal_autoshift_configuration(Client, ResourceIdentifier, Input) ->
    update_zonal_autoshift_configuration(Client, ResourceIdentifier, Input, []).

-spec update_zonal_autoshift_configuration(aws_client:aws_client(), binary() | list(), update_zonal_autoshift_configuration_request(), proplists:proplist()) ->
    {ok, update_zonal_autoshift_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_zonal_autoshift_configuration_errors(), tuple()}.
update_zonal_autoshift_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/managedresources/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Update an active zonal shift in Amazon Route 53 Application Recovery
%% Controller in your Amazon Web Services account.
%%
%% You can update a zonal shift to set a new expiration, or
%% edit or replace the comment for the zonal shift.
-spec update_zonal_shift(aws_client:aws_client(), binary() | list(), update_zonal_shift_request()) ->
    {ok, zonal_shift(), tuple()} |
    {error, any()} |
    {error, update_zonal_shift_errors(), tuple()}.
update_zonal_shift(Client, ZonalShiftId, Input) ->
    update_zonal_shift(Client, ZonalShiftId, Input, []).

-spec update_zonal_shift(aws_client:aws_client(), binary() | list(), update_zonal_shift_request(), proplists:proplist()) ->
    {ok, zonal_shift(), tuple()} |
    {error, any()} |
    {error, update_zonal_shift_errors(), tuple()}.
update_zonal_shift(Client, ZonalShiftId, Input0, Options0) ->
    Method = patch,
    Path = ["/zonalshifts/", aws_util:encode_uri(ZonalShiftId), ""],
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
