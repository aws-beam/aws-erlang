%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DevOps Guru is a fully managed service that helps you identify
%% anomalous behavior in
%% business critical operational applications.
%%
%% You specify the Amazon Web Services resources that you
%% want DevOps Guru to cover, then the Amazon CloudWatch metrics and Amazon
%% Web Services CloudTrail events related to those
%% resources are analyzed. When anomalous behavior is detected, DevOps Guru
%% creates an
%% insight that includes recommendations, related events, and
%% related metrics that can help you improve your operational applications.
%% For more
%% information, see What is Amazon DevOps Guru:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html.
%%
%% You can specify 1 or 2 Amazon Simple Notification Service topics so you
%% are notified every time a new insight
%% is created. You can also enable DevOps Guru to generate an OpsItem in
%% Amazon Web Services Systems Manager for each
%% insight to help you manage and track your work addressing insights.
%%
%% To learn about the DevOps Guru workflow, see How DevOps Guru works:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works.
%% To
%% learn about DevOps Guru concepts, see Concepts in DevOps Guru:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html.
-module(aws_devops_guru).

-export([add_notification_channel/2,
         add_notification_channel/3,
         delete_insight/3,
         delete_insight/4,
         describe_account_health/1,
         describe_account_health/3,
         describe_account_health/4,
         describe_account_overview/2,
         describe_account_overview/3,
         describe_anomaly/2,
         describe_anomaly/4,
         describe_anomaly/5,
         describe_event_sources_config/2,
         describe_event_sources_config/3,
         describe_feedback/2,
         describe_feedback/3,
         describe_insight/2,
         describe_insight/4,
         describe_insight/5,
         describe_organization_health/2,
         describe_organization_health/3,
         describe_organization_overview/2,
         describe_organization_overview/3,
         describe_organization_resource_collection_health/2,
         describe_organization_resource_collection_health/3,
         describe_resource_collection_health/2,
         describe_resource_collection_health/4,
         describe_resource_collection_health/5,
         describe_service_integration/1,
         describe_service_integration/3,
         describe_service_integration/4,
         get_cost_estimation/1,
         get_cost_estimation/3,
         get_cost_estimation/4,
         get_resource_collection/2,
         get_resource_collection/4,
         get_resource_collection/5,
         list_anomalies_for_insight/3,
         list_anomalies_for_insight/4,
         list_anomalous_log_groups/2,
         list_anomalous_log_groups/3,
         list_events/2,
         list_events/3,
         list_insights/2,
         list_insights/3,
         list_monitored_resources/2,
         list_monitored_resources/3,
         list_notification_channels/2,
         list_notification_channels/3,
         list_organization_insights/2,
         list_organization_insights/3,
         list_recommendations/2,
         list_recommendations/3,
         put_feedback/2,
         put_feedback/3,
         remove_notification_channel/3,
         remove_notification_channel/4,
         search_insights/2,
         search_insights/3,
         search_organization_insights/2,
         search_organization_insights/3,
         start_cost_estimation/2,
         start_cost_estimation/3,
         update_event_sources_config/2,
         update_event_sources_config/3,
         update_resource_collection/2,
         update_resource_collection/3,
         update_service_integration/2,
         update_service_integration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a notification channel to DevOps Guru.
%%
%% A notification channel is used to notify you
%% about important DevOps Guru events, such as when an insight is generated.
%%
%% If you use an Amazon SNS topic in another account, you must attach a
%% policy to it that grants DevOps Guru permission
%% to send it notifications. DevOps Guru adds the required policy on your
%% behalf to send notifications using Amazon SNS in your account. DevOps Guru
%% only supports standard SNS topics.
%% For more information, see Permissions
%% for Amazon SNS topics:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html.
%%
%% If you use an Amazon SNS topic that is encrypted by an Amazon Web Services
%% Key Management Service customer-managed key (CMK), then you must add
%% permissions
%% to the CMK. For more information, see Permissions for
%% Amazon Web Services KMS–encrypted Amazon SNS topics:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html.
add_notification_channel(Client, Input) ->
    add_notification_channel(Client, Input, []).
add_notification_channel(Client, Input0, Options0) ->
    Method = put,
    Path = ["/channels"],
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

%% @doc Deletes the insight along with the associated anomalies, events and
%% recommendations.
delete_insight(Client, Id, Input) ->
    delete_insight(Client, Id, Input, []).
delete_insight(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/insights/", aws_util:encode_uri(Id), ""],
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

%% @doc Returns the number of open reactive insights, the number of open
%% proactive insights,
%% and the number of metrics analyzed in your Amazon Web Services account.
%%
%% Use these numbers to gauge the
%% health of operations in your Amazon Web Services account.
describe_account_health(Client)
  when is_map(Client) ->
    describe_account_health(Client, #{}, #{}).

describe_account_health(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_health(Client, QueryMap, HeadersMap, []).

describe_account_health(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/health"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc For the time range passed in, returns the number of open reactive
%% insight that were
%% created, the number of open proactive insights that were created, and the
%% Mean Time to Recover (MTTR) for all
%% closed reactive insights.
describe_account_overview(Client, Input) ->
    describe_account_overview(Client, Input, []).
describe_account_overview(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/overview"],
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

%% @doc Returns details about an anomaly that you specify using its ID.
describe_anomaly(Client, Id)
  when is_map(Client) ->
    describe_anomaly(Client, Id, #{}, #{}).

describe_anomaly(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_anomaly(Client, Id, QueryMap, HeadersMap, []).

describe_anomaly(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/anomalies/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the integration status of services that are integrated with
%% DevOps Guru as Consumer
%% via EventBridge.
%%
%% The one service that can be integrated with DevOps Guru is Amazon CodeGuru
%% Profiler, which can produce proactive recommendations which can be stored
%% and viewed in
%% DevOps Guru.
describe_event_sources_config(Client, Input) ->
    describe_event_sources_config(Client, Input, []).
describe_event_sources_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/event-sources"],
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

%% @doc Returns the most recent feedback submitted in the current Amazon Web
%% Services account and Region.
describe_feedback(Client, Input) ->
    describe_feedback(Client, Input, []).
describe_feedback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/feedback"],
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

%% @doc Returns details about an insight that you specify using its ID.
describe_insight(Client, Id)
  when is_map(Client) ->
    describe_insight(Client, Id, #{}, #{}).

describe_insight(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_insight(Client, Id, QueryMap, HeadersMap, []).

describe_insight(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns active insights, predictive insights, and resource hours
%% analyzed in last
%% hour.
describe_organization_health(Client, Input) ->
    describe_organization_health(Client, Input, []).
describe_organization_health(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/health"],
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

%% @doc Returns an overview of your organization's history based on the
%% specified time range.
%%
%% The overview includes the total reactive and proactive insights.
describe_organization_overview(Client, Input) ->
    describe_organization_overview(Client, Input, []).
describe_organization_overview(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/overview"],
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

%% @doc Provides an overview of your system's health.
%%
%% If additional member accounts are part
%% of your organization, you can filter those accounts using the
%% `AccountIds'
%% field.
describe_organization_resource_collection_health(Client, Input) ->
    describe_organization_resource_collection_health(Client, Input, []).
describe_organization_resource_collection_health(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/health/resource-collection"],
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

%% @doc Returns the number of open proactive insights, open reactive
%% insights, and the Mean Time to Recover (MTTR)
%% for all closed insights in resource collections in your account.
%%
%% You specify the type of
%% Amazon Web Services resources collection. The two types of Amazon Web
%% Services resource collections supported are Amazon Web Services
%% CloudFormation stacks and
%% Amazon Web Services resources that contain the same Amazon Web Services
%% tag. DevOps Guru can be configured to analyze
%% the Amazon Web Services resources that are defined in the stacks or that
%% are tagged using the same tag key. You can specify up to 500 Amazon Web
%% Services CloudFormation stacks.
describe_resource_collection_health(Client, ResourceCollectionType)
  when is_map(Client) ->
    describe_resource_collection_health(Client, ResourceCollectionType, #{}, #{}).

describe_resource_collection_health(Client, ResourceCollectionType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_collection_health(Client, ResourceCollectionType, QueryMap, HeadersMap, []).

describe_resource_collection_health(Client, ResourceCollectionType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/health/resource-collection/", aws_util:encode_uri(ResourceCollectionType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the integration status of services that are integrated with
%% DevOps Guru.
%%
%% The one service that can be integrated with DevOps Guru
%% is Amazon Web Services Systems Manager, which can be used to create an
%% OpsItem for each generated insight.
describe_service_integration(Client)
  when is_map(Client) ->
    describe_service_integration(Client, #{}, #{}).

describe_service_integration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_service_integration(Client, QueryMap, HeadersMap, []).

describe_service_integration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/service-integrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an estimate of the monthly cost for DevOps Guru to analyze
%% your Amazon Web Services resources.
%%
%% For more information,
%% see Estimate your
%% Amazon DevOps Guru costs:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html
%% and
%% Amazon DevOps Guru pricing: http://aws.amazon.com/devops-guru/pricing/.
get_cost_estimation(Client)
  when is_map(Client) ->
    get_cost_estimation(Client, #{}, #{}).

get_cost_estimation(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cost_estimation(Client, QueryMap, HeadersMap, []).

get_cost_estimation(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cost-estimation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns lists Amazon Web Services resources that are of the specified
%% resource collection type.
%%
%% The two types of Amazon Web Services resource collections supported are
%% Amazon Web Services CloudFormation stacks and
%% Amazon Web Services resources that contain the same Amazon Web Services
%% tag. DevOps Guru can be configured to analyze
%% the Amazon Web Services resources that are defined in the stacks or that
%% are tagged using the same tag key. You can specify up to 500 Amazon Web
%% Services CloudFormation stacks.
get_resource_collection(Client, ResourceCollectionType)
  when is_map(Client) ->
    get_resource_collection(Client, ResourceCollectionType, #{}, #{}).

get_resource_collection(Client, ResourceCollectionType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_collection(Client, ResourceCollectionType, QueryMap, HeadersMap, []).

get_resource_collection(Client, ResourceCollectionType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-collections/", aws_util:encode_uri(ResourceCollectionType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the anomalies that belong to an insight that you
%% specify using its
%% ID.
list_anomalies_for_insight(Client, InsightId, Input) ->
    list_anomalies_for_insight(Client, InsightId, Input, []).
list_anomalies_for_insight(Client, InsightId, Input0, Options0) ->
    Method = post,
    Path = ["/anomalies/insight/", aws_util:encode_uri(InsightId), ""],
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

%% @doc
%% Returns the list of log groups that contain log anomalies.
list_anomalous_log_groups(Client, Input) ->
    list_anomalous_log_groups(Client, Input, []).
list_anomalous_log_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-log-anomalies"],
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

%% @doc Returns a list of the events emitted by the resources that are
%% evaluated by DevOps Guru.
%%
%% You can use filters to specify which events are returned.
list_events(Client, Input) ->
    list_events(Client, Input, []).
list_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/events"],
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

%% @doc Returns a list of insights in your Amazon Web Services account.
%%
%% You can specify which insights are
%% returned by their start time and status (`ONGOING', `CLOSED', or
%% `ANY').
list_insights(Client, Input) ->
    list_insights(Client, Input, []).
list_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights"],
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

%% @doc
%% Returns the list of all log groups that are being monitored and tagged by
%% DevOps Guru.
list_monitored_resources(Client, Input) ->
    list_monitored_resources(Client, Input, []).
list_monitored_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/monitoredResources"],
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

%% @doc Returns a list of notification channels configured for DevOps Guru.
%%
%% Each notification
%% channel is used to notify you when DevOps Guru generates an insight that
%% contains information
%% about how to improve your operations. The one
%% supported notification channel is Amazon Simple Notification Service
%% (Amazon SNS).
list_notification_channels(Client, Input) ->
    list_notification_channels(Client, Input, []).
list_notification_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels"],
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

%% @doc Returns a list of insights associated with the account or OU Id.
list_organization_insights(Client, Input) ->
    list_organization_insights(Client, Input, []).
list_organization_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/insights"],
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

%% @doc Returns a list of a specified insight's recommendations.
%%
%% Each recommendation includes
%% a list of related metrics and a list of related events.
list_recommendations(Client, Input) ->
    list_recommendations(Client, Input, []).
list_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recommendations"],
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

%% @doc Collects customer feedback about the specified insight.
put_feedback(Client, Input) ->
    put_feedback(Client, Input, []).
put_feedback(Client, Input0, Options0) ->
    Method = put,
    Path = ["/feedback"],
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

%% @doc Removes a notification channel from DevOps Guru.
%%
%% A notification channel is used to notify
%% you when DevOps Guru generates an insight that contains information about
%% how to improve your
%% operations.
remove_notification_channel(Client, Id, Input) ->
    remove_notification_channel(Client, Id, Input, []).
remove_notification_channel(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
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

%% @doc Returns a list of insights in your Amazon Web Services account.
%%
%% You can specify which insights are
%% returned by their start time, one or more statuses (`ONGOING' or
%% `CLOSED'), one or more severities
%% (`LOW', `MEDIUM', and `HIGH'), and type
%% (`REACTIVE' or `PROACTIVE').
%%
%% Use the `Filters' parameter to specify status and severity search
%% parameters. Use the `Type' parameter to specify `REACTIVE' or
%% `PROACTIVE' in your search.
search_insights(Client, Input) ->
    search_insights(Client, Input, []).
search_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights/search"],
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

%% @doc Returns a list of insights in your organization.
%%
%% You can specify which insights are
%% returned by their start time, one or more statuses (`ONGOING',
%% `CLOSED', and `CLOSED'), one or more severities
%% (`LOW', `MEDIUM', and `HIGH'), and type
%% (`REACTIVE' or `PROACTIVE').
%%
%% Use the `Filters' parameter to specify status and severity search
%% parameters. Use the `Type' parameter to specify `REACTIVE' or
%% `PROACTIVE' in your search.
search_organization_insights(Client, Input) ->
    search_organization_insights(Client, Input, []).
search_organization_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/insights/search"],
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

%% @doc Starts the creation of an estimate of the monthly cost to analyze
%% your Amazon Web Services
%% resources.
start_cost_estimation(Client, Input) ->
    start_cost_estimation(Client, Input, []).
start_cost_estimation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cost-estimation"],
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

%% @doc Enables or disables integration with a service that can be integrated
%% with DevOps Guru.
%%
%% The
%% one service that can be integrated with DevOps Guru is Amazon CodeGuru
%% Profiler, which
%% can produce proactive recommendations which can be stored and viewed in
%% DevOps Guru.
update_event_sources_config(Client, Input) ->
    update_event_sources_config(Client, Input, []).
update_event_sources_config(Client, Input0, Options0) ->
    Method = put,
    Path = ["/event-sources"],
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

%% @doc Updates the collection of resources that DevOps Guru analyzes.
%%
%% The two types of Amazon Web Services resource collections supported are
%% Amazon Web Services CloudFormation stacks and
%% Amazon Web Services resources that contain the same Amazon Web Services
%% tag. DevOps Guru can be configured to analyze
%% the Amazon Web Services resources that are defined in the stacks or that
%% are tagged using the same tag key. You can specify up to 500 Amazon Web
%% Services CloudFormation stacks. This method also creates the IAM role
%% required for
%% you to use DevOps Guru.
update_resource_collection(Client, Input) ->
    update_resource_collection(Client, Input, []).
update_resource_collection(Client, Input0, Options0) ->
    Method = put,
    Path = ["/resource-collections"],
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

%% @doc Enables or disables integration with a service that can be integrated
%% with DevOps Guru.
%%
%% The
%% one service that can be integrated with DevOps Guru is Amazon Web Services
%% Systems Manager, which can be used to create
%% an OpsItem for each generated insight.
update_service_integration(Client, Input) ->
    update_service_integration(Client, Input, []).
update_service_integration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/service-integrations"],
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
    Client1 = Client#{service => <<"devops-guru">>},
    Host = build_host(<<"devops-guru">>, Client1),
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
