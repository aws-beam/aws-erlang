%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The CloudWatch investigations feature is a generative AI-powered
%% assistant that can help you respond to incidents in your system.
%%
%% It uses generative AI to scan your system's telemetry and quickly
%% surface suggestions that might be related to your issue. These suggestions
%% include metrics, logs, deployment events, and root-cause hypotheses.
%%
%% You can use API actions to create, manage, and delete investigation groups
%% and investigation group policies. To start and manage investigations, you
%% must use the CloudWatch console.
-module(aws_aiops).

-export([create_investigation_group/2,
         create_investigation_group/3,
         delete_investigation_group/3,
         delete_investigation_group/4,
         delete_investigation_group_policy/3,
         delete_investigation_group_policy/4,
         get_investigation_group/2,
         get_investigation_group/4,
         get_investigation_group/5,
         get_investigation_group_policy/2,
         get_investigation_group_policy/4,
         get_investigation_group_policy/5,
         list_investigation_groups/1,
         list_investigation_groups/3,
         list_investigation_groups/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_investigation_group_policy/3,
         put_investigation_group_policy/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_investigation_group/3,
         update_investigation_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_investigation_group_input() :: #{
%%   <<"chatbotNotificationChannel">> => map(),
%%   <<"crossAccountConfigurations">> => list(cross_account_configuration()),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"isCloudTrailEventHistoryEnabled">> => [boolean()],
%%   <<"name">> := string(),
%%   <<"retentionInDays">> => float(),
%%   <<"roleArn">> := string(),
%%   <<"tagKeyBoundaries">> => list(string()),
%%   <<"tags">> => map()
%% }
-type create_investigation_group_input() :: #{binary() => any()}.


%% Example:
%% create_investigation_group_output() :: #{
%%   <<"arn">> => string()
%% }
-type create_investigation_group_output() :: #{binary() => any()}.


%% Example:
%% cross_account_configuration() :: #{
%%   <<"sourceRoleArn">> => string()
%% }
-type cross_account_configuration() :: #{binary() => any()}.

%% Example:
%% delete_investigation_group_policy_output() :: #{}
-type delete_investigation_group_policy_output() :: #{}.

%% Example:
%% delete_investigation_group_policy_request() :: #{}
-type delete_investigation_group_policy_request() :: #{}.

%% Example:
%% delete_investigation_group_request() :: #{}
-type delete_investigation_group_request() :: #{}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"type">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% get_investigation_group_policy_request() :: #{}
-type get_investigation_group_policy_request() :: #{}.


%% Example:
%% get_investigation_group_policy_response() :: #{
%%   <<"investigationGroupArn">> => string(),
%%   <<"policy">> => string()
%% }
-type get_investigation_group_policy_response() :: #{binary() => any()}.

%% Example:
%% get_investigation_group_request() :: #{}
-type get_investigation_group_request() :: #{}.


%% Example:
%% get_investigation_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"chatbotNotificationChannel">> => map(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"crossAccountConfigurations">> => list(cross_account_configuration()),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"isCloudTrailEventHistoryEnabled">> => [boolean()],
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"lastModifiedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"retentionInDays">> => float(),
%%   <<"roleArn">> => string(),
%%   <<"tagKeyBoundaries">> => list(string())
%% }
-type get_investigation_group_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_investigation_groups_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_investigation_groups_input() :: #{binary() => any()}.


%% Example:
%% list_investigation_groups_model() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type list_investigation_groups_model() :: #{binary() => any()}.


%% Example:
%% list_investigation_groups_output() :: #{
%%   <<"investigationGroups">> => list(list_investigation_groups_model()),
%%   <<"nextToken">> => string()
%% }
-type list_investigation_groups_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% put_investigation_group_policy_request() :: #{
%%   <<"policy">> := string()
%% }
-type put_investigation_group_policy_request() :: #{binary() => any()}.


%% Example:
%% put_investigation_group_policy_response() :: #{
%%   <<"investigationGroupArn">> => string()
%% }
-type put_investigation_group_policy_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% update_investigation_group_output() :: #{}
-type update_investigation_group_output() :: #{}.


