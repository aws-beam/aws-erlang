%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EMR on EKS provides a deployment option for Amazon EMR that
%% allows you to run open-source big data frameworks on Amazon Elastic
%% Kubernetes Service (Amazon EKS).
%%
%% With this deployment option, you can focus on running analytics workloads
%% while Amazon EMR on EKS builds, configures, and manages containers for
%% open-source applications. For more information about Amazon EMR on EKS
%% concepts and tasks, see What is Amazon EMR on EKS.
%%
%% Amazon EMR containers is the API name for Amazon EMR on EKS. The
%% `emr-containers' prefix is used in the following scenarios:
%%
%% <ul> <li> It is the prefix in the CLI commands for Amazon EMR on EKS. For
%% example, `aws emr-containers start-job-run'.
%%
%% </li> <li> It is the prefix before IAM policy actions for Amazon EMR on
%% EKS. For example, `"Action": [ "emr-containers:StartJobRun"]'. For more
%% information, see Policy actions for Amazon EMR on EKS.
%%
%% </li> <li> It is the prefix used in Amazon EMR on EKS service endpoints.
%% For example, `emr-containers.us-east-2.amazonaws.com'. For more
%% information, see Amazon EMR on EKS Service Endpoints.
%%
%% </li> </ul>
-module(aws_emr_containers).

