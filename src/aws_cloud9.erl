%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Cloud9
%%
%% Cloud9 is a collection of tools that you can use to code, build, run,
%% test, debug, and release software in the cloud.
%%
%% For more information about Cloud9, see the Cloud9 User Guide.
%%
%% Cloud9 supports these operations:
%%
%% <ul> <li> `CreateEnvironmentEC2': Creates an Cloud9 development
%% environment, launches an Amazon EC2 instance, and then connects from the
%% instance to the environment.
%%
%% </li> <li> `CreateEnvironmentMembership': Adds an environment member to an
%% environment.
%%
%% </li> <li> `DeleteEnvironment': Deletes an environment. If an Amazon EC2
%% instance is connected to the environment, also terminates the instance.
%%
%% </li> <li> `DeleteEnvironmentMembership': Deletes an environment member
%% from an environment.
%%
%% </li> <li> `DescribeEnvironmentMemberships': Gets information about
%% environment members for an environment.
%%
%% </li> <li> `DescribeEnvironments': Gets information about environments.
%%
%% </li> <li> `DescribeEnvironmentStatus': Gets status information for an
%% environment.
%%
%% </li> <li> `ListEnvironments': Gets a list of environment identifiers.
%%
%% </li> <li> `ListTagsForResource': Gets the tags for an environment.
%%
%% </li> <li> `TagResource': Adds tags to an environment.
%%
%% </li> <li> `UntagResource': Removes tags from an environment.
%%
%% </li> <li> `UpdateEnvironment': Changes the settings of an existing
%% environment.
%%
%% </li> <li> `UpdateEnvironmentMembership': Changes the settings of an
%% existing environment member for an environment.
%%
%% </li> </ul>
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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Cloud9 development environment, launches an Amazon Elastic
%% Compute Cloud (Amazon EC2) instance, and then connects from the instance
%% to the environment.
create_environment_ec2(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_ec2(Client, Input, []).
create_environment_ec2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentEC2">>, Input, Options).

%% @doc Adds an environment member to an Cloud9 development environment.
create_environment_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_membership(Client, Input, []).
create_environment_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentMembership">>, Input, Options).

%% @doc Deletes an Cloud9 development environment.
%%
%% If an Amazon EC2 instance is connected to the environment, also terminates
%% the instance.
delete_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment(Client, Input, []).
delete_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironment">>, Input, Options).

%% @doc Deletes an environment member from an Cloud9 development environment.
delete_environment_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_membership(Client, Input, []).
delete_environment_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentMembership">>, Input, Options).

%% @doc Gets information about environment members for an Cloud9 development
%% environment.
describe_environment_memberships(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_memberships(Client, Input, []).
describe_environment_memberships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentMemberships">>, Input, Options).

%% @doc Gets status information for an Cloud9 development environment.
describe_environment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_status(Client, Input, []).
describe_environment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentStatus">>, Input, Options).

%% @doc Gets information about Cloud9 development environments.
describe_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environments(Client, Input, []).
describe_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironments">>, Input, Options).

%% @doc Gets a list of Cloud9 development environment identifiers.
list_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environments(Client, Input, []).
list_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironments">>, Input, Options).

%% @doc Gets a list of the tags associated with an Cloud9 development
%% environment.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds tags to an Cloud9 development environment.
%%
%% Tags that you add to an Cloud9 environment by using this method will NOT
%% be automatically propagated to underlying resources.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Cloud9 development environment.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Changes the settings of an existing Cloud9 development environment.
update_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment(Client, Input, []).
update_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironment">>, Input, Options).

%% @doc Changes the settings of an existing environment member for an Cloud9
%% development environment.
update_environment_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment_membership(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
