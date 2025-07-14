%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Launch Wizard offers a guided way of sizing, configuring, and
%% deploying Amazon Web Services resources for
%% third party applications, such as Microsoft SQL Server Always On and HANA
%% based SAP
%% systems, without the need to manually identify and provision individual
%% Amazon Web Services
%% resources.
-module(aws_launch_wizard).

-export([create_deployment/2,
         create_deployment/3,
         delete_deployment/2,
         delete_deployment/3,
         get_deployment/2,
         get_deployment/3,
         get_workload/2,
         get_workload/3,
         get_workload_deployment_pattern/2,
         get_workload_deployment_pattern/3,
         list_deployment_events/2,
         list_deployment_events/3,
         list_deployments/2,
         list_deployments/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workload_deployment_patterns/2,
         list_workload_deployment_patterns/3,
         list_workloads/2,
         list_workloads/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% resource_limit_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_limit_exception() :: #{binary() => any()}.


%% Example:
%% get_workload_output() :: #{
%%   <<"workload">> => workload_data()
%% }
-type get_workload_output() :: #{binary() => any()}.


%% Example:
%% workload_data() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"documentationUrl">> => [string()],
%%   <<"iconUrl">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"workloadName">> => string()
%% }
-type workload_data() :: #{binary() => any()}.


%% Example:
%% list_workloads_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_workloads_input() :: #{binary() => any()}.


%% Example:
%% workload_data_summary() :: #{
%%   <<"displayName">> => [string()],
%%   <<"workloadName">> => string()
%% }
-type workload_data_summary() :: #{binary() => any()}.


%% Example:
%% get_deployment_output() :: #{
%%   <<"deployment">> => deployment_data()
%% }
-type get_deployment_output() :: #{binary() => any()}.


%% Example:
%% create_deployment_input() :: #{
%%   <<"deploymentPatternName">> := string(),
%%   <<"dryRun">> => [boolean()],
%%   <<"name">> := string(),
%%   <<"specifications">> := map(),
%%   <<"tags">> => map(),
%%   <<"workloadName">> := string()
%% }
-type create_deployment_input() :: #{binary() => any()}.


%% Example:
%% get_deployment_input() :: #{
%%   <<"deploymentId">> := string()
%% }
-type get_deployment_input() :: #{binary() => any()}.


%% Example:
%% deployment_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list([string()]())
%% }
-type deployment_filter() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% get_workload_input() :: #{
%%   <<"workloadName">> := string()
%% }
-type get_workload_input() :: #{binary() => any()}.


%% Example:
%% deployment_event_data_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"name">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type deployment_event_data_summary() :: #{binary() => any()}.


%% Example:
%% list_deployment_events_output() :: #{
%%   <<"deploymentEvents">> => list(deployment_event_data_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_events_output() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_workload_deployment_patterns_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workloadDeploymentPatterns">> => list(workload_deployment_pattern_data_summary())
%% }
-type list_workload_deployment_patterns_output() :: #{binary() => any()}.


%% Example:
%% delete_deployment_input() :: #{
%%   <<"deploymentId">> := string()
%% }
-type delete_deployment_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% workload_deployment_pattern_data_summary() :: #{
%%   <<"deploymentPatternName">> => string(),
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"workloadName">> => string(),
%%   <<"workloadVersionName">> => string()
%% }
-type workload_deployment_pattern_data_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% deployment_data_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"patternName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"workloadName">> => string()
%% }
-type deployment_data_summary() :: #{binary() => any()}.


%% Example:
%% delete_deployment_output() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type delete_deployment_output() :: #{binary() => any()}.


%% Example:
%% list_workloads_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workloads">> => list(workload_data_summary())
%% }
-type list_workloads_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% list_workload_deployment_patterns_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"workloadName">> := string()
%% }
-type list_workload_deployment_patterns_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% deployment_specifications_field() :: #{
%%   <<"allowedValues">> => list(string()),
%%   <<"conditionals">> => list(deployment_conditional_field()),
%%   <<"description">> => [string()],
%%   <<"name">> => [string()],
%%   <<"required">> => [string()]
%% }
-type deployment_specifications_field() :: #{binary() => any()}.


