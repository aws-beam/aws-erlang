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


%% Example:
%% project_creation_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type project_creation_failed_exception() :: #{binary() => any()}.

%% Example:
%% delete_user_profile_result() :: #{
%%   <<"userArn">> => string()
%% }
-type delete_user_profile_result() :: #{binary() => any()}.

%% Example:
%% update_user_profile_request() :: #{
%%   <<"displayName">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"sshPublicKey">> => string(),
%%   <<"userArn">> := string()
%% }
-type update_user_profile_request() :: #{binary() => any()}.

%% Example:
%% team_member_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type team_member_not_found_exception() :: #{binary() => any()}.

%% Example:
%% toolchain_source() :: #{
%%   <<"s3">> => s3_location()
%% }
-type toolchain_source() :: #{binary() => any()}.

%% Example:
%% toolchain() :: #{
%%   <<"roleArn">> => string(),
%%   <<"source">> => toolchain_source(),
%%   <<"stackParameters">> => map()
%% }
-type toolchain() :: #{binary() => any()}.

%% Example:
%% describe_project_result() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdTimeStamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectTemplateId">> => string(),
%%   <<"stackId">> => string(),
%%   <<"status">> => project_status()
%% }
-type describe_project_result() :: #{binary() => any()}.

%% Example:
%% code_commit_code_destination() :: #{
%%   <<"name">> => string()
%% }
-type code_commit_code_destination() :: #{binary() => any()}.

%% Example:
%% list_user_profiles_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"userProfiles">> => list(user_profile_summary()())
%% }
-type list_user_profiles_result() :: #{binary() => any()}.

%% Example:
%% project_summary() :: #{
%%   <<"projectArn">> => string(),
%%   <<"projectId">> => string()
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% describe_project_request() :: #{
%%   <<"id">> := string()
%% }
-type describe_project_request() :: #{binary() => any()}.

%% Example:
%% delete_project_result() :: #{
%%   <<"projectArn">> => string(),
%%   <<"stackId">> => string()
%% }
-type delete_project_result() :: #{binary() => any()}.

%% Example:
%% user_profile_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_profile_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% tag_project_result() :: #{
%%   <<"tags">> => map()
%% }
-type tag_project_result() :: #{binary() => any()}.

%% Example:
%% disassociate_team_member_result() :: #{

%% }
-type disassociate_team_member_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_project_request() :: #{
%%   <<"id">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_tags_for_project_request() :: #{binary() => any()}.

%% Example:
%% describe_user_profile_result() :: #{
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"sshPublicKey">> => string(),
%%   <<"userArn">> => string()
%% }
-type describe_user_profile_result() :: #{binary() => any()}.

%% Example:
%% describe_user_profile_request() :: #{
%%   <<"userArn">> := string()
%% }
-type describe_user_profile_request() :: #{binary() => any()}.

%% Example:
%% list_team_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectId">> := string()
%% }
-type list_team_members_request() :: #{binary() => any()}.

%% Example:
%% list_team_members_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"teamMembers">> => list(team_member()())
%% }
-type list_team_members_result() :: #{binary() => any()}.

%% Example:
%% delete_user_profile_request() :: #{
%%   <<"userArn">> := string()
%% }
-type delete_user_profile_request() :: #{binary() => any()}.

%% Example:
%% code_destination() :: #{
%%   <<"codeCommit">> => code_commit_code_destination(),
%%   <<"gitHub">> => git_hub_code_destination()
%% }
-type code_destination() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% team_member() :: #{
%%   <<"projectRole">> => string(),
%%   <<"remoteAccessAllowed">> => boolean(),
%%   <<"userArn">> => string()
%% }
-type team_member() :: #{binary() => any()}.

%% Example:
%% list_user_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_user_profiles_request() :: #{binary() => any()}.

%% Example:
%% team_member_already_associated_exception() :: #{
%%   <<"message">> => string()
%% }
-type team_member_already_associated_exception() :: #{binary() => any()}.

%% Example:
%% update_user_profile_result() :: #{
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"sshPublicKey">> => string(),
%%   <<"userArn">> => string()
%% }
-type update_user_profile_result() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"bucketKey">> => string(),
%%   <<"bucketName">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% list_resources_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(resource()())
%% }
-type list_resources_result() :: #{binary() => any()}.

%% Example:
%% untag_project_result() :: #{

%% }
-type untag_project_result() :: #{binary() => any()}.

%% Example:
%% code() :: #{
%%   <<"destination">> => code_destination(),
%%   <<"source">> => code_source()
%% }
-type code() :: #{binary() => any()}.

%% Example:
%% disassociate_team_member_request() :: #{
%%   <<"projectId">> := string(),
%%   <<"userArn">> := string()
%% }
-type disassociate_team_member_request() :: #{binary() => any()}.

