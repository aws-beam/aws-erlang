%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With License Manager, you can discover and track your commercial
%% Linux subscriptions on running
%% Amazon EC2 instances.
-module(aws_license_manager_linux_subscriptions).

-export([deregister_subscription_provider/2,
         deregister_subscription_provider/3,
         get_registered_subscription_provider/2,
         get_registered_subscription_provider/3,
         get_service_settings/2,
         get_service_settings/3,
         list_linux_subscription_instances/2,
         list_linux_subscription_instances/3,
         list_linux_subscriptions/2,
         list_linux_subscriptions/3,
         list_registered_subscription_providers/2,
         list_registered_subscription_providers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_subscription_provider/2,
         register_subscription_provider/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_service_settings/2,
         update_service_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% deregister_subscription_provider_request() :: #{
%%   <<"SubscriptionProviderArn">> := string()
%% }
-type deregister_subscription_provider_request() :: #{binary() => any()}.

%% Example:
%% deregister_subscription_provider_response() :: #{}
-type deregister_subscription_provider_response() :: #{}.


%% Example:
%% filter() :: #{
%%   <<"Name">> => [string()],
%%   <<"Operator">> => string(),
%%   <<"Values">> => list([string()]())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% get_registered_subscription_provider_request() :: #{
%%   <<"SubscriptionProviderArn">> := string()
%% }
-type get_registered_subscription_provider_request() :: #{binary() => any()}.


%% Example:
%% get_registered_subscription_provider_response() :: #{
%%   <<"LastSuccessfulDataRetrievalTime">> => [string()],
%%   <<"SecretArn">> => string(),
%%   <<"SubscriptionProviderArn">> => string(),
%%   <<"SubscriptionProviderSource">> => string(),
%%   <<"SubscriptionProviderStatus">> => string(),
%%   <<"SubscriptionProviderStatusMessage">> => [string()]
%% }
-type get_registered_subscription_provider_response() :: #{binary() => any()}.

%% Example:
%% get_service_settings_request() :: #{}
-type get_service_settings_request() :: #{}.


%% Example:
%% get_service_settings_response() :: #{
%%   <<"HomeRegions">> => list([string()]()),
%%   <<"LinuxSubscriptionsDiscovery">> => string(),
%%   <<"LinuxSubscriptionsDiscoverySettings">> => linux_subscriptions_discovery_settings(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => map()
%% }
-type get_service_settings_response() :: #{binary() => any()}.


%% Example:
%% instance() :: #{
%%   <<"AccountID">> => [string()],
%%   <<"AmiId">> => [string()],
%%   <<"DualSubscription">> => [string()],
%%   <<"InstanceID">> => [string()],
%%   <<"InstanceType">> => [string()],
%%   <<"LastUpdatedTime">> => [string()],
%%   <<"OsVersion">> => [string()],
%%   <<"ProductCode">> => list([string()]()),
%%   <<"Region">> => [string()],
%%   <<"RegisteredWithSubscriptionProvider">> => [string()],
%%   <<"Status">> => [string()],
%%   <<"SubscriptionName">> => [string()],
%%   <<"SubscriptionProviderCreateTime">> => [string()],
%%   <<"SubscriptionProviderUpdateTime">> => [string()],
%%   <<"UsageOperation">> => [string()]
%% }
-type instance() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% linux_subscriptions_discovery_settings() :: #{
%%   <<"OrganizationIntegration">> => string(),
%%   <<"SourceRegions">> => list([string()]())
%% }
-type linux_subscriptions_discovery_settings() :: #{binary() => any()}.


%% Example:
%% list_linux_subscription_instances_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_linux_subscription_instances_request() :: #{binary() => any()}.


%% Example:
%% list_linux_subscription_instances_response() :: #{
%%   <<"Instances">> => list(instance()),
%%   <<"NextToken">> => [string()]
%% }
-type list_linux_subscription_instances_response() :: #{binary() => any()}.


%% Example:
%% list_linux_subscriptions_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_linux_subscriptions_request() :: #{binary() => any()}.


%% Example:
%% list_linux_subscriptions_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Subscriptions">> => list(subscription())
%% }
-type list_linux_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% list_registered_subscription_providers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"SubscriptionProviderSources">> => list(string())
%% }
-type list_registered_subscription_providers_request() :: #{binary() => any()}.


