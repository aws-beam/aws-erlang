%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An example service, deployed with the Octane Service creator,
%% which will echo the string
-module(aws_iot_roborunner).

-export([create_destination/2,
         create_destination/3,
         create_site/2,
         create_site/3,
         create_worker/2,
         create_worker/3,
         create_worker_fleet/2,
         create_worker_fleet/3,
         delete_destination/2,
         delete_destination/3,
         delete_site/2,
         delete_site/3,
         delete_worker/2,
         delete_worker/3,
         delete_worker_fleet/2,
         delete_worker_fleet/3,
         get_destination/2,
         get_destination/4,
         get_destination/5,
         get_site/2,
         get_site/4,
         get_site/5,
         get_worker/2,
         get_worker/4,
         get_worker/5,
         get_worker_fleet/2,
         get_worker_fleet/4,
         get_worker_fleet/5,
         list_destinations/2,
         list_destinations/4,
         list_destinations/5,
         list_sites/1,
         list_sites/3,
         list_sites/4,
         list_worker_fleets/2,
         list_worker_fleets/4,
         list_worker_fleets/5,
         list_workers/2,
         list_workers/4,
         list_workers/5,
         update_destination/2,
         update_destination/3,
         update_site/2,
         update_site/3,
         update_worker/2,
         update_worker/3,
         update_worker_fleet/2,
         update_worker_fleet/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_destinations_response() :: #{
%%   <<"destinations">> => list(destination()()),
%%   <<"nextToken">> => string()
%% }
-type list_destinations_response() :: #{binary() => any()}.

%% Example:
%% create_destination_response() :: #{
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"id">> := string(),
%%   <<"state">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type create_destination_response() :: #{binary() => any()}.

%% Example:
%% create_destination_request() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"site">> := string(),
%%   <<"state">> => string()
%% }
-type create_destination_request() :: #{binary() => any()}.

%% Example:
%% get_destination_response() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"site">> := string(),
%%   <<"state">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type get_destination_response() :: #{binary() => any()}.
%% Example:
%% delete_worker_fleet_response() :: #{}
-type delete_worker_fleet_response() :: #{}.

%% Example:
%% get_worker_request() :: #{
%%   <<"id">> := string()
%% }
-type get_worker_request() :: #{binary() => any()}.

%% Example:
%% update_worker_request() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"additionalTransientProperties">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> => string(),
%%   <<"orientation">> => list(),
%%   <<"position">> => list(),
%%   <<"vendorProperties">> => vendor_properties()
%% }
-type update_worker_request() :: #{binary() => any()}.
%% Example:
%% delete_site_response() :: #{}
-type delete_site_response() :: #{}.

%% Example:
%% list_workers_request() :: #{
%%   <<"fleet">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"site">> := string()
%% }
-type list_workers_request() :: #{binary() => any()}.

%% Example:
%% list_worker_fleets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"site">> := string()
%% }
-type list_worker_fleets_request() :: #{binary() => any()}.

%% Example:
%% list_worker_fleets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workerFleets">> => list(worker_fleet()())
%% }
-type list_worker_fleets_response() :: #{binary() => any()}.

%% Example:
%% create_site_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"countryCode">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string()
%% }
-type create_site_request() :: #{binary() => any()}.

%% Example:
%% delete_worker_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_worker_request() :: #{binary() => any()}.

%% Example:
%% update_site_response() :: #{
%%   <<"arn">> := string(),
%%   <<"countryCode">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type update_site_response() :: #{binary() => any()}.

%% Example:
%% create_worker_response() :: #{
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"id">> := string(),
%%   <<"site">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type create_worker_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.
%% Example:
%% delete_worker_response() :: #{}
-type delete_worker_response() :: #{}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_worker_fleet_response() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"site">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type get_worker_fleet_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.
%% Example:
%% delete_destination_response() :: #{}
-type delete_destination_response() :: #{}.

%% Example:
%% cartesian_coordinates() :: #{
%%   <<"x">> => [float()],
%%   <<"y">> => [float()],
%%   <<"z">> => [float()]
%% }
-type cartesian_coordinates() :: #{binary() => any()}.

%% Example:
%% create_worker_fleet_response() :: #{
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"id">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type create_worker_fleet_response() :: #{binary() => any()}.