-export([cancel_job_run/4,
         cancel_job_run/5,
         create_managed_endpoint/3,
         create_managed_endpoint/4,
         create_virtual_cluster/2,
         create_virtual_cluster/3,
         delete_managed_endpoint/4,
         delete_managed_endpoint/5,
         delete_virtual_cluster/3,
         delete_virtual_cluster/4,
         describe_job_run/3,
         describe_job_run/4,
         describe_managed_endpoint/3,
         describe_managed_endpoint/4,
         describe_virtual_cluster/2,
         describe_virtual_cluster/3,
         list_job_runs/8,
         list_job_runs/9,
         list_managed_endpoints/8,
         list_managed_endpoints/9,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_virtual_clusters/8,
         list_virtual_clusters/9,
         start_job_run/3,
         start_job_run/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
cancel_job_run(Client, Id, VirtualClusterId, Input) ->
    cancel_job_run(Client, Id, VirtualClusterId, Input, []).
cancel_job_run(Client, Id, VirtualClusterId, Input0, Options) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a managed endpoint.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
create_managed_endpoint(Client, VirtualClusterId, Input) ->
    create_managed_endpoint(Client, VirtualClusterId, Input, []).
create_managed_endpoint(Client, VirtualClusterId, Input0, Options) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual cluster.
%%
%% Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
%% describe, list and delete virtual clusters. They do not consume any
%% additional resource in your system. A single virtual cluster maps to a
%% single Kubernetes namespace. Given this relationship, you can model
%% virtual clusters the same way you model Kubernetes namespaces to meet your
%% requirements.
create_virtual_cluster(Client, Input) ->
    create_virtual_cluster(Client, Input, []).
create_virtual_cluster(Client, Input0, Options) ->
    Method = post,
    Path = ["/virtualclusters"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a managed endpoint.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
delete_managed_endpoint(Client, Id, VirtualClusterId, Input) ->
    delete_managed_endpoint(Client, Id, VirtualClusterId, Input, []).
delete_managed_endpoint(Client, Id, VirtualClusterId, Input0, Options) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a virtual cluster.
%%
%% Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
%% describe, list and delete virtual clusters. They do not consume any
%% additional resource in your system. A single virtual cluster maps to a
%% single Kubernetes namespace. Given this relationship, you can model
%% virtual clusters the same way you model Kubernetes namespaces to meet your
%% requirements.
delete_virtual_cluster(Client, Id, Input) ->
    delete_virtual_cluster(Client, Id, Input, []).
delete_virtual_cluster(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Displays detailed information about a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
describe_job_run(Client, Id, VirtualClusterId)
  when is_map(Client) ->
    describe_job_run(Client, Id, VirtualClusterId, []).
describe_job_run(Client, Id, VirtualClusterId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a managed endpoint.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
describe_managed_endpoint(Client, Id, VirtualClusterId)
  when is_map(Client) ->
    describe_managed_endpoint(Client, Id, VirtualClusterId, []).
describe_managed_endpoint(Client, Id, VirtualClusterId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a specified virtual cluster.
%%
%% Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
%% describe, list and delete virtual clusters. They do not consume any
%% additional resource in your system. A single virtual cluster maps to a
%% single Kubernetes namespace. Given this relationship, you can model
%% virtual clusters the same way you model Kubernetes namespaces to meet your
%% requirements.
describe_virtual_cluster(Client, Id)
  when is_map(Client) ->
    describe_virtual_cluster(Client, Id, []).
describe_virtual_cluster(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job runs based on a set of parameters.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
list_job_runs(Client, VirtualClusterId, CreatedAfter, CreatedBefore, MaxResults, Name, NextToken, States)
  when is_map(Client) ->
    list_job_runs(Client, VirtualClusterId, CreatedAfter, CreatedBefore, MaxResults, Name, NextToken, States, []).
list_job_runs(Client, VirtualClusterId, CreatedAfter, CreatedBefore, MaxResults, Name, NextToken, States, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, CreatedAfter},
        {<<"createdBefore">>, CreatedBefore},
        {<<"maxResults">>, MaxResults},
        {<<"name">>, Name},
        {<<"nextToken">>, NextToken},
        {<<"states">>, States}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists managed endpoints based on a set of parameters.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
list_managed_endpoints(Client, VirtualClusterId, CreatedAfter, CreatedBefore, MaxResults, NextToken, States, Types)
  when is_map(Client) ->
    list_managed_endpoints(Client, VirtualClusterId, CreatedAfter, CreatedBefore, MaxResults, NextToken, States, Types, []).
list_managed_endpoints(Client, VirtualClusterId, CreatedAfter, CreatedBefore, MaxResults, NextToken, States, Types, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, CreatedAfter},
        {<<"createdBefore">>, CreatedBefore},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"states">>, States},
        {<<"types">>, Types}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to the resources.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about the specified virtual cluster.
%%
%% Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
%% describe, list and delete virtual clusters. They do not consume any
%% additional resource in your system. A single virtual cluster maps to a
%% single Kubernetes namespace. Given this relationship, you can model
%% virtual clusters the same way you model Kubernetes namespaces to meet your
%% requirements.
list_virtual_clusters(Client, ContainerProviderId, ContainerProviderType, CreatedAfter, CreatedBefore, MaxResults, NextToken, States)
  when is_map(Client) ->
    list_virtual_clusters(Client, ContainerProviderId, ContainerProviderType, CreatedAfter, CreatedBefore, MaxResults, NextToken, States, []).
list_virtual_clusters(Client, ContainerProviderId, ContainerProviderType, CreatedAfter, CreatedBefore, MaxResults, NextToken, States, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/virtualclusters"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"containerProviderId">>, ContainerProviderId},
        {<<"containerProviderType">>, ContainerProviderType},
        {<<"createdAfter">>, CreatedAfter},
        {<<"createdBefore">>, CreatedBefore},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"states">>, States}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
start_job_run(Client, VirtualClusterId, Input) ->
    start_job_run(Client, VirtualClusterId, Input, []).
start_job_run(Client, VirtualClusterId, Input0, Options) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns tags to resources.
%%
%% A tag is a label that you assign to an AWS resource. Each tag consists of
%% a key and an optional value, both of which you define. Tags enable you to
%% categorize your AWS resources by attributes such as purpose, owner, or
%% environment. When you have many resources of the same type, you can
%% quickly identify a specific resource based on the tags you've assigned to
%% it. For example, you can define a set of tags for your Amazon EMR on EKS
%% clusters to help you track each cluster's owner and stack level. We
%% recommend that you devise a consistent set of tag keys for each resource
%% type. You can then search and filter the resources based on the tags that
%% you add.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from resources.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
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
    Client1 = Client#{service => <<"emr-containers">>},
    Host = build_host(<<"emr-containers">>, Client1),
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
