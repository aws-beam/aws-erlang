%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An AWS Elemental MediaStore container is a namespace that holds
%% folders and objects.
%%
%% You use a container endpoint to create, read, and delete objects.
-module(aws_mediastore).

-export([create_container/2,
         create_container/3,
         delete_container/2,
         delete_container/3,
         delete_container_policy/2,
         delete_container_policy/3,
         delete_cors_policy/2,
         delete_cors_policy/3,
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_metric_policy/2,
         delete_metric_policy/3,
         describe_container/2,
         describe_container/3,
         get_container_policy/2,
         get_container_policy/3,
         get_cors_policy/2,
         get_cors_policy/3,
         get_lifecycle_policy/2,
         get_lifecycle_policy/3,
         get_metric_policy/2,
         get_metric_policy/3,
         list_containers/2,
         list_containers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_container_policy/2,
         put_container_policy/3,
         put_cors_policy/2,
         put_cors_policy/3,
         put_lifecycle_policy/2,
         put_lifecycle_policy/3,
         put_metric_policy/2,
         put_metric_policy/3,
         start_access_logging/2,
         start_access_logging/3,
         stop_access_logging/2,
         stop_access_logging/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% put_cors_policy_output() :: #{

%% }
-type put_cors_policy_output() :: #{binary() => any()}.

%% Example:
%% delete_container_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type delete_container_input() :: #{binary() => any()}.

%% Example:
%% container() :: #{
%%   <<"ARN">> => string(),
%%   <<"AccessLoggingEnabled">> => boolean(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Endpoint">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type container() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_output() :: #{

%% }
-type delete_lifecycle_policy_output() :: #{binary() => any()}.

%% Example:
%% stop_access_logging_output() :: #{

%% }
-type stop_access_logging_output() :: #{binary() => any()}.

%% Example:
%% put_container_policy_input() :: #{
%%   <<"ContainerName">> := string(),
%%   <<"Policy">> := string()
%% }
-type put_container_policy_input() :: #{binary() => any()}.

%% Example:
%% describe_container_output() :: #{
%%   <<"Container">> => container()
%% }
-type describe_container_output() :: #{binary() => any()}.

%% Example:
%% start_access_logging_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type start_access_logging_input() :: #{binary() => any()}.

%% Example:
%% get_metric_policy_output() :: #{
%%   <<"MetricPolicy">> => metric_policy()
%% }
-type get_metric_policy_output() :: #{binary() => any()}.

%% Example:
%% put_container_policy_output() :: #{

%% }
-type put_container_policy_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% get_container_policy_output() :: #{
%%   <<"Policy">> => string()
%% }
-type get_container_policy_output() :: #{binary() => any()}.

%% Example:
%% delete_container_output() :: #{

%% }
-type delete_container_output() :: #{binary() => any()}.

%% Example:
%% put_cors_policy_input() :: #{
%%   <<"ContainerName">> := string(),
%%   <<"CorsPolicy">> := list(cors_rule())
%% }
-type put_cors_policy_input() :: #{binary() => any()}.

%% Example:
%% delete_cors_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type delete_cors_policy_input() :: #{binary() => any()}.

%% Example:
%% get_cors_policy_output() :: #{
%%   <<"CorsPolicy">> => list(cors_rule())
%% }
-type get_cors_policy_output() :: #{binary() => any()}.

%% Example:
%% policy_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_container_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type delete_container_policy_input() :: #{binary() => any()}.

%% Example:
%% cors_policy_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cors_policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_cors_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type get_cors_policy_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_container_input() :: #{
%%   <<"ContainerName">> => string()
%% }
-type describe_container_input() :: #{binary() => any()}.

%% Example:
%% stop_access_logging_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type stop_access_logging_input() :: #{binary() => any()}.

%% Example:
%% list_containers_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_containers_input() :: #{binary() => any()}.

%% Example:
%% list_containers_output() :: #{
%%   <<"Containers">> => list(container()),
%%   <<"NextToken">> => string()
%% }
-type list_containers_output() :: #{binary() => any()}.

%% Example:
%% get_lifecycle_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type get_lifecycle_policy_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"Resource">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_policy_output() :: #{

%% }
-type put_lifecycle_policy_output() :: #{binary() => any()}.

%% Example:
%% metric_policy_rule() :: #{
%%   <<"ObjectGroup">> => string(),
%%   <<"ObjectGroupName">> => string()
%% }
-type metric_policy_rule() :: #{binary() => any()}.

