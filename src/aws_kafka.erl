%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The operations for managing an Amazon MSK cluster.
-module(aws_kafka).

-export([batch_associate_scram_secret/3,
         batch_associate_scram_secret/4,
         batch_disassociate_scram_secret/3,
         batch_disassociate_scram_secret/4,
         create_cluster/2,
         create_cluster/3,
         create_cluster_v2/2,
         create_cluster_v2/3,
         create_configuration/2,
         create_configuration/3,
         create_replicator/2,
         create_replicator/3,
         create_vpc_connection/2,
         create_vpc_connection/3,
         delete_cluster/3,
         delete_cluster/4,
         delete_cluster_policy/3,
         delete_cluster_policy/4,
         delete_configuration/3,
         delete_configuration/4,
         delete_replicator/3,
         delete_replicator/4,
         delete_vpc_connection/3,
         delete_vpc_connection/4,
         describe_cluster/2,
         describe_cluster/4,
         describe_cluster/5,
         describe_cluster_operation/2,
         describe_cluster_operation/4,
         describe_cluster_operation/5,
         describe_cluster_operation_v2/2,
         describe_cluster_operation_v2/4,
         describe_cluster_operation_v2/5,
         describe_cluster_v2/2,
         describe_cluster_v2/4,
         describe_cluster_v2/5,
         describe_configuration/2,
         describe_configuration/4,
         describe_configuration/5,
         describe_configuration_revision/3,
         describe_configuration_revision/5,
         describe_configuration_revision/6,
         describe_replicator/2,
         describe_replicator/4,
         describe_replicator/5,
         describe_vpc_connection/2,
         describe_vpc_connection/4,
         describe_vpc_connection/5,
         get_bootstrap_brokers/2,
         get_bootstrap_brokers/4,
         get_bootstrap_brokers/5,
         get_cluster_policy/2,
         get_cluster_policy/4,
         get_cluster_policy/5,
         get_compatible_kafka_versions/1,
         get_compatible_kafka_versions/3,
         get_compatible_kafka_versions/4,
         list_client_vpc_connections/2,
         list_client_vpc_connections/4,
         list_client_vpc_connections/5,
         list_cluster_operations/2,
         list_cluster_operations/4,
         list_cluster_operations/5,
         list_cluster_operations_v2/2,
         list_cluster_operations_v2/4,
         list_cluster_operations_v2/5,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_clusters_v2/1,
         list_clusters_v2/3,
         list_clusters_v2/4,
         list_configuration_revisions/2,
         list_configuration_revisions/4,
         list_configuration_revisions/5,
         list_configurations/1,
         list_configurations/3,
         list_configurations/4,
         list_kafka_versions/1,
         list_kafka_versions/3,
         list_kafka_versions/4,
         list_nodes/2,
         list_nodes/4,
         list_nodes/5,
         list_replicators/1,
         list_replicators/3,
         list_replicators/4,
         list_scram_secrets/2,
         list_scram_secrets/4,
         list_scram_secrets/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_vpc_connections/1,
         list_vpc_connections/3,
         list_vpc_connections/4,
         put_cluster_policy/3,
         put_cluster_policy/4,
         reboot_broker/3,
         reboot_broker/4,
         reject_client_vpc_connection/3,
         reject_client_vpc_connection/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_broker_count/3,
         update_broker_count/4,
         update_broker_storage/3,
         update_broker_storage/4,
         update_broker_type/3,
         update_broker_type/4,
         update_cluster_configuration/3,
         update_cluster_configuration/4,
         update_cluster_kafka_version/3,
         update_cluster_kafka_version/4,
         update_configuration/3,
         update_configuration/4,
         update_connectivity/3,
         update_connectivity/4,
         update_monitoring/3,
         update_monitoring/4,
         update_replication_info/3,
         update_replication_info/4,
         update_security/3,
         update_security/4,
         update_storage/3,
         update_storage/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more Scram Secrets with an Amazon MSK cluster.
batch_associate_scram_secret(Client, ClusterArn, Input) ->
    batch_associate_scram_secret(Client, ClusterArn, Input, []).
batch_associate_scram_secret(Client, ClusterArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
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

%% @doc Disassociates one or more Scram Secrets from an Amazon MSK cluster.
batch_disassociate_scram_secret(Client, ClusterArn, Input) ->
    batch_disassociate_scram_secret(Client, ClusterArn, Input, []).
batch_disassociate_scram_secret(Client, ClusterArn, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
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

%% @doc Creates a new MSK cluster.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/clusters"],
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

%% @doc Creates a new Amazon MSK cluster of either the provisioned or the
%% serverless type.
create_cluster_v2(Client, Input) ->
    create_cluster_v2(Client, Input, []).
create_cluster_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v2/clusters"],
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

%% @doc Creates a new MSK configuration.
create_configuration(Client, Input) ->
    create_configuration(Client, Input, []).
create_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/configurations"],
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

%% @doc Creates a new Kafka Replicator.
create_replicator(Client, Input) ->
    create_replicator(Client, Input, []).
create_replicator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/replication/v1/replicators"],
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

%% @doc Creates a new Amazon MSK VPC connection.
create_vpc_connection(Client, Input) ->
    create_vpc_connection(Client, Input, []).
create_vpc_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/vpc-connection"],
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

%% @doc Deletes the MSK cluster specified by the Amazon Resource Name (ARN)
%% in the request.
delete_cluster(Client, ClusterArn, Input) ->
    delete_cluster(Client, ClusterArn, Input, []).
delete_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), ""],
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
                     {<<"currentVersion">>, <<"CurrentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the MSK cluster policy specified by the Amazon Resource Name
%% (ARN) in your request.
delete_cluster_policy(Client, ClusterArn, Input) ->
    delete_cluster_policy(Client, ClusterArn, Input, []).
delete_cluster_policy(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/policy"],
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

%% @doc Deletes the specified MSK configuration.
%%
%% The configuration must be in the ACTIVE or DELETE_FAILED state.
delete_configuration(Client, Arn, Input) ->
    delete_configuration(Client, Arn, Input, []).
delete_configuration(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
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

%% @doc Deletes a replicator.
delete_replicator(Client, ReplicatorArn, Input) ->
    delete_replicator(Client, ReplicatorArn, Input, []).
delete_replicator(Client, ReplicatorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/replication/v1/replicators/", aws_util:encode_uri(ReplicatorArn), ""],
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
                     {<<"currentVersion">>, <<"CurrentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon MSK VPC connection specified in your request.
delete_vpc_connection(Client, Arn, Input) ->
    delete_vpc_connection(Client, Arn, Input, []).
delete_vpc_connection(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/vpc-connection/", aws_util:encode_uri(Arn), ""],
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

%% @doc Returns a description of the MSK cluster whose Amazon Resource Name
%% (ARN) is specified in the request.
describe_cluster(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster(Client, ClusterArn, #{}, #{}).

describe_cluster(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, []).

describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the cluster operation specified by the ARN.
describe_cluster_operation(Client, ClusterOperationArn)
  when is_map(Client) ->
    describe_cluster_operation(Client, ClusterOperationArn, #{}, #{}).

describe_cluster_operation(Client, ClusterOperationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_operation(Client, ClusterOperationArn, QueryMap, HeadersMap, []).

describe_cluster_operation(Client, ClusterOperationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/operations/", aws_util:encode_uri(ClusterOperationArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the cluster operation specified by the ARN.
describe_cluster_operation_v2(Client, ClusterOperationArn)
  when is_map(Client) ->
    describe_cluster_operation_v2(Client, ClusterOperationArn, #{}, #{}).

describe_cluster_operation_v2(Client, ClusterOperationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_operation_v2(Client, ClusterOperationArn, QueryMap, HeadersMap, []).

describe_cluster_operation_v2(Client, ClusterOperationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/operations/", aws_util:encode_uri(ClusterOperationArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the MSK cluster of either the provisioned or
%% the serverless type whose Amazon Resource Name (ARN) is specified in the
%% request.
describe_cluster_v2(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster_v2(Client, ClusterArn, #{}, #{}).

describe_cluster_v2(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_v2(Client, ClusterArn, QueryMap, HeadersMap, []).

describe_cluster_v2(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this MSK configuration.
describe_configuration(Client, Arn)
  when is_map(Client) ->
    describe_configuration(Client, Arn, #{}, #{}).

describe_configuration(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration(Client, Arn, QueryMap, HeadersMap, []).

describe_configuration(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this revision of the configuration.
describe_configuration_revision(Client, Arn, Revision)
  when is_map(Client) ->
    describe_configuration_revision(Client, Arn, Revision, #{}, #{}).

describe_configuration_revision(Client, Arn, Revision, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration_revision(Client, Arn, Revision, QueryMap, HeadersMap, []).

describe_configuration_revision(Client, Arn, Revision, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), "/revisions/", aws_util:encode_uri(Revision), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the Kafka Replicator whose Amazon Resource
%% Name (ARN) is specified in the request.
describe_replicator(Client, ReplicatorArn)
  when is_map(Client) ->
    describe_replicator(Client, ReplicatorArn, #{}, #{}).

describe_replicator(Client, ReplicatorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_replicator(Client, ReplicatorArn, QueryMap, HeadersMap, []).

describe_replicator(Client, ReplicatorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/replication/v1/replicators/", aws_util:encode_uri(ReplicatorArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays information about the specified Amazon MSK VPC connection.
describe_vpc_connection(Client, Arn)
  when is_map(Client) ->
    describe_vpc_connection(Client, Arn, #{}, #{}).

describe_vpc_connection(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vpc_connection(Client, Arn, QueryMap, HeadersMap, []).

describe_vpc_connection(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/vpc-connection/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of brokers that a client application can use to bootstrap.
get_bootstrap_brokers(Client, ClusterArn)
  when is_map(Client) ->
    get_bootstrap_brokers(Client, ClusterArn, #{}, #{}).

get_bootstrap_brokers(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bootstrap_brokers(Client, ClusterArn, QueryMap, HeadersMap, []).

get_bootstrap_brokers(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/bootstrap-brokers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the contents of the specified MSK cluster policy.
get_cluster_policy(Client, ClusterArn)
  when is_map(Client) ->
    get_cluster_policy(Client, ClusterArn, #{}, #{}).

get_cluster_policy(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cluster_policy(Client, ClusterArn, QueryMap, HeadersMap, []).

get_cluster_policy(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Apache Kafka versions to which you can update the MSK
%% cluster.
get_compatible_kafka_versions(Client)
  when is_map(Client) ->
    get_compatible_kafka_versions(Client, #{}, #{}).

get_compatible_kafka_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compatible_kafka_versions(Client, QueryMap, HeadersMap, []).

get_compatible_kafka_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/compatible-kafka-versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"clusterArn">>, maps:get(<<"clusterArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of client VPC connections.
list_client_vpc_connections(Client, ClusterArn)
  when is_map(Client) ->
    list_client_vpc_connections(Client, ClusterArn, #{}, #{}).

list_client_vpc_connections(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_client_vpc_connections(Client, ClusterArn, QueryMap, HeadersMap, []).

list_client_vpc_connections(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/client-vpc-connections"],
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

%% @doc Returns a list of all the operations that have been performed on the
%% specified MSK cluster.
list_cluster_operations(Client, ClusterArn)
  when is_map(Client) ->
    list_cluster_operations(Client, ClusterArn, #{}, #{}).

list_cluster_operations(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cluster_operations(Client, ClusterArn, QueryMap, HeadersMap, []).

list_cluster_operations(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/operations"],
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

%% @doc Returns a list of all the operations that have been performed on the
%% specified MSK cluster.
list_cluster_operations_v2(Client, ClusterArn)
  when is_map(Client) ->
    list_cluster_operations_v2(Client, ClusterArn, #{}, #{}).

list_cluster_operations_v2(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cluster_operations_v2(Client, ClusterArn, QueryMap, HeadersMap, []).

list_cluster_operations_v2(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/clusters/", aws_util:encode_uri(ClusterArn), "/operations"],
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

%% @doc Returns a list of all the MSK clusters in the current Region.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"clusterNameFilter">>, maps:get(<<"clusterNameFilter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK clusters in the current Region.
list_clusters_v2(Client)
  when is_map(Client) ->
    list_clusters_v2(Client, #{}, #{}).

list_clusters_v2(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters_v2(Client, QueryMap, HeadersMap, []).

list_clusters_v2(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/clusters"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"clusterNameFilter">>, maps:get(<<"clusterNameFilter">>, QueryMap, undefined)},
        {<<"clusterTypeFilter">>, maps:get(<<"clusterTypeFilter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the revisions of an MSK configuration.
list_configuration_revisions(Client, Arn)
  when is_map(Client) ->
    list_configuration_revisions(Client, Arn, #{}, #{}).

list_configuration_revisions(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_revisions(Client, Arn, QueryMap, HeadersMap, []).

list_configuration_revisions(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), "/revisions"],
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

%% @doc Returns a list of all the MSK configurations in this Region.
list_configurations(Client)
  when is_map(Client) ->
    list_configurations(Client, #{}, #{}).

list_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configurations(Client, QueryMap, HeadersMap, []).

list_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations"],
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

%% @doc Returns a list of Apache Kafka versions.
list_kafka_versions(Client)
  when is_map(Client) ->
    list_kafka_versions(Client, #{}, #{}).

list_kafka_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kafka_versions(Client, QueryMap, HeadersMap, []).

list_kafka_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/kafka-versions"],
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

%% @doc Returns a list of the broker nodes in the cluster.
list_nodes(Client, ClusterArn)
  when is_map(Client) ->
    list_nodes(Client, ClusterArn, #{}, #{}).

list_nodes(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, ClusterArn, QueryMap, HeadersMap, []).

list_nodes(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes"],
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

%% @doc Lists the replicators.
list_replicators(Client)
  when is_map(Client) ->
    list_replicators(Client, #{}, #{}).

list_replicators(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_replicators(Client, QueryMap, HeadersMap, []).

list_replicators(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/replication/v1/replicators"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"replicatorNameFilter">>, maps:get(<<"replicatorNameFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the Scram Secrets associated with an Amazon MSK
%% cluster.
list_scram_secrets(Client, ClusterArn)
  when is_map(Client) ->
    list_scram_secrets(Client, ClusterArn, #{}, #{}).

list_scram_secrets(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scram_secrets(Client, ClusterArn, QueryMap, HeadersMap, []).

list_scram_secrets(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
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

%% @doc Returns a list of the tags associated with the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of Amazon MSK VPC connections.
list_vpc_connections(Client)
  when is_map(Client) ->
    list_vpc_connections(Client, #{}, #{}).

list_vpc_connections(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_connections(Client, QueryMap, HeadersMap, []).

list_vpc_connections(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/vpc-connections"],
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

%% @doc Creates or updates the specified MSK cluster policy.
%%
%% If updating the policy, the currentVersion field is required in the
%% request payload.
put_cluster_policy(Client, ClusterArn, Input) ->
    put_cluster_policy(Client, ClusterArn, Input, []).
put_cluster_policy(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/policy"],
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

%% @doc Executes a reboot on a broker.
reboot_broker(Client, ClusterArn, Input) ->
    reboot_broker(Client, ClusterArn, Input, []).
reboot_broker(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/reboot-broker"],
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


reject_client_vpc_connection(Client, ClusterArn, Input) ->
    reject_client_vpc_connection(Client, ClusterArn, Input, []).
reject_client_vpc_connection(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/client-vpc-connection"],
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

%% @doc Adds tags to the specified MSK resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes the tags associated with the keys that are provided in the
%% query.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the number of broker nodes in the cluster.
%%
%% You can use this operation to increase the number of brokers in an
%% existing cluster. You can't decrease the number of brokers.
update_broker_count(Client, ClusterArn, Input) ->
    update_broker_count(Client, ClusterArn, Input, []).
update_broker_count(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/count"],
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

%% @doc Updates the EBS storage associated with MSK brokers.
update_broker_storage(Client, ClusterArn, Input) ->
    update_broker_storage(Client, ClusterArn, Input, []).
update_broker_storage(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/storage"],
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

%% @doc Updates all the brokers in the cluster to the specified type.
update_broker_type(Client, ClusterArn, Input) ->
    update_broker_type(Client, ClusterArn, Input, []).
update_broker_type(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/type"],
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

%% @doc Updates the cluster with the configuration that is specified in the
%% request body.
update_cluster_configuration(Client, ClusterArn, Input) ->
    update_cluster_configuration(Client, ClusterArn, Input, []).
update_cluster_configuration(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/configuration"],
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

%% @doc Updates the Apache Kafka version for the cluster.
update_cluster_kafka_version(Client, ClusterArn, Input) ->
    update_cluster_kafka_version(Client, ClusterArn, Input, []).
update_cluster_kafka_version(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/version"],
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

%% @doc Updates an existing MSK configuration.
%%
%% The configuration must be in the Active state.
update_configuration(Client, Arn, Input) ->
    update_configuration(Client, Arn, Input, []).
update_configuration(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
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

%% @doc Updates the connectivity configuration for the MSK cluster.
update_connectivity(Client, ClusterArn, Input) ->
    update_connectivity(Client, ClusterArn, Input, []).
update_connectivity(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/connectivity"],
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

%% @doc Updates the monitoring settings for the cluster.
%%
%% You can use this operation to specify which Apache Kafka metrics you want
%% Amazon MSK to send to Amazon CloudWatch. You can also specify settings for
%% open monitoring with Prometheus.
update_monitoring(Client, ClusterArn, Input) ->
    update_monitoring(Client, ClusterArn, Input, []).
update_monitoring(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/monitoring"],
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

%% @doc Updates replication info of a replicator.
update_replication_info(Client, ReplicatorArn, Input) ->
    update_replication_info(Client, ReplicatorArn, Input, []).
update_replication_info(Client, ReplicatorArn, Input0, Options0) ->
    Method = put,
    Path = ["/replication/v1/replicators/", aws_util:encode_uri(ReplicatorArn), "/replication-info"],
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

%% @doc You can use this operation to update the encrypting and
%% authentication settings for an existing cluster.
update_security(Client, ClusterArn, Input) ->
    update_security(Client, ClusterArn, Input, []).
update_security(Client, ClusterArn, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/security"],
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

%% @doc Updates cluster broker volume size (or) sets cluster storage mode to
%% TIERED.
update_storage(Client, ClusterArn, Input) ->
    update_storage(Client, ClusterArn, Input, []).
update_storage(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/storage"],
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
    Client1 = Client#{service => <<"kafka">>},
    Host = build_host(<<"kafka">>, Client1),
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
