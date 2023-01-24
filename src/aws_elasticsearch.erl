%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elasticsearch Configuration Service
%%
%% Use the Amazon Elasticsearch Configuration API to create, configure, and
%% manage Elasticsearch domains.
%%
%% For sample code that uses the Configuration API, see the Amazon
%% Elasticsearch Service Developer Guide. The guide also contains sample code
%% for sending signed HTTP requests to the Elasticsearch APIs.
%%
%% The endpoint for configuration service requests is region-specific:
%% es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
%% current list of supported regions and endpoints, see Regions and
%% Endpoints.
-module(aws_elasticsearch).

-export([accept_inbound_cross_cluster_search_connection/3,
         accept_inbound_cross_cluster_search_connection/4,
         add_tags/2,
         add_tags/3,
         associate_package/4,
         associate_package/5,
         authorize_vpc_endpoint_access/3,
         authorize_vpc_endpoint_access/4,
         cancel_elasticsearch_service_software_update/2,
         cancel_elasticsearch_service_software_update/3,
         create_elasticsearch_domain/2,
         create_elasticsearch_domain/3,
         create_outbound_cross_cluster_search_connection/2,
         create_outbound_cross_cluster_search_connection/3,
         create_package/2,
         create_package/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         delete_elasticsearch_domain/3,
         delete_elasticsearch_domain/4,
         delete_elasticsearch_service_role/2,
         delete_elasticsearch_service_role/3,
         delete_inbound_cross_cluster_search_connection/3,
         delete_inbound_cross_cluster_search_connection/4,
         delete_outbound_cross_cluster_search_connection/3,
         delete_outbound_cross_cluster_search_connection/4,
         delete_package/3,
         delete_package/4,
         delete_vpc_endpoint/3,
         delete_vpc_endpoint/4,
         describe_domain_auto_tunes/2,
         describe_domain_auto_tunes/4,
         describe_domain_auto_tunes/5,
         describe_domain_change_progress/2,
         describe_domain_change_progress/4,
         describe_domain_change_progress/5,
         describe_elasticsearch_domain/2,
         describe_elasticsearch_domain/4,
         describe_elasticsearch_domain/5,
         describe_elasticsearch_domain_config/2,
         describe_elasticsearch_domain_config/4,
         describe_elasticsearch_domain_config/5,
         describe_elasticsearch_domains/2,
         describe_elasticsearch_domains/3,
         describe_elasticsearch_instance_type_limits/3,
         describe_elasticsearch_instance_type_limits/5,
         describe_elasticsearch_instance_type_limits/6,
         describe_inbound_cross_cluster_search_connections/2,
         describe_inbound_cross_cluster_search_connections/3,
         describe_outbound_cross_cluster_search_connections/2,
         describe_outbound_cross_cluster_search_connections/3,
         describe_packages/2,
         describe_packages/3,
         describe_reserved_elasticsearch_instance_offerings/1,
         describe_reserved_elasticsearch_instance_offerings/3,
         describe_reserved_elasticsearch_instance_offerings/4,
         describe_reserved_elasticsearch_instances/1,
         describe_reserved_elasticsearch_instances/3,
         describe_reserved_elasticsearch_instances/4,
         describe_vpc_endpoints/2,
         describe_vpc_endpoints/3,
         dissociate_package/4,
         dissociate_package/5,
         get_compatible_elasticsearch_versions/1,
         get_compatible_elasticsearch_versions/3,
         get_compatible_elasticsearch_versions/4,
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
         list_elasticsearch_instance_types/2,
         list_elasticsearch_instance_types/4,
         list_elasticsearch_instance_types/5,
         list_elasticsearch_versions/1,
         list_elasticsearch_versions/3,
         list_elasticsearch_versions/4,
         list_packages_for_domain/2,
         list_packages_for_domain/4,
         list_packages_for_domain/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_vpc_endpoint_access/2,
         list_vpc_endpoint_access/4,
         list_vpc_endpoint_access/5,
         list_vpc_endpoints/1,
         list_vpc_endpoints/3,
         list_vpc_endpoints/4,
         list_vpc_endpoints_for_domain/2,
         list_vpc_endpoints_for_domain/4,
         list_vpc_endpoints_for_domain/5,
         purchase_reserved_elasticsearch_instance_offering/2,
         purchase_reserved_elasticsearch_instance_offering/3,
         reject_inbound_cross_cluster_search_connection/3,
         reject_inbound_cross_cluster_search_connection/4,
         remove_tags/2,
         remove_tags/3,
         revoke_vpc_endpoint_access/3,
         revoke_vpc_endpoint_access/4,
         start_elasticsearch_service_software_update/2,
         start_elasticsearch_service_software_update/3,
         update_elasticsearch_domain_config/3,
         update_elasticsearch_domain_config/4,
         update_package/2,
         update_package/3,
         update_vpc_endpoint/2,
         update_vpc_endpoint/3,
         upgrade_elasticsearch_domain/2,
         upgrade_elasticsearch_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Allows the destination domain owner to accept an inbound
%% cross-cluster search connection request.
accept_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    accept_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).
accept_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-01-01/es/ccs/inboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), "/accept"],
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

