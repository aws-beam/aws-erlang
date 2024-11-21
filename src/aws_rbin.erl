%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Recycle Bin API Reference.
%%
%% This documentation provides
%% descriptions and syntax for each of the actions and data types in Recycle
%% Bin.
%%
%% Recycle Bin is a resource recovery feature that enables you to restore
%% accidentally
%% deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if your
%% resources are
%% deleted, they are retained in the Recycle Bin for a time period that you
%% specify.
%%
%% You can restore a resource from the Recycle Bin at any time before its
%% retention period
%% expires. After you restore a resource from the Recycle Bin, the resource
%% is removed from the
%% Recycle Bin, and you can then use it in the same way you use any other
%% resource of that type
%% in your account. If the retention period expires and the resource is not
%% restored, the resource
%% is permanently deleted from the Recycle Bin and is no longer available for
%% recovery. For more
%% information about Recycle Bin, see
%% Recycle Bin:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html in
%% the Amazon Elastic Compute Cloud User Guide.
-module(aws_rbin).

-export([create_rule/2,
         create_rule/3,
         delete_rule/3,
         delete_rule/4,
         get_rule/2,
         get_rule/4,
         get_rule/5,
         list_rules/2,
         list_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         lock_rule/3,
         lock_rule/4,
         tag_resource/3,
         tag_resource/4,
         unlock_rule/3,
         unlock_rule/4,
         untag_resource/3,
         untag_resource/4,
         update_rule/3,
         update_rule/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_rule_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"LockConfiguration">> => lock_configuration(),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> := list(any()),
%%   <<"RetentionPeriod">> := retention_period(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_rule_request() :: #{binary() => any()}.


%% Example:
%% create_rule_response() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"Identifier">> => string(),
%%   <<"LockConfiguration">> => lock_configuration(),
%%   <<"LockState">> => list(any()),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period(),
%%   <<"RuleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_request() :: #{}
-type delete_rule_request() :: #{}.

%% Example:
%% delete_rule_response() :: #{}
-type delete_rule_response() :: #{}.

%% Example:
%% get_rule_request() :: #{}
-type get_rule_request() :: #{}.


%% Example:
%% get_rule_response() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"Identifier">> => string(),
%%   <<"LockConfiguration">> => lock_configuration(),
%%   <<"LockEndTime">> => non_neg_integer(),
%%   <<"LockState">> => list(any()),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period(),
%%   <<"RuleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_rule_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_rules_request() :: #{
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"LockState">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> := list(any())
%% }
-type list_rules_request() :: #{binary() => any()}.


%% Example:
%% list_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rules">> => list(rule_summary()())
%% }
-type list_rules_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% lock_configuration() :: #{
%%   <<"UnlockDelay">> => unlock_delay()
%% }
-type lock_configuration() :: #{binary() => any()}.


%% Example:
%% lock_rule_request() :: #{
%%   <<"LockConfiguration">> := lock_configuration()
%% }
-type lock_rule_request() :: #{binary() => any()}.


%% Example:
%% lock_rule_response() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"Identifier">> => string(),
%%   <<"LockConfiguration">> => lock_configuration(),
%%   <<"LockState">> => list(any()),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period(),
%%   <<"RuleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type lock_rule_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% resource_tag() :: #{
%%   <<"ResourceTagKey">> => string(),
%%   <<"ResourceTagValue">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.


%% Example:
%% retention_period() :: #{
%%   <<"RetentionPeriodUnit">> => list(any()),
%%   <<"RetentionPeriodValue">> => integer()
%% }
-type retention_period() :: #{binary() => any()}.


%% Example:
%% rule_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"Identifier">> => string(),
%%   <<"LockState">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period(),
%%   <<"RuleArn">> => string()
%% }
-type rule_summary() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% unlock_delay() :: #{
%%   <<"UnlockDelayUnit">> => list(any()),
%%   <<"UnlockDelayValue">> => integer()
%% }
-type unlock_delay() :: #{binary() => any()}.

%% Example:
%% unlock_rule_request() :: #{}
-type unlock_rule_request() :: #{}.


%% Example:
%% unlock_rule_response() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"Identifier">> => string(),
%%   <<"LockConfiguration">> => lock_configuration(),
%%   <<"LockEndTime">> => non_neg_integer(),
%%   <<"LockState">> => list(any()),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period(),
%%   <<"RuleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type unlock_rule_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_rule_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period()
%% }
-type update_rule_request() :: #{binary() => any()}.


%% Example:
%% update_rule_response() :: #{
%%   <<"Description">> => string(),
%%   <<"ExcludeResourceTags">> => list(resource_tag()()),
%%   <<"Identifier">> => string(),
%%   <<"LockEndTime">> => non_neg_integer(),
%%   <<"LockState">> => list(any()),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"ResourceType">> => list(any()),
%%   <<"RetentionPeriod">> => retention_period(),
%%   <<"RuleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_rule_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_rule_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception().