%% Example:
%% delete_site_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_site_request() :: #{binary() => any()}.

%% Example:
%% site() :: #{
%%   <<"arn">> => string(),
%%   <<"countryCode">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type site() :: #{binary() => any()}.

%% Example:
%% vendor_properties() :: #{
%%   <<"vendorAdditionalFixedProperties">> => string(),
%%   <<"vendorAdditionalTransientProperties">> => string(),
%%   <<"vendorWorkerId">> => string(),
%%   <<"vendorWorkerIpAddress">> => string()
%% }
-type vendor_properties() :: #{binary() => any()}.

%% Example:
%% list_destinations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"site">> := string(),
%%   <<"state">> => string()
%% }
-type list_destinations_request() :: #{binary() => any()}.

%% Example:
%% get_site_request() :: #{
%%   <<"id">> := string()
%% }
-type get_site_request() :: #{binary() => any()}.

%% Example:
%% update_worker_fleet_response() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"arn">> := string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type update_worker_fleet_response() :: #{binary() => any()}.

%% Example:
%% delete_destination_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_destination_request() :: #{binary() => any()}.

%% Example:
%% get_site_response() :: #{
%%   <<"arn">> := string(),
%%   <<"countryCode">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type get_site_response() :: #{binary() => any()}.

%% Example:
%% list_sites_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sites">> => list(site()())
%% }
-type list_sites_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% update_destination_request() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> => string(),
%%   <<"state">> => string()
%% }
-type update_destination_request() :: #{binary() => any()}.

%% Example:
%% get_worker_response() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"additionalTransientProperties">> => string(),
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"fleet">> := string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"orientation">> => list(),
%%   <<"position">> => list(),
%%   <<"site">> := string(),
%%   <<"updatedAt">> := non_neg_integer(),
%%   <<"vendorProperties">> => vendor_properties()
%% }
-type get_worker_response() :: #{binary() => any()}.

%% Example:
%% update_site_request() :: #{
%%   <<"countryCode">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> => string()
%% }
-type update_site_request() :: #{binary() => any()}.

%% Example:
%% get_worker_fleet_request() :: #{
%%   <<"id">> := string()
%% }
-type get_worker_fleet_request() :: #{binary() => any()}.

%% Example:
%% list_workers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workers">> => list(worker()())
%% }
-type list_workers_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% create_worker_fleet_request() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"site">> := string()
%% }
-type create_worker_fleet_request() :: #{binary() => any()}.

%% Example:
%% get_destination_request() :: #{
%%   <<"id">> := string()
%% }
-type get_destination_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% destination() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"site">> => string(),
%%   <<"state">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type destination() :: #{binary() => any()}.

%% Example:
%% update_destination_response() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"arn">> := string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"state">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type update_destination_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% worker_fleet() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"site">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type worker_fleet() :: #{binary() => any()}.

%% Example:
%% worker() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"additionalTransientProperties">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fleet">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"orientation">> => list(),
%%   <<"position">> => list(),
%%   <<"site">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"vendorProperties">> => vendor_properties()
%% }
-type worker() :: #{binary() => any()}.

%% Example:
%% update_worker_response() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"additionalTransientProperties">> => string(),
%%   <<"arn">> := string(),
%%   <<"fleet">> := string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"orientation">> => list(),
%%   <<"position">> => list(),
%%   <<"updatedAt">> := non_neg_integer(),
%%   <<"vendorProperties">> => vendor_properties()
%% }
-type update_worker_response() :: #{binary() => any()}.

%% Example:
%% update_worker_fleet_request() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> => string()
%% }
-type update_worker_fleet_request() :: #{binary() => any()}.

%% Example:
%% create_worker_request() :: #{
%%   <<"additionalFixedProperties">> => string(),
%%   <<"additionalTransientProperties">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"fleet">> := string(),
%%   <<"name">> := string(),
%%   <<"orientation">> => list(),
%%   <<"position">> => list(),
%%   <<"vendorProperties">> => vendor_properties()
%% }
-type create_worker_request() :: #{binary() => any()}.

%% Example:
%% create_site_response() :: #{
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"id">> := string(),
%%   <<"updatedAt">> := non_neg_integer()
%% }
-type create_site_response() :: #{binary() => any()}.

