%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This AWS CodeStar Notifications API Reference provides descriptions
%% and usage examples of the
%% operations and data types for the AWS CodeStar Notifications API.
%%
%% You can use the AWS CodeStar Notifications API
%% to work with the following objects:
%%
%% Notification rules, by calling the following:
%%
%% `CreateNotificationRule', which creates a notification rule for a
%% resource in your account.
%%
%% `DeleteNotificationRule', which deletes a notification rule.
%%
%% `DescribeNotificationRule', which provides information about a
%% notification rule.
%%
%% `ListNotificationRules', which lists the notification rules associated
%% with
%% your account.
%%
%% `UpdateNotificationRule', which changes the name, events, or targets
%% associated with a
%% notification rule.
%%
%% `Subscribe', which subscribes a target to a notification rule.
%%
%% `Unsubscribe', which removes a target from a notification rule.
%%
%% Targets, by calling the following:
%%
%% `DeleteTarget', which removes a notification rule target from a
%% notification rule.
%%
%% `ListTargets', which lists the targets associated with a
%% notification rule.
%%
%% Events, by calling the following:
%%
%% `ListEventTypes', which lists the event types you can include in
%% a notification rule.
%%
%% Tags, by calling the following:
%%
%% `ListTagsForResource', which lists the tags already associated
%% with a notification rule in your account.
%%
%% `TagResource', which associates a tag you provide with a
%% notification rule in your account.
%%
%% `UntagResource', which removes a tag from a notification rule in
%% your account.
%%
%% For information about how to use AWS CodeStar Notifications, see the
%% Amazon Web Services Developer Tools Console User Guide:
%% https://docs.aws.amazon.com/dtconsole/latest/userguide/what-is-dtconsole.html.
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
         untag_resource/3,
         untag_resource/4,
         update_notification_rule/2,
         update_notification_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_notification_rule_result() :: #{
%%   <<"Arn">> => string()
%% }
-type create_notification_rule_result() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{}
-type untag_resource_result() :: #{}.


%% Example:
%% list_notification_rules_request() :: #{
%%   <<"Filters">> => list(list_notification_rules_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_notification_rules_request() :: #{binary() => any()}.


%% Example:
%% unsubscribe_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"TargetAddress">> := string()
%% }
-type unsubscribe_request() :: #{binary() => any()}.

%% Example:
%% delete_target_result() :: #{}
-type delete_target_result() :: #{}.


%% Example:
%% list_event_types_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type list_event_types_filter() :: #{binary() => any()}.


%% Example:
%% configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type configuration_exception() :: #{binary() => any()}.


%% Example:
%% list_targets_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Targets">> => list(target_summary())
%% }
-type list_targets_result() :: #{binary() => any()}.


%% Example:
%% delete_notification_rule_request() :: #{
%%   <<"Arn">> := string()
%% }
-type delete_notification_rule_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_notification_rule_result() :: #{}
-type update_notification_rule_result() :: #{}.


%% Example:
%% target() :: #{
%%   <<"TargetAddress">> => string(),
%%   <<"TargetType">> => string()
%% }
-type target() :: #{binary() => any()}.


%% Example:
%% event_type_summary() :: #{
%%   <<"EventTypeId">> => string(),
%%   <<"EventTypeName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceName">> => string()
%% }
-type event_type_summary() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% delete_notification_rule_result() :: #{
%%   <<"Arn">> => string()
%% }
-type delete_notification_rule_result() :: #{binary() => any()}.


%% Example:
%% target_summary() :: #{
%%   <<"TargetAddress">> => string(),
%%   <<"TargetStatus">> => list(any()),
%%   <<"TargetType">> => string()
%% }
-type target_summary() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% delete_target_request() :: #{
%%   <<"ForceUnsubscribeAll">> => boolean(),
%%   <<"TargetAddress">> := string()
%% }
-type delete_target_request() :: #{binary() => any()}.


%% Example:
%% list_notification_rules_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type list_notification_rules_filter() :: #{binary() => any()}.


%% Example:
%% list_event_types_result() :: #{
%%   <<"EventTypes">> => list(event_type_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_event_types_result() :: #{binary() => any()}.


%% Example:
%% create_notification_rule_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DetailType">> := list(any()),
%%   <<"EventTypeIds">> := list(string()),
%%   <<"Name">> := string(),
%%   <<"Resource">> := string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Targets">> := list(target())
%% }
-type create_notification_rule_request() :: #{binary() => any()}.


%% Example:
%% subscribe_result() :: #{
%%   <<"Arn">> => string()
%% }
-type subscribe_result() :: #{binary() => any()}.


%% Example:
%% update_notification_rule_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"DetailType">> => list(any()),
%%   <<"EventTypeIds">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Targets">> => list(target())
%% }
-type update_notification_rule_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.


%% Example:
%% list_targets_request() :: #{
%%   <<"Filters">> => list(list_targets_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_targets_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% unsubscribe_result() :: #{
%%   <<"Arn">> => string()
%% }
-type unsubscribe_result() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Arn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% subscribe_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Target">> := target()
%% }
-type subscribe_request() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_result() :: #{
%%   <<"Tags">> => map()
%% }
-type tag_resource_result() :: #{binary() => any()}.


%% Example:
%% list_notification_rules_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotificationRules">> => list(notification_rule_summary())
%% }
-type list_notification_rules_result() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% describe_notification_rule_request() :: #{
%%   <<"Arn">> := string()
%% }
-type describe_notification_rule_request() :: #{binary() => any()}.


%% Example:
%% describe_notification_rule_result() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DetailType">> => list(any()),
%%   <<"EventTypes">> => list(event_type_summary()),
%%   <<"LastModifiedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Resource">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Targets">> => list(target_summary())
%% }
-type describe_notification_rule_result() :: #{binary() => any()}.


%% Example:
%% notification_rule_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type notification_rule_summary() :: #{binary() => any()}.


%% Example:
%% list_event_types_request() :: #{
%%   <<"Filters">> => list(list_event_types_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_types_request() :: #{binary() => any()}.


%% Example:
%% list_targets_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type list_targets_filter() :: #{binary() => any()}.

-type create_notification_rule_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    configuration_exception().

-type delete_notification_rule_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception().

-type delete_target_errors() ::
    validation_exception().

-type describe_notification_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_event_types_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_notification_rules_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_targets_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type subscribe_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    configuration_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    resource_not_found_exception().

-type unsubscribe_errors() ::
    validation_exception().

-type untag_resource_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    resource_not_found_exception().

-type update_notification_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    configuration_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a notification rule for a resource.
%%
%% The rule specifies the events you want
%% notifications about and the targets (such as Chatbot topics or Chatbot
%% clients configured for Slack) where you want to receive
%% them.
-spec create_notification_rule(aws_client:aws_client(), create_notification_rule_request()) ->
    {ok, create_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, create_notification_rule_errors(), tuple()}.
create_notification_rule(Client, Input) ->
    create_notification_rule(Client, Input, []).

-spec create_notification_rule(aws_client:aws_client(), create_notification_rule_request(), proplists:proplist()) ->
    {ok, create_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, create_notification_rule_errors(), tuple()}.
create_notification_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createNotificationRule"],
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

%% @doc Deletes a notification rule for a resource.
-spec delete_notification_rule(aws_client:aws_client(), delete_notification_rule_request()) ->
    {ok, delete_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, delete_notification_rule_errors(), tuple()}.
delete_notification_rule(Client, Input) ->
    delete_notification_rule(Client, Input, []).

-spec delete_notification_rule(aws_client:aws_client(), delete_notification_rule_request(), proplists:proplist()) ->
    {ok, delete_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, delete_notification_rule_errors(), tuple()}.
delete_notification_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteNotificationRule"],
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

%% @doc Deletes a specified target for notifications.
-spec delete_target(aws_client:aws_client(), delete_target_request()) ->
    {ok, delete_target_result(), tuple()} |
    {error, any()} |
    {error, delete_target_errors(), tuple()}.
delete_target(Client, Input) ->
    delete_target(Client, Input, []).

-spec delete_target(aws_client:aws_client(), delete_target_request(), proplists:proplist()) ->
    {ok, delete_target_result(), tuple()} |
    {error, any()} |
    {error, delete_target_errors(), tuple()}.
delete_target(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteTarget"],
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

%% @doc Returns information about a specified notification rule.
-spec describe_notification_rule(aws_client:aws_client(), describe_notification_rule_request()) ->
    {ok, describe_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, describe_notification_rule_errors(), tuple()}.
describe_notification_rule(Client, Input) ->
    describe_notification_rule(Client, Input, []).

-spec describe_notification_rule(aws_client:aws_client(), describe_notification_rule_request(), proplists:proplist()) ->
    {ok, describe_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, describe_notification_rule_errors(), tuple()}.
describe_notification_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeNotificationRule"],
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

%% @doc Returns information about the event types available for configuring
%% notifications.
-spec list_event_types(aws_client:aws_client(), list_event_types_request()) ->
    {ok, list_event_types_result(), tuple()} |
    {error, any()} |
    {error, list_event_types_errors(), tuple()}.
list_event_types(Client, Input) ->
    list_event_types(Client, Input, []).

-spec list_event_types(aws_client:aws_client(), list_event_types_request(), proplists:proplist()) ->
    {ok, list_event_types_result(), tuple()} |
    {error, any()} |
    {error, list_event_types_errors(), tuple()}.
list_event_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listEventTypes"],
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

%% @doc Returns a list of the notification rules for an Amazon Web Services
%% account.
-spec list_notification_rules(aws_client:aws_client(), list_notification_rules_request()) ->
    {ok, list_notification_rules_result(), tuple()} |
    {error, any()} |
    {error, list_notification_rules_errors(), tuple()}.
list_notification_rules(Client, Input) ->
    list_notification_rules(Client, Input, []).

-spec list_notification_rules(aws_client:aws_client(), list_notification_rules_request(), proplists:proplist()) ->
    {ok, list_notification_rules_result(), tuple()} |
    {error, any()} |
    {error, list_notification_rules_errors(), tuple()}.
list_notification_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listNotificationRules"],
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

%% @doc Returns a list of the tags associated with a notification rule.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTagsForResource"],
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

%% @doc Returns a list of the notification rule targets for an Amazon Web
%% Services account.
-spec list_targets(aws_client:aws_client(), list_targets_request()) ->
    {ok, list_targets_result(), tuple()} |
    {error, any()} |
    {error, list_targets_errors(), tuple()}.
list_targets(Client, Input) ->
    list_targets(Client, Input, []).

-spec list_targets(aws_client:aws_client(), list_targets_request(), proplists:proplist()) ->
    {ok, list_targets_result(), tuple()} |
    {error, any()} |
    {error, list_targets_errors(), tuple()}.
list_targets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTargets"],
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

%% @doc Creates an association between a notification rule and an Chatbot
%% topic or Chatbot client so that the
%% associated target can receive notifications when the events described in
%% the rule are
%% triggered.
-spec subscribe(aws_client:aws_client(), subscribe_request()) ->
    {ok, subscribe_result(), tuple()} |
    {error, any()} |
    {error, subscribe_errors(), tuple()}.
subscribe(Client, Input) ->
    subscribe(Client, Input, []).

-spec subscribe(aws_client:aws_client(), subscribe_request(), proplists:proplist()) ->
    {ok, subscribe_result(), tuple()} |
    {error, any()} |
    {error, subscribe_errors(), tuple()}.
subscribe(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscribe"],
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

%% @doc Associates a set of provided tags with a notification rule.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagResource"],
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

%% @doc Removes an association between a notification rule and an Chatbot
%% topic so that
%% subscribers to that topic stop receiving notifications when the events
%% described in the
%% rule are triggered.
-spec unsubscribe(aws_client:aws_client(), unsubscribe_request()) ->
    {ok, unsubscribe_result(), tuple()} |
    {error, any()} |
    {error, unsubscribe_errors(), tuple()}.
unsubscribe(Client, Input) ->
    unsubscribe(Client, Input, []).

-spec unsubscribe(aws_client:aws_client(), unsubscribe_request(), proplists:proplist()) ->
    {ok, unsubscribe_result(), tuple()} |
    {error, any()} |
    {error, unsubscribe_errors(), tuple()}.
unsubscribe(Client, Input0, Options0) ->
    Method = post,
    Path = ["/unsubscribe"],
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

%% @doc Removes the association between one or more provided tags and a
%% notification
%% rule.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/untagResource/", aws_util:encode_uri(Arn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a notification rule for a resource.
%%
%% You can change the events that trigger the
%% notification rule, the status of the rule, and the targets that receive
%% the
%% notifications.
%%
%% To add or remove tags for a notification rule, you must use
%% `TagResource' and `UntagResource'.
-spec update_notification_rule(aws_client:aws_client(), update_notification_rule_request()) ->
    {ok, update_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, update_notification_rule_errors(), tuple()}.
update_notification_rule(Client, Input) ->
    update_notification_rule(Client, Input, []).

-spec update_notification_rule(aws_client:aws_client(), update_notification_rule_request(), proplists:proplist()) ->
    {ok, update_notification_rule_result(), tuple()} |
    {error, any()} |
    {error, update_notification_rule_errors(), tuple()}.
update_notification_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateNotificationRule"],
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
    Client1 = Client#{service => <<"codestar-notifications">>},
    Host = build_host(<<"codestar-notifications">>, Client1),
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
