%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Security Lake is a fully managed security data lake service.
%%
%% You can use Security Lake to automatically centralize security data from
%% cloud, on-premises, and custom sources into a data lake that's stored
%% in your Amazon Web Services account. Amazon Web Services Organizations is
%% an account management service that lets you consolidate multiple Amazon
%% Web Services accounts into an organization that you create and centrally
%% manage. With Organizations, you can create member accounts and invite
%% existing accounts to join your organization. Security Lake helps you
%% analyze security data for a more complete understanding of your security
%% posture across the entire organization. It can also help you improve the
%% protection of your workloads, applications, and data.
%%
%% The data lake is backed by Amazon Simple Storage Service (Amazon S3)
%% buckets, and you retain ownership over your data.
%%
%% Amazon Security Lake integrates with CloudTrail, a service that provides a
%% record of actions taken by a user, role, or an Amazon Web Services
%% service. In Security Lake, CloudTrail captures API calls for Security Lake
%% as events. The calls captured include calls from the Security Lake console
%% and code calls to the Security Lake API operations. If you create a trail,
%% you can enable continuous delivery of CloudTrail events to an Amazon S3
%% bucket, including events for Security Lake. If you don't configure a
%% trail, you can still view the most recent events in the CloudTrail console
%% in Event history. Using the information collected by CloudTrail you can
%% determine the request that was made to Security Lake, the IP address from
%% which the request was made, who made the request, when it was made, and
%% additional details. To learn more about Security Lake information in
%% CloudTrail, see the Amazon Security Lake User Guide.
%%
%% Security Lake automates the collection of security-related log and event
%% data from integrated Amazon Web Services and third-party services. It also
%% helps you manage the lifecycle of data with customizable retention and
%% replication settings. Security Lake converts ingested data into Apache
%% Parquet format and a standard open-source schema called the Open
%% Cybersecurity Schema Framework (OCSF).
%%
%% Other Amazon Web Services and third-party services can subscribe to the
%% data that's stored in Security Lake for incident response and security
%% data analytics.
-module(aws_securitylake).

