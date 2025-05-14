%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is an interface reference for Amazon Aurora DSQL.
%%
%% It contains documentation for one of the
%% programming or command line interfaces you can use to manage Amazon Aurora
%% DSQL.
%%
%% Amazon Aurora DSQL is a serverless, distributed SQL database suitable for
%% workloads of any size.
%% is available in both single-Region and multi-Region configurations, so
%% your
%% clusters and databases are always available even if an Availability Zone
%% or an Amazon Web Services Region are unavailable. lets you focus on using
%% your data to
%% acquire new insights for your business and customers.
-module(aws_dsql).

-export([create_cluster/2,
         create_cluster/3,
         create_multi_region_clusters/2,
         create_multi_region_clusters/3,
         delete_cluster/3,
         delete_cluster/4,
         delete_multi_region_clusters/2,
         delete_multi_region_clusters/3,
         get_cluster/2,
         get_cluster/4,
         get_cluster/5,
         get_vpc_endpoint_service_name/2,
         get_vpc_endpoint_service_name/4,
         get_vpc_endpoint_service_name/5,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cluster/3,
         update_cluster/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% cluster_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"identifier">> => string()
%% }
-type cluster_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_cluster_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"multiRegionProperties">> => multi_region_properties(),
%%   <<"tags">> => map()
%% }
-type create_cluster_input() :: #{binary() => any()}.


%% Example:
%% create_cluster_output() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"identifier">> => string(),
%%   <<"multiRegionProperties">> => multi_region_properties(),
%%   <<"status">> => list(any())
%% }
-type create_cluster_output() :: #{binary() => any()}.


%% Example:
%% create_multi_region_clusters_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterProperties">> => map(),
%%   <<"linkedRegionList">> := list(string()()),
%%   <<"witnessRegion">> := string()
%% }
-type create_multi_region_clusters_input() :: #{binary() => any()}.


%% Example:
%% create_multi_region_clusters_output() :: #{
%%   <<"linkedClusterArns">> => list(string()())
%% }
-type create_multi_region_clusters_output() :: #{binary() => any()}.


%% Example:
%% delete_cluster_input() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_cluster_input() :: #{binary() => any()}.


%% Example:
%% delete_cluster_output() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"identifier">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_cluster_output() :: #{binary() => any()}.


%% Example:
%% delete_multi_region_clusters_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"linkedClusterArns">> := list(string()())
%% }
-type delete_multi_region_clusters_input() :: #{binary() => any()}.

%% Example:
%% get_cluster_input() :: #{}
-type get_cluster_input() :: #{}.


%% Example:
%% get_cluster_output() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"identifier">> => string(),
%%   <<"linkedClusterArns">> => list(string()()),
%%   <<"multiRegionProperties">> => multi_region_properties(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"witnessRegion">> => string()
%% }
-type get_cluster_output() :: #{binary() => any()}.

%% Example:
%% get_vpc_endpoint_service_name_input() :: #{}
-type get_vpc_endpoint_service_name_input() :: #{}.


%% Example:
%% get_vpc_endpoint_service_name_output() :: #{
%%   <<"serviceName">> => string()
%% }
-type get_vpc_endpoint_service_name_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% linked_cluster_properties() :: #{
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"tags">> => map()
%% }
-type linked_cluster_properties() :: #{binary() => any()}.


%% Example:
%% list_clusters_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_input() :: #{binary() => any()}.


%% Example:
%% list_clusters_output() :: #{
%%   <<"clusters">> => list(cluster_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% multi_region_properties() :: #{
%%   <<"clusters">> => list(string()()),
%%   <<"witnessRegion">> => string()
%% }
-type multi_region_properties() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_cluster_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"multiRegionProperties">> => multi_region_properties()
%% }
-type update_cluster_input() :: #{binary() => any()}.


%% Example:
%% update_cluster_output() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"deletionProtectionEnabled">> => boolean(),
%%   <<"identifier">> => string(),
%%   <<"linkedClusterArns">> => list(string()()),
%%   <<"status">> => list(any()),
%%   <<"witnessRegion">> => string()
%% }
-type update_cluster_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type create_cluster_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_multi_region_clusters_errors() ::
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_cluster_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type delete_multi_region_clusters_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type get_cluster_errors() ::
    resource_not_found_exception().

