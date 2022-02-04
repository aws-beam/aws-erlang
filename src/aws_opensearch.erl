%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon OpenSearch Configuration Service
%%
%% Use the Amazon OpenSearch configuration API to create, configure, and
%% manage Amazon OpenSearch Service domains.
%%
%% For sample code that uses the configuration API, see the Amazon OpenSearch
%% Service Developer Guide. The guide also contains sample code for sending
%% signed HTTP requests to the OpenSearch APIs.
%%
%% The endpoint for configuration service requests is region-specific:
%% es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
%% current list of supported regions and endpoints, see Regions and
%% Endpoints.
-module(aws_opensearch).

-export([accept_inbound_connection/3,
         accept_inbound_connection/4,
         add_tags/2,
         add_tags/3,
         associate_package/4,
         associate_package/5,
         cancel_service_software_update/2,
         cancel_service_software_update/3,
         create_domain/2,
         create_domain/3,
         create_outbound_connection/2,
         create_outbound_connection/3,
         create_package/2,
         create_package/3,
         delete_domain/3,
         delete_domain/4,
         delete_inbound_connection/3,
         delete_inbound_connection/4,
         delete_outbound_connection/3,
         delete_outbound_connection/4,
         delete_package/3,
         delete_package/4,
         describe_domain/2,
         describe_domain/4,
         describe_domain/5,
         describe_domain_auto_tunes/2,
         describe_domain_auto_tunes/4,
         describe_domain_auto_tunes/5,
         describe_domain_change_progress/2,
         describe_domain_change_progress/4,
         describe_domain_change_progress/5,
         describe_domain_config/2,
         describe_domain_config/4,
         describe_domain_config/5,
         describe_domains/2,
         describe_domains/3,
         describe_inbound_connections/2,
         describe_inbound_connections/3,
         describe_instance_type_limits/3,
         describe_instance_type_limits/5,
         describe_instance_type_limits/6,
         describe_outbound_connections/2,
         describe_outbound_connections/3,
         describe_packages/2,
         describe_packages/3,
         describe_reserved_instance_offerings/1,
         describe_reserved_instance_offerings/3,
         describe_reserved_instance_offerings/4,
         describe_reserved_instances/1,
         describe_reserved_instances/3,
         describe_reserved_instances/4,
         dissociate_package/4,
         dissociate_package/5,
         get_compatible_versions/1,
         get_compatible_versions/3,
         get_compatible_versions/4,
         get_package_version_history/2,
         get_package_version_history/4,
         get_package_version_history/5,
         get_upgrade_history/2,
         get_upgrade_history/4,
         get_upgrade_history/5,
         get_upgrade_status/2,
         get_upgrade_status/4,
         get_upgrade_status/5,
         list_domain_names/1,
         list_domain_names/3,
         list_domain_names/4,
         list_domains_for_package/2,
         list_domains_for_package/4,
         list_domains_for_package/5,
         list_instance_type_details/2,
         list_instance_type_details/4,
         list_instance_type_details/5,
         list_packages_for_domain/2,
         list_packages_for_domain/4,
         list_packages_for_domain/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         purchase_reserved_instance_offering/2,
         purchase_reserved_instance_offering/3,
         reject_inbound_connection/3,
         reject_inbound_connection/4,
         remove_tags/2,
         remove_tags/3,
         start_service_software_update/2,
         start_service_software_update/3,
         update_domain_config/3,
         update_domain_config/4,
         update_package/2,
         update_package/3,
         upgrade_domain/2,
         upgrade_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Allows the remote domain owner to accept an inbound cross-cluster
%% connection request.
accept_inbound_connection(Client, ConnectionId, Input) ->
    accept_inbound_connection(Client, ConnectionId, Input, []).
accept_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), "/accept"],
    SuccessStatusCode = undefined,
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