-export([create_aws_log_source/2,
         create_aws_log_source/3,
         create_custom_log_source/2,
         create_custom_log_source/3,
         create_data_lake/2,
         create_data_lake/3,
         create_data_lake_exception_subscription/2,
         create_data_lake_exception_subscription/3,
         create_data_lake_organization_configuration/2,
         create_data_lake_organization_configuration/3,
         create_subscriber/2,
         create_subscriber/3,
         create_subscriber_notification/3,
         create_subscriber_notification/4,
         delete_aws_log_source/2,
         delete_aws_log_source/3,
         delete_custom_log_source/3,
         delete_custom_log_source/4,
         delete_data_lake/2,
         delete_data_lake/3,
         delete_data_lake_exception_subscription/2,
         delete_data_lake_exception_subscription/3,
         delete_data_lake_organization_configuration/2,
         delete_data_lake_organization_configuration/3,
         delete_subscriber/3,
         delete_subscriber/4,
         delete_subscriber_notification/3,
         delete_subscriber_notification/4,
         deregister_data_lake_delegated_administrator/2,
         deregister_data_lake_delegated_administrator/3,
         get_data_lake_exception_subscription/1,
         get_data_lake_exception_subscription/3,
         get_data_lake_exception_subscription/4,
         get_data_lake_organization_configuration/1,
         get_data_lake_organization_configuration/3,
         get_data_lake_organization_configuration/4,
         get_data_lake_sources/2,
         get_data_lake_sources/3,
         get_subscriber/2,
         get_subscriber/4,
         get_subscriber/5,
         list_data_lake_exceptions/2,
         list_data_lake_exceptions/3,
         list_data_lakes/1,
         list_data_lakes/3,
         list_data_lakes/4,
         list_log_sources/2,
         list_log_sources/3,
         list_subscribers/1,
         list_subscribers/3,
         list_subscribers/4,
         register_data_lake_delegated_administrator/2,
         register_data_lake_delegated_administrator/3,
         update_data_lake/2,
         update_data_lake/3,
         update_data_lake_exception_subscription/2,
         update_data_lake_exception_subscription/3,
         update_subscriber/3,
         update_subscriber/4,
         update_subscriber_notification/3,
         update_subscriber_notification/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a natively supported Amazon Web Service as an Amazon Security
%% Lake source.
%%
%% Enables source types for member accounts in required Amazon Web Services
%% Regions, based on the parameters you specify. You can choose any source
%% type in any Region for either accounts that are part of a trusted
%% organization or standalone accounts. Once you add an Amazon Web Service as
%% a source, Security Lake starts collecting logs and events from it,
%%
%% You can use this API only to enable natively supported Amazon Web Services
%% as a source. Use `CreateCustomLogSource' to enable data collection
%% from a custom source.
create_aws_log_source(Client, Input) ->
    create_aws_log_source(Client, Input, []).
create_aws_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/aws"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a third-party custom source in Amazon Security Lake, from the
%% Amazon Web Services Region where you want to create a custom source.
%%
%% Security Lake can collect logs and events from third-party custom sources.
%% After creating the appropriate IAM role to invoke Glue crawler, use this
%% API to add a custom source name in Security Lake. This operation creates a
%% partition in the Amazon S3 bucket for Security Lake as the target location
%% for log files from the custom source. In addition, this operation also
%% creates an associated Glue table and an Glue crawler.
create_custom_log_source(Client, Input) ->
    create_custom_log_source(Client, Input, []).
create_custom_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/custom"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initializes an Amazon Security Lake instance with the provided (or
%% default) configuration.
%%
%% You can enable Security Lake in Amazon Web Services Regions with
%% customized settings before enabling log collection in Regions. By default,
%% the `CreateDataLake' Security Lake in all Regions. To specify
%% particular Regions, configure these Regions using the `configurations'
%% parameter. If you have already enabled Security Lake in a Region when you
%% call this command, the command will update the Region if you provide new
%% configuration parameters. If you have not already enabled Security Lake in
%% the Region when you call this API, it will set up the data lake in the
%% Region with the specified configurations.
%%
%% When you enable Security Lake, it starts ingesting security data after the
%% `CreateAwsLogSource' call. This includes ingesting security data from
%% sources, storing data, and making data accessible to subscribers. Security
%% Lake also enables all the existing settings and resources that it stores
%% or maintains for your Amazon Web Services account in the current Region,
%% including security log and event data. For more information, see the
%% Amazon Security Lake User Guide.
create_data_lake(Client, Input) ->
    create_data_lake(Client, Input, []).
create_data_lake(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the specified notification subscription in Amazon Security
%% Lake for the organization you specify.
create_data_lake_exception_subscription(Client, Input) ->
    create_data_lake_exception_subscription(Client, Input, []).
create_data_lake_exception_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Automatically enables Amazon Security Lake for new member accounts in
%% your organization.
%%
%% Security Lake is not automatically enabled for any existing member
%% accounts in your organization.
create_data_lake_organization_configuration(Client, Input) ->
    create_data_lake_organization_configuration(Client, Input, []).
create_data_lake_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/organization/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a subscription permission for accounts that are already
%% enabled in Amazon Security Lake.
%%
%% You can create a subscriber with access to data in the current Amazon Web
%% Services Region.
create_subscriber(Client, Input) ->
    create_subscriber(Client, Input, []).
create_subscriber(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/subscribers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Notifies the subscriber when new data is written to the data lake for
%% the sources that the subscriber consumes in Security Lake.
%%
%% You can create only one subscriber notification per subscriber.
create_subscriber_notification(Client, SubscriberId, Input) ->
    create_subscriber_notification(Client, SubscriberId, Input, []).
create_subscriber_notification(Client, SubscriberId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), "/notification"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a natively supported Amazon Web Service as an Amazon Security
%% Lake source.
%%
%% You can remove a source for one or more Regions. When you remove the
%% source, Security Lake stops collecting data from that source in the
%% specified Regions and accounts, and subscribers can no longer consume new
%% data from the source. However, subscribers can still consume data that
%% Security Lake collected from the source before removal.
%%
%% You can choose any source type in any Amazon Web Services Region for
%% either accounts that are part of a trusted organization or standalone
%% accounts.
delete_aws_log_source(Client, Input) ->
    delete_aws_log_source(Client, Input, []).
delete_aws_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/aws/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a custom log source from Amazon Security Lake, to stop
%% sending data from the custom source to Security Lake.
delete_custom_log_source(Client, SourceName, Input) ->
    delete_custom_log_source(Client, SourceName, Input, []).
delete_custom_log_source(Client, SourceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/logsources/custom/", aws_util:encode_uri(SourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"sourceVersion">>, <<"sourceVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you disable Amazon Security Lake from your account, Security
%% Lake is disabled in all Amazon Web Services Regions and it stops
%% collecting data from your sources.
%%
%% Also, this API automatically takes steps to remove the account from
%% Security Lake. However, Security Lake retains all of your existing
%% settings and the resources that it created in your Amazon Web Services
%% account in the current Amazon Web Services Region.
%%
%% The `DeleteDataLake' operation does not delete the data that is stored
%% in your Amazon S3 bucket, which is owned by your Amazon Web Services
%% account. For more information, see the Amazon Security Lake User Guide.
delete_data_lake(Client, Input) ->
    delete_data_lake(Client, Input, []).
delete_data_lake(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified notification subscription in Amazon Security
%% Lake for the organization you specify.
delete_data_lake_exception_subscription(Client, Input) ->
    delete_data_lake_exception_subscription(Client, Input, []).
delete_data_lake_exception_subscription(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes automatic the enablement of configuration settings for new
%% member accounts (but retains the settings for the delegated administrator)
%% from Amazon Security Lake.
%%
%% You must run this API using the credentials of the delegated
%% administrator. When you run this API, new member accounts that are added
%% after the organization enables Security Lake won't contribute to the
%% data lake.
delete_data_lake_organization_configuration(Client, Input) ->
    delete_data_lake_organization_configuration(Client, Input, []).
delete_data_lake_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/organization/configuration/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the subscription permission and all notification settings for
%% accounts that are already enabled in Amazon Security Lake.
%%
%% When you run `DeleteSubscriber', the subscriber will no longer consume
%% data from Security Lake and the subscriber is removed. This operation
%% deletes the subscriber and removes access to data in the current Amazon
%% Web Services Region.
delete_subscriber(Client, SubscriberId, Input) ->
    delete_subscriber(Client, SubscriberId, Input, []).
delete_subscriber(Client, SubscriberId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified notification subscription in Amazon Security
%% Lake for the organization you specify.
delete_subscriber_notification(Client, SubscriberId, Input) ->
    delete_subscriber_notification(Client, SubscriberId, Input, []).
delete_subscriber_notification(Client, SubscriberId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), "/notification"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon Security Lake delegated administrator account for
%% the organization.
%%
%% This API can only be called by the organization management account. The
%% organization management account cannot be the delegated administrator
%% account.
deregister_data_lake_delegated_administrator(Client, Input) ->
    deregister_data_lake_delegated_administrator(Client, Input, []).
deregister_data_lake_delegated_administrator(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/delegate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the details of exception notifications for the account in
%% Amazon Security Lake.
get_data_lake_exception_subscription(Client)
  when is_map(Client) ->
    get_data_lake_exception_subscription(Client, #{}, #{}).

get_data_lake_exception_subscription(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_lake_exception_subscription(Client, QueryMap, HeadersMap, []).

get_data_lake_exception_subscription(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration that will be automatically set up for
%% accounts added to the organization after the organization has onboarded to
%% Amazon Security Lake.
%%
%% This API does not take input parameters.
get_data_lake_organization_configuration(Client)
  when is_map(Client) ->
    get_data_lake_organization_configuration(Client, #{}, #{}).

get_data_lake_organization_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_lake_organization_configuration(Client, QueryMap, HeadersMap, []).

get_data_lake_organization_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/organization/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a snapshot of the current Region, including whether Amazon
%% Security Lake is enabled for those accounts and which sources Security
%% Lake is collecting data from.
get_data_lake_sources(Client, Input) ->
    get_data_lake_sources(Client, Input, []).
get_data_lake_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/sources"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the subscription information for the specified subscription
%% ID.
%%
%% You can get information about a specific subscriber.
get_subscriber(Client, SubscriberId)
  when is_map(Client) ->
    get_subscriber(Client, SubscriberId, #{}, #{}).

get_subscriber(Client, SubscriberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscriber(Client, SubscriberId, QueryMap, HeadersMap, []).

get_subscriber(Client, SubscriberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Security Lake exceptions that you can use to find
%% the source of problems and fix them.
list_data_lake_exceptions(Client, Input) ->
    list_data_lake_exceptions(Client, Input, []).
list_data_lake_exceptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/exceptions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the Amazon Security Lake configuration object for the
%% specified Amazon Web Services account ID.
%%
%% You can use the `ListDataLakes' API to know whether Security Lake is
%% enabled for any region.
list_data_lakes(Client)
  when is_map(Client) ->
    list_data_lakes(Client, #{}, #{}).

list_data_lakes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_lakes(Client, QueryMap, HeadersMap, []).

list_data_lakes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalakes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"regions">>, maps:get(<<"regions">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the log sources in the current Amazon Web Services Region.
list_log_sources(Client, Input) ->
    list_log_sources(Client, Input, []).
list_log_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List all subscribers for the specific Amazon Security Lake account
%% ID.
%%
%% You can retrieve a list of subscriptions associated with a specific
%% organization or Amazon Web Services account.
list_subscribers(Client)
  when is_map(Client) ->
    list_subscribers(Client, #{}, #{}).

list_subscribers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscribers(Client, QueryMap, HeadersMap, []).

list_subscribers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/subscribers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Designates the Amazon Security Lake delegated administrator account
%% for the organization.
%%
%% This API can only be called by the organization management account. The
%% organization management account cannot be the delegated administrator
%% account.
register_data_lake_delegated_administrator(Client, Input) ->
    register_data_lake_delegated_administrator(Client, Input, []).
register_data_lake_delegated_administrator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/delegate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Specifies where to store your security data and for how long.
%%
%% You can add a rollup Region to consolidate data from multiple Amazon Web
%% Services Regions.
update_data_lake(Client, Input) ->
    update_data_lake(Client, Input, []).
update_data_lake(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified notification subscription in Amazon Security
%% Lake for the organization you specify.
update_data_lake_exception_subscription(Client, Input) ->
    update_data_lake_exception_subscription(Client, Input, []).
update_data_lake_exception_subscription(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing subscription for the given Amazon Security Lake
%% account ID.
%%
%% You can update a subscriber by changing the sources that the subscriber
%% consumes data from.
update_subscriber(Client, SubscriberId, Input) ->
    update_subscriber(Client, SubscriberId, Input, []).
update_subscriber(Client, SubscriberId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing notification method for the subscription (SQS or
%% HTTPs endpoint) or switches the notification subscription endpoint for a
%% subscriber.
update_subscriber_notification(Client, SubscriberId, Input) ->
    update_subscriber_notification(Client, SubscriberId, Input, []).
update_subscriber_notification(Client, SubscriberId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), "/notification"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"securitylake">>},
    Host = build_host(<<"securitylake">>, Client1),
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
