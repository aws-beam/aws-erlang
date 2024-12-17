%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Cloud9
%%
%% Cloud9 is a collection of tools that you can use to code, build, run,
%% test, debug, and
%% release software in the cloud.
%%
%% For more information about Cloud9, see the Cloud9 User Guide:
%% https://docs.aws.amazon.com/cloud9/latest/user-guide.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
%%
%% Cloud9 supports these operations:
%%
%% `CreateEnvironmentEC2': Creates an Cloud9 development environment,
%% launches
%% an Amazon EC2 instance, and then connects from the instance to the
%% environment.
%%
%% `CreateEnvironmentMembership': Adds an environment member to an
%% environment.
%%
%% `DeleteEnvironment': Deletes an environment. If an Amazon EC2 instance
%% is
%% connected to the environment, also terminates the instance.
%%
%% `DeleteEnvironmentMembership': Deletes an environment member from an
%% environment.
%%
%% `DescribeEnvironmentMemberships': Gets information about environment
%% members for an environment.
%%
%% `DescribeEnvironments': Gets information about environments.
%%
%% `DescribeEnvironmentStatus': Gets status information for an
%% environment.
%%
%% `ListEnvironments': Gets a list of environment identifiers.
%%
%% `ListTagsForResource': Gets the tags for an environment.
%%
%% `TagResource': Adds tags to an environment.
%%
%% `UntagResource': Removes tags from an environment.
%%
%% `UpdateEnvironment': Changes the settings of an existing
%% environment.
%%
%% `UpdateEnvironmentMembership': Changes the settings of an existing
%% environment member for an environment.
-module(aws_cloud9).

-export([create_environment_ec2/2,
         create_environment_ec2/3,
         create_environment_membership/2,
         create_environment_membership/3,
         delete_environment/2,
         delete_environment/3,
         delete_environment_membership/2,
         delete_environment_membership/3,
         describe_environment_memberships/2,
         describe_environment_memberships/3,
         describe_environment_status/2,
         describe_environment_status/3,
         describe_environments/2,
         describe_environments/3,
         list_environments/2,
         list_environments/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_environment/2,
         update_environment/3,
         update_environment_membership/2,
         update_environment_membership/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_environments_result() :: #{
%%   <<"environmentIds">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_result() :: #{binary() => any()}.

%% Example:
%% describe_environments_result() :: #{
%%   <<"environments">> => list(environment()())
%% }
-type describe_environments_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_environment_membership_request() :: #{
%%   <<"environmentId">> := string(),
%%   <<"userArn">> := string()
%% }
-type delete_environment_membership_request() :: #{binary() => any()}.

%% Example:
%% forbidden_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% create_environment_membership_request() :: #{
%%   <<"environmentId">> := string(),
%%   <<"permissions">> := list(any()),
%%   <<"userArn">> := string()
%% }
-type create_environment_membership_request() :: #{binary() => any()}.

%% Example:
%% describe_environment_memberships_request() :: #{
%%   <<"environmentId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"permissions">> => list(list(any())()),
%%   <<"userArn">> => string()
%% }
-type describe_environment_memberships_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% describe_environment_status_result() :: #{
%%   <<"message">> => string(),
%%   <<"status">> => list(any())
%% }
-type describe_environment_status_result() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% environment() :: #{
%%   <<"arn">> => string(),
%%   <<"connectionType">> => list(any()),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lifecycle">> => environment_lifecycle(),
%%   <<"managedCredentialsStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"ownerArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type environment() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_environment_result() :: #{

%% }
-type update_environment_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_environments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environments_request() :: #{binary() => any()}.

%% Example:
%% create_environment_membership_result() :: #{
%%   <<"membership">> => environment_member()
%% }
-type create_environment_membership_result() :: #{binary() => any()}.

%% Example:
%% delete_environment_request() :: #{
%%   <<"environmentId">> := string()
%% }
-type delete_environment_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_environment_ec2_result() :: #{
%%   <<"environmentId">> => string()
%% }
-type create_environment_ec2_result() :: #{binary() => any()}.

%% Example:
%% delete_environment_result() :: #{

%% }
-type delete_environment_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% internal_server_error_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_access_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type concurrent_access_exception() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_environment_ec2_request() :: #{
%%   <<"automaticStopTimeMinutes">> => integer(),
%%   <<"clientRequestToken">> => string(),
%%   <<"connectionType">> => list(any()),
%%   <<"description">> => string(),
%%   <<"dryRun">> => boolean(),
%%   <<"imageId">> := string(),
%%   <<"instanceType">> := string(),
%%   <<"name">> := string(),
%%   <<"ownerArn">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_environment_ec2_request() :: #{binary() => any()}.

%% Example:
%% bad_request_exception() :: #{
%%   <<"className">> => string(),
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% describe_environment_status_request() :: #{
%%   <<"environmentId">> := string()
%% }
-type describe_environment_status_request() :: #{binary() => any()}.

%% Example:
%% describe_environment_memberships_result() :: #{
%%   <<"memberships">> => list(environment_member()()),
%%   <<"nextToken">> => string()
%% }
-type describe_environment_memberships_result() :: #{binary() => any()}.

%% Example:
%% update_environment_request() :: #{
%%   <<"description">> => string(),
%%   <<"environmentId">> := string(),
%%   <<"managedCredentialsAction">> => list(any()),
%%   <<"name">> => string()
%% }
-type update_environment_request() :: #{binary() => any()}.

%% Example:
%% update_environment_membership_request() :: #{
%%   <<"environmentId">> := string(),
%%   <<"permissions">> := list(any()),
%%   <<"userArn">> := string()
%% }
-type update_environment_membership_request() :: #{binary() => any()}.

%% Example:
%% update_environment_membership_result() :: #{
%%   <<"membership">> => environment_member()
%% }
-type update_environment_membership_result() :: #{binary() => any()}.

%% Example:
%% environment_member() :: #{
%%   <<"environmentId">> => string(),
%%   <<"lastAccess">> => non_neg_integer(),
%%   <<"permissions">> => list(any()),
%%   <<"userArn">> => string(),
%%   <<"userId">> => string()
%% }
-type environment_member() :: #{binary() => any()}.

%% Example:
%% delete_environment_membership_result() :: #{

%% }
-type delete_environment_membership_result() :: #{binary() => any()}.

%% Example:
%% describe_environments_request() :: #{
%%   <<"environmentIds">> := list(string()())
%% }
-type describe_environments_request() :: #{binary() => any()}.

%% Example:
%% environment_lifecycle() :: #{
%%   <<"failureResource">> => string(),
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type environment_lifecycle() :: #{binary() => any()}.

-type create_environment_ec2_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_environment_membership_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_environment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_environment_membership_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_environment_memberships_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_environment_status_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_environments_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_environments_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    concurrent_access_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    concurrent_access_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type update_environment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_environment_membership_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Cloud9 development environment, launches an Amazon Elastic
%% Compute Cloud (Amazon EC2) instance, and
%% then connects from the instance to the environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec create_environment_ec2(aws_client:aws_client(), create_environment_ec2_request()) ->
    {ok, create_environment_ec2_result(), tuple()} |
    {error, any()} |
    {error, create_environment_ec2_errors(), tuple()}.
create_environment_ec2(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_ec2(Client, Input, []).

-spec create_environment_ec2(aws_client:aws_client(), create_environment_ec2_request(), proplists:proplist()) ->
    {ok, create_environment_ec2_result(), tuple()} |
    {error, any()} |
    {error, create_environment_ec2_errors(), tuple()}.
create_environment_ec2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentEC2">>, Input, Options).

%% @doc Adds an environment member to an Cloud9 development environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec create_environment_membership(aws_client:aws_client(), create_environment_membership_request()) ->
    {ok, create_environment_membership_result(), tuple()} |
    {error, any()} |
    {error, create_environment_membership_errors(), tuple()}.
create_environment_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_membership(Client, Input, []).

-spec create_environment_membership(aws_client:aws_client(), create_environment_membership_request(), proplists:proplist()) ->
    {ok, create_environment_membership_result(), tuple()} |
    {error, any()} |
    {error, create_environment_membership_errors(), tuple()}.
create_environment_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentMembership">>, Input, Options).

%% @doc Deletes an Cloud9 development environment.
%%
%% If an Amazon EC2 instance is connected to the
%% environment, also terminates the instance.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec delete_environment(aws_client:aws_client(), delete_environment_request()) ->
    {ok, delete_environment_result(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment(Client, Input, []).

-spec delete_environment(aws_client:aws_client(), delete_environment_request(), proplists:proplist()) ->
    {ok, delete_environment_result(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironment">>, Input, Options).

%% @doc Deletes an environment member from a development environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec delete_environment_membership(aws_client:aws_client(), delete_environment_membership_request()) ->
    {ok, delete_environment_membership_result(), tuple()} |
    {error, any()} |
    {error, delete_environment_membership_errors(), tuple()}.
delete_environment_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_membership(Client, Input, []).

-spec delete_environment_membership(aws_client:aws_client(), delete_environment_membership_request(), proplists:proplist()) ->
    {ok, delete_environment_membership_result(), tuple()} |
    {error, any()} |
    {error, delete_environment_membership_errors(), tuple()}.
delete_environment_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentMembership">>, Input, Options).

%% @doc Gets information about environment members for an Cloud9 development
%% environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec describe_environment_memberships(aws_client:aws_client(), describe_environment_memberships_request()) ->
    {ok, describe_environment_memberships_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_memberships_errors(), tuple()}.
describe_environment_memberships(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_memberships(Client, Input, []).

-spec describe_environment_memberships(aws_client:aws_client(), describe_environment_memberships_request(), proplists:proplist()) ->
    {ok, describe_environment_memberships_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_memberships_errors(), tuple()}.
describe_environment_memberships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentMemberships">>, Input, Options).

%% @doc Gets status information for an Cloud9 development environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec describe_environment_status(aws_client:aws_client(), describe_environment_status_request()) ->
    {ok, describe_environment_status_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_status_errors(), tuple()}.
describe_environment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_status(Client, Input, []).

-spec describe_environment_status(aws_client:aws_client(), describe_environment_status_request(), proplists:proplist()) ->
    {ok, describe_environment_status_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_status_errors(), tuple()}.
describe_environment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentStatus">>, Input, Options).

%% @doc Gets information about Cloud9 development environments.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec describe_environments(aws_client:aws_client(), describe_environments_request()) ->
    {ok, describe_environments_result(), tuple()} |
    {error, any()} |
    {error, describe_environments_errors(), tuple()}.
describe_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environments(Client, Input, []).

-spec describe_environments(aws_client:aws_client(), describe_environments_request(), proplists:proplist()) ->
    {ok, describe_environments_result(), tuple()} |
    {error, any()} |
    {error, describe_environments_errors(), tuple()}.
describe_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironments">>, Input, Options).

%% @doc Gets a list of Cloud9 development environment identifiers.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec list_environments(aws_client:aws_client(), list_environments_request()) ->
    {ok, list_environments_result(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environments(Client, Input, []).

-spec list_environments(aws_client:aws_client(), list_environments_request(), proplists:proplist()) ->
    {ok, list_environments_result(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironments">>, Input, Options).

%% @doc Gets a list of the tags associated with an Cloud9 development
%% environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds tags to an Cloud9 development environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
%%
%% Tags that you add to an Cloud9 environment by using this method will NOT
%% be
%% automatically propagated to underlying resources.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Cloud9 development environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Changes the settings of an existing Cloud9 development environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec update_environment(aws_client:aws_client(), update_environment_request()) ->
    {ok, update_environment_result(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment(Client, Input, []).

-spec update_environment(aws_client:aws_client(), update_environment_request(), proplists:proplist()) ->
    {ok, update_environment_result(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironment">>, Input, Options).

%% @doc Changes the settings of an existing environment member for an Cloud9
%% development
%% environment.
%%
%% Cloud9 is no longer available to new customers. Existing customers of
%% Cloud9 can continue to use the service as normal.
%% Learn more&quot;:
%% http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
-spec update_environment_membership(aws_client:aws_client(), update_environment_membership_request()) ->
    {ok, update_environment_membership_result(), tuple()} |
    {error, any()} |
    {error, update_environment_membership_errors(), tuple()}.
update_environment_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment_membership(Client, Input, []).

-spec update_environment_membership(aws_client:aws_client(), update_environment_membership_request(), proplists:proplist()) ->
    {ok, update_environment_membership_result(), tuple()} |
    {error, any()} |
    {error, update_environment_membership_errors(), tuple()}.
update_environment_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironmentMembership">>, Input, Options).

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
    Client1 = Client#{service => <<"cloud9">>},
    Host = build_host(<<"cloud9">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSCloud9WorkspaceManagementService.", Action/binary>>}
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
