%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon EventBridge Scheduler is a serverless scheduler that allows you to
%% create, run, and manage tasks from one central, managed service.
%%
%% EventBridge Scheduler delivers your tasks reliably, with built-in
%% mechanisms that adjust your schedules based on the availability of
%% downstream targets.
%% The following reference lists the available API actions, and data types
%% for EventBridge Scheduler.
-module(aws_scheduler).

-export([create_schedule/3,
         create_schedule/4,
         create_schedule_group/3,
         create_schedule_group/4,
         delete_schedule/3,
         delete_schedule/4,
         delete_schedule_group/3,
         delete_schedule_group/4,
         get_schedule/2,
         get_schedule/4,
         get_schedule/5,
         get_schedule_group/2,
         get_schedule_group/4,
         get_schedule_group/5,
         list_schedule_groups/1,
         list_schedule_groups/3,
         list_schedule_groups/4,
         list_schedules/1,
         list_schedules/3,
         list_schedules/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_schedule/3,
         update_schedule/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_schedule_group_output() :: #{}
-type delete_schedule_group_output() :: #{}.

%% Example:
%% delete_schedule_output() :: #{}
-type delete_schedule_output() :: #{}.

%% Example:
%% get_schedule_group_input() :: #{}
-type get_schedule_group_input() :: #{}.


%% Example:
%% schedule_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModificationDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type schedule_group_summary() :: #{binary() => any()}.


%% Example:
%% sage_maker_pipeline_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type sage_maker_pipeline_parameter() :: #{binary() => any()}.


%% Example:
%% flexible_time_window() :: #{
%%   <<"MaximumWindowInMinutes">> => integer(),
%%   <<"Mode">> => string()
%% }
-type flexible_time_window() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% get_schedule_output() :: #{
%%   <<"ActionAfterCompletion">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"FlexibleTimeWindow">> => flexible_time_window(),
%%   <<"GroupName">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LastModificationDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleExpressionTimezone">> => string(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"Target">> => target()
%% }
-type get_schedule_output() :: #{binary() => any()}.


%% Example:
%% delete_schedule_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"GroupName">> => string()
%% }
-type delete_schedule_input() :: #{binary() => any()}.


%% Example:
%% update_schedule_output() :: #{
%%   <<"ScheduleArn">> := string()
%% }
-type update_schedule_output() :: #{binary() => any()}.


%% Example:
%% target() :: #{
%%   <<"Arn">> => string(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"EcsParameters">> => ecs_parameters(),
%%   <<"EventBridgeParameters">> => event_bridge_parameters(),
%%   <<"Input">> => string(),
%%   <<"KinesisParameters">> => kinesis_parameters(),
%%   <<"RetryPolicy">> => retry_policy(),
%%   <<"RoleArn">> => string(),
%%   <<"SageMakerPipelineParameters">> => sage_maker_pipeline_parameters(),
%%   <<"SqsParameters">> => sqs_parameters()
%% }
-type target() :: #{binary() => any()}.


%% Example:
%% get_schedule_group_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModificationDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type get_schedule_group_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_schedule_groups_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduleGroups">> := list(schedule_group_summary())
%% }
-type list_schedule_groups_output() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% target_summary() :: #{
%%   <<"Arn">> => string()
%% }
-type target_summary() :: #{binary() => any()}.


%% Example:
%% update_schedule_input() :: #{
%%   <<"ActionAfterCompletion">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"FlexibleTimeWindow">> := flexible_time_window(),
%%   <<"GroupName">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"ScheduleExpression">> := string(),
%%   <<"ScheduleExpressionTimezone">> => string(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"Target">> := target()
%% }
-type update_schedule_input() :: #{binary() => any()}.


%% Example:
%% sage_maker_pipeline_parameters() :: #{
%%   <<"PipelineParameterList">> => list(sage_maker_pipeline_parameter())
%% }
-type sage_maker_pipeline_parameters() :: #{binary() => any()}.