-type delete_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type list_rules_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type lock_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type unlock_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type update_rule_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Recycle Bin retention rule.
%%
%% You can create two types of retention rules:
%%
%% Tag-level retention rules - These retention rules use
%% resource tags to identify the resources to protect. For each retention
%% rule, you specify one or
%% more tag key and value pairs. Resources (of the specified type) that have
%% at least one of these
%% tag key and value pairs are automatically retained in the Recycle Bin upon
%% deletion. Use this
%% type of retention rule to protect specific resources in your account based
%% on their tags.
%%
%% Region-level retention rules - These retention rules,
%% by default, apply to all of the resources (of the specified type) in the
%% Region, even if the
%% resources are not tagged. However, you can specify exclusion tags to
%% exclude resources that have
%% specific tags. Use this type of retention rule to protect all resources of
%% a specific type in a
%% Region.
%%
%% For more information, see
%% Create Recycle Bin retention rules:
%% https://docs.aws.amazon.com/ebs/latest/userguide/recycle-bin.html in the
%% Amazon EBS User Guide.
-spec create_rule(aws_client:aws_client(), create_rule_request()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input) ->
    create_rule(Client, Input, []).

-spec create_rule(aws_client:aws_client(), create_rule_request(), proplists:proplist()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rules"],
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

%% @doc Deletes a Recycle Bin retention rule.
%%
%% For more information, see
%% Delete Recycle Bin retention rules:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule
%% in the Amazon Elastic Compute Cloud User Guide.
-spec delete_rule(aws_client:aws_client(), binary() | list(), delete_rule_request()) ->
    {ok, delete_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Identifier, Input) ->
    delete_rule(Client, Identifier, Input, []).

-spec delete_rule(aws_client:aws_client(), binary() | list(), delete_rule_request(), proplists:proplist()) ->
    {ok, delete_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/rules/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Gets information about a Recycle Bin retention rule.
-spec get_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, Identifier)
  when is_map(Client) ->
    get_rule(Client, Identifier, #{}, #{}).

-spec get_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rule(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Recycle Bin retention rules in the Region.
-spec list_rules(aws_client:aws_client(), list_rules_request()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, Input) ->
    list_rules(Client, Input, []).

-spec list_rules(aws_client:aws_client(), list_rules_request(), proplists:proplist()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-rules"],
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

%% @doc Lists the tags assigned to a retention rule.
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

%% @doc Locks a Region-level retention rule.
%%
%% A locked retention rule can't be modified or
%% deleted.
%%
%% You can't lock tag-level retention rules, or Region-level retention
%% rules that
%% have exclusion tags.
-spec lock_rule(aws_client:aws_client(), binary() | list(), lock_rule_request()) ->
    {ok, lock_rule_response(), tuple()} |
    {error, any()} |
    {error, lock_rule_errors(), tuple()}.
lock_rule(Client, Identifier, Input) ->
    lock_rule(Client, Identifier, Input, []).

-spec lock_rule(aws_client:aws_client(), binary() | list(), lock_rule_request(), proplists:proplist()) ->
    {ok, lock_rule_response(), tuple()} |
    {error, any()} |
    {error, lock_rule_errors(), tuple()}.
lock_rule(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/rules/", aws_util:encode_uri(Identifier), "/lock"],
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

%% @doc Assigns tags to the specified retention rule.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Unlocks a retention rule.
%%
%% After a retention rule is unlocked, it can be modified or deleted
%% only after the unlock delay period expires.
-spec unlock_rule(aws_client:aws_client(), binary() | list(), unlock_rule_request()) ->
    {ok, unlock_rule_response(), tuple()} |
    {error, any()} |
    {error, unlock_rule_errors(), tuple()}.
unlock_rule(Client, Identifier, Input) ->
    unlock_rule(Client, Identifier, Input, []).

-spec unlock_rule(aws_client:aws_client(), binary() | list(), unlock_rule_request(), proplists:proplist()) ->
    {ok, unlock_rule_response(), tuple()} |
    {error, any()} |
    {error, unlock_rule_errors(), tuple()}.
unlock_rule(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/rules/", aws_util:encode_uri(Identifier), "/unlock"],
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

%% @doc Unassigns a tag from a retention rule.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
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

%% @doc Updates an existing Recycle Bin retention rule.
%%
%% You can update a retention rule's description,
%% resource tags, and retention period at any time after creation. You
%% can't update a retention rule's
%% resource type after creation. For more information, see
%% Update Recycle Bin retention rules:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule
%% in the Amazon Elastic Compute Cloud User Guide.
-spec update_rule(aws_client:aws_client(), binary() | list(), update_rule_request()) ->
    {ok, update_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, Identifier, Input) ->
    update_rule(Client, Identifier, Input, []).

-spec update_rule(aws_client:aws_client(), binary() | list(), update_rule_request(), proplists:proplist()) ->
    {ok, update_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/rules/", aws_util:encode_uri(Identifier), ""],
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
    Client1 = Client#{service => <<"rbin">>},
    Host = build_host(<<"rbin">>, Client1),
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
