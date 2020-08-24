%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This AWS CodeStar Notifications API Reference provides descriptions
%% and usage examples of the operations and data types for the AWS CodeStar
%% Notifications API. You can use the AWS CodeStar Notifications API to work
%% with the following objects:
%%
%% Notification rules, by calling the following:
%%
%% <ul> <li> <a>CreateNotificationRule</a>, which creates a notification rule
%% for a resource in your account.
%%
%% </li> <li> <a>DeleteNotificationRule</a>, which deletes a notification
%% rule.
%%
%% </li> <li> <a>DescribeNotificationRule</a>, which provides information
%% about a notification rule.
%%
%% </li> <li> <a>ListNotificationRules</a>, which lists the notification
%% rules associated with your account.
%%
%% </li> <li> <a>UpdateNotificationRule</a>, which changes the name, events,
%% or targets associated with a notification rule.
%%
%% </li> <li> <a>Subscribe</a>, which subscribes a target to a notification
%% rule.
%%
%% </li> <li> <a>Unsubscribe</a>, which removes a target from a notification
%% rule.
%%
%% </li> </ul> Targets, by calling the following:
%%
%% <ul> <li> <a>DeleteTarget</a>, which removes a notification rule target
%% (SNS topic) from a notification rule.
%%
%% </li> <li> <a>ListTargets</a>, which lists the targets associated with a
%% notification rule.
%%
%% </li> </ul> Events, by calling the following:
%%
%% <ul> <li> <a>ListEventTypes</a>, which lists the event types you can
%% include in a notification rule.
%%
%% </li> </ul> Tags, by calling the following:
%%
%% <ul> <li> <a>ListTagsForResource</a>, which lists the tags already
%% associated with a notification rule in your account.
%%
%% </li> <li> <a>TagResource</a>, which associates a tag you provide with a
%% notification rule in your account.
%%
%% </li> <li> <a>UntagResource</a>, which removes a tag from a notification
%% rule in your account.
%%
%% </li> </ul> For information about how to use AWS CodeStar Notifications,
%% see link in the CodeStarNotifications User Guide.
-module(aws_codestar_notifications).

-export([create_notification_rule/2,
         create_notification_rule/3,
         delete_notification_rule/2,
         delete_notification_rule/3,
         delete_target/2,
         delete_target/3,
         describe_notification_rule/2,
         describe_notification_rule/3,
         list_event_types/2,
         list_event_types/3,
         list_notification_rules/2,
         list_notification_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targets/2,
         list_targets/3,
         subscribe/2,
         subscribe/3,
         tag_resource/2,
         tag_resource/3,
         unsubscribe/2,
         unsubscribe/3,
         untag_resource/2,
         untag_resource/3,
         update_notification_rule/2,
         update_notification_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a notification rule for a resource. The rule specifies the
%% events you want notifications about and the targets (such as SNS topics)
%% where you want to receive them.
create_notification_rule(Client, Input) ->
    create_notification_rule(Client, Input, []).
create_notification_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/createNotificationRule"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a notification rule for a resource.
delete_notification_rule(Client, Input) ->
    delete_notification_rule(Client, Input, []).
delete_notification_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/deleteNotificationRule"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specified target for notifications.
delete_target(Client, Input) ->
    delete_target(Client, Input, []).
delete_target(Client, Input0, Options) ->
    Method = post,
    Path = ["/deleteTarget"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specified notification rule.
describe_notification_rule(Client, Input) ->
    describe_notification_rule(Client, Input, []).
describe_notification_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/describeNotificationRule"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about the event types available for configuring
%% notifications.
list_event_types(Client, Input) ->
    list_event_types(Client, Input, []).
list_event_types(Client, Input0, Options) ->
    Method = post,
    Path = ["/listEventTypes"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the notification rules for an AWS account.
list_notification_rules(Client, Input) ->
    list_notification_rules(Client, Input, []).
list_notification_rules(Client, Input0, Options) ->
    Method = post,
    Path = ["/listNotificationRules"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the tags associated with a notification rule.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/listTagsForResource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the notification rule targets for an AWS account.
list_targets(Client, Input) ->
    list_targets(Client, Input, []).
list_targets(Client, Input0, Options) ->
    Method = post,
    Path = ["/listTargets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an association between a notification rule and an SNS topic
%% so that the associated target can receive notifications when the events
%% described in the rule are triggered.
subscribe(Client, Input) ->
    subscribe(Client, Input, []).
subscribe(Client, Input0, Options) ->
    Method = post,
    Path = ["/subscribe"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a set of provided tags with a notification rule.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tagResource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an association between a notification rule and an Amazon SNS
%% topic so that subscribers to that topic stop receiving notifications when
%% the events described in the rule are triggered.
unsubscribe(Client, Input) ->
    unsubscribe(Client, Input, []).
unsubscribe(Client, Input0, Options) ->
    Method = post,
    Path = ["/unsubscribe"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the association between one or more provided tags and a
%% notification rule.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/untagResource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a notification rule for a resource. You can change the events
%% that trigger the notification rule, the status of the rule, and the
%% targets that receive the notifications.
%%
%% <note> To add or remove tags for a notification rule, you must use
%% <a>TagResource</a> and <a>UntagResource</a>.
%%
%% </note>
update_notification_rule(Client, Input) ->
    update_notification_rule(Client, Input, []).
update_notification_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/updateNotificationRule"],
    SuccessStatusCode = undefined,

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
    Client1 = Client#{service => <<"codestar-notifications">>},
    Host = build_host(<<"codestar-notifications">>, Client1),
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
