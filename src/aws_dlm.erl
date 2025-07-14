%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Data Lifecycle Manager
%%
%% With Amazon Data Lifecycle Manager, you can manage the lifecycle of your
%% Amazon Web Services resources.
%%
%% You create
%% lifecycle policies, which are used to automate operations on the specified
%% resources.
%%
%% Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots.
%% For information about using Amazon Data Lifecycle Manager
%% with Amazon EBS, see
%% Amazon Data Lifecycle Manager:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html
%% in the Amazon EC2 User Guide.
-module(aws_dlm).

-export([create_lifecycle_policy/2,
         create_lifecycle_policy/3,
         delete_lifecycle_policy/3,
         delete_lifecycle_policy/4,
         get_lifecycle_policies/1,
         get_lifecycle_policies/3,
         get_lifecycle_policies/4,
         get_lifecycle_policy/2,
         get_lifecycle_policy/4,
         get_lifecycle_policy/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_lifecycle_policy/3,
         update_lifecycle_policy/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% archive_retain_rule() :: #{
%%   <<"RetentionArchiveTier">> => retention_archive_tier()
%% }
-type archive_retain_rule() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"CmkArn">> => string(),
%%   <<"Encrypted">> => boolean()
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_lifecycle_policy_request() :: #{
%%   <<"CopyTags">> => boolean(),
%%   <<"CreateInterval">> => integer(),
%%   <<"CrossRegionCopyTargets">> => list(cross_region_copy_target()),
%%   <<"Description">> => string(),
%%   <<"Exclusions">> => exclusions(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ExtendDeletion">> => boolean(),
%%   <<"PolicyDetails">> => policy_details(),
%%   <<"RetainInterval">> => integer(),
%%   <<"State">> => list(any())
%% }
-type update_lifecycle_policy_request() :: #{binary() => any()}.


%% Example:
%% cross_region_copy_action() :: #{
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"RetainRule">> => cross_region_copy_retain_rule(),
%%   <<"Target">> => string()
%% }
-type cross_region_copy_action() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% update_lifecycle_policy_response() :: #{}
-type update_lifecycle_policy_response() :: #{}.


%% Example:
%% retain_rule() :: #{
%%   <<"Count">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any())
%% }
-type retain_rule() :: #{binary() => any()}.


%% Example:
%% deprecate_rule() :: #{
%%   <<"Count">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any())
%% }
-type deprecate_rule() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_policies_request() :: #{
%%   <<"DefaultPolicyType">> => list(any()),
%%   <<"PolicyIds">> => list(string()),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"State">> => list(any()),
%%   <<"TagsToAdd">> => list(string()),
%%   <<"TargetTags">> => list(string())
%% }
-type get_lifecycle_policies_request() :: #{binary() => any()}.


%% Example:
%% event_parameters() :: #{
%%   <<"DescriptionRegex">> => string(),
%%   <<"EventType">> => list(any()),
%%   <<"SnapshotOwner">> => list(string())
%% }
-type event_parameters() :: #{binary() => any()}.


%% Example:
%% fast_restore_rule() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"Count">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any())
%% }
-type fast_restore_rule() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% parameters() :: #{
%%   <<"ExcludeBootVolume">> => boolean(),
%%   <<"ExcludeDataVolumeTags">> => list(tag()),
%%   <<"NoReboot">> => boolean()
%% }
-type parameters() :: #{binary() => any()}.


%% Example:
%% event_source() :: #{
%%   <<"Parameters">> => event_parameters(),
%%   <<"Type">> => list(any())
%% }
-type event_source() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_response() :: #{}
-type delete_lifecycle_policy_response() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceIds">> => list(string()),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_summary() :: #{
%%   <<"DefaultPolicy">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type lifecycle_policy_summary() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% cross_region_copy_deprecate_rule() :: #{
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any())
%% }
-type cross_region_copy_deprecate_rule() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"MutuallyExclusiveParameters">> => list(string()),
%%   <<"RequiredParameters">> => list(string())
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% exclusions() :: #{
%%   <<"ExcludeBootVolumes">> => boolean(),
%%   <<"ExcludeTags">> => list(tag()),
%%   <<"ExcludeVolumeTypes">> => list(string())
%% }
-type exclusions() :: #{binary() => any()}.


%% Example:
%% create_lifecycle_policy_response() :: #{
%%   <<"PolicyId">> => string()
%% }
-type create_lifecycle_policy_response() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_policies_response() :: #{
%%   <<"Policies">> => list(lifecycle_policy_summary())
%% }
-type get_lifecycle_policies_response() :: #{binary() => any()}.


