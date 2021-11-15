%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CodeCommit
%%
%% This is the AWS CodeCommit API Reference.
%%
%% This reference provides descriptions of the operations and data types for
%% AWS CodeCommit API along with usage examples.
%%
%% You can use the AWS CodeCommit API to work with the following objects:
%%
%% Repositories, by calling the following:
%%
%% <ul> <li> `BatchGetRepositories', which returns information about one or
%% more repositories associated with your AWS account.
%%
%% </li> <li> `CreateRepository', which creates an AWS CodeCommit repository.
%%
%% </li> <li> `DeleteRepository', which deletes an AWS CodeCommit repository.
%%
%% </li> <li> `GetRepository', which returns information about a specified
%% repository.
%%
%% </li> <li> `ListRepositories', which lists all AWS CodeCommit repositories
%% associated with your AWS account.
%%
%% </li> <li> `UpdateRepositoryDescription', which sets or updates the
%% description of the repository.
%%
%% </li> <li> `UpdateRepositoryName', which changes the name of the
%% repository. If you change the name of a repository, no other users of that
%% repository can access it until you send them the new HTTPS or SSH URL to
%% use.
%%
%% </li> </ul> Branches, by calling the following:
%%
%% <ul> <li> `CreateBranch', which creates a branch in a specified
%% repository.
%%
%% </li> <li> `DeleteBranch', which deletes the specified branch in a
%% repository unless it is the default branch.
%%
%% </li> <li> `GetBranch', which returns information about a specified
%% branch.
%%
%% </li> <li> `ListBranches', which lists all branches for a specified
%% repository.
%%
%% </li> <li> `UpdateDefaultBranch', which changes the default branch for a
%% repository.
%%
%% </li> </ul> Files, by calling the following:
%%
%% <ul> <li> `DeleteFile', which deletes the content of a specified file from
%% a specified branch.
%%
%% </li> <li> `GetBlob', which returns the base-64 encoded content of an
%% individual Git blob object in a repository.
%%
%% </li> <li> `GetFile', which returns the base-64 encoded content of a
%% specified file.
%%
%% </li> <li> `GetFolder', which returns the contents of a specified folder
%% or directory.
%%
%% </li> <li> `PutFile', which adds or modifies a single file in a specified
%% repository and branch.
%%
%% </li> </ul> Commits, by calling the following:
%%
%% <ul> <li> `BatchGetCommits', which returns information about one or more
%% commits in a repository.
%%
%% </li> <li> `CreateCommit', which creates a commit for changes to a
%% repository.
%%
%% </li> <li> `GetCommit', which returns information about a commit,
%% including commit messages and author and committer information.
%%
%% </li> <li> `GetDifferences', which returns information about the
%% differences in a valid commit specifier (such as a branch, tag, HEAD,
%% commit ID, or other fully qualified reference).
%%
%% </li> </ul> Merges, by calling the following:
%%
%% <ul> <li> `BatchDescribeMergeConflicts', which returns information about
%% conflicts in a merge between commits in a repository.
%%
%% </li> <li> `CreateUnreferencedMergeCommit', which creates an unreferenced
%% commit between two branches or commits for the purpose of comparing them
%% and identifying any potential conflicts.
%%
%% </li> <li> `DescribeMergeConflicts', which returns information about merge
%% conflicts between the base, source, and destination versions of a file in
%% a potential merge.
%%
%% </li> <li> `GetMergeCommit', which returns information about the merge
%% between a source and destination commit.
%%
%% </li> <li> `GetMergeConflicts', which returns information about merge
%% conflicts between the source and destination branch in a pull request.
%%
%% </li> <li> `GetMergeOptions', which returns information about the
%% available merge options between two branches or commit specifiers.
%%
%% </li> <li> `MergeBranchesByFastForward', which merges two branches using
%% the fast-forward merge option.
%%
%% </li> <li> `MergeBranchesBySquash', which merges two branches using the
%% squash merge option.
%%
%% </li> <li> `MergeBranchesByThreeWay', which merges two branches using the
%% three-way merge option.
%%
%% </li> </ul> Pull requests, by calling the following:
%%
%% <ul> <li> `CreatePullRequest', which creates a pull request in a specified
%% repository.
%%
%% </li> <li> `CreatePullRequestApprovalRule', which creates an approval rule
%% for a specified pull request.
%%
%% </li> <li> `DeletePullRequestApprovalRule', which deletes an approval rule
%% for a specified pull request.
%%
%% </li> <li> `DescribePullRequestEvents', which returns information about
%% one or more pull request events.
%%
%% </li> <li> `EvaluatePullRequestApprovalRules', which evaluates whether a
%% pull request has met all the conditions specified in its associated
%% approval rules.
%%
%% </li> <li> `GetCommentsForPullRequest', which returns information about
%% comments on a specified pull request.
%%
%% </li> <li> `GetPullRequest', which returns information about a specified
%% pull request.
%%
%% </li> <li> `GetPullRequestApprovalStates', which returns information about
%% the approval states for a specified pull request.
%%
%% </li> <li> `GetPullRequestOverrideState', which returns information about
%% whether approval rules have been set aside (overriden) for a pull request,
%% and if so, the Amazon Resource Name (ARN) of the user or identity that
%% overrode the rules and their requirements for the pull request.
%%
%% </li> <li> `ListPullRequests', which lists all pull requests for a
%% repository.
%%
%% </li> <li> `MergePullRequestByFastForward', which merges the source
%% destination branch of a pull request into the specified destination branch
%% for that pull request using the fast-forward merge option.
%%
%% </li> <li> `MergePullRequestBySquash', which merges the source destination
%% branch of a pull request into the specified destination branch for that
%% pull request using the squash merge option.
%%
%% </li> <li> `MergePullRequestByThreeWay'. which merges the source
%% destination branch of a pull request into the specified destination branch
%% for that pull request using the three-way merge option.
%%
%% </li> <li> `OverridePullRequestApprovalRules', which sets aside all
%% approval rule requirements for a pull request.
%%
%% </li> <li> `PostCommentForPullRequest', which posts a comment to a pull
%% request at the specified line, file, or request.
%%
%% </li> <li> `UpdatePullRequestApprovalRuleContent', which updates the
%% structure of an approval rule for a pull request.
%%
%% </li> <li> `UpdatePullRequestApprovalState', which updates the state of an
%% approval on a pull request.
%%
%% </li> <li> `UpdatePullRequestDescription', which updates the description
%% of a pull request.
%%
%% </li> <li> `UpdatePullRequestStatus', which updates the status of a pull
%% request.
%%
%% </li> <li> `UpdatePullRequestTitle', which updates the title of a pull
%% request.
%%
%% </li> </ul> Approval rule templates, by calling the following:
%%
%% <ul> <li> `AssociateApprovalRuleTemplateWithRepository', which associates
%% a template with a specified repository. After the template is associated
%% with a repository, AWS CodeCommit creates approval rules that match the
%% template conditions on every pull request created in the specified
%% repository.
%%
%% </li> <li> `BatchAssociateApprovalRuleTemplateWithRepositories', which
%% associates a template with one or more specified repositories. After the
%% template is associated with a repository, AWS CodeCommit creates approval
%% rules that match the template conditions on every pull request created in
%% the specified repositories.
%%
%% </li> <li> `BatchDisassociateApprovalRuleTemplateFromRepositories', which
%% removes the association between a template and specified repositories so
%% that approval rules based on the template are not automatically created
%% when pull requests are created in those repositories.
%%
%% </li> <li> `CreateApprovalRuleTemplate', which creates a template for
%% approval rules that can then be associated with one or more repositories
%% in your AWS account.
%%
%% </li> <li> `DeleteApprovalRuleTemplate', which deletes the specified
%% template. It does not remove approval rules on pull requests already
%% created with the template.
%%
%% </li> <li> `DisassociateApprovalRuleTemplateFromRepository', which removes
%% the association between a template and a repository so that approval rules
%% based on the template are not automatically created when pull requests are
%% created in the specified repository.
%%
%% </li> <li> `GetApprovalRuleTemplate', which returns information about an
%% approval rule template.
%%
%% </li> <li> `ListApprovalRuleTemplates', which lists all approval rule
%% templates in the AWS Region in your AWS account.
%%
%% </li> <li> `ListAssociatedApprovalRuleTemplatesForRepository', which lists
%% all approval rule templates that are associated with a specified
%% repository.
%%
%% </li> <li> `ListRepositoriesForApprovalRuleTemplate', which lists all
%% repositories associated with the specified approval rule template.
%%
%% </li> <li> `UpdateApprovalRuleTemplateDescription', which updates the
%% description of an approval rule template.
%%
%% </li> <li> `UpdateApprovalRuleTemplateName', which updates the name of an
%% approval rule template.
%%
%% </li> <li> `UpdateApprovalRuleTemplateContent', which updates the content
%% of an approval rule template.
%%
%% </li> </ul> Comments in a repository, by calling the following:
%%
%% <ul> <li> `DeleteCommentContent', which deletes the content of a comment
%% on a commit in a repository.
%%
%% </li> <li> `GetComment', which returns information about a comment on a
%% commit.
%%
%% </li> <li> `GetCommentReactions', which returns information about emoji
%% reactions to comments.
%%
%% </li> <li> `GetCommentsForComparedCommit', which returns information about
%% comments on the comparison between two commit specifiers in a repository.
%%
%% </li> <li> `PostCommentForComparedCommit', which creates a comment on the
%% comparison between two commit specifiers in a repository.
%%
%% </li> <li> `PostCommentReply', which creates a reply to a comment.
%%
%% </li> <li> `PutCommentReaction', which creates or updates an emoji
%% reaction to a comment.
%%
%% </li> <li> `UpdateComment', which updates the content of a comment on a
%% commit in a repository.
%%
%% </li> </ul> Tags used to tag resources in AWS CodeCommit (not Git tags),
%% by calling the following:
%%
%% <ul> <li> `ListTagsForResource', which gets information about AWS tags for
%% a specified Amazon Resource Name (ARN) in AWS CodeCommit.
%%
%% </li> <li> `TagResource', which adds or updates tags for a resource in AWS
%% CodeCommit.
%%
%% </li> <li> `UntagResource', which removes tags for a resource in AWS
%% CodeCommit.
%%
%% </li> </ul> Triggers, by calling the following:
%%
%% <ul> <li> `GetRepositoryTriggers', which returns information about
%% triggers configured for a repository.
%%
%% </li> <li> `PutRepositoryTriggers', which replaces all triggers for a
%% repository and can be used to create or delete triggers.
%%
%% </li> <li> `TestRepositoryTriggers', which tests the functionality of a
%% repository trigger by sending data to the trigger target.
%%
%% </li> </ul> For information about how to use AWS CodeCommit, see the AWS
%% CodeCommit User Guide.
-module(aws_codecommit).

-export([associate_approval_rule_template_with_repository/2,
         associate_approval_rule_template_with_repository/3,
         batch_associate_approval_rule_template_with_repositories/2,
         batch_associate_approval_rule_template_with_repositories/3,
         batch_describe_merge_conflicts/2,
         batch_describe_merge_conflicts/3,
         batch_disassociate_approval_rule_template_from_repositories/2,
         batch_disassociate_approval_rule_template_from_repositories/3,
         batch_get_commits/2,
         batch_get_commits/3,
         batch_get_repositories/2,
         batch_get_repositories/3,
         create_approval_rule_template/2,
         create_approval_rule_template/3,
         create_branch/2,
         create_branch/3,
         create_commit/2,
         create_commit/3,
         create_pull_request/2,
         create_pull_request/3,
         create_pull_request_approval_rule/2,
         create_pull_request_approval_rule/3,
         create_repository/2,
         create_repository/3,
         create_unreferenced_merge_commit/2,
         create_unreferenced_merge_commit/3,
         delete_approval_rule_template/2,
         delete_approval_rule_template/3,
         delete_branch/2,
         delete_branch/3,
         delete_comment_content/2,
         delete_comment_content/3,
         delete_file/2,
         delete_file/3,
         delete_pull_request_approval_rule/2,
         delete_pull_request_approval_rule/3,
         delete_repository/2,
         delete_repository/3,
         describe_merge_conflicts/2,
         describe_merge_conflicts/3,
         describe_pull_request_events/2,
         describe_pull_request_events/3,
         disassociate_approval_rule_template_from_repository/2,
         disassociate_approval_rule_template_from_repository/3,
         evaluate_pull_request_approval_rules/2,
         evaluate_pull_request_approval_rules/3,
         get_approval_rule_template/2,
         get_approval_rule_template/3,
         get_blob/2,
         get_blob/3,
         get_branch/2,
         get_branch/3,
         get_comment/2,
         get_comment/3,
         get_comment_reactions/2,
         get_comment_reactions/3,
         get_comments_for_compared_commit/2,
         get_comments_for_compared_commit/3,
         get_comments_for_pull_request/2,
         get_comments_for_pull_request/3,
         get_commit/2,
         get_commit/3,
         get_differences/2,
         get_differences/3,
         get_file/2,
         get_file/3,
         get_folder/2,
         get_folder/3,
         get_merge_commit/2,
         get_merge_commit/3,
         get_merge_conflicts/2,
         get_merge_conflicts/3,
         get_merge_options/2,
         get_merge_options/3,
         get_pull_request/2,
         get_pull_request/3,
         get_pull_request_approval_states/2,
         get_pull_request_approval_states/3,
         get_pull_request_override_state/2,
         get_pull_request_override_state/3,
         get_repository/2,
         get_repository/3,
         get_repository_triggers/2,
         get_repository_triggers/3,
         list_approval_rule_templates/2,
         list_approval_rule_templates/3,
         list_associated_approval_rule_templates_for_repository/2,
         list_associated_approval_rule_templates_for_repository/3,
         list_branches/2,
         list_branches/3,
         list_pull_requests/2,
         list_pull_requests/3,
         list_repositories/2,
         list_repositories/3,
         list_repositories_for_approval_rule_template/2,
         list_repositories_for_approval_rule_template/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         merge_branches_by_fast_forward/2,
         merge_branches_by_fast_forward/3,
         merge_branches_by_squash/2,
         merge_branches_by_squash/3,
         merge_branches_by_three_way/2,
         merge_branches_by_three_way/3,
         merge_pull_request_by_fast_forward/2,
         merge_pull_request_by_fast_forward/3,
         merge_pull_request_by_squash/2,
         merge_pull_request_by_squash/3,
         merge_pull_request_by_three_way/2,
         merge_pull_request_by_three_way/3,
         override_pull_request_approval_rules/2,
         override_pull_request_approval_rules/3,
         post_comment_for_compared_commit/2,
         post_comment_for_compared_commit/3,
         post_comment_for_pull_request/2,
         post_comment_for_pull_request/3,
         post_comment_reply/2,
         post_comment_reply/3,
         put_comment_reaction/2,
         put_comment_reaction/3,
         put_file/2,
         put_file/3,
         put_repository_triggers/2,
         put_repository_triggers/3,
         tag_resource/2,
         tag_resource/3,
         test_repository_triggers/2,
         test_repository_triggers/3,
         untag_resource/2,
         untag_resource/3,
         update_approval_rule_template_content/2,
         update_approval_rule_template_content/3,
         update_approval_rule_template_description/2,
         update_approval_rule_template_description/3,
         update_approval_rule_template_name/2,
         update_approval_rule_template_name/3,
         update_comment/2,
         update_comment/3,
         update_default_branch/2,
         update_default_branch/3,
         update_pull_request_approval_rule_content/2,
         update_pull_request_approval_rule_content/3,
         update_pull_request_approval_state/2,
         update_pull_request_approval_state/3,
         update_pull_request_description/2,
         update_pull_request_description/3,
         update_pull_request_status/2,
         update_pull_request_status/3,
         update_pull_request_title/2,
         update_pull_request_title/3,
         update_repository_description/2,
         update_repository_description/3,
         update_repository_name/2,
         update_repository_name/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between an approval rule template and a
%% specified repository.
%%
%% Then, the next time a pull request is created in the repository where the
%% destination reference (if specified) matches the destination reference
%% (branch) for the pull request, an approval rule that matches the template
%% conditions is automatically created for that pull request. If no
%% destination references are specified in the template, an approval rule
%% that matches the template contents is created for all pull requests in
%% that repository.
associate_approval_rule_template_with_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_approval_rule_template_with_repository(Client, Input, []).
associate_approval_rule_template_with_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateApprovalRuleTemplateWithRepository">>, Input, Options).

%% @doc Creates an association between an approval rule template and one or
%% more specified repositories.
batch_associate_approval_rule_template_with_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_approval_rule_template_with_repositories(Client, Input, []).
batch_associate_approval_rule_template_with_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateApprovalRuleTemplateWithRepositories">>, Input, Options).

%% @doc Returns information about one or more merge conflicts in the
%% attempted merge of two commit specifiers using the squash or three-way
%% merge strategy.
batch_describe_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_describe_merge_conflicts(Client, Input, []).
batch_describe_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDescribeMergeConflicts">>, Input, Options).

%% @doc Removes the association between an approval rule template and one or
%% more specified repositories.
batch_disassociate_approval_rule_template_from_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_approval_rule_template_from_repositories(Client, Input, []).
batch_disassociate_approval_rule_template_from_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateApprovalRuleTemplateFromRepositories">>, Input, Options).

%% @doc Returns information about the contents of one or more commits in a
%% repository.
batch_get_commits(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_commits(Client, Input, []).
batch_get_commits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCommits">>, Input, Options).

%% @doc Returns information about one or more repositories.
%%
%% The description field for a repository accepts all HTML characters and all
%% valid Unicode characters. Applications that do not HTML-encode the
%% description and display it in a webpage can expose users to potentially
%% malicious code. Make sure that you HTML-encode the description field in
%% any application that uses this API to display the repository description
%% on a webpage.
batch_get_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_repositories(Client, Input, []).
batch_get_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetRepositories">>, Input, Options).

%% @doc Creates a template for approval rules that can then be associated
%% with one or more repositories in your AWS account.
%%
%% When you associate a template with a repository, AWS CodeCommit creates an
%% approval rule that matches the conditions of the template for all pull
%% requests that meet the conditions of the template. For more information,
%% see `AssociateApprovalRuleTemplateWithRepository'.
create_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_approval_rule_template(Client, Input, []).
create_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApprovalRuleTemplate">>, Input, Options).