-type get_vpc_endpoint_service_name_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type list_clusters_errors() ::
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type tag_resource_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_cluster_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation creates a cluster in Amazon Aurora DSQL.
%%
%% You need the following permissions to
%% use this operation.
%%
%% Permission to create a cluster.
%%
%% dsql:CreateCluster
%%
%% Resources: arn:aws:dsql:region:account-id:cluster/*
%%
%% Permission to add tags to a resource.
%%
%% dsql:TagResource
%%
%% Resources:
%% arn:aws:dsql:region:account-id:cluster/*
%%
%% Permission to configure multi-region properties for
%% a cluster.
%%
%% dsql:PutMultiRegionProperties
%%
%% Resources:
%% arn:aws:dsql:region:account-id:cluster/*
%%
%% When specifying multiRegionProperties.clusters.
%%
%% dsql:AddPeerCluster
%%
%% Permission to add peer clusters.
%%
%% Resources:
%%
%% Local cluster: arn:aws:dsql:region:account-id:cluster/*
%%
%% Each peer cluster: exact ARN of each specified peer cluster
%%
%% When specifying multiRegionProperties.witnessRegion.
%%
%% dsql:PutWitnessRegion
%%
%% Permission to set a witness region.
%%
%% Resources: arn:aws:dsql:region:account-id:cluster/*
%%
%% Condition Keys: `dsql:WitnessRegion' (matching the specified
%% witness region)
%%
%% This permission is checked both in the cluster Region and in the witness
%% Region.
%%
%% Important Notes for Multi-Region Operations
%%
%% The witness region specified in
%% `multiRegionProperties.witnessRegion' cannot be the same as the
%% cluster's Region.
%%
%% When updating clusters with peer relationships, permissions are checked
%% for both adding and removing peers.
-spec create_cluster(aws_client:aws_client(), create_cluster_input()) ->
    {ok, create_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_input(), proplists:proplist()) ->
    {ok, create_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster"],
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

%% @doc Creates multi-Region clusters in Amazon Aurora DSQL.
%%
%% Multi-Region clusters require a linked
%% Region list, which is an array of the Regions in which you want to create
%% linked clusters.
%% Multi-Region clusters require a witness Region, which participates in
%% quorum in failure
%% scenarios.
-spec create_multi_region_clusters(aws_client:aws_client(), create_multi_region_clusters_input()) ->
    {ok, create_multi_region_clusters_output(), tuple()} |
    {error, any()} |
    {error, create_multi_region_clusters_errors(), tuple()}.
create_multi_region_clusters(Client, Input) ->
    create_multi_region_clusters(Client, Input, []).

-spec create_multi_region_clusters(aws_client:aws_client(), create_multi_region_clusters_input(), proplists:proplist()) ->
    {ok, create_multi_region_clusters_output(), tuple()} |
    {error, any()} |
    {error, create_multi_region_clusters_errors(), tuple()}.
create_multi_region_clusters(Client, Input0, Options0) ->
    Method = post,
    Path = ["/multi-region-clusters"],
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

%% @doc Deletes a cluster in Amazon Aurora DSQL.
-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_input()) ->
    {ok, delete_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Identifier, Input) ->
    delete_cluster(Client, Identifier, Input, []).

-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_input(), proplists:proplist()) ->
    {ok, delete_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"client-token">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a multi-Region cluster in Amazon Aurora DSQL.
-spec delete_multi_region_clusters(aws_client:aws_client(), delete_multi_region_clusters_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_multi_region_clusters_errors(), tuple()}.
delete_multi_region_clusters(Client, Input) ->
    delete_multi_region_clusters(Client, Input, []).

-spec delete_multi_region_clusters(aws_client:aws_client(), delete_multi_region_clusters_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_multi_region_clusters_errors(), tuple()}.
delete_multi_region_clusters(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/multi-region-clusters"],
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
                     {<<"client-token">>, <<"clientToken">>},
                     {<<"linked-cluster-arns">>, <<"linkedClusterArns">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about a cluster.
-spec get_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, Identifier)
  when is_map(Client) ->
    get_cluster(Client, Identifier, #{}, #{}).

-spec get_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cluster(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the VPC endpoint service name.
-spec get_vpc_endpoint_service_name(aws_client:aws_client(), binary() | list()) ->
    {ok, get_vpc_endpoint_service_name_output(), tuple()} |
    {error, any()} |
    {error, get_vpc_endpoint_service_name_errors(), tuple()}.
get_vpc_endpoint_service_name(Client, Identifier)
  when is_map(Client) ->
    get_vpc_endpoint_service_name(Client, Identifier, #{}, #{}).

-spec get_vpc_endpoint_service_name(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_vpc_endpoint_service_name_output(), tuple()} |
    {error, any()} |
    {error, get_vpc_endpoint_service_name_errors(), tuple()}.
get_vpc_endpoint_service_name(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_endpoint_service_name(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_vpc_endpoint_service_name(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vpc_endpoint_service_name_output(), tuple()} |
    {error, any()} |
    {error, get_vpc_endpoint_service_name_errors(), tuple()}.
get_vpc_endpoint_service_name(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Identifier), "/vpc-endpoint-service-name"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a list of clusters.
-spec list_clusters(aws_client:aws_client()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

-spec list_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

-spec list_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Tags a resource with a map of key and value pairs.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
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

%% @doc Removes a tag from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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

%% @doc Updates a cluster.
%%
%% Example IAM Policy for Multi-Region Operations
%%
%% The following IAM policy grants permissions for multi-Region operations.
%%
%% The `dsql:RemovePeerCluster' permission uses a wildcard ARN pattern to
%% simplify permission management during updates.
%%
%% Important Notes for Multi-Region Operations
%%
%% The witness region specified in
%% `multiRegionProperties.witnessRegion' cannot be the same as the
%% cluster's Region.
%%
%% When updating clusters with peer relationships, permissions are checked
%% for both adding and removing peers.
%%
%% The `dsql:RemovePeerCluster' permission uses a wildcard ARN pattern to
%% simplify permission management during updates.
-spec update_cluster(aws_client:aws_client(), binary() | list(), update_cluster_input()) ->
    {ok, update_cluster_output(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Identifier, Input) ->
    update_cluster(Client, Identifier, Input, []).

-spec update_cluster(aws_client:aws_client(), binary() | list(), update_cluster_input(), proplists:proplist()) ->
    {ok, update_cluster_output(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/cluster/", aws_util:encode_uri(Identifier), ""],
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
    Client1 = Client#{service => <<"dsql">>},
    Host = build_host(<<"dsql">>, Client1),
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