%% Example:
%% list_registered_subscription_providers_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"RegisteredSubscriptionProviders">> => list(registered_subscription_provider())
%% }
-type list_registered_subscription_providers_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% register_subscription_provider_request() :: #{
%%   <<"SecretArn">> := string(),
%%   <<"SubscriptionProviderSource">> := string(),
%%   <<"Tags">> => map()
%% }
-type register_subscription_provider_request() :: #{binary() => any()}.


%% Example:
%% register_subscription_provider_response() :: #{
%%   <<"SubscriptionProviderArn">> => [string()],
%%   <<"SubscriptionProviderSource">> => string(),
%%   <<"SubscriptionProviderStatus">> => string()
%% }
-type register_subscription_provider_response() :: #{binary() => any()}.


%% Example:
%% registered_subscription_provider() :: #{
%%   <<"LastSuccessfulDataRetrievalTime">> => [string()],
%%   <<"SecretArn">> => string(),
%%   <<"SubscriptionProviderArn">> => string(),
%%   <<"SubscriptionProviderSource">> => string(),
%%   <<"SubscriptionProviderStatus">> => string(),
%%   <<"SubscriptionProviderStatusMessage">> => [string()]
%% }
-type registered_subscription_provider() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% subscription() :: #{
%%   <<"InstanceCount">> => float(),
%%   <<"Name">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type subscription() :: #{binary() => any()}.


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
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_service_settings_request() :: #{
%%   <<"AllowUpdate">> => [boolean()],
%%   <<"LinuxSubscriptionsDiscovery">> := string(),
%%   <<"LinuxSubscriptionsDiscoverySettings">> := linux_subscriptions_discovery_settings()
%% }
-type update_service_settings_request() :: #{binary() => any()}.


%% Example:
%% update_service_settings_response() :: #{
%%   <<"HomeRegions">> => list([string()]()),
%%   <<"LinuxSubscriptionsDiscovery">> => string(),
%%   <<"LinuxSubscriptionsDiscoverySettings">> => linux_subscriptions_discovery_settings(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => map()
%% }
-type update_service_settings_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type deregister_subscription_provider_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type get_registered_subscription_provider_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type get_service_settings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_linux_subscription_instances_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_linux_subscriptions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_registered_subscription_providers_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type register_subscription_provider_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type untag_resource_errors() ::
    resource_not_found_exception() | 
    internal_server_exception().

-type update_service_settings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Remove a third-party subscription provider from the Bring Your Own
%% License (BYOL) subscriptions
%% registered to your account.
-spec deregister_subscription_provider(aws_client:aws_client(), deregister_subscription_provider_request()) ->
    {ok, deregister_subscription_provider_response(), tuple()} |
    {error, any()} |
    {error, deregister_subscription_provider_errors(), tuple()}.
deregister_subscription_provider(Client, Input) ->
    deregister_subscription_provider(Client, Input, []).

-spec deregister_subscription_provider(aws_client:aws_client(), deregister_subscription_provider_request(), proplists:proplist()) ->
    {ok, deregister_subscription_provider_response(), tuple()} |
    {error, any()} |
    {error, deregister_subscription_provider_errors(), tuple()}.
deregister_subscription_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/DeregisterSubscriptionProvider"],
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

%% @doc Get details for a Bring Your Own License (BYOL) subscription
%% that's registered to your account.
-spec get_registered_subscription_provider(aws_client:aws_client(), get_registered_subscription_provider_request()) ->
    {ok, get_registered_subscription_provider_response(), tuple()} |
    {error, any()} |
    {error, get_registered_subscription_provider_errors(), tuple()}.
get_registered_subscription_provider(Client, Input) ->
    get_registered_subscription_provider(Client, Input, []).

-spec get_registered_subscription_provider(aws_client:aws_client(), get_registered_subscription_provider_request(), proplists:proplist()) ->
    {ok, get_registered_subscription_provider_response(), tuple()} |
    {error, any()} |
    {error, get_registered_subscription_provider_errors(), tuple()}.
get_registered_subscription_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/GetRegisteredSubscriptionProvider"],
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