%% Example:
%% delete_metric_policy_output() :: #{

%% }
-type delete_metric_policy_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% cors_rule() :: #{
%%   <<"AllowedHeaders">> => list(string()),
%%   <<"AllowedMethods">> => list(list(any())()),
%%   <<"AllowedOrigins">> => list(string()),
%%   <<"ExposeHeaders">> => list(string()),
%%   <<"MaxAgeSeconds">> => integer()
%% }
-type cors_rule() :: #{binary() => any()}.

%% Example:
%% delete_container_policy_output() :: #{

%% }
-type delete_container_policy_output() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type delete_lifecycle_policy_input() :: #{binary() => any()}.

%% Example:
%% put_metric_policy_input() :: #{
%%   <<"ContainerName">> := string(),
%%   <<"MetricPolicy">> := metric_policy()
%% }
-type put_metric_policy_input() :: #{binary() => any()}.

%% Example:
%% container_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type container_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_container_output() :: #{
%%   <<"Container">> => container()
%% }
-type create_container_output() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% put_metric_policy_output() :: #{

%% }
-type put_metric_policy_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"Resource">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% delete_metric_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type delete_metric_policy_input() :: #{binary() => any()}.

%% Example:
%% metric_policy() :: #{
%%   <<"ContainerLevelMetrics">> => list(any()),
%%   <<"MetricPolicyRules">> => list(metric_policy_rule())
%% }
-type metric_policy() :: #{binary() => any()}.

%% Example:
%% container_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type container_in_use_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"Resource">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% start_access_logging_output() :: #{

%% }
-type start_access_logging_output() :: #{binary() => any()}.

%% Example:
%% delete_cors_policy_output() :: #{

%% }
-type delete_cors_policy_output() :: #{binary() => any()}.

%% Example:
%% get_container_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type get_container_policy_input() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_policy_input() :: #{
%%   <<"ContainerName">> := string(),
%%   <<"LifecyclePolicy">> := string()
%% }
-type put_lifecycle_policy_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_metric_policy_input() :: #{
%%   <<"ContainerName">> := string()
%% }
-type get_metric_policy_input() :: #{binary() => any()}.

%% Example:
%% get_lifecycle_policy_output() :: #{
%%   <<"LifecyclePolicy">> => string()
%% }
-type get_lifecycle_policy_output() :: #{binary() => any()}.

%% Example:
%% create_container_input() :: #{
%%   <<"ContainerName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_container_input() :: #{binary() => any()}.

-type create_container_errors() ::
    limit_exceeded_exception() | 
    container_in_use_exception() | 
    internal_server_error().

-type delete_container_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type delete_container_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    policy_not_found_exception().

-type delete_cors_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    cors_policy_not_found_exception().

-type delete_lifecycle_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    policy_not_found_exception().

-type delete_metric_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    policy_not_found_exception().

-type describe_container_errors() ::
    internal_server_error() | 
    container_not_found_exception().

-type get_container_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    policy_not_found_exception().

-type get_cors_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    cors_policy_not_found_exception().

-type get_lifecycle_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    policy_not_found_exception().

-type get_metric_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception() | 
    policy_not_found_exception().

-type list_containers_errors() ::
    internal_server_error().

-type list_tags_for_resource_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type put_container_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type put_cors_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type put_lifecycle_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type put_metric_policy_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type start_access_logging_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type stop_access_logging_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type tag_resource_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type untag_resource_errors() ::
    container_in_use_exception() | 
    internal_server_error() | 
    container_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a storage container to hold objects.
%%
%% A container is similar to a bucket in
%% the Amazon S3 service.
-spec create_container(aws_client:aws_client(), create_container_input()) ->
    {ok, create_container_output(), tuple()} |
    {error, any()} |
    {error, create_container_errors(), tuple()}.