%% @doc Attaches tags to an existing domain.
%%
%% Tags are a set of case-sensitive key value pairs. An domain can have up to
%% 10 tags. See Tagging Amazon OpenSearch Service domains for more
%% information.
add_tags(Client, Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/tags"],
    SuccessStatusCode = undefined,
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

%% @doc Associates a package with an Amazon OpenSearch Service domain.
associate_package(Client, DomainName, PackageID, Input) ->
    associate_package(Client, DomainName, PackageID, Input, []).
associate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/associate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Cancels a scheduled service software update for an Amazon OpenSearch
%% Service domain.
%%
%% You can only perform this operation before the `AutomatedUpdateDate' and
%% when the `UpdateStatus' is in the `PENDING_UPDATE' state.
cancel_service_software_update(Client, Input) ->
    cancel_service_software_update(Client, Input, []).
cancel_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new Amazon OpenSearch Service domain.
%%
%% For more information, see Creating and managing Amazon OpenSearch Service
%% domains in the Amazon OpenSearch Service Developer Guide.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new cross-cluster connection from a local OpenSearch domain
%% to a remote OpenSearch domain.
create_outbound_connection(Client, Input) ->
    create_outbound_connection(Client, Input, []).
create_outbound_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection"],
    SuccessStatusCode = undefined,
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

%% @doc Create a package for use with Amazon OpenSearch Service domains.
create_package(Client, Input) ->
    create_package(Client, Input, []).
create_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages"],
    SuccessStatusCode = undefined,
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

%% @doc Permanently deletes the specified domain and all of its data.
%%
%% Once a domain is deleted, it cannot be recovered.
delete_domain(Client, DomainName, Input) ->
    delete_domain(Client, DomainName, Input, []).
delete_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Allows the remote domain owner to delete an existing inbound
%% cross-cluster connection.
delete_inbound_connection(Client, ConnectionId, Input) ->
    delete_inbound_connection(Client, ConnectionId, Input, []).
delete_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Allows the local domain owner to delete an existing outbound
%% cross-cluster connection.
delete_outbound_connection(Client, ConnectionId, Input) ->
    delete_outbound_connection(Client, ConnectionId, Input, []).
delete_outbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Deletes the package.
delete_package(Client, PackageID, Input) ->
    delete_package(Client, PackageID, Input, []).
delete_package(Client, PackageID, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), ""],
    SuccessStatusCode = undefined,
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