%% @doc Attaches tags to an existing Elasticsearch domain.
%%
%% Tags are a set of case-sensitive key value pairs. An Elasticsearch domain
%% may have up to 10 tags. See Tagging Amazon Elasticsearch Service Domains
%% for more information.
add_tags(Client, Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/tags"],
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

%% @doc Associates a package with an Amazon ES domain.
associate_package(Client, DomainName, PackageID, Input) ->
    associate_package(Client, DomainName, PackageID, Input, []).
associate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/packages/associate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/authorizeVpcEndpointAccess"],
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

%% @doc Cancels a scheduled service software update for an Amazon ES domain.
%%
%% You can only perform this operation before the `AutomatedUpdateDate' and
%% when the `UpdateStatus' is in the `PENDING_UPDATE' state.
cancel_elasticsearch_service_software_update(Client, Input) ->
    cancel_elasticsearch_service_software_update(Client, Input, []).
cancel_elasticsearch_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/serviceSoftwareUpdate/cancel"],
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

%% @doc Creates a new Elasticsearch domain.
%%
%% For more information, see Creating Elasticsearch Domains in the Amazon
%% Elasticsearch Service Developer Guide.
create_elasticsearch_domain(Client, Input) ->
    create_elasticsearch_domain(Client, Input, []).
create_elasticsearch_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/domain"],
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

%% @doc Creates a new cross-cluster search connection from a source domain to
%% a destination domain.
create_outbound_cross_cluster_search_connection(Client, Input) ->
    create_outbound_cross_cluster_search_connection(Client, Input, []).
create_outbound_cross_cluster_search_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/ccs/outboundConnection"],
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

%% @doc Create a package for use with Amazon ES domains.
create_package(Client, Input) ->
    create_package(Client, Input, []).
create_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/packages"],
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
    Path = ["/2015-01-01/es/vpcEndpoints"],
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

%% @doc Permanently deletes the specified Elasticsearch domain and all of its
%% data.
%%
%% Once a domain is deleted, it cannot be recovered.
delete_elasticsearch_domain(Client, DomainName, Input) ->
    delete_elasticsearch_domain(Client, DomainName, Input, []).
delete_elasticsearch_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Deletes the service-linked role that Elasticsearch Service uses to
%% manage and maintain VPC domains.
%%
%% Role deletion will fail if any existing VPC domains use the role. You must
%% delete any such Elasticsearch domains before deleting the role. See
%% Deleting Elasticsearch Service Role in VPC Endpoints for Amazon
%% Elasticsearch Service Domains.
delete_elasticsearch_service_role(Client, Input) ->
    delete_elasticsearch_service_role(Client, Input, []).
delete_elasticsearch_service_role(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/role"],
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

%% @doc Allows the destination domain owner to delete an existing inbound
%% cross-cluster search connection.
delete_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    delete_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).
delete_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/ccs/inboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), ""],
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