%% Example:
%% update_project_request() :: #{
%%   <<"description">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> => string()
%% }
-type update_project_request() :: #{binary() => any()}.

%% Example:
%% project_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type project_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_team_member_result() :: #{
%%   <<"projectRole">> => string(),
%%   <<"remoteAccessAllowed">> => boolean(),
%%   <<"userArn">> => string()
%% }
-type update_team_member_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_project_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => map()
%% }
-type list_tags_for_project_result() :: #{binary() => any()}.

%% Example:
%% code_source() :: #{
%%   <<"s3">> => s3_location()
%% }
-type code_source() :: #{binary() => any()}.

%% Example:
%% git_hub_code_destination() :: #{
%%   <<"description">> => string(),
%%   <<"issuesEnabled">> => boolean(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"privateRepository">> => boolean(),
%%   <<"token">> => string(),
%%   <<"type">> => string()
%% }
-type git_hub_code_destination() :: #{binary() => any()}.

%% Example:
%% user_profile_summary() :: #{
%%   <<"displayName">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"sshPublicKey">> => string(),
%%   <<"userArn">> => string()
%% }
-type user_profile_summary() :: #{binary() => any()}.

%% Example:
%% create_user_profile_request() :: #{
%%   <<"displayName">> := string(),
%%   <<"emailAddress">> := string(),
%%   <<"sshPublicKey">> => string(),
%%   <<"userArn">> := string()
%% }
-type create_user_profile_request() :: #{binary() => any()}.

%% Example:
%% create_user_profile_result() :: #{
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"sshPublicKey">> => string(),
%%   <<"userArn">> => string()
%% }
-type create_user_profile_result() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% create_project_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> := string(),
%%   <<"name">> := string(),
%%   <<"sourceCode">> => list(code()()),
%%   <<"tags">> => map(),
%%   <<"toolchain">> => toolchain()
%% }
-type create_project_request() :: #{binary() => any()}.

%% Example:
%% project_status() :: #{
%%   <<"reason">> => string(),
%%   <<"state">> => string()
%% }
-type project_status() :: #{binary() => any()}.

%% Example:
%% list_projects_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectId">> := string()
%% }
-type list_resources_request() :: #{binary() => any()}.

%% Example:
%% associate_team_member_result() :: #{
%%   <<"clientRequestToken">> => string()
%% }
-type associate_team_member_result() :: #{binary() => any()}.

%% Example:
%% associate_team_member_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"projectId">> := string(),
%%   <<"projectRole">> := string(),
%%   <<"remoteAccessAllowed">> => boolean(),
%%   <<"userArn">> := string()
%% }
-type associate_team_member_request() :: #{binary() => any()}.

%% Example:
%% list_projects_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(project_summary()())
%% }
-type list_projects_result() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"deleteStack">> => boolean(),
%%   <<"id">> := string()
%% }
-type delete_project_request() :: #{binary() => any()}.

%% Example:
%% project_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type project_not_found_exception() :: #{binary() => any()}.

%% Example:
%% user_profile_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_profile_not_found_exception() :: #{binary() => any()}.

%% Example:
%% invalid_service_role_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_service_role_exception() :: #{binary() => any()}.

%% Example:
%% create_project_result() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"id">> => string(),
%%   <<"projectTemplateId">> => string()
%% }
-type create_project_result() :: #{binary() => any()}.

%% Example:
%% untag_project_request() :: #{
%%   <<"id">> := string(),
%%   <<"tags">> := list(string()())
%% }
-type untag_project_request() :: #{binary() => any()}.

%% Example:
%% project_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type project_configuration_exception() :: #{binary() => any()}.

%% Example:
%% update_team_member_request() :: #{
%%   <<"projectId">> := string(),
%%   <<"projectRole">> => string(),
%%   <<"remoteAccessAllowed">> => boolean(),
%%   <<"userArn">> := string()
%% }
-type update_team_member_request() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"id">> => string()
%% }
-type resource() :: #{binary() => any()}.

%% Example:
%% tag_project_request() :: #{
%%   <<"id">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_project_request() :: #{binary() => any()}.

%% Example:
%% update_project_result() :: #{

%% }
-type update_project_result() :: #{binary() => any()}.

-type associate_team_member_errors() ::
    project_configuration_exception() | 
    invalid_service_role_exception() | 
    project_not_found_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    team_member_already_associated_exception().

-type create_project_errors() ::
    project_configuration_exception() | 
    invalid_service_role_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    project_already_exists_exception() | 
    project_creation_failed_exception().

-type create_user_profile_errors() ::
    validation_exception() | 
    user_profile_already_exists_exception().