%% @doc Lists the Linux subscriptions service settings for your account.
-spec get_service_settings(aws_client:aws_client(), get_service_settings_request()) ->
    {ok, get_service_settings_response(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, Input) ->
    get_service_settings(Client, Input, []).

-spec get_service_settings(aws_client:aws_client(), get_service_settings_request(), proplists:proplist()) ->
    {ok, get_service_settings_response(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/GetServiceSettings"],
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

%% @doc Lists the running Amazon EC2 instances that were discovered with
%% commercial Linux
%% subscriptions.
-spec list_linux_subscription_instances(aws_client:aws_client(), list_linux_subscription_instances_request()) ->
    {ok, list_linux_subscription_instances_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscription_instances_errors(), tuple()}.
list_linux_subscription_instances(Client, Input) ->
    list_linux_subscription_instances(Client, Input, []).

-spec list_linux_subscription_instances(aws_client:aws_client(), list_linux_subscription_instances_request(), proplists:proplist()) ->
    {ok, list_linux_subscription_instances_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscription_instances_errors(), tuple()}.
list_linux_subscription_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/ListLinuxSubscriptionInstances"],
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

%% @doc Lists the Linux subscriptions that have been discovered.
%%
%% If you have linked your
%% organization, the returned results will include data aggregated across
%% your accounts in
%% Organizations.
-spec list_linux_subscriptions(aws_client:aws_client(), list_linux_subscriptions_request()) ->
    {ok, list_linux_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscriptions_errors(), tuple()}.
list_linux_subscriptions(Client, Input) ->
    list_linux_subscriptions(Client, Input, []).

-spec list_linux_subscriptions(aws_client:aws_client(), list_linux_subscriptions_request(), proplists:proplist()) ->
    {ok, list_linux_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscriptions_errors(), tuple()}.
list_linux_subscriptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/ListLinuxSubscriptions"],
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

%% @doc List Bring Your Own License (BYOL) subscription registration
%% resources for your account.
-spec list_registered_subscription_providers(aws_client:aws_client(), list_registered_subscription_providers_request()) ->
    {ok, list_registered_subscription_providers_response(), tuple()} |
    {error, any()} |
    {error, list_registered_subscription_providers_errors(), tuple()}.
list_registered_subscription_providers(Client, Input) ->
    list_registered_subscription_providers(Client, Input, []).

-spec list_registered_subscription_providers(aws_client:aws_client(), list_registered_subscription_providers_request(), proplists:proplist()) ->
    {ok, list_registered_subscription_providers_response(), tuple()} |
    {error, any()} |
    {error, list_registered_subscription_providers_errors(), tuple()}.
list_registered_subscription_providers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/ListRegisteredSubscriptionProviders"],
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

%% @doc List the metadata tags that are assigned to the
%% specified Amazon Web Services resource.
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

%% @doc Register the supported third-party subscription provider for your
%% Bring Your Own License (BYOL) subscription.
-spec register_subscription_provider(aws_client:aws_client(), register_subscription_provider_request()) ->
    {ok, register_subscription_provider_response(), tuple()} |
    {error, any()} |
    {error, register_subscription_provider_errors(), tuple()}.
register_subscription_provider(Client, Input) ->
    register_subscription_provider(Client, Input, []).

-spec register_subscription_provider(aws_client:aws_client(), register_subscription_provider_request(), proplists:proplist()) ->
    {ok, register_subscription_provider_response(), tuple()} |
    {error, any()} |
    {error, register_subscription_provider_errors(), tuple()}.
register_subscription_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/RegisterSubscriptionProvider"],
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

%% @doc Add metadata tags to the specified Amazon Web Services resource.
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
    Method = put,
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

%% @doc Remove one or more metadata tag from the specified Amazon Web
%% Services resource.
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

%% @doc Updates the service settings for Linux subscriptions.
-spec update_service_settings(aws_client:aws_client(), update_service_settings_request()) ->
    {ok, update_service_settings_response(), tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input) ->
    update_service_settings(Client, Input, []).

-spec update_service_settings(aws_client:aws_client(), update_service_settings_request(), proplists:proplist()) ->
    {ok, update_service_settings_response(), tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/UpdateServiceSettings"],
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
    Client1 = Client#{service => <<"license-manager-linux-subscriptions">>},
    Host = build_host(<<"license-manager-linux-subscriptions">>, Client1),
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