%% Example:
%% cross_region_copy_rule() :: #{
%%   <<"CmkArn">> => string(),
%%   <<"CopyTags">> => boolean(),
%%   <<"DeprecateRule">> => cross_region_copy_deprecate_rule(),
%%   <<"Encrypted">> => boolean(),
%%   <<"RetainRule">> => cross_region_copy_retain_rule(),
%%   <<"Target">> => string(),
%%   <<"TargetRegion">> => string()
%% }
-type cross_region_copy_rule() :: #{binary() => any()}.


%% Example:
%% cross_region_copy_target() :: #{
%%   <<"TargetRegion">> => string()
%% }
-type cross_region_copy_target() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"DefaultPolicy">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyDetails">> => policy_details(),
%%   <<"PolicyId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Tags">> => map()
%% }
-type lifecycle_policy() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% archive_rule() :: #{
%%   <<"RetainRule">> => archive_retain_rule()
%% }
-type archive_rule() :: #{binary() => any()}.


%% Example:
%% schedule() :: #{
%%   <<"ArchiveRule">> => archive_rule(),
%%   <<"CopyTags">> => boolean(),
%%   <<"CreateRule">> => create_rule(),
%%   <<"CrossRegionCopyRules">> => list(cross_region_copy_rule()),
%%   <<"DeprecateRule">> => deprecate_rule(),
%%   <<"FastRestoreRule">> => fast_restore_rule(),
%%   <<"Name">> => string(),
%%   <<"RetainRule">> => retain_rule(),
%%   <<"ShareRules">> => list(share_rule()),
%%   <<"TagsToAdd">> => list(tag()),
%%   <<"VariableTags">> => list(tag())
%% }
-type schedule() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_request() :: #{}
-type delete_lifecycle_policy_request() :: #{}.


%% Example:
%% action() :: #{
%%   <<"CrossRegionCopy">> => list(cross_region_copy_action()),
%%   <<"Name">> => string()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% create_rule() :: #{
%%   <<"CronExpression">> => string(),
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any()),
%%   <<"Location">> => list(any()),
%%   <<"Scripts">> => list(script()),
%%   <<"Times">> => list(string())
%% }
-type create_rule() :: #{binary() => any()}.


%% Example:
%% retention_archive_tier() :: #{
%%   <<"Count">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any())
%% }
-type retention_archive_tier() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_lifecycle_policy_request() :: #{}
-type get_lifecycle_policy_request() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% cross_region_copy_retain_rule() :: #{
%%   <<"Interval">> => integer(),
%%   <<"IntervalUnit">> => list(any())
%% }
-type cross_region_copy_retain_rule() :: #{binary() => any()}.


%% Example:
%% create_lifecycle_policy_request() :: #{
%%   <<"CopyTags">> => boolean(),
%%   <<"CreateInterval">> => integer(),
%%   <<"CrossRegionCopyTargets">> => list(cross_region_copy_target()),
%%   <<"DefaultPolicy">> => list(any()),
%%   <<"Description">> := string(),
%%   <<"Exclusions">> => exclusions(),
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"ExtendDeletion">> => boolean(),
%%   <<"PolicyDetails">> => policy_details(),
%%   <<"RetainInterval">> => integer(),
%%   <<"State">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_lifecycle_policy_request() :: #{binary() => any()}.


%% Example:
%% script() :: #{
%%   <<"ExecuteOperationOnScriptFailure">> => boolean(),
%%   <<"ExecutionHandler">> => string(),
%%   <<"ExecutionHandlerService">> => list(any()),
%%   <<"ExecutionTimeout">> => integer(),
%%   <<"MaximumRetryCount">> => integer(),
%%   <<"Stages">> => list(list(any())())
%% }
-type script() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% policy_details() :: #{
%%   <<"Actions">> => list(action()),
%%   <<"CopyTags">> => boolean(),
%%   <<"CreateInterval">> => integer(),
%%   <<"CrossRegionCopyTargets">> => list(cross_region_copy_target()),
%%   <<"EventSource">> => event_source(),
%%   <<"Exclusions">> => exclusions(),
%%   <<"ExtendDeletion">> => boolean(),
%%   <<"Parameters">> => parameters(),
%%   <<"PolicyLanguage">> => list(any()),
%%   <<"PolicyType">> => list(any()),
%%   <<"ResourceLocations">> => list(list(any())()),
%%   <<"ResourceType">> => list(any()),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"RetainInterval">> => integer(),
%%   <<"Schedules">> => list(schedule()),
%%   <<"TargetTags">> => list(tag())
%% }
-type policy_details() :: #{binary() => any()}.


%% Example:
%% share_rule() :: #{
%%   <<"TargetAccounts">> => list(string()),
%%   <<"UnshareInterval">> => integer(),
%%   <<"UnshareIntervalUnit">> => list(any())
%% }
-type share_rule() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_policy_response() :: #{
%%   <<"Policy">> => lifecycle_policy()
%% }
-type get_lifecycle_policy_response() :: #{binary() => any()}.