%% @doc Creates a branch in a repository and points the branch to a commit.
%%
%% Calling the create branch operation does not set a repository's default
%% branch. To do this, call the update default branch operation.
create_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_branch(Client, Input, []).
create_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBranch">>, Input, Options).

%% @doc Creates a commit for a repository on the tip of a specified branch.
create_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_commit(Client, Input, []).
create_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCommit">>, Input, Options).

%% @doc Creates a pull request in the specified repository.
create_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pull_request(Client, Input, []).
create_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePullRequest">>, Input, Options).

%% @doc Creates an approval rule for a pull request.
create_pull_request_approval_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pull_request_approval_rule(Client, Input, []).
create_pull_request_approval_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePullRequestApprovalRule">>, Input, Options).

%% @doc Creates a new, empty repository.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Creates an unreferenced commit that represents the result of merging
%% two branches using a specified merge strategy.
%%
%% This can help you determine the outcome of a potential merge. This API
%% cannot be used with the fast-forward merge strategy because that strategy
%% does not create a merge commit.
%%
%% This unreferenced merge commit can only be accessed using the GetCommit
%% API or through git commands such as git fetch. To retrieve this commit,
%% you must specify its commit ID or otherwise reference it.
create_unreferenced_merge_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_unreferenced_merge_commit(Client, Input, []).
create_unreferenced_merge_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUnreferencedMergeCommit">>, Input, Options).

