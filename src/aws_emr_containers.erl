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
         create_job_template/2,
         create_job_template/3,
         create_managed_endpoint/3,
         create_managed_endpoint/4,
         create_virtual_cluster/2,
         create_virtual_cluster/3,
         delete_job_template/3,
         delete_job_template/4,
         delete_managed_endpoint/4,
         delete_managed_endpoint/5,
         delete_virtual_cluster/3,
         delete_virtual_cluster/4,
         describe_job_run/3,
         describe_job_run/5,
         describe_job_run/6,
         describe_job_template/2,
         describe_job_template/4,
         describe_job_template/5,
         describe_managed_endpoint/3,
         describe_managed_endpoint/5,
         describe_managed_endpoint/6,
         describe_virtual_cluster/2,
         describe_virtual_cluster/4,
         describe_virtual_cluster/5,
         list_job_runs/2,
         list_job_runs/4,
         list_job_runs/5,
         list_job_templates/1,
         list_job_templates/3,
         list_job_templates/4,
         list_managed_endpoints/2,
         list_managed_endpoints/4,
         list_managed_endpoints/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_virtual_clusters/1,
         list_virtual_clusters/3,
         list_virtual_clusters/4,
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
cancel_job_run(Client, Id, VirtualClusterId, Input0, Options0) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns/", aws_util:encode_uri(Id), ""],
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

%% @doc Creates a job template.
%%
%% Job template stores values of StartJobRun API request in a template and
%% can be used to start a job run. Job template allows two use cases: avoid
%% repeating recurring StartJobRun API request values, enforcing certain
%% values in StartJobRun API request.
create_job_template(Client, Input) ->
    create_job_template(Client, Input, []).
create_job_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobtemplates"],
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

%% @doc Creates a managed endpoint.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
create_managed_endpoint(Client, VirtualClusterId, Input) ->
    create_managed_endpoint(Client, VirtualClusterId, Input, []).
create_managed_endpoint(Client, VirtualClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints"],
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
create_virtual_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters"],
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

%% @doc Deletes a job template.
%%
%% Job template stores values of StartJobRun API request in a template and
%% can be used to start a job run. Job template allows two use cases: avoid
%% repeating recurring StartJobRun API request values, enforcing certain
%% values in StartJobRun API request.
delete_job_template(Client, Id, Input) ->
    delete_job_template(Client, Id, Input, []).
delete_job_template(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/jobtemplates/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a managed endpoint.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
delete_managed_endpoint(Client, Id, VirtualClusterId, Input) ->
    delete_managed_endpoint(Client, Id, VirtualClusterId, Input, []).
delete_managed_endpoint(Client, Id, VirtualClusterId, Input0, Options0) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints/", aws_util:encode_uri(Id), ""],
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
delete_virtual_cluster(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(Id), ""],
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

%% @doc Displays detailed information about a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
describe_job_run(Client, Id, VirtualClusterId)
  when is_map(Client) ->
    describe_job_run(Client, Id, VirtualClusterId, #{}, #{}).

describe_job_run(Client, Id, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_run(Client, Id, VirtualClusterId, QueryMap, HeadersMap, []).

describe_job_run(Client, Id, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a specified job template.
%%
%% Job template stores values of StartJobRun API request in a template and
%% can be used to start a job run. Job template allows two use cases: avoid
%% repeating recurring StartJobRun API request values, enforcing certain
%% values in StartJobRun API request.
describe_job_template(Client, Id)
  when is_map(Client) ->
    describe_job_template(Client, Id, #{}, #{}).

describe_job_template(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_template(Client, Id, QueryMap, HeadersMap, []).

describe_job_template(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobtemplates/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a managed endpoint.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
describe_managed_endpoint(Client, Id, VirtualClusterId)
  when is_map(Client) ->
    describe_managed_endpoint(Client, Id, VirtualClusterId, #{}, #{}).

describe_managed_endpoint(Client, Id, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_managed_endpoint(Client, Id, VirtualClusterId, QueryMap, HeadersMap, []).

describe_managed_endpoint(Client, Id, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    describe_virtual_cluster(Client, Id, #{}, #{}).

describe_virtual_cluster(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_virtual_cluster(Client, Id, QueryMap, HeadersMap, []).

describe_virtual_cluster(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job runs based on a set of parameters.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
list_job_runs(Client, VirtualClusterId)
  when is_map(Client) ->
    list_job_runs(Client, VirtualClusterId, #{}, #{}).

list_job_runs(Client, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_runs(Client, VirtualClusterId, QueryMap, HeadersMap, []).

list_job_runs(Client, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job templates based on a set of parameters.
%%
%% Job template stores values of StartJobRun API request in a template and
%% can be used to start a job run. Job template allows two use cases: avoid
%% repeating recurring StartJobRun API request values, enforcing certain
%% values in StartJobRun API request.
list_job_templates(Client)
  when is_map(Client) ->
    list_job_templates(Client, #{}, #{}).

list_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_templates(Client, QueryMap, HeadersMap, []).

list_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobtemplates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists managed endpoints based on a set of parameters.
%%
%% A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on
%% EKS so that EMR Studio can communicate with your virtual cluster.
list_managed_endpoints(Client, VirtualClusterId)
  when is_map(Client) ->
    list_managed_endpoints(Client, VirtualClusterId, #{}, #{}).

list_managed_endpoints(Client, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_endpoints(Client, VirtualClusterId, QueryMap, HeadersMap, []).

list_managed_endpoints(Client, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)},
        {<<"types">>, maps:get(<<"types">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to the resources.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_virtual_clusters(Client)
  when is_map(Client) ->
    list_virtual_clusters(Client, #{}, #{}).

list_virtual_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_virtual_clusters(Client, QueryMap, HeadersMap, []).

list_virtual_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"containerProviderId">>, maps:get(<<"containerProviderId">>, QueryMap, undefined)},
        {<<"containerProviderType">>, maps:get(<<"containerProviderType">>, QueryMap, undefined)},
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
start_job_run(Client, VirtualClusterId, Input) ->
    start_job_run(Client, VirtualClusterId, Input, []).
start_job_run(Client, VirtualClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns"],
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
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from resources.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"emr-containers">>},
    Host = build_host(<<"emr-containers">>, Client1),
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