%% Example:
%% update_investigation_group_request() :: #{
%%   <<"chatbotNotificationChannel">> => map(),
%%   <<"crossAccountConfigurations">> => list(cross_account_configuration()),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"isCloudTrailEventHistoryEnabled">> => [boolean()],
%%   <<"roleArn">> => string(),
%%   <<"tagKeyBoundaries">> => list(string())
%% }
-type update_investigation_group_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_investigation_group_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_investigation_group_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_investigation_group_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_investigation_group_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_investigation_group_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_investigation_groups_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type put_investigation_group_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_investigation_group_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an investigation group in your account.
%%
%% Creating an investigation group is a one-time setup task for each Region
%% in your account. It is a necessary task to be able to perform
%% investigations.
%%
%% Settings in the investigation group help you centrally manage the common
%% properties of your investigations, such as the following:
%%
%% Who can access the investigations
%%
%% Whether investigation data is encrypted with a customer managed Key
%% Management Service key.
%%
%% How long investigations and their data are retained by default.
%%
%% Currently, you can have one investigation group in each Region in your
%% account. Each investigation in a Region is a part of the investigation
%% group in that Region
%%
%% To create an investigation group and set up CloudWatch investigations, you
%% must be signed in to an IAM principal that has the either the
%% `AIOpsConsoleAdminPolicy' or the `AdministratorAccess' IAM policy
%% attached, or to an account that has similar permissions.
%%
%% You can configure CloudWatch alarms to start investigations and add events
%% to investigations. If you create your investigation group with
%% `CreateInvestigationGroup' and you want to enable alarms to do this,
%% you must use PutInvestigationGroupPolicy:
%% https://docs.aws.amazon.com/operationalinvestigations/latest/AmazonQDeveloperOperationalInvestigationsAPIReference/API_PutInvestigationGroupPolicy.html
%% to create a resource policy that grants this permission to CloudWatch
%% alarms.
%%
%% For more information about configuring CloudWatch alarms to work with
%% CloudWatch investigations, see
-spec create_investigation_group(aws_client:aws_client(), create_investigation_group_input()) ->
    {ok, create_investigation_group_output(), tuple()} |
    {error, any()} |
    {error, create_investigation_group_errors(), tuple()}.
create_investigation_group(Client, Input) ->
    create_investigation_group(Client, Input, []).

-spec create_investigation_group(aws_client:aws_client(), create_investigation_group_input(), proplists:proplist()) ->
    {ok, create_investigation_group_output(), tuple()} |
    {error, any()} |
    {error, create_investigation_group_errors(), tuple()}.
create_investigation_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/investigationGroups"],
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

%% @doc Deletes the specified investigation group from your account.
%%
%% You can currently have one investigation group per Region in your account.
%% After you delete an investigation group, you can later create a new
%% investigation group in the same Region.
-spec delete_investigation_group(aws_client:aws_client(), binary() | list(), delete_investigation_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_investigation_group_errors(), tuple()}.
delete_investigation_group(Client, Identifier, Input) ->
    delete_investigation_group(Client, Identifier, Input, []).

-spec delete_investigation_group(aws_client:aws_client(), binary() | list(), delete_investigation_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_investigation_group_errors(), tuple()}.
delete_investigation_group(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/investigationGroups/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Removes the IAM resource policy from being associated with the
%% investigation group that you specify.
-spec delete_investigation_group_policy(aws_client:aws_client(), binary() | list(), delete_investigation_group_policy_request()) ->
    {ok, delete_investigation_group_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_investigation_group_policy_errors(), tuple()}.
delete_investigation_group_policy(Client, Identifier, Input) ->
    delete_investigation_group_policy(Client, Identifier, Input, []).

-spec delete_investigation_group_policy(aws_client:aws_client(), binary() | list(), delete_investigation_group_policy_request(), proplists:proplist()) ->
    {ok, delete_investigation_group_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_investigation_group_policy_errors(), tuple()}.
delete_investigation_group_policy(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/investigationGroups/", aws_util:encode_uri(Identifier), "/policy"],
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

%% @doc Returns the configuration information for the specified investigation
%% group.
-spec get_investigation_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_investigation_group_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_group_errors(), tuple()}.
get_investigation_group(Client, Identifier)
  when is_map(Client) ->
    get_investigation_group(Client, Identifier, #{}, #{}).

-spec get_investigation_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_investigation_group_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_group_errors(), tuple()}.
get_investigation_group(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_investigation_group(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_investigation_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_investigation_group_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_group_errors(), tuple()}.
get_investigation_group(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/investigationGroups/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the IAM resource policy that is associated with the specified
%% investigation group.
-spec get_investigation_group_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_investigation_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_group_policy_errors(), tuple()}.
get_investigation_group_policy(Client, Identifier)
  when is_map(Client) ->
    get_investigation_group_policy(Client, Identifier, #{}, #{}).

-spec get_investigation_group_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_investigation_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_group_policy_errors(), tuple()}.
get_investigation_group_policy(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_investigation_group_policy(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_investigation_group_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_investigation_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_group_policy_errors(), tuple()}.
get_investigation_group_policy(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/investigationGroups/", aws_util:encode_uri(Identifier), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the ARN and name of each investigation group in the account.
-spec list_investigation_groups(aws_client:aws_client()) ->
    {ok, list_investigation_groups_output(), tuple()} |
    {error, any()} |
    {error, list_investigation_groups_errors(), tuple()}.
list_investigation_groups(Client)
  when is_map(Client) ->
    list_investigation_groups(Client, #{}, #{}).

-spec list_investigation_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_investigation_groups_output(), tuple()} |
    {error, any()} |
    {error, list_investigation_groups_errors(), tuple()}.
list_investigation_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_investigation_groups(Client, QueryMap, HeadersMap, []).

-spec list_investigation_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_investigation_groups_output(), tuple()} |
    {error, any()} |
    {error, list_investigation_groups_errors(), tuple()}.
list_investigation_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/investigationGroups"],
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

%% @doc Displays the tags associated with a CloudWatch investigations
%% resource.
%%
%% Currently, investigation groups support tagging.
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

%% @doc Creates an IAM resource policy and assigns it to the specified
%% investigation group.
%%
%% If you create your investigation group with `CreateInvestigationGroup'
%% and you want to enable CloudWatch alarms to create investigations and add
%% events to investigations, you must use this operation to create a policy
%% similar to this example.
%%
%% `{ &quot;Version&quot;: &quot;2008-10-17&quot;, &quot;Statement&quot;: [{
%% &quot;Effect&quot;: &quot;Allow&quot;, &quot;Principal&quot;: {
%% &quot;Service&quot;: &quot;aiops.alarms.cloudwatch.amazonaws.com&quot; },
%% &quot;Action&quot;: [&quot;aiops:CreateInvestigation&quot;,
%% &quot;aiops:CreateInvestigationEvent&quot;], &quot;Resource&quot;:
%% &quot;*&quot;, &quot;Condition&quot;: { &quot;StringEquals&quot;: {
%% &quot;aws:SourceAccount&quot;: &quot;account-id&quot; },
%% &quot;ArnLike&quot;: { &quot;aws:SourceArn&quot;:
%% &quot;arn:aws:cloudwatch:region:account-id:alarm:*&quot; } } }] }'
-spec put_investigation_group_policy(aws_client:aws_client(), binary() | list(), put_investigation_group_policy_request()) ->
    {ok, put_investigation_group_policy_response(), tuple()} |
    {error, any()} |
    {error, put_investigation_group_policy_errors(), tuple()}.
put_investigation_group_policy(Client, Identifier, Input) ->
    put_investigation_group_policy(Client, Identifier, Input, []).

-spec put_investigation_group_policy(aws_client:aws_client(), binary() | list(), put_investigation_group_policy_request(), proplists:proplist()) ->
    {ok, put_investigation_group_policy_response(), tuple()} |
    {error, any()} |
    {error, put_investigation_group_policy_errors(), tuple()}.
put_investigation_group_policy(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/investigationGroups/", aws_util:encode_uri(Identifier), "/policy"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can associate as many as 50 tags with a resource.
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

%% @doc Removes one or more tags from the specified resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of the specified investigation group.
-spec update_investigation_group(aws_client:aws_client(), binary() | list(), update_investigation_group_request()) ->
    {ok, update_investigation_group_output(), tuple()} |
    {error, any()} |
    {error, update_investigation_group_errors(), tuple()}.
update_investigation_group(Client, Identifier, Input) ->
    update_investigation_group(Client, Identifier, Input, []).

-spec update_investigation_group(aws_client:aws_client(), binary() | list(), update_investigation_group_request(), proplists:proplist()) ->
    {ok, update_investigation_group_output(), tuple()} |
    {error, any()} |
    {error, update_investigation_group_errors(), tuple()}.
update_investigation_group(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/investigationGroups/", aws_util:encode_uri(Identifier), ""],
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
    Client1 = Client#{service => <<"aiops">>},
    Host = build_host(<<"aiops">>, Client1),
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