-type delete_project_errors() ::
    invalid_service_role_exception() | 
    validation_exception() | 
    concurrent_modification_exception().

-type delete_user_profile_errors() ::
    validation_exception().

-type describe_project_errors() ::
    project_configuration_exception() | 
    invalid_service_role_exception() | 
    project_not_found_exception() | 
    validation_exception() | 
    concurrent_modification_exception().

-type describe_user_profile_errors() ::
    user_profile_not_found_exception() | 
    validation_exception().

-type disassociate_team_member_errors() ::
    invalid_service_role_exception() | 
    project_not_found_exception() | 
    validation_exception() | 
    concurrent_modification_exception().

-type list_projects_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_resources_errors() ::
    project_not_found_exception() | 
    validation_exception() | 
    invalid_next_token_exception().

-type list_tags_for_project_errors() ::
    project_not_found_exception() | 
    validation_exception() | 
    invalid_next_token_exception().

-type list_team_members_errors() ::
    project_not_found_exception() | 
    validation_exception() | 
    invalid_next_token_exception().

-type list_user_profiles_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type tag_project_errors() ::
    project_not_found_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception().

-type untag_project_errors() ::
    project_not_found_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception().

-type update_project_errors() ::
    project_not_found_exception() | 
    validation_exception().

-type update_team_member_errors() ::
    project_configuration_exception() | 
    invalid_service_role_exception() | 
    project_not_found_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    team_member_not_found_exception().

-type update_user_profile_errors() ::
    user_profile_not_found_exception() | 
    validation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an IAM user to the team for an AWS CodeStar project.
-spec associate_team_member(aws_client:aws_client(), associate_team_member_request()) ->
    {ok, associate_team_member_result(), tuple()} |
    {error, any()} |
    {error, associate_team_member_errors(), tuple()}.
associate_team_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_team_member(Client, Input, []).