%% @doc Deletes a specified approval rule template.
%%
%% Deleting a template does not remove approval rules on pull requests
%% already created with the template.
delete_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_approval_rule_template(Client, Input, []).
delete_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApprovalRuleTemplate">>, Input, Options).

%% @doc Deletes a branch from a repository, unless that branch is the default
%% branch for the repository.
delete_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_branch(Client, Input, []).
delete_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBranch">>, Input, Options).

%% @doc Deletes the content of a comment made on a change, file, or commit in
%% a repository.
delete_comment_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_comment_content(Client, Input, []).
delete_comment_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCommentContent">>, Input, Options).

%% @doc Deletes a specified file from a specified branch.
%%
%% A commit is created on the branch that contains the revision. The file
%% still exists in the commits earlier to the commit that contains the
%% deletion.
delete_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file(Client, Input, []).
delete_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFile">>, Input, Options).

%% @doc Deletes an approval rule from a specified pull request.
%%
%% Approval rules can be deleted from a pull request only if the pull request
%% is open, and if the approval rule was created specifically for a pull
%% request and not generated from an approval rule template associated with
%% the repository where the pull request was created. You cannot delete an
%% approval rule from a merged or closed pull request.
delete_pull_request_approval_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pull_request_approval_rule(Client, Input, []).
delete_pull_request_approval_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePullRequestApprovalRule">>, Input, Options).

