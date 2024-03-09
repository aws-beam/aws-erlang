%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CodeStar
%%
%% This is the API reference for AWS CodeStar.
%%
%% This reference provides descriptions of the
%% operations and data types for the AWS CodeStar API along with usage
%% examples.
%%
%% You can use the AWS CodeStar API to work with:
%%
%% Projects and their resources, by calling the following:
%%
%% `DeleteProject', which deletes a project.
%%
%% `DescribeProject', which lists the attributes of a project.
%%
%% `ListProjects', which lists all projects associated with your AWS
%% account.
%%
%% `ListResources', which lists the resources associated with a
%% project.
%%
%% `ListTagsForProject', which lists the tags associated with a
%% project.
%%
%% `TagProject', which adds tags to a project.
%%
%% `UntagProject', which removes tags from a project.
%%
%% `UpdateProject', which updates the attributes of a project.
%%
%% Teams and team members, by calling the following:
%%
%% `AssociateTeamMember', which adds an IAM user to the team for a
%% project.
%%
%% `DisassociateTeamMember', which removes an IAM user from the team for
%% a
%% project.
%%
%% `ListTeamMembers', which lists all the IAM users in the team for a
%% project, including their roles and attributes.
%%
%% `UpdateTeamMember', which updates a team member's attributes in a
%% project.
%%
%% Users, by calling the following:
%%
%% `CreateUserProfile', which creates a user profile that contains data
%% associated with the user across all projects.
%%
%% `DeleteUserProfile', which deletes all user profile information across
%% all projects.
%%
%% `DescribeUserProfile', which describes the profile of a user.
%%
%% `ListUserProfiles', which lists all user profiles.
%%
%% `UpdateUserProfile', which updates the profile for a user.
-module(aws_codestar).

-export([associate_team_member/2,
         associate_team_member/3,
         create_project/2,
         create_project/3,
         create_user_profile/2,
         create_user_profile/3,
         delete_project/2,
         delete_project/3,
         delete_user_profile/2,
         delete_user_profile/3,
         describe_project/2,
         describe_project/3,
         describe_user_profile/2,
         describe_user_profile/3,
         disassociate_team_member/2,
         disassociate_team_member/3,
         list_projects/2,
         list_projects/3,
         list_resources/2,
         list_resources/3,
         list_tags_for_project/2,
         list_tags_for_project/3,
         list_team_members/2,
         list_team_members/3,
         list_user_profiles/2,
         list_user_profiles/3,
         tag_project/2,
         tag_project/3,
         untag_project/2,
         untag_project/3,
         update_project/2,
         update_project/3,
         update_team_member/2,
         update_team_member/3,
         update_user_profile/2,
         update_user_profile/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an IAM user to the team for an AWS CodeStar project.
associate_team_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_team_member(Client, Input, []).
associate_team_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTeamMember">>, Input, Options).

%% @doc Creates a project, including project resources.
%%
%% This action creates a project based on
%% a submitted project request. A set of source code files and a toolchain
%% template file
%% can be included with the project request. If these are not provided, an
%% empty project is created.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Creates a profile for a user that includes user preferences, such as
%% the display name
%% and email address assocciated with the user, in AWS CodeStar.
%%
%% The user profile is not
%% project-specific. Information in the user profile is displayed wherever
%% the user's information
%% appears to other users in AWS CodeStar.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Deletes a project, including project resources.
%%
%% Does not delete users associated with
%% the project, but does delete the IAM roles that allowed access to the
%% project.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes a user profile in AWS CodeStar, including all personal
%% preference data associated with
%% that profile, such as display name and email address.
%%
%% It does not delete the history of that
%% user, for example the history of commits made by that user.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Describes a project and its resources.
describe_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_project(Client, Input, []).
describe_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProject">>, Input, Options).

%% @doc Describes a user in AWS CodeStar and the user attributes across all
%% projects.
describe_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profile(Client, Input, []).
describe_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserProfile">>, Input, Options).

%% @doc Removes a user from a project.
%%
%% Removing a user from a project also removes the IAM
%% policies from that user that allowed access to the project and its
%% resources. Disassociating a
%% team member does not remove that user's profile from AWS CodeStar. It
%% does not remove the user from
%% IAM.
disassociate_team_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_team_member(Client, Input, []).
disassociate_team_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTeamMember">>, Input, Options).

%% @doc Lists all projects in AWS CodeStar associated with your AWS account.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Lists resources associated with a project in AWS CodeStar.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Gets the tags for a project.
list_tags_for_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_project(Client, Input, []).
list_tags_for_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForProject">>, Input, Options).

%% @doc Lists all team members associated with a project.
list_team_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_team_members(Client, Input, []).
list_team_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTeamMembers">>, Input, Options).

%% @doc Lists all the user profiles configured for your AWS account in AWS
%% CodeStar.
list_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_profiles(Client, Input, []).
list_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserProfiles">>, Input, Options).

%% @doc Adds tags to a project.
tag_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_project(Client, Input, []).
tag_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagProject">>, Input, Options).

%% @doc Removes tags from a project.
untag_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_project(Client, Input, []).
untag_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagProject">>, Input, Options).

%% @doc Updates a project in AWS CodeStar.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Updates a team member's attributes in an AWS CodeStar project.
%%
%% For example, you can change a
%% team member's role in the project, or change whether they have remote
%% access to project
%% resources.
update_team_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_team_member(Client, Input, []).
update_team_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTeamMember">>, Input, Options).

%% @doc Updates a user's profile in AWS CodeStar.
%%
%% The user profile is not project-specific.
%% Information in the user profile is displayed wherever the user's
%% information appears to other
%% users in AWS CodeStar.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).
update_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserProfile">>, Input, Options).

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
    Client1 = Client#{service => <<"codestar">>},
    Host = build_host(<<"codestar">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CodeStar_20170419.", Action/binary>>}
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
