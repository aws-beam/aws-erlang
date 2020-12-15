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
         create_configuration/2,
         create_configuration/3,
         delete_cluster/3,
         delete_cluster/4,
         delete_configuration/3,
         delete_configuration/4,
         describe_cluster/2,
         describe_cluster/3,
         describe_cluster_operation/2,
         describe_cluster_operation/3,
         describe_configuration/2,
         describe_configuration/3,
         describe_configuration_revision/3,
         describe_configuration_revision/4,
         get_bootstrap_brokers/2,
         get_bootstrap_brokers/3,
         get_compatible_kafka_versions/2,
         get_compatible_kafka_versions/3,
         list_cluster_operations/4,
         list_cluster_operations/5,
         list_clusters/4,
         list_clusters/5,
         list_configuration_revisions/4,
         list_configuration_revisions/5,
         list_configurations/3,
         list_configurations/4,
         list_kafka_versions/3,
         list_kafka_versions/4,
         list_nodes/4,
         list_nodes/5,
         list_scram_secrets/4,
         list_scram_secrets/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         reboot_broker/3,
         reboot_broker/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_broker_count/3,
         update_broker_count/4,
         update_broker_storage/3,
         update_broker_storage/4,
         update_cluster_configuration/3,
         update_cluster_configuration/4,
         update_cluster_kafka_version/3,
         update_cluster_kafka_version/4,
         update_configuration/3,
         update_configuration/4,
         update_monitoring/3,
         update_monitoring/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more Scram Secrets with an Amazon MSK cluster.
batch_associate_scram_secret(Client, ClusterArn, Input) ->
    batch_associate_scram_secret(Client, ClusterArn, Input, []).