%% Example:
%% get_workload_deployment_pattern_input() :: #{
%%   <<"deploymentPatternName">> := string(),
%%   <<"workloadName">> := string()
%% }
-type get_workload_deployment_pattern_input() :: #{binary() => any()}.


%% Example:
%% list_deployment_events_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_events_input() :: #{binary() => any()}.


%% Example:
%% deployment_conditional_field() :: #{
%%   <<"comparator">> => [string()],
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type deployment_conditional_field() :: #{binary() => any()}.


%% Example:
%% list_deployments_output() :: #{
%%   <<"deployments">> => list(deployment_data_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_output() :: #{binary() => any()}.


%% Example:
%% create_deployment_output() :: #{
%%   <<"deploymentId">> => string()
%% }
-type create_deployment_output() :: #{binary() => any()}.


%% Example:
%% list_deployments_input() :: #{
%%   <<"filters">> => list(deployment_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_input() :: #{binary() => any()}.


%% Example:
%% deployment_data() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deletedAt">> => [non_neg_integer()],
%%   <<"deploymentArn">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"patternName">> => string(),
%%   <<"resourceGroup">> => [string()],
%%   <<"specifications">> => map(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"workloadName">> => string()
%% }
-type deployment_data() :: #{binary() => any()}.


%% Example:
%% workload_deployment_pattern_data() :: #{
%%   <<"deploymentPatternName">> => string(),
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"specifications">> => list(deployment_specifications_field()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"workloadName">> => string(),
%%   <<"workloadVersionName">> => string()
%% }
-type workload_deployment_pattern_data() :: #{binary() => any()}.


%% Example:
%% get_workload_deployment_pattern_output() :: #{
%%   <<"workloadDeploymentPattern">> => workload_deployment_pattern_data()
%% }
-type get_workload_deployment_pattern_output() :: #{binary() => any()}.

-type create_deployment_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_limit_exception().

-type delete_deployment_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_limit_exception().

-type get_deployment_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workload_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workload_deployment_pattern_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_deployment_events_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_deployments_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workload_deployment_patterns_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workloads_errors() ::
    validation_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a deployment for the given workload.