%% @doc Returns domain configuration information about the specified domain,
%% including the domain ID, domain endpoint, and domain ARN.
describe_domain(Client, DomainName)
  when is_map(Client) ->
    describe_domain(Client, DomainName, #{}, #{}).

describe_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides scheduled Auto-Tune action details for the domain, such as
%% Auto-Tune action type, description, severity, and scheduled date.
describe_domain_auto_tunes(Client, DomainName)
  when is_map(Client) ->
    describe_domain_auto_tunes(Client, DomainName, #{}, #{}).

describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/autoTunes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the current blue/green deployment happening
%% on a domain, including a change ID, status, and progress stages.
describe_domain_change_progress(Client, DomainName)
  when is_map(Client) ->
    describe_domain_change_progress(Client, DomainName, #{}, #{}).

describe_domain_change_progress(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_change_progress(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain_change_progress(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/progress"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"changeid">>, maps:get(<<"changeid">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides cluster configuration information about the specified
%% domain, such as the state, creation date, update version, and update date
%% for cluster options.
describe_domain_config(Client, DomainName)
  when is_map(Client) ->
    describe_domain_config(Client, DomainName, #{}, #{}).

describe_domain_config(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_config(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain_config(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns domain configuration information about the specified domains,
%% including the domain ID, domain endpoint, and domain ARN.
describe_domains(Client, Input) ->
    describe_domains(Client, Input, []).
describe_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain-info"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all the inbound cross-cluster connections for a remote domain.
describe_inbound_connections(Client, Input) ->
    describe_inbound_connections(Client, Input, []).
describe_inbound_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/search"],
    SuccessStatusCode = undefined,
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

%% @doc Describe the limits for a given instance type and OpenSearch or
%% Elasticsearch version.
%%
%% When modifying an existing domain, specify the ` `DomainName' ' to see
%% which limits you can modify.
describe_instance_type_limits(Client, EngineVersion, InstanceType)
  when is_map(Client) ->
    describe_instance_type_limits(Client, EngineVersion, InstanceType, #{}, #{}).

describe_instance_type_limits(Client, EngineVersion, InstanceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance_type_limits(Client, EngineVersion, InstanceType, QueryMap, HeadersMap, []).

describe_instance_type_limits(Client, EngineVersion, InstanceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/instanceTypeLimits/", aws_util:encode_uri(EngineVersion), "/", aws_util:encode_uri(InstanceType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"domainName">>, maps:get(<<"domainName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the outbound cross-cluster connections for a local domain.
describe_outbound_connections(Client, Input) ->
    describe_outbound_connections(Client, Input, []).
describe_outbound_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection/search"],
    SuccessStatusCode = undefined,
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

%% @doc Describes all packages available to Amazon OpenSearch Service
%% domains.
%%
%% Includes options for filtering, limiting the number of results, and
%% pagination.
describe_packages(Client, Input) ->
    describe_packages(Client, Input, []).
describe_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/describe"],
    SuccessStatusCode = undefined,
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

%% @doc Lists available reserved OpenSearch instance offerings.
describe_reserved_instance_offerings(Client)
  when is_map(Client) ->
    describe_reserved_instance_offerings(Client, #{}, #{}).

describe_reserved_instance_offerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_instance_offerings(Client, QueryMap, HeadersMap, []).

describe_reserved_instance_offerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/reservedInstanceOfferings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"offeringId">>, maps:get(<<"offeringId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about reserved OpenSearch instances for this
%% account.
describe_reserved_instances(Client)
  when is_map(Client) ->
    describe_reserved_instances(Client, #{}, #{}).

describe_reserved_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_instances(Client, QueryMap, HeadersMap, []).

describe_reserved_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/reservedInstances"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"reservationId">>, maps:get(<<"reservationId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Dissociates a package from the Amazon OpenSearch Service domain.
dissociate_package(Client, DomainName, PackageID, Input) ->
    dissociate_package(Client, DomainName, PackageID, Input, []).
dissociate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/dissociate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of upgrade-compatible versions of
%% OpenSearch/Elasticsearch.
%%
%% You can optionally pass a ` `DomainName' ' to get all upgrade-compatible
%% versions of OpenSearch/Elasticsearch for that specific domain.
get_compatible_versions(Client)
  when is_map(Client) ->
    get_compatible_versions(Client, #{}, #{}).

get_compatible_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compatible_versions(Client, QueryMap, HeadersMap, []).

get_compatible_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/compatibleVersions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"domainName">>, maps:get(<<"domainName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of package versions, along with their creation time
%% and commit message.
get_package_version_history(Client, PackageID)
  when is_map(Client) ->
    get_package_version_history(Client, PackageID, #{}, #{}).

get_package_version_history(Client, PackageID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_history(Client, PackageID, QueryMap, HeadersMap, []).

get_package_version_history(Client, PackageID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), "/history"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves the complete history of the last 10 upgrades performed on
%% the domain.
get_upgrade_history(Client, DomainName)
  when is_map(Client) ->
    get_upgrade_history(Client, DomainName, #{}, #{}).

get_upgrade_history(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_upgrade_history(Client, DomainName, QueryMap, HeadersMap, []).

get_upgrade_history(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/upgradeDomain/", aws_util:encode_uri(DomainName), "/history"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves the latest status of the last upgrade or upgrade
%% eligibility check performed on the domain.
get_upgrade_status(Client, DomainName)
  when is_map(Client) ->
    get_upgrade_status(Client, DomainName, #{}, #{}).

get_upgrade_status(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_upgrade_status(Client, DomainName, QueryMap, HeadersMap, []).

get_upgrade_status(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/upgradeDomain/", aws_util:encode_uri(DomainName), "/status"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the names of all domains owned by the current user's account.
list_domain_names(Client)
  when is_map(Client) ->
    list_domain_names(Client, #{}, #{}).

list_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_names(Client, QueryMap, HeadersMap, []).

list_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/domain"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Amazon OpenSearch Service domains associated with the
%% package.
list_domains_for_package(Client, PackageID)
  when is_map(Client) ->
    list_domains_for_package(Client, PackageID, #{}, #{}).

list_domains_for_package(Client, PackageID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains_for_package(Client, PackageID, QueryMap, HeadersMap, []).

list_domains_for_package(Client, PackageID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), "/domains"],
    SuccessStatusCode = undefined,
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


list_instance_type_details(Client, EngineVersion)
  when is_map(Client) ->
    list_instance_type_details(Client, EngineVersion, #{}, #{}).

list_instance_type_details(Client, EngineVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instance_type_details(Client, EngineVersion, QueryMap, HeadersMap, []).

list_instance_type_details(Client, EngineVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/instanceTypeDetails/", aws_util:encode_uri(EngineVersion), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"domainName">>, maps:get(<<"domainName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all packages associated with the Amazon OpenSearch Service
%% domain.
list_packages_for_domain(Client, DomainName)
  when is_map(Client) ->
    list_packages_for_domain(Client, DomainName, #{}, #{}).

list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap, []).

list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/domain/", aws_util:encode_uri(DomainName), "/packages"],
    SuccessStatusCode = undefined,
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

%% @doc Returns all tags for the given domain.
list_tags(Client, ARN)
  when is_map(Client) ->
    list_tags(Client, ARN, #{}, #{}).

list_tags(Client, ARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ARN, QueryMap, HeadersMap, []).

list_tags(Client, ARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/tags/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all supported versions of OpenSearch and Elasticsearch.
list_versions(Client)
  when is_map(Client) ->
    list_versions(Client, #{}, #{}).

list_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions(Client, QueryMap, HeadersMap, []).

list_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/versions"],
    SuccessStatusCode = undefined,
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

%% @doc Allows you to purchase reserved OpenSearch instances.
purchase_reserved_instance_offering(Client, Input) ->
    purchase_reserved_instance_offering(Client, Input, []).
purchase_reserved_instance_offering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/purchaseReservedInstanceOffering"],
    SuccessStatusCode = undefined,
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

%% @doc Allows the remote domain owner to reject an inbound cross-cluster
%% connection request.
reject_inbound_connection(Client, ConnectionId, Input) ->
    reject_inbound_connection(Client, ConnectionId, Input, []).
reject_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), "/reject"],
    SuccessStatusCode = undefined,
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

%% @doc Removes the specified set of tags from the given domain.
remove_tags(Client, Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/tags-removal"],
    SuccessStatusCode = undefined,
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

%% @doc Schedules a service software update for an Amazon OpenSearch Service
%% domain.
start_service_software_update(Client, Input) ->
    start_service_software_update(Client, Input, []).
start_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/serviceSoftwareUpdate/start"],
    SuccessStatusCode = undefined,
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

%% @doc Modifies the cluster configuration of the specified domain, such as
%% setting the instance type and the number of instances.
update_domain_config(Client, DomainName, Input) ->
    update_domain_config(Client, DomainName, Input, []).
update_domain_config(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/config"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a package for use with Amazon OpenSearch Service domains.
update_package(Client, Input) ->
    update_package(Client, Input, []).
update_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/update"],
    SuccessStatusCode = undefined,
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

%% @doc Allows you to either upgrade your domain or perform an upgrade
%% eligibility check to a compatible version of OpenSearch or Elasticsearch.
upgrade_domain(Client, Input) ->
    upgrade_domain(Client, Input, []).
upgrade_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/upgradeDomain"],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"es">>},
    Host = build_host(<<"es">>, Client1),
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