%% Example:
%% delete_worker_fleet_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_worker_fleet_request() :: #{binary() => any()}.

%% Example:
%% list_sites_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sites_request() :: #{binary() => any()}.

%%====================================================================
%% API
%%====================================================================

%% @doc Grants permission to create a destination
-spec create_destination(map(), create_destination_request()) ->
    {ok, create_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_destination(Client, Input) ->
    create_destination(Client, Input, []).

-spec create_destination(map(), create_destination_request(), proplists:proplist()) ->
    {ok, create_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createDestination"],
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

%% @doc Grants permission to create a site
-spec create_site(map(), create_site_request()) ->
    {ok, create_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_site(Client, Input) ->
    create_site(Client, Input, []).

-spec create_site(map(), create_site_request(), proplists:proplist()) ->
    {ok, create_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSite"],
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

%% @doc Grants permission to create a worker
-spec create_worker(map(), create_worker_request()) ->
    {ok, create_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_worker(Client, Input) ->
    create_worker(Client, Input, []).

-spec create_worker(map(), create_worker_request(), proplists:proplist()) ->
    {ok, create_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_worker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorker"],
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

%% @doc Grants permission to create a worker fleet
-spec create_worker_fleet(map(), create_worker_fleet_request()) ->
    {ok, create_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_worker_fleet(Client, Input) ->
    create_worker_fleet(Client, Input, []).

-spec create_worker_fleet(map(), create_worker_fleet_request(), proplists:proplist()) ->
    {ok, create_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, service_quota_exceeded_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
create_worker_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorkerFleet"],
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

%% @doc Grants permission to delete a destination
-spec delete_destination(map(), delete_destination_request()) ->
    {ok, delete_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_destination(Client, Input) ->
    delete_destination(Client, Input, []).

-spec delete_destination(map(), delete_destination_request(), proplists:proplist()) ->
    {ok, delete_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteDestination"],
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

%% @doc Grants permission to delete a site
-spec delete_site(map(), delete_site_request()) ->
    {ok, delete_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_site(Client, Input) ->
    delete_site(Client, Input, []).

-spec delete_site(map(), delete_site_request(), proplists:proplist()) ->
    {ok, delete_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteSite"],
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

%% @doc Grants permission to delete a worker
-spec delete_worker(map(), delete_worker_request()) ->
    {ok, delete_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_worker(Client, Input) ->
    delete_worker(Client, Input, []).

-spec delete_worker(map(), delete_worker_request(), proplists:proplist()) ->
    {ok, delete_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_worker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteWorker"],
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

%% @doc Grants permission to delete a worker fleet
-spec delete_worker_fleet(map(), delete_worker_fleet_request()) ->
    {ok, delete_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_worker_fleet(Client, Input) ->
    delete_worker_fleet(Client, Input, []).

-spec delete_worker_fleet(map(), delete_worker_fleet_request(), proplists:proplist()) ->
    {ok, delete_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, conflict_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
delete_worker_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteWorkerFleet"],
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

%% @doc Grants permission to get a destination
-spec get_destination(map(), binary() | list()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_destination(Client, Id)
  when is_map(Client) ->
    get_destination(Client, Id, #{}, #{}).

-spec get_destination(map(), binary() | list(), map(), map()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_destination(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_destination(Client, Id, QueryMap, HeadersMap, []).

-spec get_destination(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_destination(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getDestination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to get a site
-spec get_site(map(), binary() | list()) ->
    {ok, get_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_site(Client, Id)
  when is_map(Client) ->
    get_site(Client, Id, #{}, #{}).

-spec get_site(map(), binary() | list(), map(), map()) ->
    {ok, get_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_site(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site(Client, Id, QueryMap, HeadersMap, []).

-spec get_site(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_site(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getSite"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to get a worker
-spec get_worker(map(), binary() | list()) ->
    {ok, get_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_worker(Client, Id)
  when is_map(Client) ->
    get_worker(Client, Id, #{}, #{}).

-spec get_worker(map(), binary() | list(), map(), map()) ->
    {ok, get_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_worker(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_worker(Client, Id, QueryMap, HeadersMap, []).

-spec get_worker(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_worker(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getWorker"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to get a worker fleet
-spec get_worker_fleet(map(), binary() | list()) ->
    {ok, get_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_worker_fleet(Client, Id)
  when is_map(Client) ->
    get_worker_fleet(Client, Id, #{}, #{}).

-spec get_worker_fleet(map(), binary() | list(), map(), map()) ->
    {ok, get_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_worker_fleet(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_worker_fleet(Client, Id, QueryMap, HeadersMap, []).

-spec get_worker_fleet(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
get_worker_fleet(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getWorkerFleet"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to list destinations
-spec list_destinations(map(), binary() | list()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_destinations(Client, Site)
  when is_map(Client) ->
    list_destinations(Client, Site, #{}, #{}).

-spec list_destinations(map(), binary() | list(), map(), map()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_destinations(Client, Site, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_destinations(Client, Site, QueryMap, HeadersMap, []).

-spec list_destinations(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_destinations(Client, Site, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listDestinations"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"site">>, Site},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to list sites
-spec list_sites(map()) ->
    {ok, list_sites_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_sites(Client)
  when is_map(Client) ->
    list_sites(Client, #{}, #{}).

-spec list_sites(map(), map(), map()) ->
    {ok, list_sites_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_sites(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sites(Client, QueryMap, HeadersMap, []).

-spec list_sites(map(), map(), map(), proplists:proplist()) ->
    {ok, list_sites_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_sites(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listSites"],
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

%% @doc Grants permission to list worker fleets
-spec list_worker_fleets(map(), binary() | list()) ->
    {ok, list_worker_fleets_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_worker_fleets(Client, Site)
  when is_map(Client) ->
    list_worker_fleets(Client, Site, #{}, #{}).

-spec list_worker_fleets(map(), binary() | list(), map(), map()) ->
    {ok, list_worker_fleets_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_worker_fleets(Client, Site, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_worker_fleets(Client, Site, QueryMap, HeadersMap, []).

-spec list_worker_fleets(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_worker_fleets_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_worker_fleets(Client, Site, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listWorkerFleets"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"site">>, Site}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to list workers
-spec list_workers(map(), binary() | list()) ->
    {ok, list_workers_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_workers(Client, Site)
  when is_map(Client) ->
    list_workers(Client, Site, #{}, #{}).

-spec list_workers(map(), binary() | list(), map(), map()) ->
    {ok, list_workers_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_workers(Client, Site, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workers(Client, Site, QueryMap, HeadersMap, []).

-spec list_workers(map(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workers_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
list_workers(Client, Site, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listWorkers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"fleet">>, maps:get(<<"fleet">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"site">>, Site}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to update a destination
-spec update_destination(map(), update_destination_request()) ->
    {ok, update_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_destination(Client, Input) ->
    update_destination(Client, Input, []).

-spec update_destination(map(), update_destination_request(), proplists:proplist()) ->
    {ok, update_destination_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDestination"],
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

%% @doc Grants permission to update a site
-spec update_site(map(), update_site_request()) ->
    {ok, update_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_site(Client, Input) ->
    update_site(Client, Input, []).

-spec update_site(map(), update_site_request(), proplists:proplist()) ->
    {ok, update_site_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateSite"],
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

%% @doc Grants permission to update a worker
-spec update_worker(map(), update_worker_request()) ->
    {ok, update_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_worker(Client, Input) ->
    update_worker(Client, Input, []).

-spec update_worker(map(), update_worker_request(), proplists:proplist()) ->
    {ok, update_worker_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_worker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateWorker"],
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

%% @doc Grants permission to update a worker fleet
-spec update_worker_fleet(map(), update_worker_fleet_request()) ->
    {ok, update_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_worker_fleet(Client, Input) ->
    update_worker_fleet(Client, Input, []).

-spec update_worker_fleet(map(), update_worker_fleet_request(), proplists:proplist()) ->
    {ok, update_worker_fleet_response(), tuple()} |
    {error, any()} |
    {error, access_denied_exception(), tuple()} |
    {error, internal_server_exception(), tuple()} |
    {error, resource_not_found_exception(), tuple()} |
    {error, throttling_exception(), tuple()} |
    {error, validation_exception(), tuple()}.
update_worker_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateWorkerFleet"],
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
    Client1 = Client#{service => <<"iotroborunner">>},
    Host = build_host(<<"iotroborunner">>, Client1),
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
