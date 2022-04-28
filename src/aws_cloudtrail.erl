%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CloudTrail
%%
%% This is the CloudTrail API Reference.
%%
%% It provides descriptions of actions, data types, common parameters, and
%% common errors for CloudTrail.
%%
%% CloudTrail is a web service that records Amazon Web Services API calls for
%% your Amazon Web Services account and delivers log files to an Amazon S3
%% bucket. The recorded information includes the identity of the user, the
%% start time of the Amazon Web Services API call, the source IP address, the
%% request parameters, and the response elements returned by the service.
%%
%% As an alternative to the API, you can use one of the Amazon Web Services
%% SDKs, which consist of libraries and sample code for various programming
%% languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
%% provide programmatic access to CloudTrail. For example, the SDKs handle
%% cryptographically signing requests, managing errors, and retrying requests
%% automatically. For more information about the Amazon Web Services SDKs,
%% including how to download and install them, see Tools to Build on Amazon
%% Web Services.
%%
%% See the CloudTrail User Guide for information about the data that is
%% included with each Amazon Web Services API call listed in the log files.
-module(aws_cloudtrail).

-export([add_tags/2,
         add_tags/3,
         cancel_query/2,
         cancel_query/3,
         create_event_data_store/2,
         create_event_data_store/3,
         create_trail/2,
         create_trail/3,
         delete_event_data_store/2,
         delete_event_data_store/3,
         delete_trail/2,
         delete_trail/3,
         describe_query/2,
         describe_query/3,
         describe_trails/2,
         describe_trails/3,
         get_event_data_store/2,
         get_event_data_store/3,
         get_event_selectors/2,
         get_event_selectors/3,
         get_insight_selectors/2,
         get_insight_selectors/3,
         get_query_results/2,
         get_query_results/3,
         get_trail/2,
         get_trail/3,
         get_trail_status/2,
         get_trail_status/3,
         list_event_data_stores/2,
         list_event_data_stores/3,
         list_public_keys/2,
         list_public_keys/3,
         list_queries/2,
         list_queries/3,
         list_tags/2,
         list_tags/3,
         list_trails/2,
         list_trails/3,
         lookup_events/2,
         lookup_events/3,
         put_event_selectors/2,
         put_event_selectors/3,
         put_insight_selectors/2,
         put_insight_selectors/3,
         remove_tags/2,
         remove_tags/3,
         restore_event_data_store/2,
         restore_event_data_store/3,
         start_logging/2,
         start_logging/3,
         start_query/2,
         start_query/3,
         stop_logging/2,
         stop_logging/3,
         update_event_data_store/2,
         update_event_data_store/3,
         update_trail/2,
         update_trail/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to a trail or event data store, up to a limit
%% of 50.
%%
%% Overwrites an existing tag's value when a new value is specified for an
%% existing tag key. Tag key names must be unique for a trail; you cannot
%% have two keys with the same name but different values. If you specify a
%% key without a value, the tag will be created with the specified key and a
%% value of null. You can tag a trail or event data store that applies to all
%% Amazon Web Services Regions only from the Region in which the trail or
%% event data store was created (also known as its home region).
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Cancels a query if the query is not in a terminated state, such as
%% `CANCELLED', `FAILED', `TIMED_OUT', or `FINISHED'.
%%
%% You must specify an ARN value for `EventDataStore'. The ID of the query
%% that you want to cancel is also required. When you run `CancelQuery', the
%% query status might show as `CANCELLED' even if the operation is not yet
%% finished.
cancel_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_query(Client, Input, []).
cancel_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelQuery">>, Input, Options).

%% @doc Creates a new event data store.
create_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_data_store(Client, Input, []).
create_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventDataStore">>, Input, Options).

%% @doc Creates a trail that specifies the settings for delivery of log data
%% to an Amazon S3 bucket.
create_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trail(Client, Input, []).
create_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrail">>, Input, Options).

%% @doc Disables the event data store specified by `EventDataStore', which
%% accepts an event data store ARN.
%%
%% After you run `DeleteEventDataStore', the event data store enters a
%% `PENDING_DELETION' state, and is automatically deleted after a wait period
%% of seven days. `TerminationProtectionEnabled' must be set to `False' on
%% the event data store; this operation cannot work if
%% `TerminationProtectionEnabled' is `True'.
%%
%% After you run `DeleteEventDataStore' on an event data store, you cannot
%% run `ListQueries', `DescribeQuery', or `GetQueryResults' on queries that
%% are using an event data store in a `PENDING_DELETION' state. An event data
%% store in the `PENDING_DELETION' state does not incur costs.
delete_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_data_store(Client, Input, []).
delete_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventDataStore">>, Input, Options).

%% @doc Deletes a trail.
%%
%% This operation must be called from the region in which the trail was
%% created. `DeleteTrail' cannot be called on the shadow trails (replicated
%% trails in other regions) of a trail that is enabled in all regions.
delete_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trail(Client, Input, []).
delete_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrail">>, Input, Options).

%% @doc Returns metadata about a query, including query run time in
%% milliseconds, number of events scanned and matched, and query status.
%%
%% You must specify an ARN for `EventDataStore', and a value for `QueryID'.
describe_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query(Client, Input, []).
describe_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuery">>, Input, Options).

%% @doc Retrieves settings for one or more trails associated with the current
%% region for your account.
describe_trails(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trails(Client, Input, []).
describe_trails(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrails">>, Input, Options).

%% @doc Returns information about an event data store specified as either an
%% ARN or the ID portion of the ARN.
get_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_data_store(Client, Input, []).
get_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventDataStore">>, Input, Options).

%% @doc Describes the settings for the event selectors that you configured
%% for your trail.
%%
%% The information returned for your event selectors includes the following:
%%
%% <ul> <li> If your event selector includes read-only events, write-only
%% events, or all events. This applies to both management events and data
%% events.
%%
%% </li> <li> If your event selector includes management events.
%%
%% </li> <li> If your event selector includes data events, the resources on
%% which you are logging data events.
%%
%% </li> </ul> For more information, see Logging Data and Management Events
%% for Trails in the CloudTrail User Guide.
get_event_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_selectors(Client, Input, []).
get_event_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventSelectors">>, Input, Options).

%% @doc Describes the settings for the Insights event selectors that you
%% configured for your trail.
%%
%% `GetInsightSelectors' shows if CloudTrail Insights event logging is
%% enabled on the trail, and if it is, which insight types are enabled. If
%% you run `GetInsightSelectors' on a trail that does not have Insights
%% events enabled, the operation throws the exception
%% `InsightNotEnabledException'
%%
%% For more information, see Logging CloudTrail Insights Events for Trails in
%% the CloudTrail User Guide.
get_insight_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_insight_selectors(Client, Input, []).
get_insight_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInsightSelectors">>, Input, Options).

%% @doc Gets event data results of a query.
%%
%% You must specify the `QueryID' value returned by the `StartQuery'
%% operation, and an ARN for `EventDataStore'.
get_query_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_results(Client, Input, []).
get_query_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryResults">>, Input, Options).

%% @doc Returns settings information for a specified trail.
get_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trail(Client, Input, []).
get_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrail">>, Input, Options).

%% @doc Returns a JSON-formatted list of information about the specified
%% trail.
%%
%% Fields include information on delivery errors, Amazon SNS and Amazon S3
%% errors, and start and stop logging times for each trail. This operation
%% returns trail status from a single region. To return trail status from all
%% regions, you must call the operation on each region.
get_trail_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trail_status(Client, Input, []).
get_trail_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrailStatus">>, Input, Options).

%% @doc Returns information about all event data stores in the account, in
%% the current region.
list_event_data_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_data_stores(Client, Input, []).
list_event_data_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventDataStores">>, Input, Options).

%% @doc Returns all public keys whose private keys were used to sign the
%% digest files within the specified time range.
%%
%% The public key is needed to validate digest files that were signed with
%% its corresponding private key.
%%
%% CloudTrail uses different private and public key pairs per region. Each
%% digest file is signed with a private key unique to its region. When you
%% validate a digest file from a specific region, you must look in the same
%% region for its corresponding public key.
list_public_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_public_keys(Client, Input, []).
list_public_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPublicKeys">>, Input, Options).

%% @doc Returns a list of queries and query statuses for the past seven days.
%%
%% You must specify an ARN value for `EventDataStore'. Optionally, to shorten
%% the list of results, you can specify a time range, formatted as
%% timestamps, by adding `StartTime' and `EndTime' parameters, and a
%% `QueryStatus' value. Valid values for `QueryStatus' include `QUEUED',
%% `RUNNING', `FINISHED', `FAILED', `TIMED_OUT', or `CANCELLED'.
list_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queries(Client, Input, []).
list_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueries">>, Input, Options).

%% @doc Lists the tags for the trail or event data store in the current
%% region.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Lists trails that are in the current account.
list_trails(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trails(Client, Input, []).
list_trails(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrails">>, Input, Options).

%% @doc Looks up management events or CloudTrail Insights events that are
%% captured by CloudTrail.
%%
%% You can look up events that occurred in a region within the last 90 days.
%% Lookup supports the following attributes for management events:
%%
%% <ul> <li> Amazon Web Services access key
%%
%% </li> <li> Event ID
%%
%% </li> <li> Event name
%%
%% </li> <li> Event source
%%
%% </li> <li> Read only
%%
%% </li> <li> Resource name
%%
%% </li> <li> Resource type
%%
%% </li> <li> User name
%%
%% </li> </ul> Lookup supports the following attributes for Insights events:
%%
%% <ul> <li> Event ID
%%
%% </li> <li> Event name
%%
%% </li> <li> Event source
%%
%% </li> </ul> All attributes are optional. The default number of results
%% returned is 50, with a maximum of 50 possible. The response includes a
%% token that you can use to get the next page of results.
%%
%% The rate of lookup requests is limited to two per second, per account, per
%% region. If this limit is exceeded, a throttling error occurs.
lookup_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    lookup_events(Client, Input, []).
lookup_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LookupEvents">>, Input, Options).

%% @doc Configures an event selector or advanced event selectors for your
%% trail.
%%
%% Use event selectors or advanced event selectors to specify management and
%% data event settings for your trail. By default, trails created without
%% specific event selectors are configured to log all read and write
%% management events, and no data events.
%%
%% When an event occurs in your account, CloudTrail evaluates the event
%% selectors or advanced event selectors in all trails. For each trail, if
%% the event matches any event selector, the trail processes and logs the
%% event. If the event doesn't match any event selector, the trail doesn't
%% log the event.
%%
%% Example
%%
%% <ol> <li> You create an event selector for a trail and specify that you
%% want write-only events.
%%
%% </li> <li> The EC2 `GetConsoleOutput' and `RunInstances' API operations
%% occur in your account.
%%
%% </li> <li> CloudTrail evaluates whether the events match your event
%% selectors.
%%
%% </li> <li> The `RunInstances' is a write-only event and it matches your
%% event selector. The trail logs the event.
%%
%% </li> <li> The `GetConsoleOutput' is a read-only event that doesn't match
%% your event selector. The trail doesn't log the event.
%%
%% </li> </ol> The `PutEventSelectors' operation must be called from the
%% region in which the trail was created; otherwise, an
%% `InvalidHomeRegionException' exception is thrown.
%%
%% You can configure up to five event selectors for each trail. For more
%% information, see Logging data and management events for trails and Quotas
%% in CloudTrail in the CloudTrail User Guide.
%%
%% You can add advanced event selectors, and conditions for your advanced
%% event selectors, up to a maximum of 500 values for all conditions and
%% selectors on a trail. You can use either `AdvancedEventSelectors' or
%% `EventSelectors', but not both. If you apply `AdvancedEventSelectors' to a
%% trail, any existing `EventSelectors' are overwritten. For more information
%% about advanced event selectors, see Logging data events for trails in the
%% CloudTrail User Guide.
put_event_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_event_selectors(Client, Input, []).
put_event_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEventSelectors">>, Input, Options).

%% @doc Lets you enable Insights event logging by specifying the Insights
%% selectors that you want to enable on an existing trail.
%%
%% You also use `PutInsightSelectors' to turn off Insights event logging, by
%% passing an empty list of insight types. The valid Insights event types in
%% this release are `ApiErrorRateInsight' and `ApiCallRateInsight'.
put_insight_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_insight_selectors(Client, Input, []).
put_insight_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInsightSelectors">>, Input, Options).

%% @doc Removes the specified tags from a trail or event data store.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Restores a deleted event data store specified by `EventDataStore',
%% which accepts an event data store ARN.
%%
%% You can only restore a deleted event data store within the seven-day wait
%% period after deletion. Restoring an event data store can take several
%% minutes, depending on the size of the event data store.
restore_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_event_data_store(Client, Input, []).
restore_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreEventDataStore">>, Input, Options).

%% @doc Starts the recording of Amazon Web Services API calls and log file
%% delivery for a trail.
%%
%% For a trail that is enabled in all regions, this operation must be called
%% from the region in which the trail was created. This operation cannot be
%% called on the shadow trails (replicated trails in other regions) of a
%% trail that is enabled in all regions.
start_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_logging(Client, Input, []).
start_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLogging">>, Input, Options).

%% @doc Starts a CloudTrail Lake query.
%%
%% The required `QueryStatement' parameter provides your SQL query, enclosed
%% in single quotation marks.
start_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_query(Client, Input, []).
start_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartQuery">>, Input, Options).

%% @doc Suspends the recording of Amazon Web Services API calls and log file
%% delivery for the specified trail.
%%
%% Under most circumstances, there is no need to use this action. You can
%% update a trail without stopping it first. This action is the only way to
%% stop recording. For a trail enabled in all regions, this operation must be
%% called from the region in which the trail was created, or an
%% `InvalidHomeRegionException' will occur. This operation cannot be called
%% on the shadow trails (replicated trails in other regions) of a trail
%% enabled in all regions.
stop_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_logging(Client, Input, []).
stop_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopLogging">>, Input, Options).

%% @doc Updates an event data store.
%%
%% The required `EventDataStore' value is an ARN or the ID portion of the
%% ARN. Other parameters are optional, but at least one optional parameter
%% must be specified, or CloudTrail throws an error. `RetentionPeriod' is in
%% days, and valid values are integers between 90 and 2555. By default,
%% `TerminationProtection' is enabled. `AdvancedEventSelectors' includes or
%% excludes management and data events in your event data store; for more
%% information about `AdvancedEventSelectors', see
%% `PutEventSelectorsRequest$AdvancedEventSelectors'.
update_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_data_store(Client, Input, []).
update_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventDataStore">>, Input, Options).

%% @doc Updates trail settings that control what events you are logging, and
%% how to handle log files.
%%
%% Changes to a trail do not require stopping the CloudTrail service. Use
%% this action to designate an existing bucket for log delivery. If the
%% existing bucket has previously been a target for CloudTrail log files, an
%% IAM policy exists for the bucket. `UpdateTrail' must be called from the
%% region in which the trail was created; otherwise, an
%% `InvalidHomeRegionException' is thrown.
update_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trail(Client, Input, []).
update_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrail">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cloudtrail">>},
    Host = build_host(<<"cloudtrail">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