%% @doc Deletes a repository.
%%
%% If a specified repository was already deleted, a null repository ID is
%% returned.
%%
%% Deleting a repository also deletes all associated objects and metadata.
%% After a repository is deleted, all future push calls to the deleted
%% repository fail.
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Returns information about one or more merge conflicts in the
%% attempted merge of two commit specifiers using the squash or three-way
%% merge strategy.
%%
%% If the merge option for the attempted merge is specified as
%% FAST_FORWARD_MERGE, an exception is thrown.
describe_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_merge_conflicts(Client, Input, []).
describe_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMergeConflicts">>, Input, Options).

%% @doc Returns information about one or more pull request events.
describe_pull_request_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pull_request_events(Client, Input, []).
describe_pull_request_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePullRequestEvents">>, Input, Options).

%% @doc Removes the association between a template and a repository so that
%% approval rules based on the template are not automatically created when
%% pull requests are created in the specified repository.
%%
%% This does not delete any approval rules previously created for pull
%% requests through the template association.
disassociate_approval_rule_template_from_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_approval_rule_template_from_repository(Client, Input, []).
disassociate_approval_rule_template_from_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateApprovalRuleTemplateFromRepository">>, Input, Options).

%% @doc Evaluates whether a pull request has met all the conditions specified
%% in its associated approval rules.
evaluate_pull_request_approval_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    evaluate_pull_request_approval_rules(Client, Input, []).
evaluate_pull_request_approval_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EvaluatePullRequestApprovalRules">>, Input, Options).