create_container(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_container(Client, Input, []).

-spec create_container(aws_client:aws_client(), create_container_input(), proplists:proplist()) ->
    {ok, create_container_output(), tuple()} |
    {error, any()} |
    {error, create_container_errors(), tuple()}.
create_container(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContainer">>, Input, Options).

%% @doc Deletes the specified container.
%%
%% Before you make a `DeleteContainer'
%% request, delete any objects in the container or in any folders in the
%% container. You can
%% delete only empty containers.
-spec delete_container(aws_client:aws_client(), delete_container_input()) ->
    {ok, delete_container_output(), tuple()} |
    {error, any()} |
    {error, delete_container_errors(), tuple()}.
delete_container(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_container(Client, Input, []).

-spec delete_container(aws_client:aws_client(), delete_container_input(), proplists:proplist()) ->
    {ok, delete_container_output(), tuple()} |
    {error, any()} |
    {error, delete_container_errors(), tuple()}.
delete_container(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContainer">>, Input, Options).

%% @doc Deletes the access policy that is associated with the specified
%% container.
-spec delete_container_policy(aws_client:aws_client(), delete_container_policy_input()) ->
    {ok, delete_container_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_container_policy_errors(), tuple()}.
delete_container_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_container_policy(Client, Input, []).

-spec delete_container_policy(aws_client:aws_client(), delete_container_policy_input(), proplists:proplist()) ->
    {ok, delete_container_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_container_policy_errors(), tuple()}.
delete_container_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContainerPolicy">>, Input, Options).

%% @doc Deletes the cross-origin resource sharing (CORS) configuration
%% information that is
%% set for the container.
%%
%% To use this operation, you must have permission to perform the
%% `MediaStore:DeleteCorsPolicy' action. The container owner has this
%% permission
%% by default and can grant this permission to others.
-spec delete_cors_policy(aws_client:aws_client(), delete_cors_policy_input()) ->
    {ok, delete_cors_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_cors_policy_errors(), tuple()}.
delete_cors_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cors_policy(Client, Input, []).

-spec delete_cors_policy(aws_client:aws_client(), delete_cors_policy_input(), proplists:proplist()) ->
    {ok, delete_cors_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_cors_policy_errors(), tuple()}.
delete_cors_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCorsPolicy">>, Input, Options).

%% @doc Removes an object lifecycle policy from a container.
%%
%% It takes up to 20 minutes for the change to take effect.
-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_input()) ->
    {ok, delete_lifecycle_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_policy(Client, Input, []).

-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_input(), proplists:proplist()) ->
    {ok, delete_lifecycle_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecyclePolicy">>, Input, Options).

%% @doc Deletes the metric policy that is associated with the specified
%% container.
%%
%% If there is no metric policy associated with the container, MediaStore
%% doesn't send metrics to CloudWatch.
-spec delete_metric_policy(aws_client:aws_client(), delete_metric_policy_input()) ->
    {ok, delete_metric_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_metric_policy_errors(), tuple()}.
delete_metric_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_policy(Client, Input, []).

-spec delete_metric_policy(aws_client:aws_client(), delete_metric_policy_input(), proplists:proplist()) ->
    {ok, delete_metric_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_metric_policy_errors(), tuple()}.
delete_metric_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricPolicy">>, Input, Options).

%% @doc Retrieves the properties of the requested container.
%%
%% This request is commonly used to
%% retrieve the endpoint of a container. An endpoint is a value assigned by
%% the service when a
%% new container is created. A container's endpoint does not change after
%% it has been
%% assigned. The `DescribeContainer' request returns a single
%% `Container' object based on `ContainerName'. To return all
%% `Container' objects that are associated with a specified AWS account,
%% use
%% `ListContainers'.
-spec describe_container(aws_client:aws_client(), describe_container_input()) ->
    {ok, describe_container_output(), tuple()} |
    {error, any()} |
    {error, describe_container_errors(), tuple()}.
describe_container(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_container(Client, Input, []).

-spec describe_container(aws_client:aws_client(), describe_container_input(), proplists:proplist()) ->
    {ok, describe_container_output(), tuple()} |
    {error, any()} |
    {error, describe_container_errors(), tuple()}.
describe_container(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContainer">>, Input, Options).

%% @doc Retrieves the access policy for the specified container.
%%
%% For information about the
%% data that is included in an access policy, see the AWS Identity and Access
%% Management User
%% Guide: https://aws.amazon.com/documentation/iam/.
-spec get_container_policy(aws_client:aws_client(), get_container_policy_input()) ->
    {ok, get_container_policy_output(), tuple()} |
    {error, any()} |
    {error, get_container_policy_errors(), tuple()}.
get_container_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_policy(Client, Input, []).

-spec get_container_policy(aws_client:aws_client(), get_container_policy_input(), proplists:proplist()) ->
    {ok, get_container_policy_output(), tuple()} |
    {error, any()} |
    {error, get_container_policy_errors(), tuple()}.
get_container_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerPolicy">>, Input, Options).

%% @doc Returns the cross-origin resource sharing (CORS) configuration
%% information that is
%% set for the container.
%%
%% To use this operation, you must have permission to perform the
%% `MediaStore:GetCorsPolicy' action. By default, the container owner has
%% this
%% permission and can grant it to others.
-spec get_cors_policy(aws_client:aws_client(), get_cors_policy_input()) ->
    {ok, get_cors_policy_output(), tuple()} |
    {error, any()} |
    {error, get_cors_policy_errors(), tuple()}.
get_cors_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cors_policy(Client, Input, []).

-spec get_cors_policy(aws_client:aws_client(), get_cors_policy_input(), proplists:proplist()) ->
    {ok, get_cors_policy_output(), tuple()} |
    {error, any()} |
    {error, get_cors_policy_errors(), tuple()}.
get_cors_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCorsPolicy">>, Input, Options).

%% @doc Retrieves the object lifecycle policy that is assigned to a
%% container.
-spec get_lifecycle_policy(aws_client:aws_client(), get_lifecycle_policy_input()) ->
    {ok, get_lifecycle_policy_output(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy(Client, Input, []).

-spec get_lifecycle_policy(aws_client:aws_client(), get_lifecycle_policy_input(), proplists:proplist()) ->
    {ok, get_lifecycle_policy_output(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicy">>, Input, Options).

%% @doc Returns the metric policy for the specified container.
-spec get_metric_policy(aws_client:aws_client(), get_metric_policy_input()) ->
    {ok, get_metric_policy_output(), tuple()} |
    {error, any()} |
    {error, get_metric_policy_errors(), tuple()}.
get_metric_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_policy(Client, Input, []).

-spec get_metric_policy(aws_client:aws_client(), get_metric_policy_input(), proplists:proplist()) ->
    {ok, get_metric_policy_output(), tuple()} |
    {error, any()} |
    {error, get_metric_policy_errors(), tuple()}.
get_metric_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricPolicy">>, Input, Options).

%% @doc Lists the properties of all containers in AWS Elemental MediaStore.
%%
%% You can query to receive all the containers in one response. Or you can
%% include the
%% `MaxResults' parameter to receive a limited number of containers in
%% each
%% response. In this case, the response includes a token. To get the next set
%% of containers,
%% send the command again, this time with the `NextToken' parameter (with
%% the
%% returned token as its value). The next set of responses appears, with a
%% token if there are
%% still more containers to receive.
%%
%% See also `DescribeContainer', which gets the properties of one
%% container.
-spec list_containers(aws_client:aws_client(), list_containers_input()) ->
    {ok, list_containers_output(), tuple()} |
    {error, any()} |
    {error, list_containers_errors(), tuple()}.
list_containers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_containers(Client, Input, []).

-spec list_containers(aws_client:aws_client(), list_containers_input(), proplists:proplist()) ->
    {ok, list_containers_output(), tuple()} |
    {error, any()} |
    {error, list_containers_errors(), tuple()}.
list_containers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContainers">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified container.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates an access policy for the specified container to restrict the
%% users and
%% clients that can access it.
%%
%% For information about the data that is included in an access
%% policy, see the AWS Identity and
%% Access Management User Guide: https://aws.amazon.com/documentation/iam/.
%%
%% For this release of the REST API, you can create only one policy for a
%% container. If
%% you enter `PutContainerPolicy' twice, the second command modifies the
%% existing
%% policy.
-spec put_container_policy(aws_client:aws_client(), put_container_policy_input()) ->
    {ok, put_container_policy_output(), tuple()} |
    {error, any()} |
    {error, put_container_policy_errors(), tuple()}.
put_container_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_container_policy(Client, Input, []).

-spec put_container_policy(aws_client:aws_client(), put_container_policy_input(), proplists:proplist()) ->
    {ok, put_container_policy_output(), tuple()} |
    {error, any()} |
    {error, put_container_policy_errors(), tuple()}.
put_container_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutContainerPolicy">>, Input, Options).

%% @doc Sets the cross-origin resource sharing (CORS) configuration on a
%% container so that
%% the container can service cross-origin requests.
%%
%% For example, you might want to enable a
%% request whose origin is http://www.example.com to access your AWS
%% Elemental MediaStore
%% container at my.example.container.com by using the browser's
%% XMLHttpRequest
%% capability.
%%
%% To enable CORS on a container, you attach a CORS policy to the container.
%% In the CORS
%% policy, you configure rules that identify origins and the HTTP methods
%% that can be executed
%% on your container. The policy can contain up to 398,000 characters. You
%% can add up to 100
%% rules to a CORS policy. If more than one rule applies, the service uses
%% the first
%% applicable rule listed.
%%
%% To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS
%% Elemental MediaStore:
%% https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html.
-spec put_cors_policy(aws_client:aws_client(), put_cors_policy_input()) ->
    {ok, put_cors_policy_output(), tuple()} |
    {error, any()} |
    {error, put_cors_policy_errors(), tuple()}.
put_cors_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_cors_policy(Client, Input, []).

-spec put_cors_policy(aws_client:aws_client(), put_cors_policy_input(), proplists:proplist()) ->
    {ok, put_cors_policy_output(), tuple()} |
    {error, any()} |
    {error, put_cors_policy_errors(), tuple()}.
put_cors_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCorsPolicy">>, Input, Options).

%% @doc Writes an object lifecycle policy to a container.
%%
%% If the container already has an object lifecycle policy, the service
%% replaces the existing policy with the new policy. It takes up to 20
%% minutes for the change to take effect.
%%
%% For information about how to construct an object lifecycle policy, see
%% Components of an Object Lifecycle Policy:
%% https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html.
-spec put_lifecycle_policy(aws_client:aws_client(), put_lifecycle_policy_input()) ->
    {ok, put_lifecycle_policy_output(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_policy_errors(), tuple()}.
put_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_policy(Client, Input, []).

-spec put_lifecycle_policy(aws_client:aws_client(), put_lifecycle_policy_input(), proplists:proplist()) ->
    {ok, put_lifecycle_policy_output(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_policy_errors(), tuple()}.
put_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecyclePolicy">>, Input, Options).

%% @doc The metric policy that you want to add to the container.
%%
%% A metric policy allows AWS Elemental MediaStore to send metrics to Amazon
%% CloudWatch. It takes up to 20 minutes for the new policy to take effect.
-spec put_metric_policy(aws_client:aws_client(), put_metric_policy_input()) ->
    {ok, put_metric_policy_output(), tuple()} |
    {error, any()} |
    {error, put_metric_policy_errors(), tuple()}.
put_metric_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_policy(Client, Input, []).

-spec put_metric_policy(aws_client:aws_client(), put_metric_policy_input(), proplists:proplist()) ->
    {ok, put_metric_policy_output(), tuple()} |
    {error, any()} |
    {error, put_metric_policy_errors(), tuple()}.
put_metric_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricPolicy">>, Input, Options).

%% @doc Starts access logging on the specified container.
%%
%% When you enable access logging on a container, MediaStore delivers access
%% logs for objects stored in that container to Amazon CloudWatch Logs.
-spec start_access_logging(aws_client:aws_client(), start_access_logging_input()) ->
    {ok, start_access_logging_output(), tuple()} |
    {error, any()} |
    {error, start_access_logging_errors(), tuple()}.
start_access_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_access_logging(Client, Input, []).

-spec start_access_logging(aws_client:aws_client(), start_access_logging_input(), proplists:proplist()) ->
    {ok, start_access_logging_output(), tuple()} |
    {error, any()} |
    {error, start_access_logging_errors(), tuple()}.
start_access_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAccessLogging">>, Input, Options).

%% @doc Stops access logging on the specified container.
%%
%% When you stop access logging on a container, MediaStore stops sending
%% access logs to Amazon CloudWatch Logs. These access logs are not saved and
%% are not retrievable.
-spec stop_access_logging(aws_client:aws_client(), stop_access_logging_input()) ->
    {ok, stop_access_logging_output(), tuple()} |
    {error, any()} |
    {error, stop_access_logging_errors(), tuple()}.
stop_access_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_access_logging(Client, Input, []).

-spec stop_access_logging(aws_client:aws_client(), stop_access_logging_input(), proplists:proplist()) ->
    {ok, stop_access_logging_output(), tuple()} |
    {error, any()} |
    {error, stop_access_logging_errors(), tuple()}.
stop_access_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAccessLogging">>, Input, Options).

%% @doc Adds tags to the specified AWS Elemental MediaStore container.
%%
%% Tags are key:value pairs that you can associate with AWS resources. For
%% example, the
%% tag key might be &quot;customer&quot; and the tag value might be
%% &quot;companyA.&quot; You can specify one or more tags to add to each
%% container. You can add up to 50
%% tags to each container. For more information about tagging, including
%% naming and usage conventions, see Tagging Resources in MediaStore:
%% https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from the specified container.
%%
%% You can specify one or more tags to remove.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"mediastore">>},
    Host = build_host(<<"mediastore">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"MediaStore_20170901.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
