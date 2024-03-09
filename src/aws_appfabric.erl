%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services AppFabric quickly connects software as a service
%% (SaaS) applications across your
%% organization.
%%
%% This allows IT and security teams to easily manage and secure applications
%% using a standard schema, and employees can complete everyday tasks faster
%% using generative
%% artificial intelligence (AI). You can use these APIs to complete AppFabric
%% tasks, such as
%% setting up audit log ingestions or viewing user access. For more
%% information about AppFabric,
%% including the required permissions to use the service, see the Amazon Web
%% Services AppFabric Administration Guide:
%% https://docs.aws.amazon.com/appfabric/latest/adminguide/. For more
%% information about using the Command Line Interface (CLI) to manage your
%% AppFabric resources, see the AppFabric section of the CLI
%% Reference:
%% https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html.
-module(aws_appfabric).

-export([batch_get_user_access_tasks/2,
         batch_get_user_access_tasks/3,
         connect_app_authorization/4,
         connect_app_authorization/5,
         create_app_authorization/3,
         create_app_authorization/4,
         create_app_bundle/2,
         create_app_bundle/3,
         create_ingestion/3,
         create_ingestion/4,
         create_ingestion_destination/4,
         create_ingestion_destination/5,
         delete_app_authorization/4,
         delete_app_authorization/5,
         delete_app_bundle/3,
         delete_app_bundle/4,
         delete_ingestion/4,
         delete_ingestion/5,
         delete_ingestion_destination/5,
         delete_ingestion_destination/6,
         get_app_authorization/3,
         get_app_authorization/5,
         get_app_authorization/6,
         get_app_bundle/2,
         get_app_bundle/4,
         get_app_bundle/5,
         get_ingestion/3,
         get_ingestion/5,
         get_ingestion/6,
         get_ingestion_destination/4,
         get_ingestion_destination/6,
         get_ingestion_destination/7,
         list_app_authorizations/2,
         list_app_authorizations/4,
         list_app_authorizations/5,
         list_app_bundles/1,
         list_app_bundles/3,
         list_app_bundles/4,
         list_ingestion_destinations/3,
         list_ingestion_destinations/5,
         list_ingestion_destinations/6,
         list_ingestions/2,
         list_ingestions/4,
         list_ingestions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_ingestion/4,
         start_ingestion/5,
         start_user_access_tasks/2,
         start_user_access_tasks/3,
         stop_ingestion/4,
         stop_ingestion/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app_authorization/4,
         update_app_authorization/5,
         update_ingestion_destination/5,
         update_ingestion_destination/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Gets user access details in a batch request.
%%
%% This action polls data from the tasks that are kicked off by the
%% `StartUserAccessTasks' action.
batch_get_user_access_tasks(Client, Input) ->
    batch_get_user_access_tasks(Client, Input, []).
batch_get_user_access_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/useraccess/batchget"],
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

%% @doc Establishes a connection between Amazon Web Services AppFabric and an
%% application, which allows AppFabric to
%% call the APIs of the application.
connect_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input) ->
    connect_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input, []).
connect_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), "/connect"],
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

%% @doc Creates an app authorization within an app bundle, which allows
%% AppFabric to connect to an
%% application.
create_app_authorization(Client, AppBundleIdentifier, Input) ->
    create_app_authorization(Client, AppBundleIdentifier, Input, []).
create_app_authorization(Client, AppBundleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations"],
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

%% @doc Creates an app bundle to collect data from an application using
%% AppFabric.
create_app_bundle(Client, Input) ->
    create_app_bundle(Client, Input, []).
create_app_bundle(Client, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles"],
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

%% @doc Creates a data ingestion for an application.
create_ingestion(Client, AppBundleIdentifier, Input) ->
    create_ingestion(Client, AppBundleIdentifier, Input, []).
create_ingestion(Client, AppBundleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions"],
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

%% @doc Creates an ingestion destination, which specifies how an
%% application's ingested data is
%% processed by Amazon Web Services AppFabric and where it's delivered.
create_ingestion_destination(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    create_ingestion_destination(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).
create_ingestion_destination(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations"],
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

%% @doc Deletes an app authorization.
%%
%% You must delete the associated ingestion before you can
%% delete an app authorization.
delete_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input) ->
    delete_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input, []).
delete_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), ""],
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

%% @doc Deletes an app bundle.
%%
%% You must delete all associated app authorizations before you can
%% delete an app bundle.
delete_app_bundle(Client, AppBundleIdentifier, Input) ->
    delete_app_bundle(Client, AppBundleIdentifier, Input, []).
delete_app_bundle(Client, AppBundleIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), ""],
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

%% @doc Deletes an ingestion.
%%
%% You must stop (disable) the ingestion and you must delete all
%% associated ingestion destinations before you can delete an app ingestion.
delete_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    delete_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).
delete_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), ""],
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

%% @doc Deletes an ingestion destination.
%%
%% This deletes the association between an ingestion and it's
%% destination. It doesn't
%% delete previously ingested data or the storage destination, such as the
%% Amazon S3
%% bucket where the data is delivered. If the ingestion destination is
%% deleted while the
%% associated ingestion is enabled, the ingestion will fail and is eventually
%% disabled.
delete_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input) ->
    delete_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input, []).
delete_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations/", aws_util:encode_uri(IngestionDestinationIdentifier), ""],
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

%% @doc Returns information about an app authorization.
get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier)
  when is_map(Client) ->
    get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, #{}, #{}).

get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, QueryMap, HeadersMap, []).

get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an app bundle.
get_app_bundle(Client, AppBundleIdentifier)
  when is_map(Client) ->
    get_app_bundle(Client, AppBundleIdentifier, #{}, #{}).

get_app_bundle(Client, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_bundle(Client, AppBundleIdentifier, QueryMap, HeadersMap, []).

get_app_bundle(Client, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ingestion.
get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier)
  when is_map(Client) ->
    get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, #{}, #{}).

get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, []).

get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ingestion destination.
get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier)
  when is_map(Client) ->
    get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, #{}, #{}).

get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, QueryMap, HeadersMap, []).

get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations/", aws_util:encode_uri(IngestionDestinationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all app authorizations configured for an app
%% bundle.
list_app_authorizations(Client, AppBundleIdentifier)
  when is_map(Client) ->
    list_app_authorizations(Client, AppBundleIdentifier, #{}, #{}).

list_app_authorizations(Client, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_authorizations(Client, AppBundleIdentifier, QueryMap, HeadersMap, []).

list_app_authorizations(Client, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations"],
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

%% @doc Returns a list of app bundles.
list_app_bundles(Client)
  when is_map(Client) ->
    list_app_bundles(Client, #{}, #{}).

list_app_bundles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_bundles(Client, QueryMap, HeadersMap, []).

list_app_bundles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles"],
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

%% @doc Returns a list of all ingestion destinations configured for an
%% ingestion.
list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier)
  when is_map(Client) ->
    list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, #{}, #{}).

list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, []).

list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations"],
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

%% @doc Returns a list of all ingestions configured for an app bundle.
list_ingestions(Client, AppBundleIdentifier)
  when is_map(Client) ->
    list_ingestions(Client, AppBundleIdentifier, #{}, #{}).

list_ingestions(Client, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ingestions(Client, AppBundleIdentifier, QueryMap, HeadersMap, []).

list_ingestions(Client, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions"],
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

%% @doc Returns a list of tags for a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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

%% @doc Starts (enables) an ingestion, which collects data from an
%% application.
start_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    start_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).
start_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/start"],
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

%% @doc Starts the tasks to search user access status for a specific email
%% address.
%%
%% The tasks are stopped when the user access status data is found. The tasks
%% are
%% terminated when the API calls to the application time out.
start_user_access_tasks(Client, Input) ->
    start_user_access_tasks(Client, Input, []).
start_user_access_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/useraccess/start"],
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

%% @doc Stops (disables) an ingestion.
stop_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    stop_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).
stop_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/stop"],
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
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
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

%% @doc Removes a tag or tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
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

%% @doc Updates an app authorization within an app bundle, which allows
%% AppFabric to connect to an
%% application.
%%
%% If the app authorization was in a `connected' state, updating the app
%% authorization will set it back to a `PendingConnect' state.
update_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input) ->
    update_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input, []).
update_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), ""],
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

%% @doc Updates an ingestion destination, which specifies how an
%% application's ingested data is
%% processed by Amazon Web Services AppFabric and where it's delivered.
update_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input) ->
    update_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input, []).
update_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations/", aws_util:encode_uri(IngestionDestinationIdentifier), ""],
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
    Client1 = Client#{service => <<"appfabric">>},
    Host = build_host(<<"appfabric">>, Client1),
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
