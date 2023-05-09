%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon OpenSearch Service configuration API to create,
%% configure, and manage OpenSearch Service domains.
%%
%% For sample code that uses the configuration API, see the Amazon OpenSearch
%% Service Developer Guide . The guide also contains sample code for sending
%% signed HTTP requests to the OpenSearch APIs. The endpoint for
%% configuration service requests is Region specific:
%% es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
%% current list of supported Regions and endpoints, see Amazon Web Services
%% service endpoints.
-module(aws_opensearch).

-export([accept_inbound_connection/3,
         accept_inbound_connection/4,
         add_tags/2,
         add_tags/3,
         associate_package/4,
         associate_package/5,
         authorize_vpc_endpoint_access/3,
         authorize_vpc_endpoint_access/4,
         cancel_service_software_update/2,
         cancel_service_software_update/3,
         create_domain/2,
         create_domain/3,
         create_outbound_connection/2,
         create_outbound_connection/3,
         create_package/2,
         create_package/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         delete_domain/3,
         delete_domain/4,
         delete_inbound_connection/3,
         delete_inbound_connection/4,
         delete_outbound_connection/3,
         delete_outbound_connection/4,
         delete_package/3,
         delete_package/4,
         delete_vpc_endpoint/3,
         delete_vpc_endpoint/4,
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
         describe_domain_health/2,
         describe_domain_health/4,
         describe_domain_health/5,
         describe_domain_nodes/2,
         describe_domain_nodes/4,
         describe_domain_nodes/5,
         describe_domains/2,
         describe_domains/3,
         describe_dry_run_progress/2,
         describe_dry_run_progress/4,
         describe_dry_run_progress/5,
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
         describe_vpc_endpoints/2,
         describe_vpc_endpoints/3,
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
         list_scheduled_actions/2,
         list_scheduled_actions/4,
         list_scheduled_actions/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         list_vpc_endpoint_access/2,
         list_vpc_endpoint_access/4,
         list_vpc_endpoint_access/5,
         list_vpc_endpoints/1,
         list_vpc_endpoints/3,
         list_vpc_endpoints/4,
         list_vpc_endpoints_for_domain/2,
         list_vpc_endpoints_for_domain/4,
         list_vpc_endpoints_for_domain/5,
         purchase_reserved_instance_offering/2,
         purchase_reserved_instance_offering/3,
         reject_inbound_connection/3,
         reject_inbound_connection/4,
         remove_tags/2,
         remove_tags/3,
         revoke_vpc_endpoint_access/3,
         revoke_vpc_endpoint_access/4,
         start_service_software_update/2,
         start_service_software_update/3,
         update_domain_config/3,
         update_domain_config/4,
         update_package/2,
         update_package/3,
         update_scheduled_action/3,
         update_scheduled_action/4,
         update_vpc_endpoint/2,
         update_vpc_endpoint/3,
         upgrade_domain/2,
         upgrade_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Allows the destination Amazon OpenSearch Service domain owner to
%% accept an inbound cross-cluster search connection request.
%%
%% For more information, see Cross-cluster search for Amazon OpenSearch
%% Service.
accept_inbound_connection(Client, ConnectionId, Input) ->
    accept_inbound_connection(Client, ConnectionId, Input, []).
accept_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), "/accept"],
    SuccessStatusCode = undefined,
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