batch_associate_scram_secret(Client, ClusterArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates one or more Scram Secrets from an Amazon MSK cluster.
batch_disassociate_scram_secret(Client, ClusterArn, Input) ->
    batch_disassociate_scram_secret(Client, ClusterArn, Input, []).
batch_disassociate_scram_secret(Client, ClusterArn, Input0, Options) ->
    Method = patch,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MSK cluster.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/clusters"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MSK configuration.
create_configuration(Client, Input) ->
    create_configuration(Client, Input, []).
create_configuration(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/configurations"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the MSK cluster specified by the Amazon Resource Name (ARN)
%% in the request.
delete_cluster(Client, ClusterArn, Input) ->
    delete_cluster(Client, ClusterArn, Input, []).
delete_cluster(Client, ClusterArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"currentVersion">>, <<"CurrentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified MSK configuration.
%%
%% The configuration must be in the ACTIVE or DELETE_FAILED state.
delete_configuration(Client, Arn, Input) ->
    delete_configuration(Client, Arn, Input, []).
delete_configuration(Client, Arn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a description of the MSK cluster whose Amazon Resource Name
%% (ARN) is specified in the request.
describe_cluster(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster(Client, ClusterArn, []).
describe_cluster(Client, ClusterArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the cluster operation specified by the ARN.
describe_cluster_operation(Client, ClusterOperationArn)
  when is_map(Client) ->
    describe_cluster_operation(Client, ClusterOperationArn, []).
describe_cluster_operation(Client, ClusterOperationArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/operations/", aws_util:encode_uri(ClusterOperationArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this MSK configuration.
describe_configuration(Client, Arn)
  when is_map(Client) ->
    describe_configuration(Client, Arn, []).
describe_configuration(Client, Arn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this revision of the configuration.
describe_configuration_revision(Client, Arn, Revision)
  when is_map(Client) ->
    describe_configuration_revision(Client, Arn, Revision, []).
describe_configuration_revision(Client, Arn, Revision, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), "/revisions/", aws_util:encode_uri(Revision), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of brokers that a client application can use to bootstrap.
get_bootstrap_brokers(Client, ClusterArn)
  when is_map(Client) ->
    get_bootstrap_brokers(Client, ClusterArn, []).
get_bootstrap_brokers(Client, ClusterArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/bootstrap-brokers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Apache Kafka versions to which you can update the MSK
%% cluster.
get_compatible_kafka_versions(Client, ClusterArn)
  when is_map(Client) ->
    get_compatible_kafka_versions(Client, ClusterArn, []).
get_compatible_kafka_versions(Client, ClusterArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/compatible-kafka-versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"clusterArn">>, ClusterArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the operations that have been performed on the
%% specified MSK cluster.
list_cluster_operations(Client, ClusterArn, MaxResults, NextToken)
  when is_map(Client) ->
    list_cluster_operations(Client, ClusterArn, MaxResults, NextToken, []).
list_cluster_operations(Client, ClusterArn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/operations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK clusters in the current Region.
list_clusters(Client, ClusterNameFilter, MaxResults, NextToken)
  when is_map(Client) ->
    list_clusters(Client, ClusterNameFilter, MaxResults, NextToken, []).
list_clusters(Client, ClusterNameFilter, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/clusters"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"clusterNameFilter">>, ClusterNameFilter},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the revisions of an MSK configuration.
list_configuration_revisions(Client, Arn, MaxResults, NextToken)
  when is_map(Client) ->
    list_configuration_revisions(Client, Arn, MaxResults, NextToken, []).
list_configuration_revisions(Client, Arn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), "/revisions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK configurations in this Region.
list_configurations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_configurations(Client, MaxResults, NextToken, []).
list_configurations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/configurations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Kafka versions.
list_kafka_versions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_kafka_versions(Client, MaxResults, NextToken, []).
list_kafka_versions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/kafka-versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the broker nodes in the cluster.
list_nodes(Client, ClusterArn, MaxResults, NextToken)
  when is_map(Client) ->
    list_nodes(Client, ClusterArn, MaxResults, NextToken, []).
list_nodes(Client, ClusterArn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the Scram Secrets associated with an Amazon MSK
%% cluster.
list_scram_secrets(Client, ClusterArn, MaxResults, NextToken)
  when is_map(Client) ->
    list_scram_secrets(Client, ClusterArn, MaxResults, NextToken, []).
list_scram_secrets(Client, ClusterArn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags associated with the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Executes a reboot on a broker.
reboot_broker(Client, ClusterArn, Input) ->
    reboot_broker(Client, ClusterArn, Input, []).
reboot_broker(Client, ClusterArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/reboot-broker"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to the specified MSK resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the tags associated with the keys that are provided in the
%% query.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the number of broker nodes in the cluster.
%%
%% You can use this operation to increase the number of brokers in an
%% existing cluster. You can't decrease the number of brokers.
update_broker_count(Client, ClusterArn, Input) ->
    update_broker_count(Client, ClusterArn, Input, []).
update_broker_count(Client, ClusterArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/count"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the EBS storage associated with MSK brokers.
update_broker_storage(Client, ClusterArn, Input) ->
    update_broker_storage(Client, ClusterArn, Input, []).
update_broker_storage(Client, ClusterArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/storage"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the cluster with the configuration that is specified in the
%% request body.
update_cluster_configuration(Client, ClusterArn, Input) ->
    update_cluster_configuration(Client, ClusterArn, Input, []).
update_cluster_configuration(Client, ClusterArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Apache Kafka version for the cluster.
update_cluster_kafka_version(Client, ClusterArn, Input) ->
    update_cluster_kafka_version(Client, ClusterArn, Input, []).
update_cluster_kafka_version(Client, ClusterArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/version"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing MSK configuration.
%%
%% The configuration must be in the Active state.
update_configuration(Client, Arn, Input) ->
    update_configuration(Client, Arn, Input, []).
update_configuration(Client, Arn, Input0, Options) ->
    Method = put,
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the monitoring settings for the cluster.
%%
%% You can use this operation to specify which Apache Kafka metrics you want
%% Amazon MSK to send to Amazon CloudWatch. You can also specify settings for
%% open monitoring with Prometheus.
update_monitoring(Client, ClusterArn, Input) ->
    update_monitoring(Client, ClusterArn, Input, []).
update_monitoring(Client, ClusterArn, Input0, Options) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/monitoring"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"kafka">>},
    Host = build_host(<<"kafka">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