%% Example:
%% sqs_parameters() :: #{
%%   <<"MessageGroupId">> => string()
%% }
-type sqs_parameters() :: #{binary() => any()}.


%% Example:
%% schedule_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"GroupName">> => string(),
%%   <<"LastModificationDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => string(),
%%   <<"Target">> => target_summary()
%% }
-type schedule_summary() :: #{binary() => any()}.


%% Example:
%% event_bridge_parameters() :: #{
%%   <<"DetailType">> => string(),
%%   <<"Source">> => string()
%% }
-type event_bridge_parameters() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% create_schedule_input() :: #{
%%   <<"ActionAfterCompletion">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"FlexibleTimeWindow">> := flexible_time_window(),
%%   <<"GroupName">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"ScheduleExpression">> := string(),
%%   <<"ScheduleExpressionTimezone">> => string(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"Target">> := target()
%% }
-type create_schedule_input() :: #{binary() => any()}.


%% Example:
%% delete_schedule_group_input() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_schedule_group_input() :: #{binary() => any()}.


%% Example:
%% get_schedule_input() :: #{
%%   <<"GroupName">> => string()
%% }
-type get_schedule_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% capacity_provider_strategy_item() :: #{
%%   <<"base">> => integer(),
%%   <<"capacityProvider">> => string(),
%%   <<"weight">> => integer()
%% }
-type capacity_provider_strategy_item() :: #{binary() => any()}.


%% Example:
%% placement_constraint() :: #{
%%   <<"expression">> => string(),
%%   <<"type">> => string()
%% }
-type placement_constraint() :: #{binary() => any()}.


%% Example:
%% network_configuration() :: #{
%%   <<"awsvpcConfiguration">> => aws_vpc_configuration()
%% }
-type network_configuration() :: #{binary() => any()}.


%% Example:
%% create_schedule_group_output() :: #{
%%   <<"ScheduleGroupArn">> := string()
%% }
-type create_schedule_group_output() :: #{binary() => any()}.


%% Example:
%% list_schedule_groups_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_schedule_groups_input() :: #{binary() => any()}.


%% Example:
%% list_schedules_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schedules">> := list(schedule_summary())
%% }
-type list_schedules_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% dead_letter_config() :: #{
%%   <<"Arn">> => string()
%% }
-type dead_letter_config() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% list_schedules_input() :: #{
%%   <<"GroupName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"State">> => string()
%% }
-type list_schedules_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_schedule_output() :: #{
%%   <<"ScheduleArn">> := string()
%% }
-type create_schedule_output() :: #{binary() => any()}.


%% Example:
%% aws_vpc_configuration() :: #{
%%   <<"AssignPublicIp">> => string(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"Subnets">> => list(string())
%% }
-type aws_vpc_configuration() :: #{binary() => any()}.


%% Example:
%% kinesis_parameters() :: #{
%%   <<"PartitionKey">> => string()
%% }
-type kinesis_parameters() :: #{binary() => any()}.


%% Example:
%% create_schedule_group_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_schedule_group_input() :: #{binary() => any()}.


%% Example:
%% retry_policy() :: #{
%%   <<"MaximumEventAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer()
%% }
-type retry_policy() :: #{binary() => any()}.


%% Example:
%% placement_strategy() :: #{
%%   <<"field">> => string(),
%%   <<"type">> => string()
%% }
-type placement_strategy() :: #{binary() => any()}.


%% Example:
%% ecs_parameters() :: #{
%%   <<"CapacityProviderStrategy">> => list(capacity_provider_strategy_item()),
%%   <<"EnableECSManagedTags">> => boolean(),
%%   <<"EnableExecuteCommand">> => boolean(),
%%   <<"Group">> => string(),
%%   <<"LaunchType">> => string(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"PlacementConstraints">> => list(placement_constraint()),
%%   <<"PlacementStrategy">> => list(placement_strategy()),
%%   <<"PlatformVersion">> => string(),
%%   <<"PropagateTags">> => string(),
%%   <<"ReferenceId">> => string(),
%%   <<"Tags">> => list(map()),
%%   <<"TaskCount">> => integer(),
%%   <<"TaskDefinitionArn">> => string()
%% }
-type ecs_parameters() :: #{binary() => any()}.