%%
%% Deployments created by this operation are
%% not available in the Launch Wizard console to use the `Clone
%% deployment' action
%% on.
-spec create_deployment(aws_client:aws_client(), create_deployment_input()) ->
    {ok, create_deployment_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input) ->
    create_deployment(Client, Input, []).

-spec create_deployment(aws_client:aws_client(), create_deployment_input(), proplists:proplist()) ->
    {ok, create_deployment_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createDeployment"],
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

%% @doc Deletes a deployment.
-spec delete_deployment(aws_client:aws_client(), delete_deployment_input()) ->
    {ok, delete_deployment_output(), tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, Input) ->
    delete_deployment(Client, Input, []).

-spec delete_deployment(aws_client:aws_client(), delete_deployment_input(), proplists:proplist()) ->
    {ok, delete_deployment_output(), tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteDeployment"],
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

%% @doc Returns information about the deployment.
-spec get_deployment(aws_client:aws_client(), get_deployment_input()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, Input) ->
    get_deployment(Client, Input, []).

-spec get_deployment(aws_client:aws_client(), get_deployment_input(), proplists:proplist()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getDeployment"],
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

%% @doc Returns information about a workload.
-spec get_workload(aws_client:aws_client(), get_workload_input()) ->
    {ok, get_workload_output(), tuple()} |
    {error, any()} |
    {error, get_workload_errors(), tuple()}.
get_workload(Client, Input) ->
    get_workload(Client, Input, []).

-spec get_workload(aws_client:aws_client(), get_workload_input(), proplists:proplist()) ->
    {ok, get_workload_output(), tuple()} |
    {error, any()} |
    {error, get_workload_errors(), tuple()}.
get_workload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getWorkload"],
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

%% @doc Returns details for a given workload and deployment pattern,
%% including the available
%% specifications.
%%
%% You can use the ListWorkloads:
%% https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html
%% operation to discover the available workload names and the
%% ListWorkloadDeploymentPatterns:
%% https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html
%% operation to discover the available deployment
%% pattern names of a given workload.
-spec get_workload_deployment_pattern(aws_client:aws_client(), get_workload_deployment_pattern_input()) ->
    {ok, get_workload_deployment_pattern_output(), tuple()} |
    {error, any()} |
    {error, get_workload_deployment_pattern_errors(), tuple()}.
get_workload_deployment_pattern(Client, Input) ->
    get_workload_deployment_pattern(Client, Input, []).

-spec get_workload_deployment_pattern(aws_client:aws_client(), get_workload_deployment_pattern_input(), proplists:proplist()) ->
    {ok, get_workload_deployment_pattern_output(), tuple()} |
    {error, any()} |
    {error, get_workload_deployment_pattern_errors(), tuple()}.
get_workload_deployment_pattern(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getWorkloadDeploymentPattern"],
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

%% @doc Lists the events of a deployment.
-spec list_deployment_events(aws_client:aws_client(), list_deployment_events_input()) ->
    {ok, list_deployment_events_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_events_errors(), tuple()}.
list_deployment_events(Client, Input) ->
    list_deployment_events(Client, Input, []).

-spec list_deployment_events(aws_client:aws_client(), list_deployment_events_input(), proplists:proplist()) ->
    {ok, list_deployment_events_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_events_errors(), tuple()}.
list_deployment_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDeploymentEvents"],
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

%% @doc Lists the deployments that have been created.
-spec list_deployments(aws_client:aws_client(), list_deployments_input()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, Input) ->
    list_deployments(Client, Input, []).

-spec list_deployments(aws_client:aws_client(), list_deployments_input(), proplists:proplist()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDeployments"],
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

%% @doc Lists the tags associated with a specified resource.
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

%% @doc Lists the workload deployment patterns for a given workload name.
%%
%% You can use the ListWorkloads:
%% https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html
%% operation to discover the available workload names.
-spec list_workload_deployment_patterns(aws_client:aws_client(), list_workload_deployment_patterns_input()) ->
    {ok, list_workload_deployment_patterns_output(), tuple()} |
    {error, any()} |
    {error, list_workload_deployment_patterns_errors(), tuple()}.
list_workload_deployment_patterns(Client, Input) ->
    list_workload_deployment_patterns(Client, Input, []).

-spec list_workload_deployment_patterns(aws_client:aws_client(), list_workload_deployment_patterns_input(), proplists:proplist()) ->
    {ok, list_workload_deployment_patterns_output(), tuple()} |
    {error, any()} |
    {error, list_workload_deployment_patterns_errors(), tuple()}.
list_workload_deployment_patterns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorkloadDeploymentPatterns"],
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

%% @doc Lists the available workload names.
%%
%% You can use the ListWorkloadDeploymentPatterns:
%% https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html
%% operation to discover the available deployment patterns for a given
%% workload.
-spec list_workloads(aws_client:aws_client(), list_workloads_input()) ->
    {ok, list_workloads_output(), tuple()} |
    {error, any()} |
    {error, list_workloads_errors(), tuple()}.
list_workloads(Client, Input) ->
    list_workloads(Client, Input, []).

-spec list_workloads(aws_client:aws_client(), list_workloads_input(), proplists:proplist()) ->
    {ok, list_workloads_output(), tuple()} |
    {error, any()} |
    {error, list_workloads_errors(), tuple()}.
list_workloads(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorkloads"],
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

%% @doc Adds the specified tags to the given resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Removes the specified tags from the given resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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
    Client1 = Client#{service => <<"launchwizard">>},
    Host = build_host(<<"launchwizard">>, Client1),
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
