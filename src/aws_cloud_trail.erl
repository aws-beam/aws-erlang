%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CloudTrail</fullname>
%%
%% This is the CloudTrail API Reference. It provides descriptions of actions,
%% data types, common parameters, and common errors for CloudTrail.
%%
%% CloudTrail is a web service that records AWS API calls for your AWS
%% account and delivers log files to an Amazon S3 bucket. The recorded
%% information includes the identity of the user, the start time of the AWS
%% API call, the source IP address, the request parameters, and the response
%% elements returned by the service.
%%
%% <note> As an alternative to using the API, you can use one of the AWS
%% SDKs, which consist of libraries and sample code for various programming
%% languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
%% provide a convenient way to create programmatic access to AWSCloudTrail.
%% For example, the SDKs take care of cryptographically signing requests,
%% managing errors, and retrying requests automatically. For information
%% about the AWS SDKs, including how to download and install them, see the <a
%% href="http://aws.amazon.com/tools/">Tools for Amazon Web Services
%% page</a>. </note> See the CloudTrail User Guide for information about the
%% data that is included with each AWS API call listed in the log files.
-module(aws_cloud_trail).

-export([create_trail/3,
         delete_trail/3,
         describe_trails/3,
         get_trail_status/3,
         lookup_events/3,
         start_logging/3,
         stop_logging/3,
         update_trail/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc From the command line, use <code>create-subscription</code>.
%%
%% Creates a trail that specifies the settings for delivery of log data to an
%% Amazon S3 bucket.
create_trail(Client, Input, Options) ->
  request(Client, <<"CreateTrail">>, Input, Options).

%% @doc Deletes a trail.
delete_trail(Client, Input, Options) ->
  request(Client, <<"DeleteTrail">>, Input, Options).

%% @doc Retrieves settings for the trail associated with the current region
%% for your account.
describe_trails(Client, Input, Options) ->
  request(Client, <<"DescribeTrails">>, Input, Options).

%% @doc Returns a JSON-formatted list of information about the specified
%% trail. Fields include information on delivery errors, Amazon SNS and
%% Amazon S3 errors, and start and stop logging times for each trail.
get_trail_status(Client, Input, Options) ->
  request(Client, <<"GetTrailStatus">>, Input, Options).

%% @doc Looks up API activity events captured by CloudTrail that create,
%% update, or delete resources in your account. Events for a region can be
%% looked up for the times in which you had CloudTrail turned on in that
%% region during the last seven days. Lookup supports five different
%% attributes: time range (defined by a start time and end time), user name,
%% event name, resource type, and resource name. All attributes are optional.
%% The maximum number of attributes that can be specified in any one lookup
%% request are time range and one other attribute. The default number of
%% results returned is 10, with a maximum of 50 possible. The response
%% includes a token that you can use to get the next page of results. The
%% rate of lookup requests is limited to one per second per account.
%%
%% <important>Events that occurred during the selected time range will not be
%% available for lookup if CloudTrail logging was not enabled when the events
%% occurred.</important>
lookup_events(Client, Input, Options) ->
  request(Client, <<"LookupEvents">>, Input, Options).

%% @doc Starts the recording of AWS API calls and log file delivery for a
%% trail.
start_logging(Client, Input, Options) ->
  request(Client, <<"StartLogging">>, Input, Options).

%% @doc Suspends the recording of AWS API calls and log file delivery for the
%% specified trail. Under most circumstances, there is no need to use this
%% action. You can update a trail without stopping it first. This action is
%% the only way to stop recording.
stop_logging(Client, Input, Options) ->
  request(Client, <<"StopLogging">>, Input, Options).

%% @doc From the command line, use <code>update-subscription</code>.
%%
%% Updates the settings that specify delivery of log files. Changes to a
%% trail do not require stopping the CloudTrail service. Use this action to
%% designate an existing bucket for log delivery. If the existing bucket has
%% previously been a target for CloudTrail log files, an IAM policy exists
%% for the bucket.
update_trail(Client, Input, Options) ->
  request(Client, <<"UpdateTrail">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"cloudtrail">>},
    Host = aws_util:binary_join([<<"cloudtrail.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