-type create_schedule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_schedule_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_schedule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_schedule_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_schedule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_schedule_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_schedule_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_schedules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_schedule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates the specified schedule.
-spec create_schedule(aws_client:aws_client(), binary() | list(), create_schedule_input()) ->
    {ok, create_schedule_output(), tuple()} |
    {error, any()} |
    {error, create_schedule_errors(), tuple()}.
create_schedule(Client, Name, Input) ->
    create_schedule(Client, Name, Input, []).

-spec create_schedule(aws_client:aws_client(), binary() | list(), create_schedule_input(), proplists:proplist()) ->
    {ok, create_schedule_output(), tuple()} |
    {error, any()} |
    {error, create_schedule_errors(), tuple()}.
create_schedule(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
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

%% @doc Creates the specified schedule group.
-spec create_schedule_group(aws_client:aws_client(), binary() | list(), create_schedule_group_input()) ->
    {ok, create_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, create_schedule_group_errors(), tuple()}.
create_schedule_group(Client, Name, Input) ->
    create_schedule_group(Client, Name, Input, []).

-spec create_schedule_group(aws_client:aws_client(), binary() | list(), create_schedule_group_input(), proplists:proplist()) ->
    {ok, create_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, create_schedule_group_errors(), tuple()}.
create_schedule_group(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/schedule-groups/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes the specified schedule.
-spec delete_schedule(aws_client:aws_client(), binary() | list(), delete_schedule_input()) ->
    {ok, delete_schedule_output(), tuple()} |
    {error, any()} |
    {error, delete_schedule_errors(), tuple()}.
delete_schedule(Client, Name, Input) ->
    delete_schedule(Client, Name, Input, []).

-spec delete_schedule(aws_client:aws_client(), binary() | list(), delete_schedule_input(), proplists:proplist()) ->
    {ok, delete_schedule_output(), tuple()} |
    {error, any()} |
    {error, delete_schedule_errors(), tuple()}.
delete_schedule(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
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
                     {<<"clientToken">>, <<"ClientToken">>},
                     {<<"groupName">>, <<"GroupName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified schedule group.
%%
%% Deleting a schedule group results in EventBridge Scheduler deleting all
%% schedules associated with the group.
%% When you delete a group, it remains in a `DELETING' state until all of
%% its associated schedules are deleted.
%% Schedules associated with the group that are set to run while the schedule
%% group is in the process of being deleted might continue to invoke their
%% targets
%% until the schedule group and its associated schedules are deleted.
%%
%% This operation is eventually consistent.
-spec delete_schedule_group(aws_client:aws_client(), binary() | list(), delete_schedule_group_input()) ->
    {ok, delete_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, delete_schedule_group_errors(), tuple()}.
delete_schedule_group(Client, Name, Input) ->
    delete_schedule_group(Client, Name, Input, []).

-spec delete_schedule_group(aws_client:aws_client(), binary() | list(), delete_schedule_group_input(), proplists:proplist()) ->
    {ok, delete_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, delete_schedule_group_errors(), tuple()}.
delete_schedule_group(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/schedule-groups/", aws_util:encode_uri(Name), ""],
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
                     {<<"clientToken">>, <<"ClientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the specified schedule.
-spec get_schedule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_schedule_output(), tuple()} |
    {error, any()} |
    {error, get_schedule_errors(), tuple()}.
get_schedule(Client, Name)
  when is_map(Client) ->
    get_schedule(Client, Name, #{}, #{}).

-spec get_schedule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_schedule_output(), tuple()} |
    {error, any()} |
    {error, get_schedule_errors(), tuple()}.
get_schedule(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schedule(Client, Name, QueryMap, HeadersMap, []).

-spec get_schedule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schedule_output(), tuple()} |
    {error, any()} |
    {error, get_schedule_errors(), tuple()}.
get_schedule(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"groupName">>, maps:get(<<"groupName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified schedule group.
-spec get_schedule_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, get_schedule_group_errors(), tuple()}.
get_schedule_group(Client, Name)
  when is_map(Client) ->
    get_schedule_group(Client, Name, #{}, #{}).

-spec get_schedule_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, get_schedule_group_errors(), tuple()}.
get_schedule_group(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schedule_group(Client, Name, QueryMap, HeadersMap, []).

-spec get_schedule_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schedule_group_output(), tuple()} |
    {error, any()} |
    {error, get_schedule_group_errors(), tuple()}.
get_schedule_group(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schedule-groups/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of your schedule groups.
-spec list_schedule_groups(aws_client:aws_client()) ->
    {ok, list_schedule_groups_output(), tuple()} |
    {error, any()} |
    {error, list_schedule_groups_errors(), tuple()}.
list_schedule_groups(Client)
  when is_map(Client) ->
    list_schedule_groups(Client, #{}, #{}).

-spec list_schedule_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_schedule_groups_output(), tuple()} |
    {error, any()} |
    {error, list_schedule_groups_errors(), tuple()}.
list_schedule_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schedule_groups(Client, QueryMap, HeadersMap, []).

-spec list_schedule_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_schedule_groups_output(), tuple()} |
    {error, any()} |
    {error, list_schedule_groups_errors(), tuple()}.
list_schedule_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schedule-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NamePrefix">>, maps:get(<<"NamePrefix">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of your EventBridge Scheduler schedules.
-spec list_schedules(aws_client:aws_client()) ->
    {ok, list_schedules_output(), tuple()} |
    {error, any()} |
    {error, list_schedules_errors(), tuple()}.
list_schedules(Client)
  when is_map(Client) ->
    list_schedules(Client, #{}, #{}).

-spec list_schedules(aws_client:aws_client(), map(), map()) ->
    {ok, list_schedules_output(), tuple()} |
    {error, any()} |
    {error, list_schedules_errors(), tuple()}.
list_schedules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schedules(Client, QueryMap, HeadersMap, []).

-spec list_schedules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_schedules_output(), tuple()} |
    {error, any()} |
    {error, list_schedules_errors(), tuple()}.
list_schedules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schedules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ScheduleGroup">>, maps:get(<<"ScheduleGroup">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NamePrefix">>, maps:get(<<"NamePrefix">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with the Scheduler resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% EventBridge Scheduler resource.
%%
%% You can only assign tags to schedule groups.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified EventBridge Scheduler
%% schedule group.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"TagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Updates the specified schedule.
%%
%% When you call `UpdateSchedule', EventBridge Scheduler uses all values,
%% including empty values, specified in the request and
%% overrides the existing schedule. This is by design. This means that if you
%% do not set an optional field in your request, that field will be set to
%% its system-default value after the update.
%%
%% Before calling this operation, we recommend that you call the
%% `GetSchedule' API operation and make a note of all optional parameters
%% for your `UpdateSchedule' call.
-spec update_schedule(aws_client:aws_client(), binary() | list(), update_schedule_input()) ->
    {ok, update_schedule_output(), tuple()} |
    {error, any()} |
    {error, update_schedule_errors(), tuple()}.
update_schedule(Client, Name, Input) ->
    update_schedule(Client, Name, Input, []).

-spec update_schedule(aws_client:aws_client(), binary() | list(), update_schedule_input(), proplists:proplist()) ->
    {ok, update_schedule_output(), tuple()} |
    {error, any()} |
    {error, update_schedule_errors(), tuple()}.
update_schedule(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"scheduler">>},
    Host = build_host(<<"scheduler">>, Client1),
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