%% @doc Attaches tags to an existing Amazon OpenSearch Service domain.
%%
%% Tags are a set of case-sensitive key-value pairs. A domain can have up to
%% 10 tags. For more information, see Tagging Amazon OpenSearch Service
%% domains.
add_tags(Client, Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/tags"],
    SuccessStatusCode = undefined,
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

%% @doc Associates a package with an Amazon OpenSearch Service domain.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
associate_package(Client, DomainName, PackageID, Input) ->
    associate_package(Client, DomainName, PackageID, Input, []).
associate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/associate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Provides access to an Amazon OpenSearch Service domain through the
%% use of an interface VPC endpoint.
authorize_vpc_endpoint_access(Client, DomainName, Input) ->
    authorize_vpc_endpoint_access(Client, DomainName, Input, []).
authorize_vpc_endpoint_access(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/authorizeVpcEndpointAccess"],
    SuccessStatusCode = undefined,
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

%% @doc Cancels a scheduled service software update for an Amazon OpenSearch
%% Service domain.
%%
%% You can only perform this operation before the `AutomatedUpdateDate'
%% and when the domain's `UpdateStatus' is `PENDING_UPDATE'. For
%% more information, see Service software updates in Amazon OpenSearch
%% Service.
cancel_service_software_update(Client, Input) ->
    cancel_service_software_update(Client, Input, []).
cancel_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"],
    SuccessStatusCode = undefined,
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

%% @doc Creates an Amazon OpenSearch Service domain.
%%
%% For more information, see Creating and managing Amazon OpenSearch Service
%% domains.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new cross-cluster search connection from a source Amazon
%% OpenSearch Service domain to a destination domain.
%%
%% For more information, see Cross-cluster search for Amazon OpenSearch
%% Service.
create_outbound_connection(Client, Input) ->
    create_outbound_connection(Client, Input, []).
create_outbound_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a package for use with Amazon OpenSearch Service domains.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
create_package(Client, Input) ->
    create_package(Client, Input, []).
create_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages"],
    SuccessStatusCode = undefined,
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

%% @doc Creates an Amazon OpenSearch Service-managed VPC endpoint.
create_vpc_endpoint(Client, Input) ->
    create_vpc_endpoint(Client, Input, []).
create_vpc_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/vpcEndpoints"],
    SuccessStatusCode = undefined,
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

%% @doc Deletes an Amazon OpenSearch Service domain and all of its data.
%%
%% You can't recover a domain after you delete it.
delete_domain(Client, DomainName, Input) ->
    delete_domain(Client, DomainName, Input, []).
delete_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Allows the destination Amazon OpenSearch Service domain owner to
%% delete an existing inbound cross-cluster search connection.
%%
%% For more information, see Cross-cluster search for Amazon OpenSearch
%% Service.
delete_inbound_connection(Client, ConnectionId, Input) ->
    delete_inbound_connection(Client, ConnectionId, Input, []).
delete_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Allows the source Amazon OpenSearch Service domain owner to delete an
%% existing outbound cross-cluster search connection.
%%
%% For more information, see Cross-cluster search for Amazon OpenSearch
%% Service.
delete_outbound_connection(Client, ConnectionId, Input) ->
    delete_outbound_connection(Client, ConnectionId, Input, []).
delete_outbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Deletes an Amazon OpenSearch Service package.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
delete_package(Client, PackageID, Input) ->
    delete_package(Client, PackageID, Input, []).
delete_package(Client, PackageID, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), ""],
    SuccessStatusCode = undefined,
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

%% @doc Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
delete_vpc_endpoint(Client, VpcEndpointId, Input) ->
    delete_vpc_endpoint(Client, VpcEndpointId, Input, []).
delete_vpc_endpoint(Client, VpcEndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/vpcEndpoints/", aws_util:encode_uri(VpcEndpointId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Describes the domain configuration for the specified Amazon
%% OpenSearch Service domain, including the domain ID, domain service
%% endpoint, and domain ARN.
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

%% @doc Returns the list of optimizations that Auto-Tune has made to an
%% Amazon OpenSearch Service domain.
%%
%% For more information, see Auto-Tune for Amazon OpenSearch Service.
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
%% on an Amazon OpenSearch Service domain.
%%
%% For more information, see Making configuration changes in Amazon
%% OpenSearch Service.
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

%% @doc Returns the configuration of an Amazon OpenSearch Service domain.
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

%% @doc Returns information about domain and node health, the standby
%% Availability Zone, number of nodes per Availability Zone, and shard count
%% per node.
describe_domain_health(Client, DomainName)
  when is_map(Client) ->
    describe_domain_health(Client, DomainName, #{}, #{}).

describe_domain_health(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_health(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain_health(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/health"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about domain and nodes, including data nodes,
%% master nodes, ultrawarm nodes, Availability Zone(s), standby nodes, node
%% configurations, and node states.
describe_domain_nodes(Client, DomainName)
  when is_map(Client) ->
    describe_domain_nodes(Client, DomainName, #{}, #{}).

describe_domain_nodes(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_nodes(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain_nodes(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/nodes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns domain configuration information about the specified Amazon
%% OpenSearch Service domains.
describe_domains(Client, Input) ->
    describe_domains(Client, Input, []).
describe_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain-info"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the progress of a pre-update dry run analysis on an Amazon
%% OpenSearch Service domain.
%%
%% For more information, see Determining whether a change will cause a
%% blue/green deployment.
describe_dry_run_progress(Client, DomainName)
  when is_map(Client) ->
    describe_dry_run_progress(Client, DomainName, #{}, #{}).

describe_dry_run_progress(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dry_run_progress(Client, DomainName, QueryMap, HeadersMap, []).

describe_dry_run_progress(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dryRun"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dryRunId">>, maps:get(<<"dryRunId">>, QueryMap, undefined)},
        {<<"loadDryRunConfig">>, maps:get(<<"loadDryRunConfig">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the inbound cross-cluster search connections for a
%% destination (remote) Amazon OpenSearch Service domain.
%%
%% For more information, see Cross-cluster search for Amazon OpenSearch
%% Service.
describe_inbound_connections(Client, Input) ->
    describe_inbound_connections(Client, Input, []).
describe_inbound_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/search"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the instance count, storage, and master node limits for a
%% given OpenSearch or Elasticsearch version and instance type.
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

%% @doc Lists all the outbound cross-cluster connections for a local (source)
%% Amazon OpenSearch Service domain.
%%
%% For more information, see Cross-cluster search for Amazon OpenSearch
%% Service.
describe_outbound_connections(Client, Input) ->
    describe_outbound_connections(Client, Input, []).
describe_outbound_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection/search"],
    SuccessStatusCode = undefined,
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

%% @doc Describes all packages available to OpenSearch Service.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
describe_packages(Client, Input) ->
    describe_packages(Client, Input, []).
describe_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/describe"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the available Amazon OpenSearch Service Reserved Instance
%% offerings for a given Region.
%%
%% For more information, see Reserved Instances in Amazon OpenSearch Service.
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

%% @doc Describes the Amazon OpenSearch Service instances that you have
%% reserved in a given Region.
%%
%% For more information, see Reserved Instances in Amazon OpenSearch Service.
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

%% @doc Describes one or more Amazon OpenSearch Service-managed VPC
%% endpoints.
describe_vpc_endpoints(Client, Input) ->
    describe_vpc_endpoints(Client, Input, []).
describe_vpc_endpoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/vpcEndpoints/describe"],
    SuccessStatusCode = undefined,
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

%% @doc Removes a package from the specified Amazon OpenSearch Service
%% domain.
%%
%% The package can't be in use with any OpenSearch index for the
%% dissociation to succeed. The package is still available in OpenSearch
%% Service for association later. For more information, see Custom packages
%% for Amazon OpenSearch Service.
dissociate_package(Client, DomainName, PackageID, Input) ->
    dissociate_package(Client, DomainName, PackageID, Input, []).
dissociate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/dissociate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Returns a map of OpenSearch or Elasticsearch versions and the
%% versions you can upgrade them to.
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

%% @doc Returns a list of Amazon OpenSearch Service package versions, along
%% with their creation time, commit message, and plugin properties (if the
%% package is a zip plugin package).
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
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
%% an Amazon OpenSearch Service domain.
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

%% @doc Returns the most recent status of the last upgrade or upgrade
%% eligibility check performed on an Amazon OpenSearch Service domain.
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

%% @doc Returns the names of all Amazon OpenSearch Service domains owned by
%% the current user in the active Region.
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

%% @doc Lists all Amazon OpenSearch Service domains associated with a given
%% package.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
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

%% @doc Lists all instance types and available features for a given
%% OpenSearch or Elasticsearch version.
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
        {<<"instanceType">>, maps:get(<<"instanceType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"retrieveAZs">>, maps:get(<<"retrieveAZs">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all packages associated with an Amazon OpenSearch Service
%% domain.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
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

%% @doc Retrieves a list of configuration changes that are scheduled for a
%% domain.
%%
%% These changes can be service software updates or blue/green Auto-Tune
%% enhancements.
list_scheduled_actions(Client, DomainName)
  when is_map(Client) ->
    list_scheduled_actions(Client, DomainName, #{}, #{}).

list_scheduled_actions(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scheduled_actions(Client, DomainName, QueryMap, HeadersMap, []).

list_scheduled_actions(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/scheduledActions"],
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

%% @doc Returns all resource tags for an Amazon OpenSearch Service domain.
%%
%% For more information, see Tagging Amazon OpenSearch Service domains.
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

%% @doc Lists all versions of OpenSearch and Elasticsearch that Amazon
%% OpenSearch Service supports.
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

%% @doc Retrieves information about each Amazon Web Services principal that
%% is allowed to access a given Amazon OpenSearch Service domain through the
%% use of an interface VPC endpoint.
list_vpc_endpoint_access(Client, DomainName)
  when is_map(Client) ->
    list_vpc_endpoint_access(Client, DomainName, #{}, #{}).

list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap, []).

list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/listVpcEndpointAccess"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the
%% current Amazon Web Services account and Region.
list_vpc_endpoints(Client)
  when is_map(Client) ->
    list_vpc_endpoints(Client, #{}, #{}).

list_vpc_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoints(Client, QueryMap, HeadersMap, []).

list_vpc_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/vpcEndpoints"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all Amazon OpenSearch Service-managed VPC endpoints
%% associated with a particular domain.
list_vpc_endpoints_for_domain(Client, DomainName)
  when is_map(Client) ->
    list_vpc_endpoints_for_domain(Client, DomainName, #{}, #{}).

list_vpc_endpoints_for_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoints_for_domain(Client, DomainName, QueryMap, HeadersMap, []).

list_vpc_endpoints_for_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/vpcEndpoints"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Allows you to purchase Amazon OpenSearch Service Reserved Instances.
purchase_reserved_instance_offering(Client, Input) ->
    purchase_reserved_instance_offering(Client, Input, []).
purchase_reserved_instance_offering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/purchaseReservedInstanceOffering"],
    SuccessStatusCode = undefined,
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

%% @doc Allows the remote Amazon OpenSearch Service domain owner to reject an
%% inbound cross-cluster connection request.
reject_inbound_connection(Client, ConnectionId, Input) ->
    reject_inbound_connection(Client, ConnectionId, Input, []).
reject_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), "/reject"],
    SuccessStatusCode = undefined,
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

%% @doc Removes the specified set of tags from an Amazon OpenSearch Service
%% domain.
%%
%% For more information, see Tagging Amazon OpenSearch Service domains.
remove_tags(Client, Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/tags-removal"],
    SuccessStatusCode = undefined,
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

%% @doc Revokes access to an Amazon OpenSearch Service domain that was
%% provided through an interface VPC endpoint.
revoke_vpc_endpoint_access(Client, DomainName, Input) ->
    revoke_vpc_endpoint_access(Client, DomainName, Input, []).
revoke_vpc_endpoint_access(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/revokeVpcEndpointAccess"],
    SuccessStatusCode = undefined,
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

%% @doc Schedules a service software update for an Amazon OpenSearch Service
%% domain.
%%
%% For more information, see Service software updates in Amazon OpenSearch
%% Service.
start_service_software_update(Client, Input) ->
    start_service_software_update(Client, Input, []).
start_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/serviceSoftwareUpdate/start"],
    SuccessStatusCode = undefined,
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

%% @doc Modifies the cluster configuration of the specified Amazon OpenSearch
%% Service domain.sl
update_domain_config(Client, DomainName, Input) ->
    update_domain_config(Client, DomainName, Input, []).
update_domain_config(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/config"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a package for use with Amazon OpenSearch Service domains.
%%
%% For more information, see Custom packages for Amazon OpenSearch Service.
update_package(Client, Input) ->
    update_package(Client, Input, []).
update_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/update"],
    SuccessStatusCode = undefined,
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

%% @doc Reschedules a planned domain configuration change for a later time.
%%
%% This change can be a scheduled service software update or a blue/green
%% Auto-Tune enhancement.
update_scheduled_action(Client, DomainName, Input) ->
    update_scheduled_action(Client, DomainName, Input, []).
update_scheduled_action(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/scheduledAction/update"],
    SuccessStatusCode = undefined,
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

%% @doc Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
update_vpc_endpoint(Client, Input) ->
    update_vpc_endpoint(Client, Input, []).
update_vpc_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/vpcEndpoints/update"],
    SuccessStatusCode = undefined,
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

%% @doc Allows you to either upgrade your Amazon OpenSearch Service domain or
%% perform an upgrade eligibility check to a compatible version of OpenSearch
%% or Elasticsearch.
upgrade_domain(Client, Input) ->
    upgrade_domain(Client, Input, []).
upgrade_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/upgradeDomain"],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"es">>},
    Host = build_host(<<"es">>, Client1),
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