-type create_lifecycle_policy_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type delete_lifecycle_policy_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lifecycle_policies_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_lifecycle_policy_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_lifecycle_policy_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Data Lifecycle Manager lifecycle policy.
%%
%% Amazon Data Lifecycle Manager supports the following policy types:
%%
%% Custom EBS snapshot policy
%%
%% Custom EBS-backed AMI policy
%%
%% Cross-account copy event policy
%%
%% Default policy for EBS snapshots
%%
%% Default policy for EBS-backed AMIs
%%
%% For more information, see
%% Default policies vs custom policies:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/policy-differences.html.
%%
%% If you create a default policy, you can specify the request parameters
%% either in
%% the request body, or in the PolicyDetails request structure, but not both.
-spec create_lifecycle_policy(aws_client:aws_client(), create_lifecycle_policy_request()) ->
    {ok, create_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, create_lifecycle_policy_errors(), tuple()}.
create_lifecycle_policy(Client, Input) ->
    create_lifecycle_policy(Client, Input, []).

-spec create_lifecycle_policy(aws_client:aws_client(), create_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, create_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, create_lifecycle_policy_errors(), tuple()}.
create_lifecycle_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policies"],
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

%% @doc Deletes the specified lifecycle policy and halts the automated
%% operations that the
%% policy specified.
%%
%% For more information about deleting a policy, see Delete lifecycle
%% policies:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete.
-spec delete_lifecycle_policy(aws_client:aws_client(), binary() | list(), delete_lifecycle_policy_request()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, PolicyId, Input) ->
    delete_lifecycle_policy(Client, PolicyId, Input, []).

-spec delete_lifecycle_policy(aws_client:aws_client(), binary() | list(), delete_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, PolicyId, Input0, Options0) ->
    Method = delete,
    Path = ["/policies/", aws_util:encode_uri(PolicyId), ""],
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

%% @doc Gets summary information about all or the specified data lifecycle
%% policies.
%%
%% To get complete information about a policy, use GetLifecyclePolicy:
%% https://docs.aws.amazon.com/dlm/latest/APIReference/API_GetLifecyclePolicy.html.
-spec get_lifecycle_policies(aws_client:aws_client()) ->
    {ok, get_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policies_errors(), tuple()}.
get_lifecycle_policies(Client)
  when is_map(Client) ->
    get_lifecycle_policies(Client, #{}, #{}).

-spec get_lifecycle_policies(aws_client:aws_client(), map(), map()) ->
    {ok, get_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policies_errors(), tuple()}.
get_lifecycle_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lifecycle_policies(Client, QueryMap, HeadersMap, []).

-spec get_lifecycle_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policies_errors(), tuple()}.
get_lifecycle_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"defaultPolicyType">>, maps:get(<<"defaultPolicyType">>, QueryMap, undefined)},
        {<<"policyIds">>, maps:get(<<"policyIds">>, QueryMap, undefined)},
        {<<"resourceTypes">>, maps:get(<<"resourceTypes">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"tagsToAdd">>, maps:get(<<"tagsToAdd">>, QueryMap, undefined)},
        {<<"targetTags">>, maps:get(<<"targetTags">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets detailed information about the specified lifecycle policy.
-spec get_lifecycle_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, PolicyId)
  when is_map(Client) ->
    get_lifecycle_policy(Client, PolicyId, #{}, #{}).

-spec get_lifecycle_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, PolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lifecycle_policy(Client, PolicyId, QueryMap, HeadersMap, []).

-spec get_lifecycle_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, PolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
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

%% @doc Adds the specified tags to the specified resource.
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

%% @doc Removes the specified tags from the specified resource.
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

%% @doc Updates the specified lifecycle policy.
%%
%% For more information about updating a policy, see Modify lifecycle
%% policies:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify.
-spec update_lifecycle_policy(aws_client:aws_client(), binary() | list(), update_lifecycle_policy_request()) ->
    {ok, update_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, update_lifecycle_policy_errors(), tuple()}.
update_lifecycle_policy(Client, PolicyId, Input) ->
    update_lifecycle_policy(Client, PolicyId, Input, []).

-spec update_lifecycle_policy(aws_client:aws_client(), binary() | list(), update_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, update_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, update_lifecycle_policy_errors(), tuple()}.
update_lifecycle_policy(Client, PolicyId, Input0, Options0) ->
    Method = patch,
    Path = ["/policies/", aws_util:encode_uri(PolicyId), ""],
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
    Client1 = Client#{service => <<"dlm">>},
    Host = build_host(<<"dlm">>, Client1),
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