%% @doc Allows the source domain owner to delete an existing outbound
%% cross-cluster search connection.
delete_outbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    delete_outbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).
delete_outbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/ccs/outboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), ""],
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

%% @doc Delete the package.
delete_package(Client, PackageID, Input) ->
    delete_package(Client, PackageID, Input, []).
delete_package(Client, PackageID, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/packages/", aws_util:encode_uri(PackageID), ""],
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
    Path = ["/2015-01-01/es/vpcEndpoints/", aws_util:encode_uri(VpcEndpointId), ""],
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

%% @doc Provides scheduled Auto-Tune action details for the Elasticsearch
%% domain, such as Auto-Tune action type, description, severity, and
%% scheduled date.
describe_domain_auto_tunes(Client, DomainName)
  when is_map(Client) ->
    describe_domain_auto_tunes(Client, DomainName, #{}, #{}).

describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap, []).

describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/autoTunes"],
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/progress"],
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

%% @doc Returns domain configuration information about the specified
%% Elasticsearch domain, including the domain ID, domain endpoint, and domain
%% ARN.
describe_elasticsearch_domain(Client, DomainName)
  when is_map(Client) ->
    describe_elasticsearch_domain(Client, DomainName, #{}, #{}).

describe_elasticsearch_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_elasticsearch_domain(Client, DomainName, QueryMap, HeadersMap, []).

describe_elasticsearch_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides cluster configuration information about the specified
%% Elasticsearch domain, such as the state, creation date, update version,
%% and update date for cluster options.
describe_elasticsearch_domain_config(Client, DomainName)
  when is_map(Client) ->
    describe_elasticsearch_domain_config(Client, DomainName, #{}, #{}).

describe_elasticsearch_domain_config(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_elasticsearch_domain_config(Client, DomainName, QueryMap, HeadersMap, []).

describe_elasticsearch_domain_config(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns domain configuration information about the specified
%% Elasticsearch domains, including the domain ID, domain endpoint, and
%% domain ARN.
describe_elasticsearch_domains(Client, Input) ->
    describe_elasticsearch_domains(Client, Input, []).
describe_elasticsearch_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/domain-info"],
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

%% @doc Describe Elasticsearch Limits for a given InstanceType and
%% ElasticsearchVersion.
%%
%% When modifying existing Domain, specify the ` `DomainName' ' to know what
%% Limits are supported for modifying.
describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType)
  when is_map(Client) ->
    describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, #{}, #{}).

describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, QueryMap, HeadersMap, []).

describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/instanceTypeLimits/", aws_util:encode_uri(ElasticsearchVersion), "/", aws_util:encode_uri(InstanceType), ""],
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

%% @doc Lists all the inbound cross-cluster search connections for a
%% destination domain.
describe_inbound_cross_cluster_search_connections(Client, Input) ->
    describe_inbound_cross_cluster_search_connections(Client, Input, []).
describe_inbound_cross_cluster_search_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/ccs/inboundConnection/search"],
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

%% @doc Lists all the outbound cross-cluster search connections for a source
%% domain.
describe_outbound_cross_cluster_search_connections(Client, Input) ->
    describe_outbound_cross_cluster_search_connections(Client, Input, []).
describe_outbound_cross_cluster_search_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/ccs/outboundConnection/search"],
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

%% @doc Describes all packages available to Amazon ES.
%%
%% Includes options for filtering, limiting the number of results, and
%% pagination.
describe_packages(Client, Input) ->
    describe_packages(Client, Input, []).
describe_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/packages/describe"],
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

%% @doc Lists available reserved Elasticsearch instance offerings.
describe_reserved_elasticsearch_instance_offerings(Client)
  when is_map(Client) ->
    describe_reserved_elasticsearch_instance_offerings(Client, #{}, #{}).

describe_reserved_elasticsearch_instance_offerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_elasticsearch_instance_offerings(Client, QueryMap, HeadersMap, []).

describe_reserved_elasticsearch_instance_offerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/reservedInstanceOfferings"],
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

%% @doc Returns information about reserved Elasticsearch instances for this
%% account.
describe_reserved_elasticsearch_instances(Client)
  when is_map(Client) ->
    describe_reserved_elasticsearch_instances(Client, #{}, #{}).

describe_reserved_elasticsearch_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_elasticsearch_instances(Client, QueryMap, HeadersMap, []).

describe_reserved_elasticsearch_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/reservedInstances"],
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
    Path = ["/2015-01-01/es/vpcEndpoints/describe"],
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

%% @doc Dissociates a package from the Amazon ES domain.
dissociate_package(Client, DomainName, PackageID, Input) ->
    dissociate_package(Client, DomainName, PackageID, Input, []).
dissociate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/packages/dissociate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Returns a list of upgrade compatible Elastisearch versions.
%%
%% You can optionally pass a ` `DomainName' ' to get all upgrade compatible
%% Elasticsearch versions for that specific domain.
get_compatible_elasticsearch_versions(Client)
  when is_map(Client) ->
    get_compatible_elasticsearch_versions(Client, #{}, #{}).

get_compatible_elasticsearch_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compatible_elasticsearch_versions(Client, QueryMap, HeadersMap, []).

get_compatible_elasticsearch_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/compatibleVersions"],
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

%% @doc Returns a list of versions of the package, along with their creation
%% time and commit message.
get_package_version_history(Client, PackageID)
  when is_map(Client) ->
    get_package_version_history(Client, PackageID, #{}, #{}).

get_package_version_history(Client, PackageID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_history(Client, PackageID, QueryMap, HeadersMap, []).

get_package_version_history(Client, PackageID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/packages/", aws_util:encode_uri(PackageID), "/history"],
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

%% @doc Retrieves the complete history of the last 10 upgrades that were
%% performed on the domain.
get_upgrade_history(Client, DomainName)
  when is_map(Client) ->
    get_upgrade_history(Client, DomainName, #{}, #{}).

get_upgrade_history(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_upgrade_history(Client, DomainName, QueryMap, HeadersMap, []).

get_upgrade_history(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/upgradeDomain/", aws_util:encode_uri(DomainName), "/history"],
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
%% eligibility check that was performed on the domain.
get_upgrade_status(Client, DomainName)
  when is_map(Client) ->
    get_upgrade_status(Client, DomainName, #{}, #{}).

get_upgrade_status(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_upgrade_status(Client, DomainName, QueryMap, HeadersMap, []).

get_upgrade_status(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/upgradeDomain/", aws_util:encode_uri(DomainName), "/status"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the name of all Elasticsearch domains owned by the current
%% user's account.
list_domain_names(Client)
  when is_map(Client) ->
    list_domain_names(Client, #{}, #{}).

list_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_names(Client, QueryMap, HeadersMap, []).

list_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/domain"],
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

%% @doc Lists all Amazon ES domains associated with the package.
list_domains_for_package(Client, PackageID)
  when is_map(Client) ->
    list_domains_for_package(Client, PackageID, #{}, #{}).

list_domains_for_package(Client, PackageID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains_for_package(Client, PackageID, QueryMap, HeadersMap, []).

list_domains_for_package(Client, PackageID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/packages/", aws_util:encode_uri(PackageID), "/domains"],
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

%% @doc List all Elasticsearch instance types that are supported for given
%% ElasticsearchVersion
list_elasticsearch_instance_types(Client, ElasticsearchVersion)
  when is_map(Client) ->
    list_elasticsearch_instance_types(Client, ElasticsearchVersion, #{}, #{}).

list_elasticsearch_instance_types(Client, ElasticsearchVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_elasticsearch_instance_types(Client, ElasticsearchVersion, QueryMap, HeadersMap, []).

list_elasticsearch_instance_types(Client, ElasticsearchVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/instanceTypes/", aws_util:encode_uri(ElasticsearchVersion), ""],
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

%% @doc List all supported Elasticsearch versions
list_elasticsearch_versions(Client)
  when is_map(Client) ->
    list_elasticsearch_versions(Client, #{}, #{}).

list_elasticsearch_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_elasticsearch_versions(Client, QueryMap, HeadersMap, []).

list_elasticsearch_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/versions"],
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

%% @doc Lists all packages associated with the Amazon ES domain.
list_packages_for_domain(Client, DomainName)
  when is_map(Client) ->
    list_packages_for_domain(Client, DomainName, #{}, #{}).

list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap, []).

list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/domain/", aws_util:encode_uri(DomainName), "/packages"],
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

%% @doc Returns all tags for the given Elasticsearch domain.
list_tags(Client, ARN)
  when is_map(Client) ->
    list_tags(Client, ARN, #{}, #{}).

list_tags(Client, ARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ARN, QueryMap, HeadersMap, []).

list_tags(Client, ARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/tags/"],
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

%% @doc Retrieves information about each principal that is allowed to access
%% a given Amazon OpenSearch Service domain through the use of an interface
%% VPC endpoint.
list_vpc_endpoint_access(Client, DomainName)
  when is_map(Client) ->
    list_vpc_endpoint_access(Client, DomainName, #{}, #{}).

list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap, []).

list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/listVpcEndpointAccess"],
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
%% current account and Region.
list_vpc_endpoints(Client)
  when is_map(Client) ->
    list_vpc_endpoints(Client, #{}, #{}).

list_vpc_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoints(Client, QueryMap, HeadersMap, []).

list_vpc_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/vpcEndpoints"],
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/vpcEndpoints"],
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

%% @doc Allows you to purchase reserved Elasticsearch instances.
purchase_reserved_elasticsearch_instance_offering(Client, Input) ->
    purchase_reserved_elasticsearch_instance_offering(Client, Input, []).
purchase_reserved_elasticsearch_instance_offering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/purchaseReservedInstanceOffering"],
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

%% @doc Allows the destination domain owner to reject an inbound
%% cross-cluster search connection request.
reject_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    reject_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).
reject_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-01-01/es/ccs/inboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), "/reject"],
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

%% @doc Removes the specified set of tags from the specified Elasticsearch
%% domain.
remove_tags(Client, Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/tags-removal"],
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/revokeVpcEndpointAccess"],
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

%% @doc Schedules a service software update for an Amazon ES domain.
start_elasticsearch_service_software_update(Client, Input) ->
    start_elasticsearch_service_software_update(Client, Input, []).
start_elasticsearch_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/serviceSoftwareUpdate/start"],
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

%% @doc Modifies the cluster configuration of the specified Elasticsearch
%% domain, setting as setting the instance type and the number of instances.
update_elasticsearch_domain_config(Client, DomainName, Input) ->
    update_elasticsearch_domain_config(Client, DomainName, Input, []).
update_elasticsearch_domain_config(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/config"],
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

%% @doc Updates a package for use with Amazon ES domains.
update_package(Client, Input) ->
    update_package(Client, Input, []).
update_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/packages/update"],
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
    Path = ["/2015-01-01/es/vpcEndpoints/update"],
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

%% @doc Allows you to either upgrade your domain or perform an Upgrade
%% eligibility check to a compatible Elasticsearch version.
upgrade_elasticsearch_domain(Client, Input) ->
    upgrade_elasticsearch_domain(Client, Input, []).
upgrade_elasticsearch_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/upgradeDomain"],
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
