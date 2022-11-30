%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Security Lake is in preview release.
%%
%% Your use of the Amazon Security Lake preview is subject to Section 2 of
%% the Amazon Web Services Service Terms("Betas and Previews").
%%
%% Amazon Security Lake is a fully-managed security data lake service. You
%% can use Security Lake to automatically centralize security data from
%% cloud, on-premises, and custom sources into a data lake that's stored in
%% your account. Security Lake helps you analyze security data, so you can
%% get a more complete understanding of your security posture across the
%% entire organization and improve the protection of your workloads,
%% applications, and data.
%%
%% The data lake is backed by Amazon Simple Storage Service (Amazon S3)
%% buckets, and you retain ownership over your data.
%%
%% Security Lake automates the collection of security-related log and event
%% data from integrated Amazon Web Services. and third-party services and
%% manages the lifecycle of data with customizable retention and replication
%% settings. Security Lake also converts ingested data into Apache Parquet
%% format and a standard open-source schema called the Open Cybersecurity
%% Schema Framework (OCSF).
%%
%% Other Amazon Web Services and third-party services can subscribe to the
%% data that's stored in Security Lake for incident response and security
%% data analytics.
-module(aws_securitylake).

-export([create_aws_log_source/2,
         create_aws_log_source/3,
         create_custom_log_source/2,
         create_custom_log_source/3,
         create_datalake/2,
         create_datalake/3,
         create_datalake_auto_enable/2,
         create_datalake_auto_enable/3,
         create_datalake_delegated_admin/2,
         create_datalake_delegated_admin/3,
         create_datalake_exceptions_subscription/2,
         create_datalake_exceptions_subscription/3,
         create_subscriber/2,
         create_subscriber/3,
         create_subscription_notification_configuration/3,
         create_subscription_notification_configuration/4,
         delete_aws_log_source/2,
         delete_aws_log_source/3,
         delete_custom_log_source/2,
         delete_custom_log_source/3,
         delete_datalake/2,
         delete_datalake/3,
         delete_datalake_auto_enable/2,
         delete_datalake_auto_enable/3,
         delete_datalake_delegated_admin/3,
         delete_datalake_delegated_admin/4,
         delete_datalake_exceptions_subscription/2,
         delete_datalake_exceptions_subscription/3,
         delete_subscriber/2,
         delete_subscriber/3,
         delete_subscription_notification_configuration/3,
         delete_subscription_notification_configuration/4,
         get_datalake/1,
         get_datalake/3,
         get_datalake/4,
         get_datalake_auto_enable/1,
         get_datalake_auto_enable/3,
         get_datalake_auto_enable/4,
         get_datalake_exceptions_expiry/1,
         get_datalake_exceptions_expiry/3,
         get_datalake_exceptions_expiry/4,
         get_datalake_exceptions_subscription/1,
         get_datalake_exceptions_subscription/3,
         get_datalake_exceptions_subscription/4,
         get_datalake_status/2,
         get_datalake_status/3,
         get_subscriber/2,
         get_subscriber/4,
         get_subscriber/5,
         list_datalake_exceptions/2,
         list_datalake_exceptions/3,
         list_log_sources/2,
         list_log_sources/3,
         list_subscribers/1,
         list_subscribers/3,
         list_subscribers/4,
         update_datalake/2,
         update_datalake/3,
         update_datalake_exceptions_expiry/2,
         update_datalake_exceptions_expiry/3,
         update_datalake_exceptions_subscription/2,
         update_datalake_exceptions_subscription/3,
         update_subscriber/3,
         update_subscriber/4,
         update_subscription_notification_configuration/3,
         update_subscription_notification_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a natively-supported Amazon Web Services service as a Security
%% Lake source.
%%
%% Enables source types for member accounts in required Regions, based on
%% specified parameters. You can choose any source type in any Region for
%% accounts that are either part of a trusted organization or standalone
%% accounts. At least one of the three dimensions is a mandatory input to
%% this API. However, any combination of the three dimensions can be supplied
%% to this API.
%%
%% By default, dimension refers to the entire set. When you don't provide a
%% dimension, Security Lake assumes that the missing dimension refers to the
%% entire set. This is overridden when you supply any one of the inputs. For
%% instance, when members is not specified, the API disables all Security
%% Lake member accounts for sources. Similarly, when Regions are not
%% specified, Security Lake is disabled for all the Regions where Security
%% Lake is available as a service.
%%
%% You can use this API only to enable a natively-supported Amazon Web
%% Services services as a source. Use `CreateCustomLogSource' to enable data
%% collection from a custom source.
create_aws_log_source(Client, Input) ->
    create_aws_log_source(Client, Input, []).
create_aws_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/logsources/aws"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a third-party custom source in Amazon Security Lake, from the
%% Region where you want to create a custom source.
%%
%% Security Lake can collect logs and events from third-party custom sources.
%% After creating the appropriate API roles, use this API to add a custom
%% source name in Security Lake. This operation creates a partition in the
%% Security Lake S3 bucket as the target location for log files from the
%% custom source, an associated Glue table, and an Glue crawler.
create_custom_log_source(Client, Input) ->
    create_custom_log_source(Client, Input, []).
create_custom_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/logsources/custom"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% You can enable Security Lake in Regions with customized settings in
%% advance before enabling log collection in Regions. You can either use the
%% `enableAll' parameter to specify all Regions or you can specify the
%% Regions you want to enable Security Lake using the `Regions' parameter and
%% configure these Regions using the `configurations' parameter. When the
%% `CreateDataLake' API is called multiple times, if that Region is already
%% enabled, it will update the Region if configuration for that Region is
%% provided. If that Region is a new Region, it will be set up with the
%% customized configurations if it is specified.
%%
%% When you enable Security Lake, it starts ingesting security data after the
%% `CreateAwsLogSource' call. This includes ingesting security data from
%% sources, storing data, and making data accessible to subscribers. Security
%% Lake also enables all the existing settings and resources that it stores
%% or maintains for your account in the current Region, including security
%% log and event data. For more information, see the Amazon Security Lake
%% User Guide.
create_datalake(Client, Input) ->
    create_datalake(Client, Input, []).
create_datalake(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Automatically enable Security Lake in the specified Regions to begin
%% ingesting security data.
%%
%% When you choose to enable organization accounts automatically, then
%% Security Lake begins to enable new accounts as member accounts as they are
%% added to the organization. Security Lake does not enable existing
%% organization accounts that are not yet enabled.
create_datalake_auto_enable(Client, Input) ->
    create_datalake_auto_enable(Client, Input, []).
create_datalake_auto_enable(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/autoenable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Designates the Security Lake administrator account for the
%% organization.
%%
%% This API can only be called by the organization management account. The
%% organization management account cannot be the delegated administrator
%% account.
create_datalake_delegated_admin(Client, Input) ->
    create_datalake_delegated_admin(Client, Input, []).
create_datalake_delegated_admin(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/delegate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the specified notification subscription in Security Lake.
%%
%% Creates the specified subscription notifications in the specified
%% organization.
create_datalake_exceptions_subscription(Client, Input) ->
    create_datalake_exceptions_subscription(Client, Input, []).
create_datalake_exceptions_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a subscription permission for accounts that are already
%% enabled in Security Lake.
create_subscriber(Client, Input) ->
    create_subscriber(Client, Input, []).
create_subscriber(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/subscribers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the specified notification subscription in Security Lake.
%%
%% Creates the specified subscription notifications from the specified
%% organization.
create_subscription_notification_configuration(Client, SubscriptionId, Input) ->
    create_subscription_notification_configuration(Client, SubscriptionId, Input, []).
create_subscription_notification_configuration(Client, SubscriptionId, Input0, Options0) ->
    Method = post,
    Path = ["/subscription-notifications/", aws_util:encode_uri(SubscriptionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a natively-supported Amazon Web Services service as a Amazon
%% Security Lake source.
%%
%% When you remove the source, Security Lake stops collecting data from that
%% source, and subscribers can no longer consume new data from the source.
%% Subscribers can still consume data that Amazon Security Lake collected
%% from the source before disablement.
%%
%% You can choose any source type in any Region for accounts that are either
%% part of a trusted organization or standalone accounts. At least one of the
%% three dimensions is a mandatory input to this API. However, any
%% combination of the three dimensions can be supplied to this API.
%%
%% By default, dimension refers to the entire set. This is overridden when
%% you supply any one of the inputs. For instance, when members is not
%% specified, the API disables all Security Lake member accounts for sources.
%% Similarly, when Regions are not specified, Security Lake is disabled for
%% all the Regions where Security Lake is available as a service.
%%
%% You can use this API to remove a natively-supported Amazon Web Services
%% service as a source. Use `DeregisterCustomData' to remove a custom source.
%%
%% When you don't provide a dimension, Security Lake assumes that the missing
%% dimension refers to the entire set. For example, if you don't provide
%% specific accounts, the API applies to the entire set of accounts in your
%% organization.
delete_aws_log_source(Client, Input) ->
    delete_aws_log_source(Client, Input, []).
delete_aws_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/logsources/aws/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a custom log source from Security Lake.
delete_custom_log_source(Client, Input) ->
    delete_custom_log_source(Client, Input, []).
delete_custom_log_source(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/logsources/custom"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"customSourceName">>, <<"customSourceName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you delete Amazon Security Lake from your account, Security Lake
%% is disabled in all Regions.
%%
%% Also, this API automatically performs the off-boarding steps to off-board
%% the account from Security Lake . This includes ingesting security data
%% from sources, storing data, and making data accessible to subscribers.
%% Security Lake also deletes all the existing settings and resources that it
%% stores or maintains for your account in the current Region, including
%% security log and event data. `DeleteDatalake' does not delete the S3
%% bucket which is owned by the Amazon Web Services account. For more
%% information, see the Amazon Security Lake User Guide.
delete_datalake(Client, Input) ->
    delete_datalake(Client, Input, []).
delete_datalake(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Automatically delete Security Lake in the specified Regions to stop
%% ingesting security data.
%%
%% When you delete Amazon Security Lake from your account, Security Lake is
%% disabled in all Regions. Also, this API automatically performs the
%% off-boarding steps to off-board the account from Security Lake . This
%% includes ingesting security data from sources, storing data, and making
%% data accessible to subscribers. Security Lake also deletes all the
%% existing settings and resources that it stores or maintains for your
%% account in the current Region, including security log and event data. For
%% more information, see the Amazon Security Lake User Guide.
delete_datalake_auto_enable(Client, Input) ->
    delete_datalake_auto_enable(Client, Input, []).
delete_datalake_auto_enable(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/autoenable/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Security Lake administrator account for the organization.
%%
%% This API can only be called by the organization management account. The
%% organization management account cannot be the delegated administrator
%% account.
delete_datalake_delegated_admin(Client, Account, Input) ->
    delete_datalake_delegated_admin(Client, Account, Input, []).
delete_datalake_delegated_admin(Client, Account, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/delegate/", aws_util:encode_uri(Account), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified notification subscription in Security Lake.
%%
%% Deletes the specified subscription notifications in the specified
%% organization.
delete_datalake_exceptions_subscription(Client, Input) ->
    delete_datalake_exceptions_subscription(Client, Input, []).
delete_datalake_exceptions_subscription(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified subscription permissions to Security Lake.
%%
%% Deletes the specified subscription permissions from the specified
%% organization.
delete_subscriber(Client, Input) ->
    delete_subscriber(Client, Input, []).
delete_subscriber(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/subscribers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified notification subscription in Security Lake.
%%
%% Deletes the specified subscription notifications from the specified
%% organization.
delete_subscription_notification_configuration(Client, SubscriptionId, Input) ->
    delete_subscription_notification_configuration(Client, SubscriptionId, Input, []).
delete_subscription_notification_configuration(Client, SubscriptionId, Input0, Options0) ->
    Method = delete,
    Path = ["/subscription-notifications/", aws_util:encode_uri(SubscriptionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieve the Security Lake configuration object for the specified
%% account ID.
%%
%% This API does not take input parameters.
get_datalake(Client)
  when is_map(Client) ->
    get_datalake(Client, #{}, #{}).

get_datalake(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_datalake(Client, QueryMap, HeadersMap, []).

get_datalake(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration that will be automatically set up for
%% accounts added to the organization after the organization has on boarded
%% to Amazon Security Lake.
%%
%% This API does not take input parameters.
get_datalake_auto_enable(Client)
  when is_map(Client) ->
    get_datalake_auto_enable(Client, #{}, #{}).

get_datalake_auto_enable(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_datalake_auto_enable(Client, QueryMap, HeadersMap, []).

get_datalake_auto_enable(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/autoenable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the expiration period and time-to-live (TTL) for which the
%% exception message will remain.
%%
%% Exceptions are stored by default, for a 2 week period of time from when a
%% record was created in Security Lake. This API does not take input
%% parameters. This API does not take input parameters.
get_datalake_exceptions_expiry(Client)
  when is_map(Client) ->
    get_datalake_exceptions_expiry(Client, #{}, #{}).

get_datalake_exceptions_expiry(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_datalake_exceptions_expiry(Client, QueryMap, HeadersMap, []).

get_datalake_exceptions_expiry(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/exceptions/expiry"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of exception notifications for the account in
%% Amazon Security Lake.
get_datalake_exceptions_subscription(Client)
  when is_map(Client) ->
    get_datalake_exceptions_subscription(Client, #{}, #{}).

get_datalake_exceptions_subscription(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_datalake_exceptions_subscription(Client, QueryMap, HeadersMap, []).

get_datalake_exceptions_subscription(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the Security Lake configuration object for the specified
%% account ID.
%%
%% This API does not take input parameters.
get_datalake_status(Client, Input) ->
    get_datalake_status(Client, Input, []).
get_datalake_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/status"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves subscription information for the specified subscription ID.
get_subscriber(Client, Id)
  when is_map(Client) ->
    get_subscriber(Client, Id, #{}, #{}).

get_subscriber(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscriber(Client, Id, QueryMap, HeadersMap, []).

get_subscriber(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/subscribers/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the Amazon Security Lake exceptions that you can use to find the
%% source of problems and fix them.
list_datalake_exceptions(Client, Input) ->
    list_datalake_exceptions(Client, Input, []).
list_datalake_exceptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/exceptions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the log sources in the current region.
list_log_sources(Client, Input) ->
    list_log_sources(Client, Input, []).
list_log_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/logsources/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List all subscribers for the specific Security Lake account ID.
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

%% @doc Amazon Security Lake allows you to specify where to store your
%% security data and for how long.
%%
%% You can specify a rollup Region to consolidate data from multiple regions.
%%
%% You can update the properties of a Region or source. Input can either be
%% directly specified to the API.
update_datalake(Client, Input) ->
    update_datalake(Client, Input, []).
update_datalake(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the expiration period for the exception message to your
%% preferred time, and control the time-to-live (TTL) for the exception
%% message to remain.
%%
%% Exceptions are stored by default, for a 2 week period of time from when a
%% record was created in Security Lake.
update_datalake_exceptions_expiry(Client, Input) ->
    update_datalake_exceptions_expiry(Client, Input, []).
update_datalake_exceptions_expiry(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake/exceptions/expiry"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the subscription notification for exception notification.
update_datalake_exceptions_subscription(Client, Input) ->
    update_datalake_exceptions_subscription(Client, Input, []).
update_datalake_exceptions_subscription(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the subscription permission for the given Security Lake
%% account ID.
update_subscriber(Client, Id, Input) ->
    update_subscriber(Client, Id, Input, []).
update_subscriber(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/v1/subscribers/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new subscription notification or add the existing
%% subscription notification setting for the specified subscription ID.
update_subscription_notification_configuration(Client, SubscriptionId, Input) ->
    update_subscription_notification_configuration(Client, SubscriptionId, Input, []).
update_subscription_notification_configuration(Client, SubscriptionId, Input0, Options0) ->
    Method = put,
    Path = ["/subscription-notifications/", aws_util:encode_uri(SubscriptionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
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