%% @doc Returns information about a specified approval rule template.
get_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_approval_rule_template(Client, Input, []).
get_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApprovalRuleTemplate">>, Input, Options).

%% @doc Returns the base-64 encoded content of an individual blob in a
%% repository.
get_blob(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blob(Client, Input, []).
get_blob(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlob">>, Input, Options).

%% @doc Returns information about a repository branch, including its name and
%% the last commit ID.
get_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_branch(Client, Input, []).
get_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBranch">>, Input, Options).

%% @doc Returns the content of a comment made on a change, file, or commit in
%% a repository.
%%
%% Reaction counts might include numbers from user identities who were
%% deleted after the reaction was made. For a count of reactions from active
%% identities, use GetCommentReactions.
get_comment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comment(Client, Input, []).
get_comment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComment">>, Input, Options).

%% @doc Returns information about reactions to a specified comment ID.
%%
%% Reactions from users who have been deleted will not be included in the
%% count.
get_comment_reactions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comment_reactions(Client, Input, []).
get_comment_reactions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentReactions">>, Input, Options).

%% @doc Returns information about comments made on the comparison between two
%% commits.
%%
%% Reaction counts might include numbers from user identities who were
%% deleted after the reaction was made. For a count of reactions from active
%% identities, use GetCommentReactions.
get_comments_for_compared_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comments_for_compared_commit(Client, Input, []).
get_comments_for_compared_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentsForComparedCommit">>, Input, Options).

%% @doc Returns comments made on a pull request.
%%
%% Reaction counts might include numbers from user identities who were
%% deleted after the reaction was made. For a count of reactions from active
%% identities, use GetCommentReactions.
get_comments_for_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comments_for_pull_request(Client, Input, []).
get_comments_for_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentsForPullRequest">>, Input, Options).

%% @doc Returns information about a commit, including commit message and
%% committer information.
get_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_commit(Client, Input, []).
get_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommit">>, Input, Options).

%% @doc Returns information about the differences in a valid commit specifier
%% (such as a branch, tag, HEAD, commit ID, or other fully qualified
%% reference).
%%
%% Results can be limited to a specified path.
get_differences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_differences(Client, Input, []).
get_differences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDifferences">>, Input, Options).

%% @doc Returns the base-64 encoded contents of a specified file and its
%% metadata.
get_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_file(Client, Input, []).
get_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFile">>, Input, Options).

%% @doc Returns the contents of a specified folder in a repository.
get_folder(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_folder(Client, Input, []).
get_folder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFolder">>, Input, Options).

%% @doc Returns information about a specified merge commit.
get_merge_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_commit(Client, Input, []).
get_merge_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeCommit">>, Input, Options).

%% @doc Returns information about merge conflicts between the before and
%% after commit IDs for a pull request in a repository.
get_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_conflicts(Client, Input, []).
get_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeConflicts">>, Input, Options).

%% @doc Returns information about the merge options available for merging two
%% specified branches.
%%
%% For details about why a merge option is not available, use
%% GetMergeConflicts or DescribeMergeConflicts.
get_merge_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_options(Client, Input, []).
get_merge_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeOptions">>, Input, Options).

%% @doc Gets information about a pull request in a specified repository.
get_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request(Client, Input, []).
get_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequest">>, Input, Options).

%% @doc Gets information about the approval states for a specified pull
%% request.
%%
%% Approval states only apply to pull requests that have one or more approval
%% rules applied to them.
get_pull_request_approval_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request_approval_states(Client, Input, []).
get_pull_request_approval_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequestApprovalStates">>, Input, Options).

%% @doc Returns information about whether approval rules have been set aside
%% (overridden) for a pull request, and if so, the Amazon Resource Name (ARN)
%% of the user or identity that overrode the rules and their requirements for
%% the pull request.
get_pull_request_override_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request_override_state(Client, Input, []).
get_pull_request_override_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequestOverrideState">>, Input, Options).

%% @doc Returns information about a repository.
%%
%% The description field for a repository accepts all HTML characters and all
%% valid Unicode characters. Applications that do not HTML-encode the
%% description and display it in a webpage can expose users to potentially
%% malicious code. Make sure that you HTML-encode the description field in
%% any application that uses this API to display the repository description
%% on a webpage.
get_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository(Client, Input, []).
get_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepository">>, Input, Options).

%% @doc Gets information about triggers configured for a repository.
get_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_triggers(Client, Input, []).
get_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryTriggers">>, Input, Options).

%% @doc Lists all approval rule templates in the specified AWS Region in your
%% AWS account.
%%
%% If an AWS Region is not specified, the AWS Region where you are signed in
%% is used.
list_approval_rule_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_approval_rule_templates(Client, Input, []).
list_approval_rule_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApprovalRuleTemplates">>, Input, Options).

%% @doc Lists all approval rule templates that are associated with a
%% specified repository.
list_associated_approval_rule_templates_for_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associated_approval_rule_templates_for_repository(Client, Input, []).
list_associated_approval_rule_templates_for_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociatedApprovalRuleTemplatesForRepository">>, Input, Options).

%% @doc Gets information about one or more branches in a repository.
list_branches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_branches(Client, Input, []).
list_branches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBranches">>, Input, Options).

%% @doc Returns a list of pull requests for a specified repository.
%%
%% The return list can be refined by pull request status or pull request
%% author ARN.
list_pull_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pull_requests(Client, Input, []).
list_pull_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPullRequests">>, Input, Options).

%% @doc Gets information about one or more repositories.
list_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repositories(Client, Input, []).
list_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositories">>, Input, Options).

%% @doc Lists all repositories associated with the specified approval rule
%% template.
list_repositories_for_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repositories_for_approval_rule_template(Client, Input, []).
list_repositories_for_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositoriesForApprovalRuleTemplate">>, Input, Options).

%% @doc Gets information about AWS tags for a specified Amazon Resource Name
%% (ARN) in AWS CodeCommit.
%%
%% For a list of valid resources in AWS CodeCommit, see CodeCommit Resources
%% and Operations in the AWS CodeCommit User Guide.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Merges two branches using the fast-forward merge strategy.
merge_branches_by_fast_forward(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_branches_by_fast_forward(Client, Input, []).
merge_branches_by_fast_forward(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeBranchesByFastForward">>, Input, Options).

%% @doc Merges two branches using the squash merge strategy.
merge_branches_by_squash(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_branches_by_squash(Client, Input, []).
merge_branches_by_squash(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeBranchesBySquash">>, Input, Options).

%% @doc Merges two specified branches using the three-way merge strategy.
merge_branches_by_three_way(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_branches_by_three_way(Client, Input, []).
merge_branches_by_three_way(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeBranchesByThreeWay">>, Input, Options).

%% @doc Attempts to merge the source commit of a pull request into the
%% specified destination branch for that pull request at the specified commit
%% using the fast-forward merge strategy.
%%
%% If the merge is successful, it closes the pull request.
merge_pull_request_by_fast_forward(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_fast_forward(Client, Input, []).
merge_pull_request_by_fast_forward(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestByFastForward">>, Input, Options).

%% @doc Attempts to merge the source commit of a pull request into the
%% specified destination branch for that pull request at the specified commit
%% using the squash merge strategy.
%%
%% If the merge is successful, it closes the pull request.
merge_pull_request_by_squash(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_squash(Client, Input, []).
merge_pull_request_by_squash(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestBySquash">>, Input, Options).

%% @doc Attempts to merge the source commit of a pull request into the
%% specified destination branch for that pull request at the specified commit
%% using the three-way merge strategy.
%%
%% If the merge is successful, it closes the pull request.
merge_pull_request_by_three_way(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_three_way(Client, Input, []).
merge_pull_request_by_three_way(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestByThreeWay">>, Input, Options).

%% @doc Sets aside (overrides) all approval rule requirements for a specified
%% pull request.
override_pull_request_approval_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    override_pull_request_approval_rules(Client, Input, []).
override_pull_request_approval_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OverridePullRequestApprovalRules">>, Input, Options).

%% @doc Posts a comment on the comparison between two commits.
post_comment_for_compared_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    post_comment_for_compared_commit(Client, Input, []).
post_comment_for_compared_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PostCommentForComparedCommit">>, Input, Options).

%% @doc Posts a comment on a pull request.
post_comment_for_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    post_comment_for_pull_request(Client, Input, []).
post_comment_for_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PostCommentForPullRequest">>, Input, Options).

%% @doc Posts a comment in reply to an existing comment on a comparison
%% between commits or a pull request.
post_comment_reply(Client, Input)
  when is_map(Client), is_map(Input) ->
    post_comment_reply(Client, Input, []).
post_comment_reply(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PostCommentReply">>, Input, Options).

%% @doc Adds or updates a reaction to a specified comment for the user whose
%% identity is used to make the request.
%%
%% You can only add or update a reaction for yourself. You cannot add,
%% modify, or delete a reaction for another user.
put_comment_reaction(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_comment_reaction(Client, Input, []).
put_comment_reaction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCommentReaction">>, Input, Options).

%% @doc Adds or updates a file in a branch in an AWS CodeCommit repository,
%% and generates a commit for the addition in the specified branch.
put_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_file(Client, Input, []).
put_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutFile">>, Input, Options).

%% @doc Replaces all triggers for a repository.
%%
%% Used to create or delete triggers.
put_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_repository_triggers(Client, Input, []).
put_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRepositoryTriggers">>, Input, Options).

%% @doc Adds or updates tags for a resource in AWS CodeCommit.
%%
%% For a list of valid resources in AWS CodeCommit, see CodeCommit Resources
%% and Operations in the AWS CodeCommit User Guide.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests the functionality of repository triggers by sending information
%% to the trigger target.
%%
%% If real data is available in the repository, the test sends data from the
%% last commit. If no data is available, sample data is generated.
test_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_repository_triggers(Client, Input, []).
test_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestRepositoryTriggers">>, Input, Options).

%% @doc Removes tags for a resource in AWS CodeCommit.
%%
%% For a list of valid resources in AWS CodeCommit, see CodeCommit Resources
%% and Operations in the AWS CodeCommit User Guide.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the content of an approval rule template.
%%
%% You can change the number of required approvals, the membership of the
%% approval rule, and whether an approval pool is defined.
update_approval_rule_template_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_approval_rule_template_content(Client, Input, []).
update_approval_rule_template_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApprovalRuleTemplateContent">>, Input, Options).

%% @doc Updates the description for a specified approval rule template.
update_approval_rule_template_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_approval_rule_template_description(Client, Input, []).
update_approval_rule_template_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApprovalRuleTemplateDescription">>, Input, Options).

%% @doc Updates the name of a specified approval rule template.
update_approval_rule_template_name(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_approval_rule_template_name(Client, Input, []).
update_approval_rule_template_name(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApprovalRuleTemplateName">>, Input, Options).

%% @doc Replaces the contents of a comment.
update_comment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_comment(Client, Input, []).
update_comment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComment">>, Input, Options).

%% @doc Sets or changes the default branch name for the specified repository.
%%
%% If you use this operation to change the default branch name to the current
%% default branch name, a success message is returned even though the default
%% branch did not change.
update_default_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_branch(Client, Input, []).
update_default_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultBranch">>, Input, Options).

%% @doc Updates the structure of an approval rule created specifically for a
%% pull request.
%%
%% For example, you can change the number of required approvers and the
%% approval pool for approvers.
update_pull_request_approval_rule_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_approval_rule_content(Client, Input, []).
update_pull_request_approval_rule_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestApprovalRuleContent">>, Input, Options).

%% @doc Updates the state of a user's approval on a pull request.
%%
%% The user is derived from the signed-in account when the request is made.
update_pull_request_approval_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_approval_state(Client, Input, []).
update_pull_request_approval_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestApprovalState">>, Input, Options).

%% @doc Replaces the contents of the description of a pull request.
update_pull_request_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_description(Client, Input, []).
update_pull_request_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestDescription">>, Input, Options).

%% @doc Updates the status of a pull request.
update_pull_request_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_status(Client, Input, []).
update_pull_request_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestStatus">>, Input, Options).

%% @doc Replaces the title of a pull request.
update_pull_request_title(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_title(Client, Input, []).
update_pull_request_title(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestTitle">>, Input, Options).

%% @doc Sets or changes the comment or description for a repository.
%%
%% The description field for a repository accepts all HTML characters and all
%% valid Unicode characters. Applications that do not HTML-encode the
%% description and display it in a webpage can expose users to potentially
%% malicious code. Make sure that you HTML-encode the description field in
%% any application that uses this API to display the repository description
%% on a webpage.
update_repository_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_description(Client, Input, []).
update_repository_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryDescription">>, Input, Options).

%% @doc Renames a repository.
%%
%% The repository name must be unique across the calling AWS account.
%% Repository names are limited to 100 alphanumeric, dash, and underscore
%% characters, and cannot include certain characters. The suffix .git is
%% prohibited. For more information about the limits on repository names, see
%% Limits in the AWS CodeCommit User Guide.
update_repository_name(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_name(Client, Input, []).
update_repository_name(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryName">>, Input, Options).

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
    Client1 = Client#{service => <<"codecommit">>},
    Host = build_host(<<"codecommit">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CodeCommit_20150413.", Action/binary>>}
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