-spec associate_team_member(aws_client:aws_client(), associate_team_member_request(), proplists:proplist()) ->
    {ok, associate_team_member_result(), tuple()} |
    {error, any()} |
    {error, associate_team_member_errors(), tuple()}.
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
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_result(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_result(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
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
-spec create_user_profile(aws_client:aws_client(), create_user_profile_request()) ->
    {ok, create_user_profile_result(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).

-spec create_user_profile(aws_client:aws_client(), create_user_profile_request(), proplists:proplist()) ->
    {ok, create_user_profile_result(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Deletes a project, including project resources.
%%
%% Does not delete users associated with
%% the project, but does delete the IAM roles that allowed access to the
%% project.
-spec delete_project(aws_client:aws_client(), delete_project_request()) ->
    {ok, delete_project_result(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).

-spec delete_project(aws_client:aws_client(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_result(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes a user profile in AWS CodeStar, including all personal
%% preference data associated with
%% that profile, such as display name and email address.
%%
%% It does not delete the history of that
%% user, for example the history of commits made by that user.
-spec delete_user_profile(aws_client:aws_client(), delete_user_profile_request()) ->
    {ok, delete_user_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_user_profile_errors(), tuple()}.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).

-spec delete_user_profile(aws_client:aws_client(), delete_user_profile_request(), proplists:proplist()) ->
    {ok, delete_user_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_user_profile_errors(), tuple()}.
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Describes a project and its resources.
-spec describe_project(aws_client:aws_client(), describe_project_request()) ->
    {ok, describe_project_result(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_project(Client, Input, []).

-spec describe_project(aws_client:aws_client(), describe_project_request(), proplists:proplist()) ->
    {ok, describe_project_result(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProject">>, Input, Options).

%% @doc Describes a user in AWS CodeStar and the user attributes across all
%% projects.
-spec describe_user_profile(aws_client:aws_client(), describe_user_profile_request()) ->
    {ok, describe_user_profile_result(), tuple()} |
    {error, any()} |
    {error, describe_user_profile_errors(), tuple()}.
describe_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profile(Client, Input, []).

-spec describe_user_profile(aws_client:aws_client(), describe_user_profile_request(), proplists:proplist()) ->
    {ok, describe_user_profile_result(), tuple()} |
    {error, any()} |
    {error, describe_user_profile_errors(), tuple()}.
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
-spec disassociate_team_member(aws_client:aws_client(), disassociate_team_member_request()) ->
    {ok, disassociate_team_member_result(), tuple()} |
    {error, any()} |
    {error, disassociate_team_member_errors(), tuple()}.
disassociate_team_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_team_member(Client, Input, []).

-spec disassociate_team_member(aws_client:aws_client(), disassociate_team_member_request(), proplists:proplist()) ->
    {ok, disassociate_team_member_result(), tuple()} |
    {error, any()} |
    {error, disassociate_team_member_errors(), tuple()}.
disassociate_team_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTeamMember">>, Input, Options).

%% @doc Lists all projects in AWS CodeStar associated with your AWS account.
-spec list_projects(aws_client:aws_client(), list_projects_request()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).

-spec list_projects(aws_client:aws_client(), list_projects_request(), proplists:proplist()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Lists resources associated with a project in AWS CodeStar.
-spec list_resources(aws_client:aws_client(), list_resources_request()) ->
    {ok, list_resources_result(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).

-spec list_resources(aws_client:aws_client(), list_resources_request(), proplists:proplist()) ->
    {ok, list_resources_result(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Gets the tags for a project.
-spec list_tags_for_project(aws_client:aws_client(), list_tags_for_project_request()) ->
    {ok, list_tags_for_project_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_project_errors(), tuple()}.
list_tags_for_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_project(Client, Input, []).

-spec list_tags_for_project(aws_client:aws_client(), list_tags_for_project_request(), proplists:proplist()) ->
    {ok, list_tags_for_project_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_project_errors(), tuple()}.
list_tags_for_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForProject">>, Input, Options).

%% @doc Lists all team members associated with a project.
-spec list_team_members(aws_client:aws_client(), list_team_members_request()) ->
    {ok, list_team_members_result(), tuple()} |
    {error, any()} |
    {error, list_team_members_errors(), tuple()}.
list_team_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_team_members(Client, Input, []).

-spec list_team_members(aws_client:aws_client(), list_team_members_request(), proplists:proplist()) ->
    {ok, list_team_members_result(), tuple()} |
    {error, any()} |
    {error, list_team_members_errors(), tuple()}.
list_team_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTeamMembers">>, Input, Options).

%% @doc Lists all the user profiles configured for your AWS account in AWS
%% CodeStar.
-spec list_user_profiles(aws_client:aws_client(), list_user_profiles_request()) ->
    {ok, list_user_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_user_profiles_errors(), tuple()}.
list_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_profiles(Client, Input, []).

-spec list_user_profiles(aws_client:aws_client(), list_user_profiles_request(), proplists:proplist()) ->
    {ok, list_user_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_user_profiles_errors(), tuple()}.
list_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserProfiles">>, Input, Options).

%% @doc Adds tags to a project.
-spec tag_project(aws_client:aws_client(), tag_project_request()) ->
    {ok, tag_project_result(), tuple()} |
    {error, any()} |
    {error, tag_project_errors(), tuple()}.
tag_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_project(Client, Input, []).

-spec tag_project(aws_client:aws_client(), tag_project_request(), proplists:proplist()) ->
    {ok, tag_project_result(), tuple()} |
    {error, any()} |
    {error, tag_project_errors(), tuple()}.
tag_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagProject">>, Input, Options).

%% @doc Removes tags from a project.
-spec untag_project(aws_client:aws_client(), untag_project_request()) ->
    {ok, untag_project_result(), tuple()} |
    {error, any()} |
    {error, untag_project_errors(), tuple()}.
untag_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_project(Client, Input, []).

-spec untag_project(aws_client:aws_client(), untag_project_request(), proplists:proplist()) ->
    {ok, untag_project_result(), tuple()} |
    {error, any()} |
    {error, untag_project_errors(), tuple()}.
untag_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagProject">>, Input, Options).

%% @doc Updates a project in AWS CodeStar.
-spec update_project(aws_client:aws_client(), update_project_request()) ->
    {ok, update_project_result(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).

-spec update_project(aws_client:aws_client(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_result(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Updates a team member's attributes in an AWS CodeStar project.
%%
%% For example, you can change a
%% team member's role in the project, or change whether they have remote
%% access to project
%% resources.
-spec update_team_member(aws_client:aws_client(), update_team_member_request()) ->
    {ok, update_team_member_result(), tuple()} |
    {error, any()} |
    {error, update_team_member_errors(), tuple()}.
update_team_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_team_member(Client, Input, []).

-spec update_team_member(aws_client:aws_client(), update_team_member_request(), proplists:proplist()) ->
    {ok, update_team_member_result(), tuple()} |
    {error, any()} |
    {error, update_team_member_errors(), tuple()}.
update_team_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTeamMember">>, Input, Options).

%% @doc Updates a user's profile in AWS CodeStar.
%%
%% The user profile is not project-specific.
%% Information in the user profile is displayed wherever the user's
%% information appears to other
%% users in AWS CodeStar.
-spec update_user_profile(aws_client:aws_client(), update_user_profile_request()) ->
    {ok, update_user_profile_result(), tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).

-spec update_user_profile(aws_client:aws_client(), update_user_profile_request(), proplists:proplist()) ->
    {ok, update_user_profile_result(), tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
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
