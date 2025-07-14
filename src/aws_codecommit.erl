%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CodeCommit
%%
%% This is the CodeCommit API Reference.
%%
%% This reference provides descriptions of the operations and data types for
%% CodeCommit API along with usage examples.
%%
%% You can use the CodeCommit API to work with the following objects:
%%
%% Repositories, by calling the following:
%%
%% `BatchGetRepositories', which returns information about one or more
%% repositories associated with your Amazon Web Services account.
%%
%% `CreateRepository', which creates an CodeCommit repository.
%%
%% `DeleteRepository', which deletes an CodeCommit repository.
%%
%% `GetRepository', which returns information about a specified
%% repository.
%%
%% `ListRepositories', which lists all CodeCommit repositories associated
%% with your Amazon Web Services account.
%%
%% `UpdateRepositoryDescription', which sets or updates the description
%% of the repository.
%%
%% `UpdateRepositoryEncryptionKey', which updates the Key Management
%% Service encryption key used
%% to encrypt and decrypt a repository.
%%
%% `UpdateRepositoryName', which changes the name of the
%% repository. If you change the name of a repository, no other users of that
%% repository can access it until you send them the new HTTPS or SSH URL to
%% use.
%%
%% Branches, by calling the following:
%%
%% `CreateBranch', which creates a branch in a specified
%% repository.
%%
%% `DeleteBranch', which deletes the specified branch in a repository
%% unless it is the default branch.
%%
%% `GetBranch', which returns information about a specified branch.
%%
%% `ListBranches', which lists all branches for a specified repository.
%%
%% `UpdateDefaultBranch', which changes the default branch for a
%% repository.
%%
%% Files, by calling the following:
%%
%% `DeleteFile', which deletes the content of a specified file from a
%% specified branch.
%%
%% `GetBlob', which returns the base-64 encoded content of an
%% individual Git blob object in a repository.
%%
%% `GetFile', which returns the base-64 encoded content of a specified
%% file.
%%
%% `GetFolder', which returns the contents of a specified folder or
%% directory.
%%
%% `ListFileCommitHistory', which retrieves a list of commits and changes
%% to a specified file.
%%
%% `PutFile', which adds or modifies a single file in a specified
%% repository and branch.
%%
%% Commits, by calling the following:
%%
%% `BatchGetCommits', which returns information about one or more commits
%% in a repository.
%%
%% `CreateCommit', which creates a commit for changes to a repository.
%%
%% `GetCommit', which returns information about a commit, including
%% commit
%% messages and author and committer information.
%%
%% `GetDifferences', which returns information about the
%% differences in a valid commit specifier (such as a branch, tag, HEAD,
%% commit ID,
%% or other fully qualified reference).
%%
%% Merges, by calling the following:
%%
%% `BatchDescribeMergeConflicts', which returns information about
%% conflicts in a merge between commits in a repository.
%%
%% `CreateUnreferencedMergeCommit', which creates an unreferenced commit
%% between two branches or commits for the
%% purpose of comparing them and identifying any potential conflicts.
%%
%% `DescribeMergeConflicts', which returns information about merge
%% conflicts between the base, source, and destination versions
%% of a file in a potential merge.
%%
%% `GetMergeCommit', which returns information about the merge between a
%% source and destination commit.
%%
%% `GetMergeConflicts', which returns information about merge conflicts
%% between the source and destination branch in a pull request.
%%
%% `GetMergeOptions', which returns information about the available merge
%% options between two branches or commit specifiers.
%%
%% `MergeBranchesByFastForward', which merges two branches using the
%% fast-forward merge option.
%%
%% `MergeBranchesBySquash', which merges two branches using the squash
%% merge option.
%%
%% `MergeBranchesByThreeWay', which merges two branches using the
%% three-way merge option.
%%
%% Pull requests, by calling the following:
%%
%% `CreatePullRequest', which creates a pull request in a specified
%% repository.
%%
%% `CreatePullRequestApprovalRule', which creates an approval rule for a
%% specified pull request.
%%
%% `DeletePullRequestApprovalRule', which deletes an approval rule for a
%% specified pull request.
%%
%% `DescribePullRequestEvents', which returns information about one or
%% more pull request events.
%%
%% `EvaluatePullRequestApprovalRules', which evaluates whether a pull
%% request has met all the conditions specified in its associated approval
%% rules.
%%
%% `GetCommentsForPullRequest', which returns information about comments
%% on a specified pull request.
%%
%% `GetPullRequest', which returns information about a specified pull
%% request.
%%
%% `GetPullRequestApprovalStates', which returns information about the
%% approval states for a specified pull request.
%%
%% `GetPullRequestOverrideState', which returns information about whether
%% approval rules have been set aside (overriden) for a
%% pull request, and if so, the Amazon Resource Name (ARN) of the user or
%% identity that overrode the rules and their requirements for the pull
%% request.
%%
%% `ListPullRequests', which lists all pull requests for a repository.
%%
%% `MergePullRequestByFastForward', which merges the source destination
%% branch of a pull request into the specified destination
%% branch for that pull request using the fast-forward merge option.
%%
%% `MergePullRequestBySquash', which merges the source destination branch
%% of a pull request into the specified destination
%% branch for that pull request using the squash merge option.
%%
%% `MergePullRequestByThreeWay', which merges the source destination
%% branch of a pull request into the specified destination
%% branch for that pull request using the three-way merge option.
%%
%% `OverridePullRequestApprovalRules', which sets aside all approval rule
%% requirements for a pull request.
%%
%% `PostCommentForPullRequest', which posts a comment to a pull request
%% at the specified line, file, or request.
%%
%% `UpdatePullRequestApprovalRuleContent', which updates the structure of
%% an approval rule for a pull request.
%%
%% `UpdatePullRequestApprovalState', which updates the state of an
%% approval on a pull request.
%%
%% `UpdatePullRequestDescription', which updates the description of a
%% pull request.
%%
%% `UpdatePullRequestStatus', which updates the status of a pull request.
%%
%% `UpdatePullRequestTitle', which updates the title of a pull request.
%%
%% Approval rule templates, by calling the following:
%%
%% `AssociateApprovalRuleTemplateWithRepository', which associates a
%% template
%% with a specified repository. After the template is associated with a
%% repository,
%% CodeCommit creates approval rules that match the template conditions on
%% every pull request created in the specified repository.
%%
%% `BatchAssociateApprovalRuleTemplateWithRepositories', which associates
%% a
%% template with one or more specified repositories. After the template is
%% associated with a repository, CodeCommit creates approval rules that match
%% the template conditions on every pull request created in the specified
%% repositories.
%%
%% `BatchDisassociateApprovalRuleTemplateFromRepositories', which removes
%% the
%% association between a template and specified repositories so that approval
%% rules
%% based on the template are not automatically created when pull requests are
%% created in those repositories.
%%
%% `CreateApprovalRuleTemplate', which creates a template for approval
%% rules that can then be associated with one or more repositories
%% in your Amazon Web Services account.
%%
%% `DeleteApprovalRuleTemplate', which deletes the specified template. It
%% does not remove approval rules on pull requests already created with the
%% template.
%%
%% `DisassociateApprovalRuleTemplateFromRepository', which removes the
%% association between a template and a repository so that approval rules
%% based on
%% the template are not automatically created when pull requests are created
%% in the
%% specified repository.
%%
%% `GetApprovalRuleTemplate', which returns information about an approval
%% rule template.
%%
%% `ListApprovalRuleTemplates', which lists all approval rule templates
%% in the Amazon Web Services Region in your Amazon Web Services account.
%%
%% `ListAssociatedApprovalRuleTemplatesForRepository', which lists all
%% approval rule templates that are associated with a specified repository.
%%
%% `ListRepositoriesForApprovalRuleTemplate', which lists all
%% repositories associated with the specified approval rule template.
%%
%% `UpdateApprovalRuleTemplateDescription', which updates the description
%% of an
%% approval rule template.
%%
%% `UpdateApprovalRuleTemplateName', which updates the name of an
%% approval rule template.
%%
%% `UpdateApprovalRuleTemplateContent', which updates the content of an
%% approval rule template.
%%
%% Comments in a repository, by calling the following:
%%
%% `DeleteCommentContent', which deletes the content of a comment on a
%% commit in a repository.
%%
%% `GetComment', which returns information about a comment on a commit.
%%
%% `GetCommentReactions', which returns information about emoji reactions
%% to comments.
%%
%% `GetCommentsForComparedCommit', which returns information about
%% comments on the comparison between two commit specifiers
%% in a repository.
%%
%% `PostCommentForComparedCommit', which creates a comment on the
%% comparison between two commit specifiers in a repository.
%%
%% `PostCommentReply', which creates a reply to a comment.
%%
%% `PutCommentReaction', which creates or updates an emoji reaction to a
%% comment.
%%
%% `UpdateComment', which updates the content of a comment on a commit in
%% a repository.
%%
%% Tags used to tag resources in CodeCommit (not Git tags), by calling the
%% following:
%%
%% `ListTagsForResource', which gets information about Amazon Web
%% Servicestags for a specified Amazon Resource Name (ARN) in CodeCommit.
%%
%% `TagResource', which adds or updates tags for a resource in
%% CodeCommit.
%%
%% `UntagResource', which removes tags for a resource in CodeCommit.
%%
%% Triggers, by calling the following:
%%
%% `GetRepositoryTriggers', which returns information about triggers
%% configured
%% for a repository.
%%
%% `PutRepositoryTriggers', which replaces all triggers for a repository
%% and can
%% be used to create or delete triggers.
%%
%% `TestRepositoryTriggers', which tests the functionality of a
%% repository trigger
%% by sending data to the trigger target.
%%
%% For information about how to use CodeCommit, see the CodeCommit User
%% Guide:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html.
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
         list_file_commit_history/2,
         list_file_commit_history/3,
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
         update_repository_encryption_key/2,
         update_repository_encryption_key/3,
         update_repository_name/2,
         update_repository_name/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% branch_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type branch_name_required_exception() :: #{binary() => any()}.

%% Example:
%% source_and_destination_are_same_exception() :: #{
%%   <<"message">> => string()
%% }
-type source_and_destination_are_same_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_repositories_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"repositoryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type batch_get_repositories_error() :: #{binary() => any()}.

%% Example:
%% evaluate_pull_request_approval_rules_output() :: #{
%%   <<"evaluation">> => evaluation()
%% }
-type evaluate_pull_request_approval_rules_output() :: #{binary() => any()}.

%% Example:
%% approval_rule_template_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_template_name_required_exception() :: #{binary() => any()}.

%% Example:
%% default_branch_cannot_be_deleted_exception() :: #{
%%   <<"message">> => string()
%% }
-type default_branch_cannot_be_deleted_exception() :: #{binary() => any()}.

%% Example:
%% client_request_token_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type client_request_token_required_exception() :: #{binary() => any()}.

%% Example:
%% maximum_rule_templates_associated_with_repository_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_rule_templates_associated_with_repository_exception() :: #{binary() => any()}.

%% Example:
%% get_approval_rule_template_output() :: #{
%%   <<"approvalRuleTemplate">> => approval_rule_template()
%% }
-type get_approval_rule_template_output() :: #{binary() => any()}.

%% Example:
%% get_pull_request_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type get_pull_request_output() :: #{binary() => any()}.

%% Example:
%% commit() :: #{
%%   <<"additionalData">> => string(),
%%   <<"author">> => user_info(),
%%   <<"commitId">> => string(),
%%   <<"committer">> => user_info(),
%%   <<"message">> => string(),
%%   <<"parents">> => list(string()),
%%   <<"treeId">> => string()
%% }
-type commit() :: #{binary() => any()}.

%% Example:
%% invalid_order_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_order_exception() :: #{binary() => any()}.

%% Example:
%% put_file_output() :: #{
%%   <<"blobId">> => string(),
%%   <<"commitId">> => string(),
%%   <<"treeId">> => string()
%% }
-type put_file_output() :: #{binary() => any()}.

%% Example:
%% tips_divergence_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type tips_divergence_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_approval_rule_template_description_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_rule_template_description_exception() :: #{binary() => any()}.

%% Example:
%% repository_name_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_name_exists_exception() :: #{binary() => any()}.

%% Example:
%% invalid_max_results_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_max_results_exception() :: #{binary() => any()}.

%% Example:
%% get_blob_input() :: #{
%%   <<"blobId">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type get_blob_input() :: #{binary() => any()}.

%% Example:
%% invalid_file_position_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_file_position_exception() :: #{binary() => any()}.

%% Example:
%% invalid_continuation_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_continuation_token_exception() :: #{binary() => any()}.

%% Example:
%% symbolic_link() :: #{
%%   <<"absolutePath">> => string(),
%%   <<"blobId">> => string(),
%%   <<"fileMode">> => list(any()),
%%   <<"relativePath">> => string()
%% }
-type symbolic_link() :: #{binary() => any()}.

%% Example:
%% approval_rule_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_name_required_exception() :: #{binary() => any()}.

%% Example:
%% file_content_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_content_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_target_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_target_exception() :: #{binary() => any()}.

%% Example:
%% get_merge_options_input() :: #{
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string()
%% }
-type get_merge_options_input() :: #{binary() => any()}.

%% Example:
%% update_repository_encryption_key_output() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"originalKmsKeyId">> => string(),
%%   <<"repositoryId">> => string()
%% }
-type update_repository_encryption_key_output() :: #{binary() => any()}.

%% Example:
%% get_commit_input() :: #{
%%   <<"commitId">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type get_commit_input() :: #{binary() => any()}.

%% Example:
%% invalid_destination_commit_specifier_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_destination_commit_specifier_exception() :: #{binary() => any()}.

%% Example:
%% comment_deleted_exception() :: #{
%%   <<"message">> => string()
%% }
-type comment_deleted_exception() :: #{binary() => any()}.

%% Example:
%% list_associated_approval_rule_templates_for_repository_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type list_associated_approval_rule_templates_for_repository_input() :: #{binary() => any()}.

%% Example:
%% invalid_pull_request_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pull_request_id_exception() :: #{binary() => any()}.

%% Example:
%% repository_names_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_names_required_exception() :: #{binary() => any()}.

%% Example:
%% delete_branch_input() :: #{
%%   <<"branchName">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type delete_branch_input() :: #{binary() => any()}.

%% Example:
%% list_pull_requests_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pullRequestIds">> => list(string())
%% }
-type list_pull_requests_output() :: #{binary() => any()}.

%% Example:
%% blob_id_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type blob_id_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% get_repository_input() :: #{
%%   <<"repositoryName">> := string()
%% }
-type get_repository_input() :: #{binary() => any()}.

%% Example:
%% merge_branches_by_squash_input() :: #{
%%   <<"authorName">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolution">> => conflict_resolution(),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"email">> => string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string(),
%%   <<"targetBranch">> => string()
%% }
-type merge_branches_by_squash_input() :: #{binary() => any()}.

%% Example:
%% comment_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type comment_id_required_exception() :: #{binary() => any()}.

%% Example:
%% commit_ids_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_ids_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% encryption_integrity_checks_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_integrity_checks_failed_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_name_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_name_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_merge_conflicts_output() :: #{
%%   <<"baseCommitId">> => string(),
%%   <<"conflictMetadata">> => conflict_metadata(),
%%   <<"destinationCommitId">> => string(),
%%   <<"mergeHunks">> => list(merge_hunk()),
%%   <<"nextToken">> => string(),
%%   <<"sourceCommitId">> => string()
%% }
-type describe_merge_conflicts_output() :: #{binary() => any()}.

%% Example:
%% invalid_max_merge_hunks_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_max_merge_hunks_exception() :: #{binary() => any()}.

%% Example:
%% conflict_resolution() :: #{
%%   <<"deleteFiles">> => list(delete_file_entry()),
%%   <<"replaceContents">> => list(replace_content_entry()),
%%   <<"setFileModes">> => list(set_file_mode_entry())
%% }
-type conflict_resolution() :: #{binary() => any()}.

%% Example:
%% encryption_key_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_not_found_exception() :: #{binary() => any()}.

%% Example:
%% encryption_key_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% invalid_client_request_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_client_request_token_exception() :: #{binary() => any()}.

%% Example:
%% create_repository_output() :: #{
%%   <<"repositoryMetadata">> => repository_metadata()
%% }
-type create_repository_output() :: #{binary() => any()}.

%% Example:
%% source_file_specifier() :: #{
%%   <<"filePath">> => string(),
%%   <<"isMove">> => boolean()
%% }
-type source_file_specifier() :: #{binary() => any()}.

%% Example:
%% update_approval_rule_template_content_output() :: #{
%%   <<"approvalRuleTemplate">> => approval_rule_template()
%% }
-type update_approval_rule_template_content_output() :: #{binary() => any()}.

%% Example:
%% pull_request_target() :: #{
%%   <<"destinationCommit">> => string(),
%%   <<"destinationReference">> => string(),
%%   <<"mergeBase">> => string(),
%%   <<"mergeMetadata">> => merge_metadata(),
%%   <<"repositoryName">> => string(),
%%   <<"sourceCommit">> => string(),
%%   <<"sourceReference">> => string()
%% }
-type pull_request_target() :: #{binary() => any()}.

%% Example:
%% delete_pull_request_approval_rule_input() :: #{
%%   <<"approvalRuleName">> := string(),
%%   <<"pullRequestId">> := string()
%% }
-type delete_pull_request_approval_rule_input() :: #{binary() => any()}.

%% Example:
%% difference() :: #{
%%   <<"afterBlob">> => blob_metadata(),
%%   <<"beforeBlob">> => blob_metadata(),
%%   <<"changeType">> => list(any())
%% }
-type difference() :: #{binary() => any()}.

%% Example:
%% list_repositories_for_approval_rule_template_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositoryNames">> => list(string())
%% }
-type list_repositories_for_approval_rule_template_output() :: #{binary() => any()}.

%% Example:
%% pull_request_approval_rules_not_satisfied_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_request_approval_rules_not_satisfied_exception() :: #{binary() => any()}.

%% Example:
%% list_pull_requests_input() :: #{
%%   <<"authorArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pullRequestStatus">> => list(any()),
%%   <<"repositoryName">> := string()
%% }
-type list_pull_requests_input() :: #{binary() => any()}.

%% Example:
%% blob_metadata() :: #{
%%   <<"blobId">> => string(),
%%   <<"mode">> => string(),
%%   <<"path">> => string()
%% }
-type blob_metadata() :: #{binary() => any()}.

%% Example:
%% reaction_value_formats() :: #{
%%   <<"emoji">> => string(),
%%   <<"shortCode">> => string(),
%%   <<"unicode">> => string()
%% }
-type reaction_value_formats() :: #{binary() => any()}.

%% Example:
%% invalid_author_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_author_arn_exception() :: #{binary() => any()}.

%% Example:
%% maximum_repository_triggers_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_repository_triggers_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_reaction_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_reaction_value_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_event_metadata() :: #{
%%   <<"approvalRuleContent">> => string(),
%%   <<"approvalRuleId">> => string(),
%%   <<"approvalRuleName">> => string()
%% }
-type approval_rule_event_metadata() :: #{binary() => any()}.

%% Example:
%% folder_content_size_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type folder_content_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% source_file_or_content_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type source_file_or_content_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_repository_trigger_custom_data_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_trigger_custom_data_exception() :: #{binary() => any()}.

%% Example:
%% test_repository_triggers_input() :: #{
%%   <<"repositoryName">> := string(),
%%   <<"triggers">> := list(repository_trigger())
%% }
-type test_repository_triggers_input() :: #{binary() => any()}.

%% Example:
%% tags_map_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type tags_map_required_exception() :: #{binary() => any()}.

%% Example:
%% get_differences_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"differences">> => list(difference())
%% }
-type get_differences_output() :: #{binary() => any()}.

%% Example:
%% invalid_conflict_resolution_strategy_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_conflict_resolution_strategy_exception() :: #{binary() => any()}.

%% Example:
%% get_merge_conflicts_output() :: #{
%%   <<"baseCommitId">> => string(),
%%   <<"conflictMetadataList">> => list(conflict_metadata()),
%%   <<"destinationCommitId">> => string(),
%%   <<"mergeable">> => boolean(),
%%   <<"nextToken">> => string(),
%%   <<"sourceCommitId">> => string()
%% }
-type get_merge_conflicts_output() :: #{binary() => any()}.

%% Example:
%% invalid_override_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_override_status_exception() :: #{binary() => any()}.

%% Example:
%% get_merge_options_output() :: #{
%%   <<"baseCommitId">> => string(),
%%   <<"destinationCommitId">> => string(),
%%   <<"mergeOptions">> => list(list(any())()),
%%   <<"sourceCommitId">> => string()
%% }
-type get_merge_options_output() :: #{binary() => any()}.

%% Example:
%% delete_file_entry() :: #{
%%   <<"filePath">> => string()
%% }
-type delete_file_entry() :: #{binary() => any()}.

%% Example:
%% invalid_targets_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_targets_exception() :: #{binary() => any()}.

%% Example:
%% repository_triggers_list_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_triggers_list_required_exception() :: #{binary() => any()}.

%% Example:
%% merge_hunk_detail() :: #{
%%   <<"endLine">> => integer(),
%%   <<"hunkContent">> => string(),
%%   <<"startLine">> => integer()
%% }
-type merge_hunk_detail() :: #{binary() => any()}.

%% Example:
%% path_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type path_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% get_pull_request_approval_states_output() :: #{
%%   <<"approvals">> => list(approval())
%% }
-type get_pull_request_approval_states_output() :: #{binary() => any()}.

%% Example:
%% create_pull_request_input() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"description">> => string(),
%%   <<"targets">> := list(target()),
%%   <<"title">> := string()
%% }
-type create_pull_request_input() :: #{binary() => any()}.

%% Example:
%% pull_request_status_changed_event_metadata() :: #{
%%   <<"pullRequestStatus">> => list(any())
%% }
-type pull_request_status_changed_event_metadata() :: #{binary() => any()}.

%% Example:
%% file_name_conflicts_with_directory_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_name_conflicts_with_directory_name_exception() :: #{binary() => any()}.

%% Example:
%% delete_approval_rule_template_output() :: #{
%%   <<"approvalRuleTemplateId">> => string()
%% }
-type delete_approval_rule_template_output() :: #{binary() => any()}.

%% Example:
%% list_branches_output() :: #{
%%   <<"branches">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_branches_output() :: #{binary() => any()}.

%% Example:
%% same_file_content_exception() :: #{
%%   <<"message">> => string()
%% }
-type same_file_content_exception() :: #{binary() => any()}.

%% Example:
%% list_repositories_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"order">> => list(any()),
%%   <<"sortBy">> => list(any())
%% }
-type list_repositories_input() :: #{binary() => any()}.

%% Example:
%% repository_name_id_pair() :: #{
%%   <<"repositoryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type repository_name_id_pair() :: #{binary() => any()}.

%% Example:
%% create_approval_rule_template_input() :: #{
%%   <<"approvalRuleTemplateContent">> := string(),
%%   <<"approvalRuleTemplateDescription">> => string(),
%%   <<"approvalRuleTemplateName">> := string()
%% }
-type create_approval_rule_template_input() :: #{binary() => any()}.

%% Example:
%% commit_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_id_required_exception() :: #{binary() => any()}.

%% Example:
%% get_repository_triggers_output() :: #{
%%   <<"configurationId">> => string(),
%%   <<"triggers">> => list(repository_trigger())
%% }
-type get_repository_triggers_output() :: #{binary() => any()}.

%% Example:
%% post_comment_reply_output() :: #{
%%   <<"comment">> => comment()
%% }
-type post_comment_reply_output() :: #{binary() => any()}.

%% Example:
%% same_path_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type same_path_request_exception() :: #{binary() => any()}.

%% Example:
%% get_repository_output() :: #{
%%   <<"repositoryMetadata">> => repository_metadata()
%% }
-type get_repository_output() :: #{binary() => any()}.

%% Example:
%% maximum_number_of_approvals_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_number_of_approvals_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_rule_content_sha256_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_rule_content_sha256_exception() :: #{binary() => any()}.

%% Example:
%% author_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type author_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% post_comment_for_pull_request_output() :: #{
%%   <<"afterBlobId">> => string(),
%%   <<"afterCommitId">> => string(),
%%   <<"beforeBlobId">> => string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"comment">> => comment(),
%%   <<"location">> => location(),
%%   <<"pullRequestId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type post_comment_for_pull_request_output() :: #{binary() => any()}.

%% Example:
%% file() :: #{
%%   <<"absolutePath">> => string(),
%%   <<"blobId">> => string(),
%%   <<"fileMode">> => list(any()),
%%   <<"relativePath">> => string()
%% }
-type file() :: #{binary() => any()}.

%% Example:
%% approval_rule_template_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_template_in_use_exception() :: #{binary() => any()}.

%% Example:
%% tag_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_policy_exception() :: #{binary() => any()}.

%% Example:
%% tip_of_source_reference_is_different_exception() :: #{
%%   <<"message">> => string()
%% }
-type tip_of_source_reference_is_different_exception() :: #{binary() => any()}.

%% Example:
%% invalid_replacement_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_replacement_type_exception() :: #{binary() => any()}.

%% Example:
%% update_repository_description_input() :: #{
%%   <<"repositoryDescription">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type update_repository_description_input() :: #{binary() => any()}.

%% Example:
%% approval_rule_template_content_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_template_content_required_exception() :: #{binary() => any()}.

%% Example:
%% update_approval_rule_template_description_output() :: #{
%%   <<"approvalRuleTemplate">> => approval_rule_template()
%% }
-type update_approval_rule_template_description_output() :: #{binary() => any()}.

%% Example:
%% invalid_repository_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_name_exception() :: #{binary() => any()}.

%% Example:
%% approval_state_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_state_required_exception() :: #{binary() => any()}.

%% Example:
%% file_entry_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_entry_required_exception() :: #{binary() => any()}.

%% Example:
%% batch_describe_merge_conflicts_error() :: #{
%%   <<"exceptionName">> => string(),
%%   <<"filePath">> => string(),
%%   <<"message">> => string()
%% }
-type batch_describe_merge_conflicts_error() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% merge_branches_by_fast_forward_output() :: #{
%%   <<"commitId">> => string(),
%%   <<"treeId">> => string()
%% }
-type merge_branches_by_fast_forward_output() :: #{binary() => any()}.

%% Example:
%% target_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type target_required_exception() :: #{binary() => any()}.

%% Example:
%% file_modes() :: #{
%%   <<"base">> => list(any()),
%%   <<"destination">> => list(any()),
%%   <<"source">> => list(any())
%% }
-type file_modes() :: #{binary() => any()}.

%% Example:
%% repository_trigger_branch_name_list_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_trigger_branch_name_list_required_exception() :: #{binary() => any()}.

%% Example:
%% update_pull_request_approval_rule_content_input() :: #{
%%   <<"approvalRuleName">> := string(),
%%   <<"existingRuleContentSha256">> => string(),
%%   <<"newRuleContent">> := string(),
%%   <<"pullRequestId">> := string()
%% }
-type update_pull_request_approval_rule_content_input() :: #{binary() => any()}.

%% Example:
%% invalid_parent_commit_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parent_commit_id_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_template_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_template_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% merge_branches_by_three_way_output() :: #{
%%   <<"commitId">> => string(),
%%   <<"treeId">> => string()
%% }
-type merge_branches_by_three_way_output() :: #{binary() => any()}.

%% Example:
%% delete_branch_output() :: #{
%%   <<"deletedBranch">> => branch_info()
%% }
-type delete_branch_output() :: #{binary() => any()}.

%% Example:
%% cannot_modify_approval_rule_from_template_exception() :: #{
%%   <<"message">> => string()
%% }
-type cannot_modify_approval_rule_from_template_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_content_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_content_required_exception() :: #{binary() => any()}.

%% Example:
%% blob_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type blob_id_required_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_approval_rule_template_from_repository_input() :: #{
%%   <<"approvalRuleTemplateName">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type disassociate_approval_rule_template_from_repository_input() :: #{binary() => any()}.

%% Example:
%% pull_request_cannot_be_approved_by_author_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_request_cannot_be_approved_by_author_exception() :: #{binary() => any()}.

%% Example:
%% branch_name_is_tag_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type branch_name_is_tag_name_exception() :: #{binary() => any()}.

%% Example:
%% list_file_commit_history_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"revisionDag">> => list(file_version())
%% }
-type list_file_commit_history_response() :: #{binary() => any()}.

%% Example:
%% file_metadata() :: #{
%%   <<"absolutePath">> => string(),
%%   <<"blobId">> => string(),
%%   <<"fileMode">> => list(any())
%% }
-type file_metadata() :: #{binary() => any()}.

%% Example:
%% update_approval_rule_template_description_input() :: #{
%%   <<"approvalRuleTemplateDescription">> := string(),
%%   <<"approvalRuleTemplateName">> := string()
%% }
-type update_approval_rule_template_description_input() :: #{binary() => any()}.

%% Example:
%% reference_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type reference_name_required_exception() :: #{binary() => any()}.

%% Example:
%% comment_content_size_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type comment_content_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% replacement_content_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type replacement_content_required_exception() :: #{binary() => any()}.

%% Example:
%% merge_branches_by_three_way_input() :: #{
%%   <<"authorName">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolution">> => conflict_resolution(),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"email">> => string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string(),
%%   <<"targetBranch">> => string()
%% }
-type merge_branches_by_three_way_input() :: #{binary() => any()}.

%% Example:
%% create_approval_rule_template_output() :: #{
%%   <<"approvalRuleTemplate">> => approval_rule_template()
%% }
-type create_approval_rule_template_output() :: #{binary() => any()}.

%% Example:
%% replace_content_entry() :: #{
%%   <<"content">> => binary(),
%%   <<"fileMode">> => list(any()),
%%   <<"filePath">> => string(),
%%   <<"replacementType">> => list(any())
%% }
-type replace_content_entry() :: #{binary() => any()}.

%% Example:
%% invalid_repository_trigger_events_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_trigger_events_exception() :: #{binary() => any()}.

%% Example:
%% target() :: #{
%%   <<"destinationReference">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"sourceReference">> => string()
%% }
-type target() :: #{binary() => any()}.

%% Example:
%% pull_request_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_request_id_required_exception() :: #{binary() => any()}.

%% Example:
%% merge_option_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type merge_option_required_exception() :: #{binary() => any()}.

%% Example:
%% encryption_key_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_required_exception() :: #{binary() => any()}.

%% Example:
%% batch_associate_approval_rule_template_with_repositories_output() :: #{
%%   <<"associatedRepositoryNames">> => list(string()),
%%   <<"errors">> => list(batch_associate_approval_rule_template_with_repositories_error())
%% }
-type batch_associate_approval_rule_template_with_repositories_output() :: #{binary() => any()}.

%% Example:
%% delete_comment_content_input() :: #{
%%   <<"commentId">> := string()
%% }
-type delete_comment_content_input() :: #{binary() => any()}.

%% Example:
%% maximum_items_to_compare_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_items_to_compare_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_merge_commit_input() :: #{
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string()
%% }
-type get_merge_commit_input() :: #{binary() => any()}.

%% Example:
%% delete_repository_output() :: #{
%%   <<"repositoryId">> => string()
%% }
-type delete_repository_output() :: #{binary() => any()}.

%% Example:
%% multiple_conflict_resolution_entries_exception() :: #{
%%   <<"message">> => string()
%% }
-type multiple_conflict_resolution_entries_exception() :: #{binary() => any()}.

%% Example:
%% merge_pull_request_by_fast_forward_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type merge_pull_request_by_fast_forward_output() :: #{binary() => any()}.

%% Example:
%% encryption_key_access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_approval_rule_template_content_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_rule_template_content_exception() :: #{binary() => any()}.

%% Example:
%% merge_metadata() :: #{
%%   <<"isMerged">> => boolean(),
%%   <<"mergeCommitId">> => string(),
%%   <<"mergeOption">> => list(any()),
%%   <<"mergedBy">> => string()
%% }
-type merge_metadata() :: #{binary() => any()}.

%% Example:
%% invalid_replacement_content_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_replacement_content_exception() :: #{binary() => any()}.

%% Example:
%% get_merge_conflicts_input() :: #{
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"maxConflictFiles">> => integer(),
%%   <<"mergeOption">> := list(any()),
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string()
%% }
-type get_merge_conflicts_input() :: #{binary() => any()}.

%% Example:
%% get_comment_reactions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reactionsForComment">> => list(reaction_for_comment())
%% }
-type get_comment_reactions_output() :: #{binary() => any()}.

%% Example:
%% merge_pull_request_by_squash_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type merge_pull_request_by_squash_output() :: #{binary() => any()}.

%% Example:
%% merge_branches_by_squash_output() :: #{
%%   <<"commitId">> => string(),
%%   <<"treeId">> => string()
%% }
-type merge_branches_by_squash_output() :: #{binary() => any()}.

%% Example:
%% revision_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type revision_id_required_exception() :: #{binary() => any()}.

%% Example:
%% merge_branches_by_fast_forward_input() :: #{
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string(),
%%   <<"targetBranch">> => string()
%% }
-type merge_branches_by_fast_forward_input() :: #{binary() => any()}.

%% Example:
%% pull_request_status_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_request_status_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_branch_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_branch_name_exception() :: #{binary() => any()}.

%% Example:
%% merge_hunk() :: #{
%%   <<"base">> => merge_hunk_detail(),
%%   <<"destination">> => merge_hunk_detail(),
%%   <<"isConflict">> => boolean(),
%%   <<"source">> => merge_hunk_detail()
%% }
-type merge_hunk() :: #{binary() => any()}.

%% Example:
%% invalid_approval_rule_content_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_rule_content_exception() :: #{binary() => any()}.

%% Example:
%% comment() :: #{
%%   <<"authorArn">> => string(),
%%   <<"callerReactions">> => list(string()),
%%   <<"clientRequestToken">> => string(),
%%   <<"commentId">> => string(),
%%   <<"content">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"inReplyTo">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"reactionCounts">> => map()
%% }
-type comment() :: #{binary() => any()}.

%% Example:
%% post_comment_for_pull_request_input() :: #{
%%   <<"afterCommitId">> := string(),
%%   <<"beforeCommitId">> := string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"content">> := string(),
%%   <<"location">> => location(),
%%   <<"pullRequestId">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type post_comment_for_pull_request_input() :: #{binary() => any()}.

%% Example:
%% update_repository_encryption_key_input() :: #{
%%   <<"kmsKeyId">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type update_repository_encryption_key_input() :: #{binary() => any()}.

%% Example:
%% invalid_pull_request_event_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pull_request_event_type_exception() :: #{binary() => any()}.

%% Example:
%% set_file_mode_entry() :: #{
%%   <<"fileMode">> => list(any()),
%%   <<"filePath">> => string()
%% }
-type set_file_mode_entry() :: #{binary() => any()}.

%% Example:
%% reaction_value_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type reaction_value_required_exception() :: #{binary() => any()}.

%% Example:
%% get_comment_reactions_input() :: #{
%%   <<"commentId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reactionUserArn">> => string()
%% }
-type get_comment_reactions_input() :: #{binary() => any()}.

%% Example:
%% get_folder_output() :: #{
%%   <<"commitId">> => string(),
%%   <<"files">> => list(file()),
%%   <<"folderPath">> => string(),
%%   <<"subFolders">> => list(folder()),
%%   <<"subModules">> => list(sub_module()),
%%   <<"symbolicLinks">> => list(symbolic_link()),
%%   <<"treeId">> => string()
%% }
-type get_folder_output() :: #{binary() => any()}.

%% Example:
%% maximum_repository_names_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_repository_names_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% merge_pull_request_by_fast_forward_input() :: #{
%%   <<"pullRequestId">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitId">> => string()
%% }
-type merge_pull_request_by_fast_forward_input() :: #{binary() => any()}.

%% Example:
%% invalid_revision_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_revision_id_exception() :: #{binary() => any()}.

%% Example:
%% create_branch_input() :: #{
%%   <<"branchName">> := string(),
%%   <<"commitId">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type create_branch_input() :: #{binary() => any()}.

%% Example:
%% batch_get_commits_error() :: #{
%%   <<"commitId">> => string(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type batch_get_commits_error() :: #{binary() => any()}.

%% Example:
%% invalid_blob_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_blob_id_exception() :: #{binary() => any()}.

%% Example:
%% batch_describe_merge_conflicts_output() :: #{
%%   <<"baseCommitId">> => string(),
%%   <<"conflicts">> => list(conflict()),
%%   <<"destinationCommitId">> => string(),
%%   <<"errors">> => list(batch_describe_merge_conflicts_error()),
%%   <<"nextToken">> => string(),
%%   <<"sourceCommitId">> => string()
%% }
-type batch_describe_merge_conflicts_output() :: #{binary() => any()}.

%% Example:
%% pull_request_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_request_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% repository_trigger_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_trigger_name_required_exception() :: #{binary() => any()}.

%% Example:
%% merge_pull_request_by_three_way_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type merge_pull_request_by_three_way_output() :: #{binary() => any()}.

%% Example:
%% commit_ids_list_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_ids_list_required_exception() :: #{binary() => any()}.

%% Example:
%% repository_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_name_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_email_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_email_exception() :: #{binary() => any()}.

%% Example:
%% encryption_key_invalid_usage_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_invalid_usage_exception() :: #{binary() => any()}.

%% Example:
%% get_commit_output() :: #{
%%   <<"commit">> => commit()
%% }
-type get_commit_output() :: #{binary() => any()}.

%% Example:
%% comment_not_created_by_caller_exception() :: #{
%%   <<"message">> => string()
%% }
-type comment_not_created_by_caller_exception() :: #{binary() => any()}.

%% Example:
%% invalid_relative_file_version_enum_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_relative_file_version_enum_exception() :: #{binary() => any()}.

%% Example:
%% parent_commit_id_outdated_exception() :: #{
%%   <<"message">> => string()
%% }
-type parent_commit_id_outdated_exception() :: #{binary() => any()}.

%% Example:
%% file_sizes() :: #{
%%   <<"base">> => float(),
%%   <<"destination">> => float(),
%%   <<"source">> => float()
%% }
-type file_sizes() :: #{binary() => any()}.

%% Example:
%% create_unreferenced_merge_commit_input() :: #{
%%   <<"authorName">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolution">> => conflict_resolution(),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"email">> => string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"mergeOption">> := list(any()),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string()
%% }
-type create_unreferenced_merge_commit_input() :: #{binary() => any()}.

%% Example:
%% update_pull_request_title_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type update_pull_request_title_output() :: #{binary() => any()}.

%% Example:
%% pull_request_source_reference_updated_event_metadata() :: #{
%%   <<"afterCommitId">> => string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"mergeBase">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type pull_request_source_reference_updated_event_metadata() :: #{binary() => any()}.

%% Example:
%% get_pull_request_input() :: #{
%%   <<"pullRequestId">> := string()
%% }
-type get_pull_request_input() :: #{binary() => any()}.

%% Example:
%% get_comment_output() :: #{
%%   <<"comment">> => comment()
%% }
-type get_comment_output() :: #{binary() => any()}.

%% Example:
%% approval_rule_template() :: #{
%%   <<"approvalRuleTemplateContent">> => string(),
%%   <<"approvalRuleTemplateDescription">> => string(),
%%   <<"approvalRuleTemplateId">> => string(),
%%   <<"approvalRuleTemplateName">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"lastModifiedUser">> => string(),
%%   <<"ruleContentSha256">> => string()
%% }
-type approval_rule_template() :: #{binary() => any()}.

%% Example:
%% post_comment_reply_input() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"content">> := string(),
%%   <<"inReplyTo">> := string()
%% }
-type post_comment_reply_input() :: #{binary() => any()}.

%% Example:
%% batch_associate_approval_rule_template_with_repositories_error() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type batch_associate_approval_rule_template_with_repositories_error() :: #{binary() => any()}.

%% Example:
%% conflict() :: #{
%%   <<"conflictMetadata">> => conflict_metadata(),
%%   <<"mergeHunks">> => list(merge_hunk())
%% }
-type conflict() :: #{binary() => any()}.

%% Example:
%% invalid_reaction_user_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_reaction_user_arn_exception() :: #{binary() => any()}.

%% Example:
%% file_mode_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_mode_required_exception() :: #{binary() => any()}.

%% Example:
%% reaction_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type reaction_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_merge_conflicts_input() :: #{
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"filePath">> := string(),
%%   <<"maxMergeHunks">> => integer(),
%%   <<"mergeOption">> := list(any()),
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string()
%% }
-type describe_merge_conflicts_input() :: #{binary() => any()}.

%% Example:
%% delete_approval_rule_template_input() :: #{
%%   <<"approvalRuleTemplateName">> := string()
%% }
-type delete_approval_rule_template_input() :: #{binary() => any()}.

%% Example:
%% override_already_set_exception() :: #{
%%   <<"message">> => string()
%% }
-type override_already_set_exception() :: #{binary() => any()}.

%% Example:
%% put_file_entry() :: #{
%%   <<"fileContent">> => binary(),
%%   <<"fileMode">> => list(any()),
%%   <<"filePath">> => string(),
%%   <<"sourceFile">> => source_file_specifier()
%% }
-type put_file_entry() :: #{binary() => any()}.

%% Example:
%% batch_associate_approval_rule_template_with_repositories_input() :: #{
%%   <<"approvalRuleTemplateName">> := string(),
%%   <<"repositoryNames">> := list(string())
%% }
-type batch_associate_approval_rule_template_with_repositories_input() :: #{binary() => any()}.

%% Example:
%% invalid_commit_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_commit_exception() :: #{binary() => any()}.

%% Example:
%% comment_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type comment_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% location() :: #{
%%   <<"filePath">> => string(),
%%   <<"filePosition">> => float(),
%%   <<"relativeFileVersion">> => list(any())
%% }
-type location() :: #{binary() => any()}.

%% Example:
%% repository_trigger_destination_arn_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_trigger_destination_arn_required_exception() :: #{binary() => any()}.

%% Example:
%% get_pull_request_override_state_input() :: #{
%%   <<"pullRequestId">> := string(),
%%   <<"revisionId">> := string()
%% }
-type get_pull_request_override_state_input() :: #{binary() => any()}.

%% Example:
%% invalid_target_branch_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_target_branch_exception() :: #{binary() => any()}.

%% Example:
%% invalid_description_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_description_exception() :: #{binary() => any()}.

%% Example:
%% create_commit_output() :: #{
%%   <<"commitId">> => string(),
%%   <<"filesAdded">> => list(file_metadata()),
%%   <<"filesDeleted">> => list(file_metadata()),
%%   <<"filesUpdated">> => list(file_metadata()),
%%   <<"treeId">> => string()
%% }
-type create_commit_output() :: #{binary() => any()}.

%% Example:
%% invalid_max_conflict_files_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_max_conflict_files_exception() :: #{binary() => any()}.

%% Example:
%% targets_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type targets_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_commit_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_commit_id_exception() :: #{binary() => any()}.

%% Example:
%% list_file_commit_history_request() :: #{
%%   <<"commitSpecifier">> => string(),
%%   <<"filePath">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type list_file_commit_history_request() :: #{binary() => any()}.

%% Example:
%% pull_request() :: #{
%%   <<"approvalRules">> => list(approval_rule()),
%%   <<"authorArn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastActivityDate">> => non_neg_integer(),
%%   <<"pullRequestId">> => string(),
%%   <<"pullRequestStatus">> => list(any()),
%%   <<"pullRequestTargets">> => list(pull_request_target()),
%%   <<"revisionId">> => string(),
%%   <<"title">> => string()
%% }
-type pull_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% manual_merge_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type manual_merge_required_exception() :: #{binary() => any()}.

%% Example:
%% merge_pull_request_by_squash_input() :: #{
%%   <<"authorName">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolution">> => conflict_resolution(),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"email">> => string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"pullRequestId">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitId">> => string()
%% }
-type merge_pull_request_by_squash_input() :: #{binary() => any()}.

%% Example:
%% batch_get_commits_output() :: #{
%%   <<"commits">> => list(commit()),
%%   <<"errors">> => list(batch_get_commits_error())
%% }
-type batch_get_commits_output() :: #{binary() => any()}.

%% Example:
%% get_file_input() :: #{
%%   <<"commitSpecifier">> => string(),
%%   <<"filePath">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type get_file_input() :: #{binary() => any()}.

%% Example:
%% get_repository_triggers_input() :: #{
%%   <<"repositoryName">> := string()
%% }
-type get_repository_triggers_input() :: #{binary() => any()}.

%% Example:
%% create_commit_input() :: #{
%%   <<"authorName">> => string(),
%%   <<"branchName">> := string(),
%%   <<"commitMessage">> => string(),
%%   <<"deleteFiles">> => list(delete_file_entry()),
%%   <<"email">> => string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"parentCommitId">> => string(),
%%   <<"putFiles">> => list(put_file_entry()),
%%   <<"repositoryName">> := string(),
%%   <<"setFileModes">> => list(set_file_mode_entry())
%% }
-type create_commit_input() :: #{binary() => any()}.

%% Example:
%% file_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% multiple_repositories_in_pull_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type multiple_repositories_in_pull_request_exception() :: #{binary() => any()}.

%% Example:
%% update_pull_request_status_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type update_pull_request_status_output() :: #{binary() => any()}.

%% Example:
%% invalid_deletion_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deletion_parameter_exception() :: #{binary() => any()}.

%% Example:
%% number_of_rule_templates_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type number_of_rule_templates_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% list_approval_rule_templates_output() :: #{
%%   <<"approvalRuleTemplateNames">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_approval_rule_templates_output() :: #{binary() => any()}.

%% Example:
%% invalid_actor_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_actor_arn_exception() :: #{binary() => any()}.

%% Example:
%% maximum_conflict_resolution_entries_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_conflict_resolution_entries_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% before_commit_id_and_after_commit_id_are_same_exception() :: #{
%%   <<"message">> => string()
%% }
-type before_commit_id_and_after_commit_id_are_same_exception() :: #{binary() => any()}.

%% Example:
%% override_pull_request_approval_rules_input() :: #{
%%   <<"overrideStatus">> := list(any()),
%%   <<"pullRequestId">> := string(),
%%   <<"revisionId">> := string()
%% }
-type override_pull_request_approval_rules_input() :: #{binary() => any()}.

%% Example:
%% merge_pull_request_by_three_way_input() :: #{
%%   <<"authorName">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolution">> => conflict_resolution(),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"email">> => string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"pullRequestId">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitId">> => string()
%% }
-type merge_pull_request_by_three_way_input() :: #{binary() => any()}.

%% Example:
%% folder_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type folder_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% delete_pull_request_approval_rule_output() :: #{
%%   <<"approvalRuleId">> => string()
%% }
-type delete_pull_request_approval_rule_output() :: #{binary() => any()}.

%% Example:
%% put_repository_triggers_output() :: #{
%%   <<"configurationId">> => string()
%% }
-type put_repository_triggers_output() :: #{binary() => any()}.

%% Example:
%% encryption_key_invalid_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_invalid_id_exception() :: #{binary() => any()}.

%% Example:
%% resource_arn_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_arn_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_repository_trigger_region_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_trigger_region_exception() :: #{binary() => any()}.

%% Example:
%% get_pull_request_override_state_output() :: #{
%%   <<"overridden">> => boolean(),
%%   <<"overrider">> => string()
%% }
-type get_pull_request_override_state_output() :: #{binary() => any()}.

%% Example:
%% update_pull_request_approval_rule_content_output() :: #{
%%   <<"approvalRule">> => approval_rule()
%% }
-type update_pull_request_approval_rule_content_output() :: #{binary() => any()}.

%% Example:
%% sub_module() :: #{
%%   <<"absolutePath">> => string(),
%%   <<"commitId">> => string(),
%%   <<"relativePath">> => string()
%% }
-type sub_module() :: #{binary() => any()}.

%% Example:
%% update_pull_request_description_input() :: #{
%%   <<"description">> := string(),
%%   <<"pullRequestId">> := string()
%% }
-type update_pull_request_description_input() :: #{binary() => any()}.

%% Example:
%% title_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type title_required_exception() :: #{binary() => any()}.

%% Example:
%% get_merge_commit_output() :: #{
%%   <<"baseCommitId">> => string(),
%%   <<"destinationCommitId">> => string(),
%%   <<"mergedCommitId">> => string(),
%%   <<"sourceCommitId">> => string()
%% }
-type get_merge_commit_output() :: #{binary() => any()}.

%% Example:
%% invalid_approval_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_state_exception() :: #{binary() => any()}.

%% Example:
%% commit_message_length_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_message_length_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% maximum_open_pull_requests_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_open_pull_requests_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% put_file_entry_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type put_file_entry_conflict_exception() :: #{binary() => any()}.

%% Example:
%% list_associated_approval_rule_templates_for_repository_output() :: #{
%%   <<"approvalRuleTemplateNames">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_associated_approval_rule_templates_for_repository_output() :: #{binary() => any()}.

%% Example:
%% actor_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type actor_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% delete_comment_content_output() :: #{
%%   <<"comment">> => comment()
%% }
-type delete_comment_content_output() :: #{binary() => any()}.

%% Example:
%% repository_not_associated_with_pull_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_not_associated_with_pull_request_exception() :: #{binary() => any()}.

%% Example:
%% delete_repository_input() :: #{
%%   <<"repositoryName">> := string()
%% }
-type delete_repository_input() :: #{binary() => any()}.

%% Example:
%% pull_request_already_closed_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_request_already_closed_exception() :: #{binary() => any()}.

%% Example:
%% put_file_input() :: #{
%%   <<"branchName">> := string(),
%%   <<"commitMessage">> => string(),
%%   <<"email">> => string(),
%%   <<"fileContent">> := binary(),
%%   <<"fileMode">> => list(any()),
%%   <<"filePath">> := string(),
%%   <<"name">> => string(),
%%   <<"parentCommitId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type put_file_input() :: #{binary() => any()}.

%% Example:
%% invalid_title_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_title_exception() :: #{binary() => any()}.

%% Example:
%% encryption_key_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type encryption_key_disabled_exception() :: #{binary() => any()}.

%% Example:
%% is_binary_file() :: #{
%%   <<"base">> => boolean(),
%%   <<"destination">> => boolean(),
%%   <<"source">> => boolean()
%% }
-type is_binary_file() :: #{binary() => any()}.

%% Example:
%% get_branch_input() :: #{
%%   <<"branchName">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type get_branch_input() :: #{binary() => any()}.

%% Example:
%% batch_describe_merge_conflicts_input() :: #{
%%   <<"conflictDetailLevel">> => list(any()),
%%   <<"conflictResolutionStrategy">> => list(any()),
%%   <<"destinationCommitSpecifier">> := string(),
%%   <<"filePaths">> => list(string()),
%%   <<"maxConflictFiles">> => integer(),
%%   <<"maxMergeHunks">> => integer(),
%%   <<"mergeOption">> := list(any()),
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"sourceCommitSpecifier">> := string()
%% }
-type batch_describe_merge_conflicts_input() :: #{binary() => any()}.

%% Example:
%% file_content_and_source_file_specified_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_content_and_source_file_specified_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_approval_rule_template_from_repositories_input() :: #{
%%   <<"approvalRuleTemplateName">> := string(),
%%   <<"repositoryNames">> := list(string())
%% }
-type batch_disassociate_approval_rule_template_from_repositories_input() :: #{binary() => any()}.

%% Example:
%% replacement_type_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type replacement_type_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tag_keys_list_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_keys_list_exception() :: #{binary() => any()}.

%% Example:
%% invalid_sort_by_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sort_by_exception() :: #{binary() => any()}.

%% Example:
%% get_differences_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"afterCommitSpecifier">> := string(),
%%   <<"afterPath">> => string(),
%%   <<"beforeCommitSpecifier">> => string(),
%%   <<"beforePath">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_differences_input() :: #{binary() => any()}.

%% Example:
%% parent_commit_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type parent_commit_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% repository_trigger() :: #{
%%   <<"branches">> => list(string()),
%%   <<"customData">> => string(),
%%   <<"destinationArn">> => string(),
%%   <<"events">> => list(list(any())()),
%%   <<"name">> => string()
%% }
-type repository_trigger() :: #{binary() => any()}.

%% Example:
%% branch_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type branch_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% put_repository_triggers_input() :: #{
%%   <<"repositoryName">> := string(),
%%   <<"triggers">> := list(repository_trigger())
%% }
-type put_repository_triggers_input() :: #{binary() => any()}.

%% Example:
%% describe_pull_request_events_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pullRequestEvents">> => list(pull_request_event())
%% }
-type describe_pull_request_events_output() :: #{binary() => any()}.

%% Example:
%% file_content_size_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_content_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% comments_for_compared_commit() :: #{
%%   <<"afterBlobId">> => string(),
%%   <<"afterCommitId">> => string(),
%%   <<"beforeBlobId">> => string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"comments">> => list(comment()),
%%   <<"location">> => location(),
%%   <<"repositoryName">> => string()
%% }
-type comments_for_compared_commit() :: #{binary() => any()}.

%% Example:
%% origin_approval_rule_template() :: #{
%%   <<"approvalRuleTemplateId">> => string(),
%%   <<"approvalRuleTemplateName">> => string()
%% }
-type origin_approval_rule_template() :: #{binary() => any()}.

%% Example:
%% parent_commit_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type parent_commit_id_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_system_tag_usage_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_system_tag_usage_exception() :: #{binary() => any()}.

%% Example:
%% describe_pull_request_events_input() :: #{
%%   <<"actorArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pullRequestEventType">> => list(any()),
%%   <<"pullRequestId">> := string()
%% }
-type describe_pull_request_events_input() :: #{binary() => any()}.

%% Example:
%% idempotency_parameter_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type idempotency_parameter_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% file_path_conflicts_with_submodule_path_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_path_conflicts_with_submodule_path_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_commits_input() :: #{
%%   <<"commitIds">> := list(string()),
%%   <<"repositoryName">> := string()
%% }
-type batch_get_commits_input() :: #{binary() => any()}.

%% Example:
%% reaction_for_comment() :: #{
%%   <<"reaction">> => reaction_value_formats(),
%%   <<"reactionUsers">> => list(string()),
%%   <<"reactionsFromDeletedUsersCount">> => integer()
%% }
-type reaction_for_comment() :: #{binary() => any()}.

%% Example:
%% repository_trigger_execution_failure() :: #{
%%   <<"failureMessage">> => string(),
%%   <<"trigger">> => string()
%% }
-type repository_trigger_execution_failure() :: #{binary() => any()}.

%% Example:
%% list_repositories_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositories">> => list(repository_name_id_pair())
%% }
-type list_repositories_output() :: #{binary() => any()}.

%% Example:
%% update_pull_request_description_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type update_pull_request_description_output() :: #{binary() => any()}.

%% Example:
%% delete_file_input() :: #{
%%   <<"branchName">> := string(),
%%   <<"commitMessage">> => string(),
%%   <<"email">> => string(),
%%   <<"filePath">> := string(),
%%   <<"keepEmptyFolders">> => boolean(),
%%   <<"name">> => string(),
%%   <<"parentCommitId">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type delete_file_input() :: #{binary() => any()}.

%% Example:
%% update_pull_request_approval_state_input() :: #{
%%   <<"approvalState">> := list(any()),
%%   <<"pullRequestId">> := string(),
%%   <<"revisionId">> := string()
%% }
-type update_pull_request_approval_state_input() :: #{binary() => any()}.

%% Example:
%% invalid_repository_trigger_branch_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_trigger_branch_name_exception() :: #{binary() => any()}.

%% Example:
%% file_too_large_exception() :: #{
%%   <<"message">> => string()
%% }
-type file_too_large_exception() :: #{binary() => any()}.

%% Example:
%% file_version() :: #{
%%   <<"blobId">> => string(),
%%   <<"commit">> => commit(),
%%   <<"path">> => string(),
%%   <<"revisionChildren">> => list(string())
%% }
-type file_version() :: #{binary() => any()}.

%% Example:
%% get_blob_output() :: #{
%%   <<"content">> => binary()
%% }
-type get_blob_output() :: #{binary() => any()}.

%% Example:
%% invalid_path_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_path_exception() :: #{binary() => any()}.

%% Example:
%% get_comments_for_pull_request_input() :: #{
%%   <<"afterCommitId">> => string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pullRequestId">> := string(),
%%   <<"repositoryName">> => string()
%% }
-type get_comments_for_pull_request_input() :: #{binary() => any()}.

%% Example:
%% invalid_pull_request_status_update_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pull_request_status_update_exception() :: #{binary() => any()}.

%% Example:
%% folder() :: #{
%%   <<"absolutePath">> => string(),
%%   <<"relativePath">> => string(),
%%   <<"treeId">> => string()
%% }
-type folder() :: #{binary() => any()}.

%% Example:
%% invalid_repository_trigger_destination_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_trigger_destination_arn_exception() :: #{binary() => any()}.

%% Example:
%% get_comments_for_compared_commit_output() :: #{
%%   <<"commentsForComparedCommitData">> => list(comments_for_compared_commit()),
%%   <<"nextToken">> => string()
%% }
-type get_comments_for_compared_commit_output() :: #{binary() => any()}.

%% Example:
%% invalid_resource_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_resource_arn_exception() :: #{binary() => any()}.

%% Example:
%% get_approval_rule_template_input() :: #{
%%   <<"approvalRuleTemplateName">> := string()
%% }
-type get_approval_rule_template_input() :: #{binary() => any()}.

%% Example:
%% invalid_source_commit_specifier_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_source_commit_specifier_exception() :: #{binary() => any()}.

%% Example:
%% put_comment_reaction_input() :: #{
%%   <<"commentId">> := string(),
%%   <<"reactionValue">> := string()
%% }
-type put_comment_reaction_input() :: #{binary() => any()}.

%% Example:
%% update_comment_output() :: #{
%%   <<"comment">> => comment()
%% }
-type update_comment_output() :: #{binary() => any()}.

%% Example:
%% maximum_branches_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_branches_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_merge_option_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_merge_option_exception() :: #{binary() => any()}.

%% Example:
%% create_unreferenced_merge_commit_output() :: #{
%%   <<"commitId">> => string(),
%%   <<"treeId">> => string()
%% }
-type create_unreferenced_merge_commit_output() :: #{binary() => any()}.

%% Example:
%% cannot_delete_approval_rule_from_template_exception() :: #{
%%   <<"message">> => string()
%% }
-type cannot_delete_approval_rule_from_template_exception() :: #{binary() => any()}.

%% Example:
%% override_status_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type override_status_required_exception() :: #{binary() => any()}.

%% Example:
%% reference_type_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type reference_type_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% get_folder_input() :: #{
%%   <<"commitSpecifier">> => string(),
%%   <<"folderPath">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type get_folder_input() :: #{binary() => any()}.

%% Example:
%% get_comment_input() :: #{
%%   <<"commentId">> := string()
%% }
-type get_comment_input() :: #{binary() => any()}.

%% Example:
%% update_approval_rule_template_name_output() :: #{
%%   <<"approvalRuleTemplate">> => approval_rule_template()
%% }
-type update_approval_rule_template_name_output() :: #{binary() => any()}.

%% Example:
%% invalid_conflict_resolution_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_conflict_resolution_exception() :: #{binary() => any()}.

%% Example:
%% list_approval_rule_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_approval_rule_templates_input() :: #{binary() => any()}.

%% Example:
%% invalid_pull_request_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pull_request_status_exception() :: #{binary() => any()}.

%% Example:
%% get_comments_for_pull_request_output() :: #{
%%   <<"commentsForPullRequestData">> => list(comments_for_pull_request()),
%%   <<"nextToken">> => string()
%% }
-type get_comments_for_pull_request_output() :: #{binary() => any()}.

%% Example:
%% invalid_reference_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_reference_name_exception() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_approval_rule_template_from_repositories_error() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type batch_disassociate_approval_rule_template_from_repositories_error() :: #{binary() => any()}.

%% Example:
%% evaluation() :: #{
%%   <<"approvalRulesNotSatisfied">> => list(string()),
%%   <<"approvalRulesSatisfied">> => list(string()),
%%   <<"approved">> => boolean(),
%%   <<"overridden">> => boolean()
%% }
-type evaluation() :: #{binary() => any()}.

%% Example:
%% create_pull_request_output() :: #{
%%   <<"pullRequest">> => pull_request()
%% }
-type create_pull_request_output() :: #{binary() => any()}.

%% Example:
%% comment_content_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type comment_content_required_exception() :: #{binary() => any()}.

%% Example:
%% delete_file_output() :: #{
%%   <<"blobId">> => string(),
%%   <<"commitId">> => string(),
%%   <<"filePath">> => string(),
%%   <<"treeId">> => string()
%% }
-type delete_file_output() :: #{binary() => any()}.

%% Example:
%% invalid_comment_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_comment_id_exception() :: #{binary() => any()}.

%% Example:
%% get_branch_output() :: #{
%%   <<"branch">> => branch_info()
%% }
-type get_branch_output() :: #{binary() => any()}.

%% Example:
%% tag_keys_list_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_keys_list_required_exception() :: #{binary() => any()}.

%% Example:
%% reference_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type reference_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% object_types() :: #{
%%   <<"base">> => list(any()),
%%   <<"destination">> => list(any()),
%%   <<"source">> => list(any())
%% }
-type object_types() :: #{binary() => any()}.

%% Example:
%% revision_not_current_exception() :: #{
%%   <<"message">> => string()
%% }
-type revision_not_current_exception() :: #{binary() => any()}.

%% Example:
%% update_comment_input() :: #{
%%   <<"commentId">> := string(),
%%   <<"content">> := string()
%% }
-type update_comment_input() :: #{binary() => any()}.

%% Example:
%% commit_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% approval() :: #{
%%   <<"approvalState">> => list(any()),
%%   <<"userArn">> => string()
%% }
-type approval() :: #{binary() => any()}.

%% Example:
%% name_length_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type name_length_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_file_location_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_file_location_exception() :: #{binary() => any()}.

%% Example:
%% create_repository_input() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"repositoryDescription">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_repository_input() :: #{binary() => any()}.

%% Example:
%% repository_trigger_events_list_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_trigger_events_list_required_exception() :: #{binary() => any()}.

%% Example:
%% post_comment_for_compared_commit_output() :: #{
%%   <<"afterBlobId">> => string(),
%%   <<"afterCommitId">> => string(),
%%   <<"beforeBlobId">> => string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"comment">> => comment(),
%%   <<"location">> => location(),
%%   <<"repositoryName">> => string()
%% }
-type post_comment_for_compared_commit_output() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_approval_rule_template_from_repositories_output() :: #{
%%   <<"disassociatedRepositoryNames">> => list(string()),
%%   <<"errors">> => list(batch_disassociate_approval_rule_template_from_repositories_error())
%% }
-type batch_disassociate_approval_rule_template_from_repositories_output() :: #{binary() => any()}.

%% Example:
%% pull_request_created_event_metadata() :: #{
%%   <<"destinationCommitId">> => string(),
%%   <<"mergeBase">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"sourceCommitId">> => string()
%% }
-type pull_request_created_event_metadata() :: #{binary() => any()}.

%% Example:
%% batch_get_repositories_input() :: #{
%%   <<"repositoryNames">> := list(string())
%% }
-type batch_get_repositories_input() :: #{binary() => any()}.

%% Example:
%% branch_info() :: #{
%%   <<"branchName">> => string(),
%%   <<"commitId">> => string()
%% }
-type branch_info() :: #{binary() => any()}.

%% Example:
%% operation_not_allowed_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_not_allowed_exception() :: #{binary() => any()}.

%% Example:
%% list_branches_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type list_branches_input() :: #{binary() => any()}.

%% Example:
%% update_approval_rule_template_name_input() :: #{
%%   <<"newApprovalRuleTemplateName">> := string(),
%%   <<"oldApprovalRuleTemplateName">> := string()
%% }
-type update_approval_rule_template_name_input() :: #{binary() => any()}.

%% Example:
%% invalid_conflict_detail_level_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_conflict_detail_level_exception() :: #{binary() => any()}.

%% Example:
%% restricted_source_file_exception() :: #{
%%   <<"message">> => string()
%% }
-type restricted_source_file_exception() :: #{binary() => any()}.

%% Example:
%% commit_id_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_id_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% number_of_rules_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type number_of_rules_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_overridden_event_metadata() :: #{
%%   <<"overrideStatus">> => list(any()),
%%   <<"revisionId">> => string()
%% }
-type approval_rule_overridden_event_metadata() :: #{binary() => any()}.

%% Example:
%% invalid_approval_rule_template_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_rule_template_name_exception() :: #{binary() => any()}.

%% Example:
%% list_repositories_for_approval_rule_template_input() :: #{
%%   <<"approvalRuleTemplateName">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_repositories_for_approval_rule_template_input() :: #{binary() => any()}.

%% Example:
%% batch_get_repositories_output() :: #{
%%   <<"errors">> => list(batch_get_repositories_error()),
%%   <<"repositories">> => list(repository_metadata()),
%%   <<"repositoriesNotFound">> => list(string())
%% }
-type batch_get_repositories_output() :: #{binary() => any()}.

%% Example:
%% get_pull_request_approval_states_input() :: #{
%%   <<"pullRequestId">> := string(),
%%   <<"revisionId">> := string()
%% }
-type get_pull_request_approval_states_input() :: #{binary() => any()}.

%% Example:
%% update_repository_name_input() :: #{
%%   <<"newName">> := string(),
%%   <<"oldName">> := string()
%% }
-type update_repository_name_input() :: #{binary() => any()}.

%% Example:
%% merge_operations() :: #{
%%   <<"destination">> => list(any()),
%%   <<"source">> => list(any())
%% }
-type merge_operations() :: #{binary() => any()}.

%% Example:
%% update_pull_request_status_input() :: #{
%%   <<"pullRequestId">> := string(),
%%   <<"pullRequestStatus">> := list(any())
%% }
-type update_pull_request_status_input() :: #{binary() => any()}.

%% Example:
%% comments_for_pull_request() :: #{
%%   <<"afterBlobId">> => string(),
%%   <<"afterCommitId">> => string(),
%%   <<"beforeBlobId">> => string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"comments">> => list(comment()),
%%   <<"location">> => location(),
%%   <<"pullRequestId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type comments_for_pull_request() :: #{binary() => any()}.

%% Example:
%% invalid_approval_rule_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_rule_name_exception() :: #{binary() => any()}.

%% Example:
%% repository_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% commit_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type commit_required_exception() :: #{binary() => any()}.

%% Example:
%% post_comment_for_compared_commit_input() :: #{
%%   <<"afterCommitId">> := string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"content">> := string(),
%%   <<"location">> => location(),
%%   <<"repositoryName">> := string()
%% }
-type post_comment_for_compared_commit_input() :: #{binary() => any()}.

%% Example:
%% branch_name_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type branch_name_exists_exception() :: #{binary() => any()}.

%% Example:
%% approval_rule_template_name_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_rule_template_name_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_pull_request_title_input() :: #{
%%   <<"pullRequestId">> := string(),
%%   <<"title">> := string()
%% }
-type update_pull_request_title_input() :: #{binary() => any()}.

%% Example:
%% get_file_output() :: #{
%%   <<"blobId">> => string(),
%%   <<"commitId">> => string(),
%%   <<"fileContent">> => binary(),
%%   <<"fileMode">> => list(any()),
%%   <<"filePath">> => string(),
%%   <<"fileSize">> => float()
%% }
-type get_file_output() :: #{binary() => any()}.

%% Example:
%% test_repository_triggers_output() :: #{
%%   <<"failedExecutions">> => list(repository_trigger_execution_failure()),
%%   <<"successfulExecutions">> => list(string())
%% }
-type test_repository_triggers_output() :: #{binary() => any()}.

%% Example:
%% maximum_file_entries_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_file_entries_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_approval_rule_template_content_input() :: #{
%%   <<"approvalRuleTemplateName">> := string(),
%%   <<"existingRuleContentSha256">> => string(),
%%   <<"newRuleContent">> := string()
%% }
-type update_approval_rule_template_content_input() :: #{binary() => any()}.

%% Example:
%% get_comments_for_compared_commit_input() :: #{
%%   <<"afterCommitId">> := string(),
%%   <<"beforeCommitId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_comments_for_compared_commit_input() :: #{binary() => any()}.

%% Example:
%% path_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type path_required_exception() :: #{binary() => any()}.

%% Example:
%% update_default_branch_input() :: #{
%%   <<"defaultBranchName">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type update_default_branch_input() :: #{binary() => any()}.

%% Example:
%% evaluate_pull_request_approval_rules_input() :: #{
%%   <<"pullRequestId">> := string(),
%%   <<"revisionId">> := string()
%% }
-type evaluate_pull_request_approval_rules_input() :: #{binary() => any()}.

%% Example:
%% approval_state_changed_event_metadata() :: #{
%%   <<"approvalStatus">> => list(any()),
%%   <<"revisionId">> => string()
%% }
-type approval_state_changed_event_metadata() :: #{binary() => any()}.

%% Example:
%% pull_request_event() :: #{
%%   <<"actorArn">> => string(),
%%   <<"approvalRuleEventMetadata">> => approval_rule_event_metadata(),
%%   <<"approvalRuleOverriddenEventMetadata">> => approval_rule_overridden_event_metadata(),
%%   <<"approvalStateChangedEventMetadata">> => approval_state_changed_event_metadata(),
%%   <<"eventDate">> => non_neg_integer(),
%%   <<"pullRequestCreatedEventMetadata">> => pull_request_created_event_metadata(),
%%   <<"pullRequestEventType">> => list(any()),
%%   <<"pullRequestId">> => string(),
%%   <<"pullRequestMergedStateChangedEventMetadata">> => pull_request_merged_state_changed_event_metadata(),
%%   <<"pullRequestSourceReferenceUpdatedEventMetadata">> => pull_request_source_reference_updated_event_metadata(),
%%   <<"pullRequestStatusChangedEventMetadata">> => pull_request_status_changed_event_metadata()
%% }
-type pull_request_event() :: #{binary() => any()}.

%% Example:
%% pull_request_merged_state_changed_event_metadata() :: #{
%%   <<"destinationReference">> => string(),
%%   <<"mergeMetadata">> => merge_metadata(),
%%   <<"repositoryName">> => string()
%% }
-type pull_request_merged_state_changed_event_metadata() :: #{binary() => any()}.

%% Example:
%% approval_rule() :: #{
%%   <<"approvalRuleContent">> => string(),
%%   <<"approvalRuleId">> => string(),
%%   <<"approvalRuleName">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"lastModifiedUser">> => string(),
%%   <<"originApprovalRuleTemplate">> => origin_approval_rule_template(),
%%   <<"ruleContentSha256">> => string()
%% }
-type approval_rule() :: #{binary() => any()}.

%% Example:
%% invalid_tags_map_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tags_map_exception() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_reference_update_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_reference_update_exception() :: #{binary() => any()}.

%% Example:
%% associate_approval_rule_template_with_repository_input() :: #{
%%   <<"approvalRuleTemplateName">> := string(),
%%   <<"repositoryName">> := string()
%% }
-type associate_approval_rule_template_with_repository_input() :: #{binary() => any()}.

%% Example:
%% directory_name_conflicts_with_file_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type directory_name_conflicts_with_file_name_exception() :: #{binary() => any()}.

%% Example:
%% create_pull_request_approval_rule_output() :: #{
%%   <<"approvalRule">> => approval_rule()
%% }
-type create_pull_request_approval_rule_output() :: #{binary() => any()}.

%% Example:
%% invalid_file_mode_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_file_mode_exception() :: #{binary() => any()}.

%% Example:
%% invalid_repository_description_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_description_exception() :: #{binary() => any()}.

%% Example:
%% user_info() :: #{
%%   <<"date">> => string(),
%%   <<"email">> => string(),
%%   <<"name">> => string()
%% }
-type user_info() :: #{binary() => any()}.

%% Example:
%% create_pull_request_approval_rule_input() :: #{
%%   <<"approvalRuleContent">> := string(),
%%   <<"approvalRuleName">> := string(),
%%   <<"pullRequestId">> := string()
%% }
-type create_pull_request_approval_rule_input() :: #{binary() => any()}.

%% Example:
%% maximum_file_content_to_load_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type maximum_file_content_to_load_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% repository_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"accountId">> => string(),
%%   <<"cloneUrlHttp">> => string(),
%%   <<"cloneUrlSsh">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"defaultBranch">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"repositoryDescription">> => string(),
%%   <<"repositoryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type repository_metadata() :: #{binary() => any()}.

%% Example:
%% invalid_repository_trigger_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_repository_trigger_name_exception() :: #{binary() => any()}.

%% Example:
%% conflict_metadata() :: #{
%%   <<"contentConflict">> => boolean(),
%%   <<"fileModeConflict">> => boolean(),
%%   <<"fileModes">> => file_modes(),
%%   <<"filePath">> => string(),
%%   <<"fileSizes">> => file_sizes(),
%%   <<"isBinaryFile">> => is_binary_file(),
%%   <<"mergeOperations">> => merge_operations(),
%%   <<"numberOfConflicts">> => integer(),
%%   <<"objectTypeConflict">> => boolean(),
%%   <<"objectTypes">> => object_types()
%% }
-type conflict_metadata() :: #{binary() => any()}.

%% Example:
%% no_change_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_change_exception() :: #{binary() => any()}.

%% Example:
%% repository_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_does_not_exist_exception() :: #{binary() => any()}.

-type associate_approval_rule_template_with_repository_errors() ::
    repository_does_not_exist_exception() | 
    invalid_approval_rule_template_name_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    maximum_rule_templates_associated_with_repository_exception() | 
    approval_rule_template_name_required_exception().

-type batch_associate_approval_rule_template_with_repositories_errors() ::
    invalid_approval_rule_template_name_exception() | 
    encryption_key_disabled_exception() | 
    maximum_repository_names_exceeded_exception() | 
    encryption_key_access_denied_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    repository_names_required_exception() | 
    approval_rule_template_name_required_exception().

-type batch_describe_merge_conflicts_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    commit_does_not_exist_exception() | 
    invalid_merge_option_exception() | 
    encryption_key_disabled_exception() | 
    invalid_max_conflict_files_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    merge_option_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    invalid_max_merge_hunks_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    tips_divergence_exceeded_exception().

-type batch_disassociate_approval_rule_template_from_repositories_errors() ::
    invalid_approval_rule_template_name_exception() | 
    encryption_key_disabled_exception() | 
    maximum_repository_names_exceeded_exception() | 
    encryption_key_access_denied_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    repository_names_required_exception() | 
    approval_rule_template_name_required_exception().

-type batch_get_commits_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    commit_ids_list_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    commit_ids_limit_exceeded_exception().

-type batch_get_repositories_errors() ::
    encryption_key_disabled_exception() | 
    maximum_repository_names_exceeded_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    repository_names_required_exception().

-type create_approval_rule_template_errors() ::
    approval_rule_template_name_already_exists_exception() | 
    invalid_approval_rule_template_name_exception() | 
    number_of_rule_templates_exceeded_exception() | 
    invalid_approval_rule_template_content_exception() | 
    approval_rule_template_content_required_exception() | 
    invalid_approval_rule_template_description_exception() | 
    approval_rule_template_name_required_exception().

-type create_branch_errors() ::
    repository_does_not_exist_exception() | 
    branch_name_exists_exception() | 
    commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_id_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    commit_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    branch_name_required_exception().

-type create_commit_errors() ::
    repository_does_not_exist_exception() | 
    no_change_exception() | 
    invalid_file_mode_exception() | 
    directory_name_conflicts_with_file_name_exception() | 
    path_required_exception() | 
    maximum_file_entries_exceeded_exception() | 
    restricted_source_file_exception() | 
    name_length_exceeded_exception() | 
    invalid_path_exception() | 
    file_path_conflicts_with_submodule_path_exception() | 
    parent_commit_id_required_exception() | 
    file_content_size_limit_exceeded_exception() | 
    branch_does_not_exist_exception() | 
    parent_commit_does_not_exist_exception() | 
    file_content_and_source_file_specified_exception() | 
    encryption_key_disabled_exception() | 
    put_file_entry_conflict_exception() | 
    commit_message_length_exceeded_exception() | 
    invalid_deletion_parameter_exception() | 
    file_does_not_exist_exception() | 
    file_mode_required_exception() | 
    parent_commit_id_outdated_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    branch_name_is_tag_name_exception() | 
    invalid_parent_commit_id_exception() | 
    file_entry_required_exception() | 
    invalid_repository_name_exception() | 
    same_path_request_exception() | 
    file_name_conflicts_with_directory_name_exception() | 
    source_file_or_content_required_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    branch_name_required_exception().

-type create_pull_request_errors() ::
    repository_does_not_exist_exception() | 
    reference_does_not_exist_exception() | 
    invalid_reference_name_exception() | 
    reference_type_not_supported_exception() | 
    idempotency_parameter_mismatch_exception() | 
    encryption_key_disabled_exception() | 
    invalid_title_exception() | 
    maximum_open_pull_requests_exceeded_exception() | 
    title_required_exception() | 
    multiple_repositories_in_pull_request_exception() | 
    targets_required_exception() | 
    invalid_description_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    reference_name_required_exception() | 
    target_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_targets_exception() | 
    invalid_client_request_token_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_target_exception() | 
    client_request_token_required_exception() | 
    source_and_destination_are_same_exception().

-type create_pull_request_approval_rule_errors() ::
    invalid_approval_rule_name_exception() | 
    number_of_rules_exceeded_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_approval_rule_content_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    approval_rule_content_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    approval_rule_name_already_exists_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    approval_rule_name_required_exception().

-type create_repository_errors() ::
    invalid_repository_description_exception() | 
    too_many_tags_exception() | 
    invalid_tags_map_exception() | 
    repository_limit_exceeded_exception() | 
    operation_not_allowed_exception() | 
    invalid_system_tag_usage_exception() | 
    encryption_key_disabled_exception() | 
    encryption_key_invalid_id_exception() | 
    encryption_key_invalid_usage_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    tag_policy_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    repository_name_exists_exception().

-type create_unreferenced_merge_commit_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    invalid_file_mode_exception() | 
    concurrent_reference_update_exception() | 
    path_required_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    name_length_exceeded_exception() | 
    commit_does_not_exist_exception() | 
    invalid_conflict_resolution_exception() | 
    invalid_merge_option_exception() | 
    invalid_path_exception() | 
    file_content_size_limit_exceeded_exception() | 
    replacement_type_required_exception() | 
    encryption_key_disabled_exception() | 
    commit_message_length_exceeded_exception() | 
    maximum_conflict_resolution_entries_exceeded_exception() | 
    manual_merge_required_exception() | 
    invalid_commit_exception() | 
    file_mode_required_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    invalid_replacement_content_exception() | 
    encryption_key_access_denied_exception() | 
    multiple_conflict_resolution_entries_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    merge_option_required_exception() | 
    replacement_content_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_replacement_type_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    tips_divergence_exceeded_exception().

-type delete_approval_rule_template_errors() ::
    invalid_approval_rule_template_name_exception() | 
    approval_rule_template_in_use_exception() | 
    approval_rule_template_name_required_exception().

-type delete_branch_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    default_branch_cannot_be_deleted_exception() | 
    branch_name_required_exception().

-type delete_comment_content_errors() ::
    invalid_comment_id_exception() | 
    comment_does_not_exist_exception() | 
    comment_id_required_exception() | 
    comment_deleted_exception().

-type delete_file_errors() ::
    repository_does_not_exist_exception() | 
    path_required_exception() | 
    name_length_exceeded_exception() | 
    invalid_path_exception() | 
    parent_commit_id_required_exception() | 
    branch_does_not_exist_exception() | 
    parent_commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    commit_message_length_exceeded_exception() | 
    file_does_not_exist_exception() | 
    parent_commit_id_outdated_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    branch_name_is_tag_name_exception() | 
    invalid_parent_commit_id_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    branch_name_required_exception().

-type delete_pull_request_approval_rule_errors() ::
    invalid_approval_rule_name_exception() | 
    cannot_delete_approval_rule_from_template_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    pull_request_does_not_exist_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    approval_rule_name_required_exception().

-type delete_repository_errors() ::
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type describe_merge_conflicts_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    path_required_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    commit_does_not_exist_exception() | 
    invalid_merge_option_exception() | 
    invalid_path_exception() | 
    encryption_key_disabled_exception() | 
    file_does_not_exist_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    merge_option_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    invalid_max_merge_hunks_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    tips_divergence_exceeded_exception().

-type describe_pull_request_events_errors() ::
    encryption_key_disabled_exception() | 
    actor_does_not_exist_exception() | 
    invalid_actor_arn_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_pull_request_event_type_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type disassociate_approval_rule_template_from_repository_errors() ::
    repository_does_not_exist_exception() | 
    invalid_approval_rule_template_name_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    approval_rule_template_name_required_exception().

-type evaluate_pull_request_approval_rules_errors() ::
    revision_not_current_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_revision_id_exception() | 
    revision_id_required_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type get_approval_rule_template_errors() ::
    invalid_approval_rule_template_name_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    approval_rule_template_name_required_exception().

-type get_blob_errors() ::
    repository_does_not_exist_exception() | 
    file_too_large_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    invalid_blob_id_exception() | 
    encryption_key_access_denied_exception() | 
    blob_id_required_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    blob_id_does_not_exist_exception().

-type get_branch_errors() ::
    repository_does_not_exist_exception() | 
    branch_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    branch_name_required_exception().

-type get_comment_errors() ::
    invalid_comment_id_exception() | 
    encryption_key_disabled_exception() | 
    comment_does_not_exist_exception() | 
    encryption_key_access_denied_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    comment_id_required_exception() | 
    comment_deleted_exception().

-type get_comment_reactions_errors() ::
    invalid_comment_id_exception() | 
    comment_does_not_exist_exception() | 
    invalid_reaction_user_arn_exception() | 
    comment_id_required_exception() | 
    comment_deleted_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type get_comments_for_compared_commit_errors() ::
    repository_does_not_exist_exception() | 
    commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_id_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    commit_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type get_comments_for_pull_request_errors() ::
    repository_does_not_exist_exception() | 
    commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_not_associated_with_pull_request_exception() | 
    invalid_commit_id_exception() | 
    repository_name_required_exception() | 
    pull_request_does_not_exist_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    invalid_repository_name_exception() | 
    commit_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type get_commit_errors() ::
    repository_does_not_exist_exception() | 
    commit_id_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_id_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    commit_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type get_differences_errors() ::
    repository_does_not_exist_exception() | 
    commit_required_exception() | 
    commit_does_not_exist_exception() | 
    invalid_path_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_id_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    path_does_not_exist_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type get_file_errors() ::
    repository_does_not_exist_exception() | 
    path_required_exception() | 
    commit_does_not_exist_exception() | 
    invalid_path_exception() | 
    file_too_large_exception() | 
    encryption_key_disabled_exception() | 
    file_does_not_exist_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type get_folder_errors() ::
    repository_does_not_exist_exception() | 
    path_required_exception() | 
    commit_does_not_exist_exception() | 
    invalid_path_exception() | 
    encryption_key_disabled_exception() | 
    folder_does_not_exist_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type get_merge_commit_errors() ::
    repository_does_not_exist_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type get_merge_conflicts_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    commit_does_not_exist_exception() | 
    invalid_merge_option_exception() | 
    invalid_source_commit_specifier_exception() | 
    encryption_key_disabled_exception() | 
    invalid_max_conflict_files_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    merge_option_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_destination_commit_specifier_exception() | 
    invalid_continuation_token_exception() | 
    tips_divergence_exceeded_exception().

-type get_merge_options_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    invalid_repository_name_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    tips_divergence_exceeded_exception().

-type get_pull_request_errors() ::
    encryption_key_disabled_exception() | 
    pull_request_does_not_exist_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type get_pull_request_approval_states_errors() ::
    encryption_key_disabled_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_revision_id_exception() | 
    revision_id_required_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type get_pull_request_override_state_errors() ::
    encryption_key_disabled_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_revision_id_exception() | 
    revision_id_required_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type get_repository_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type get_repository_triggers_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type list_approval_rule_templates_errors() ::
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type list_associated_approval_rule_templates_for_repository_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type list_branches_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception().

-type list_file_commit_history_errors() ::
    repository_does_not_exist_exception() | 
    commit_required_exception() | 
    commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception() | 
    tips_divergence_exceeded_exception().

-type list_pull_requests_errors() ::
    repository_does_not_exist_exception() | 
    invalid_pull_request_status_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    author_does_not_exist_exception() | 
    invalid_author_arn_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception().

-type list_repositories_errors() ::
    invalid_sort_by_exception() | 
    invalid_continuation_token_exception() | 
    invalid_order_exception().

-type list_repositories_for_approval_rule_template_errors() ::
    invalid_approval_rule_template_name_exception() | 
    encryption_key_disabled_exception() | 
    encryption_key_access_denied_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_continuation_token_exception() | 
    invalid_max_results_exception() | 
    approval_rule_template_name_required_exception().

-type list_tags_for_resource_errors() ::
    repository_does_not_exist_exception() | 
    invalid_resource_arn_exception() | 
    resource_arn_required_exception() | 
    invalid_repository_name_exception().

-type merge_branches_by_fast_forward_errors() ::
    repository_does_not_exist_exception() | 
    concurrent_reference_update_exception() | 
    commit_required_exception() | 
    commit_does_not_exist_exception() | 
    branch_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    manual_merge_required_exception() | 
    invalid_target_branch_exception() | 
    invalid_commit_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    branch_name_is_tag_name_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    tips_divergence_exceeded_exception() | 
    branch_name_required_exception().

-type merge_branches_by_squash_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    invalid_file_mode_exception() | 
    concurrent_reference_update_exception() | 
    path_required_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    name_length_exceeded_exception() | 
    commit_does_not_exist_exception() | 
    invalid_conflict_resolution_exception() | 
    invalid_path_exception() | 
    file_content_size_limit_exceeded_exception() | 
    branch_does_not_exist_exception() | 
    replacement_type_required_exception() | 
    encryption_key_disabled_exception() | 
    commit_message_length_exceeded_exception() | 
    maximum_conflict_resolution_entries_exceeded_exception() | 
    manual_merge_required_exception() | 
    invalid_target_branch_exception() | 
    invalid_commit_exception() | 
    file_mode_required_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    invalid_replacement_content_exception() | 
    encryption_key_access_denied_exception() | 
    multiple_conflict_resolution_entries_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    replacement_content_required_exception() | 
    branch_name_is_tag_name_exception() | 
    invalid_repository_name_exception() | 
    invalid_replacement_type_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    tips_divergence_exceeded_exception() | 
    branch_name_required_exception().

-type merge_branches_by_three_way_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    invalid_file_mode_exception() | 
    concurrent_reference_update_exception() | 
    path_required_exception() | 
    commit_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    name_length_exceeded_exception() | 
    commit_does_not_exist_exception() | 
    invalid_conflict_resolution_exception() | 
    invalid_path_exception() | 
    file_content_size_limit_exceeded_exception() | 
    branch_does_not_exist_exception() | 
    replacement_type_required_exception() | 
    encryption_key_disabled_exception() | 
    commit_message_length_exceeded_exception() | 
    maximum_conflict_resolution_entries_exceeded_exception() | 
    manual_merge_required_exception() | 
    invalid_target_branch_exception() | 
    invalid_commit_exception() | 
    file_mode_required_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    invalid_replacement_content_exception() | 
    encryption_key_access_denied_exception() | 
    multiple_conflict_resolution_entries_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    replacement_content_required_exception() | 
    branch_name_is_tag_name_exception() | 
    invalid_repository_name_exception() | 
    invalid_replacement_type_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    tips_divergence_exceeded_exception() | 
    branch_name_required_exception().

-type merge_pull_request_by_fast_forward_errors() ::
    repository_does_not_exist_exception() | 
    concurrent_reference_update_exception() | 
    reference_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    repository_not_associated_with_pull_request_exception() | 
    manual_merge_required_exception() | 
    invalid_commit_id_exception() | 
    repository_name_required_exception() | 
    pull_request_does_not_exist_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    invalid_repository_name_exception() | 
    tip_of_source_reference_is_different_exception() | 
    pull_request_approval_rules_not_satisfied_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type merge_pull_request_by_squash_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    invalid_file_mode_exception() | 
    concurrent_reference_update_exception() | 
    path_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    name_length_exceeded_exception() | 
    invalid_conflict_resolution_exception() | 
    invalid_path_exception() | 
    file_content_size_limit_exceeded_exception() | 
    replacement_type_required_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    repository_not_associated_with_pull_request_exception() | 
    commit_message_length_exceeded_exception() | 
    maximum_conflict_resolution_entries_exceeded_exception() | 
    manual_merge_required_exception() | 
    invalid_commit_id_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_replacement_content_exception() | 
    encryption_key_access_denied_exception() | 
    multiple_conflict_resolution_entries_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    pull_request_id_required_exception() | 
    replacement_content_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_replacement_type_exception() | 
    tip_of_source_reference_is_different_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    pull_request_approval_rules_not_satisfied_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    tips_divergence_exceeded_exception().

-type merge_pull_request_by_three_way_errors() ::
    repository_does_not_exist_exception() | 
    maximum_file_content_to_load_exceeded_exception() | 
    invalid_file_mode_exception() | 
    concurrent_reference_update_exception() | 
    path_required_exception() | 
    invalid_conflict_detail_level_exception() | 
    name_length_exceeded_exception() | 
    invalid_conflict_resolution_exception() | 
    invalid_path_exception() | 
    file_content_size_limit_exceeded_exception() | 
    replacement_type_required_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    repository_not_associated_with_pull_request_exception() | 
    commit_message_length_exceeded_exception() | 
    maximum_conflict_resolution_entries_exceeded_exception() | 
    manual_merge_required_exception() | 
    invalid_commit_id_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_replacement_content_exception() | 
    encryption_key_access_denied_exception() | 
    multiple_conflict_resolution_entries_exception() | 
    maximum_items_to_compare_exceeded_exception() | 
    pull_request_id_required_exception() | 
    replacement_content_required_exception() | 
    invalid_repository_name_exception() | 
    invalid_replacement_type_exception() | 
    tip_of_source_reference_is_different_exception() | 
    invalid_conflict_resolution_strategy_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    pull_request_approval_rules_not_satisfied_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    tips_divergence_exceeded_exception().

-type override_pull_request_approval_rules_errors() ::
    revision_not_current_exception() | 
    override_status_required_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    override_already_set_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_revision_id_exception() | 
    revision_id_required_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    invalid_override_status_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type post_comment_for_compared_commit_errors() ::
    repository_does_not_exist_exception() | 
    path_required_exception() | 
    invalid_file_location_exception() | 
    commit_does_not_exist_exception() | 
    comment_content_required_exception() | 
    invalid_path_exception() | 
    idempotency_parameter_mismatch_exception() | 
    encryption_key_disabled_exception() | 
    before_commit_id_and_after_commit_id_are_same_exception() | 
    invalid_commit_id_exception() | 
    invalid_relative_file_version_enum_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    comment_content_size_limit_exceeded_exception() | 
    invalid_repository_name_exception() | 
    commit_id_required_exception() | 
    path_does_not_exist_exception() | 
    invalid_client_request_token_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_file_position_exception() | 
    client_request_token_required_exception().

-type post_comment_for_pull_request_errors() ::
    repository_does_not_exist_exception() | 
    path_required_exception() | 
    invalid_file_location_exception() | 
    commit_does_not_exist_exception() | 
    comment_content_required_exception() | 
    invalid_path_exception() | 
    idempotency_parameter_mismatch_exception() | 
    encryption_key_disabled_exception() | 
    repository_not_associated_with_pull_request_exception() | 
    before_commit_id_and_after_commit_id_are_same_exception() | 
    invalid_commit_id_exception() | 
    invalid_relative_file_version_enum_exception() | 
    repository_name_required_exception() | 
    pull_request_does_not_exist_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    comment_content_size_limit_exceeded_exception() | 
    invalid_repository_name_exception() | 
    commit_id_required_exception() | 
    path_does_not_exist_exception() | 
    invalid_client_request_token_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    invalid_file_position_exception() | 
    client_request_token_required_exception().

-type post_comment_reply_errors() ::
    invalid_comment_id_exception() | 
    comment_content_required_exception() | 
    idempotency_parameter_mismatch_exception() | 
    comment_does_not_exist_exception() | 
    comment_content_size_limit_exceeded_exception() | 
    invalid_client_request_token_exception() | 
    comment_id_required_exception() | 
    client_request_token_required_exception().

-type put_comment_reaction_errors() ::
    invalid_comment_id_exception() | 
    comment_does_not_exist_exception() | 
    reaction_limit_exceeded_exception() | 
    reaction_value_required_exception() | 
    invalid_reaction_value_exception() | 
    comment_id_required_exception() | 
    comment_deleted_exception().

-type put_file_errors() ::
    repository_does_not_exist_exception() | 
    invalid_file_mode_exception() | 
    directory_name_conflicts_with_file_name_exception() | 
    path_required_exception() | 
    name_length_exceeded_exception() | 
    invalid_path_exception() | 
    file_path_conflicts_with_submodule_path_exception() | 
    parent_commit_id_required_exception() | 
    file_content_size_limit_exceeded_exception() | 
    branch_does_not_exist_exception() | 
    parent_commit_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    commit_message_length_exceeded_exception() | 
    invalid_deletion_parameter_exception() | 
    parent_commit_id_outdated_exception() | 
    invalid_email_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    branch_name_is_tag_name_exception() | 
    invalid_parent_commit_id_exception() | 
    invalid_repository_name_exception() | 
    same_file_content_exception() | 
    file_name_conflicts_with_directory_name_exception() | 
    folder_content_size_limit_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    file_content_required_exception() | 
    branch_name_required_exception().

-type put_repository_triggers_errors() ::
    repository_does_not_exist_exception() | 
    invalid_repository_trigger_name_exception() | 
    repository_trigger_events_list_required_exception() | 
    maximum_branches_exceeded_exception() | 
    invalid_repository_trigger_destination_arn_exception() | 
    invalid_repository_trigger_branch_name_exception() | 
    encryption_key_disabled_exception() | 
    invalid_repository_trigger_region_exception() | 
    repository_trigger_destination_arn_required_exception() | 
    repository_name_required_exception() | 
    repository_trigger_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_trigger_events_exception() | 
    repository_trigger_branch_name_list_required_exception() | 
    invalid_repository_name_exception() | 
    repository_triggers_list_required_exception() | 
    invalid_repository_trigger_custom_data_exception() | 
    maximum_repository_triggers_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type tag_resource_errors() ::
    repository_does_not_exist_exception() | 
    too_many_tags_exception() | 
    invalid_tags_map_exception() | 
    invalid_resource_arn_exception() | 
    invalid_system_tag_usage_exception() | 
    resource_arn_required_exception() | 
    invalid_repository_name_exception() | 
    tag_policy_exception() | 
    tags_map_required_exception().

-type test_repository_triggers_errors() ::
    repository_does_not_exist_exception() | 
    invalid_repository_trigger_name_exception() | 
    repository_trigger_events_list_required_exception() | 
    maximum_branches_exceeded_exception() | 
    invalid_repository_trigger_destination_arn_exception() | 
    invalid_repository_trigger_branch_name_exception() | 
    encryption_key_disabled_exception() | 
    invalid_repository_trigger_region_exception() | 
    repository_trigger_destination_arn_required_exception() | 
    repository_name_required_exception() | 
    repository_trigger_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_trigger_events_exception() | 
    repository_trigger_branch_name_list_required_exception() | 
    invalid_repository_name_exception() | 
    repository_triggers_list_required_exception() | 
    invalid_repository_trigger_custom_data_exception() | 
    maximum_repository_triggers_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type untag_resource_errors() ::
    repository_does_not_exist_exception() | 
    too_many_tags_exception() | 
    tag_keys_list_required_exception() | 
    invalid_resource_arn_exception() | 
    invalid_system_tag_usage_exception() | 
    invalid_tag_keys_list_exception() | 
    resource_arn_required_exception() | 
    invalid_repository_name_exception() | 
    tag_policy_exception().

-type update_approval_rule_template_content_errors() ::
    invalid_approval_rule_template_name_exception() | 
    invalid_approval_rule_template_content_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    approval_rule_template_content_required_exception() | 
    invalid_rule_content_sha256_exception() | 
    approval_rule_template_name_required_exception().

-type update_approval_rule_template_description_errors() ::
    invalid_approval_rule_template_name_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    invalid_approval_rule_template_description_exception() | 
    approval_rule_template_name_required_exception().

-type update_approval_rule_template_name_errors() ::
    approval_rule_template_name_already_exists_exception() | 
    invalid_approval_rule_template_name_exception() | 
    approval_rule_template_does_not_exist_exception() | 
    approval_rule_template_name_required_exception().

-type update_comment_errors() ::
    invalid_comment_id_exception() | 
    comment_content_required_exception() | 
    comment_does_not_exist_exception() | 
    comment_not_created_by_caller_exception() | 
    comment_content_size_limit_exceeded_exception() | 
    comment_id_required_exception() | 
    comment_deleted_exception().

-type update_default_branch_errors() ::
    repository_does_not_exist_exception() | 
    branch_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    invalid_branch_name_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    branch_name_required_exception().

-type update_pull_request_approval_rule_content_errors() ::
    invalid_approval_rule_name_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    approval_rule_does_not_exist_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_approval_rule_content_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    approval_rule_content_required_exception() | 
    cannot_modify_approval_rule_from_template_exception() | 
    invalid_rule_content_sha256_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception() | 
    approval_rule_name_required_exception().

-type update_pull_request_approval_state_errors() ::
    revision_not_current_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_already_closed_exception() | 
    invalid_approval_state_exception() | 
    pull_request_does_not_exist_exception() | 
    invalid_revision_id_exception() | 
    revision_id_required_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    pull_request_cannot_be_approved_by_author_exception() | 
    approval_state_required_exception() | 
    maximum_number_of_approvals_exceeded_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type update_pull_request_description_errors() ::
    pull_request_already_closed_exception() | 
    invalid_description_exception() | 
    pull_request_does_not_exist_exception() | 
    pull_request_id_required_exception() | 
    invalid_pull_request_id_exception().

-type update_pull_request_status_errors() ::
    invalid_pull_request_status_exception() | 
    invalid_pull_request_status_update_exception() | 
    encryption_key_disabled_exception() | 
    pull_request_does_not_exist_exception() | 
    pull_request_status_required_exception() | 
    encryption_key_access_denied_exception() | 
    pull_request_id_required_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception() | 
    invalid_pull_request_id_exception().

-type update_pull_request_title_errors() ::
    invalid_title_exception() | 
    pull_request_already_closed_exception() | 
    title_required_exception() | 
    pull_request_does_not_exist_exception() | 
    pull_request_id_required_exception() | 
    invalid_pull_request_id_exception().

-type update_repository_description_errors() ::
    repository_does_not_exist_exception() | 
    invalid_repository_description_exception() | 
    encryption_key_disabled_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type update_repository_encryption_key_errors() ::
    repository_does_not_exist_exception() | 
    encryption_key_disabled_exception() | 
    encryption_key_invalid_id_exception() | 
    encryption_key_invalid_usage_exception() | 
    repository_name_required_exception() | 
    encryption_key_access_denied_exception() | 
    encryption_key_required_exception() | 
    invalid_repository_name_exception() | 
    encryption_key_unavailable_exception() | 
    encryption_key_not_found_exception() | 
    encryption_integrity_checks_failed_exception().

-type update_repository_name_errors() ::
    repository_does_not_exist_exception() | 
    repository_name_required_exception() | 
    invalid_repository_name_exception() | 
    repository_name_exists_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between an approval rule template and a
%% specified repository.
%%
%% Then, the next time a pull request is created in the repository where the
%% destination
%% reference (if specified) matches the destination reference (branch) for
%% the pull
%% request, an approval rule that matches the template conditions is
%% automatically created
%% for that pull request. If no destination references are specified in the
%% template, an
%% approval rule that matches the template contents is created for all pull
%% requests in
%% that repository.
-spec associate_approval_rule_template_with_repository(aws_client:aws_client(), associate_approval_rule_template_with_repository_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_approval_rule_template_with_repository_errors(), tuple()}.
associate_approval_rule_template_with_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_approval_rule_template_with_repository(Client, Input, []).

-spec associate_approval_rule_template_with_repository(aws_client:aws_client(), associate_approval_rule_template_with_repository_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_approval_rule_template_with_repository_errors(), tuple()}.
associate_approval_rule_template_with_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateApprovalRuleTemplateWithRepository">>, Input, Options).

%% @doc Creates an association between an approval rule template and one or
%% more specified repositories.
-spec batch_associate_approval_rule_template_with_repositories(aws_client:aws_client(), batch_associate_approval_rule_template_with_repositories_input()) ->
    {ok, batch_associate_approval_rule_template_with_repositories_output(), tuple()} |
    {error, any()} |
    {error, batch_associate_approval_rule_template_with_repositories_errors(), tuple()}.
batch_associate_approval_rule_template_with_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_approval_rule_template_with_repositories(Client, Input, []).

-spec batch_associate_approval_rule_template_with_repositories(aws_client:aws_client(), batch_associate_approval_rule_template_with_repositories_input(), proplists:proplist()) ->
    {ok, batch_associate_approval_rule_template_with_repositories_output(), tuple()} |
    {error, any()} |
    {error, batch_associate_approval_rule_template_with_repositories_errors(), tuple()}.
batch_associate_approval_rule_template_with_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateApprovalRuleTemplateWithRepositories">>, Input, Options).

%% @doc Returns information about one or more merge conflicts in the
%% attempted merge of two commit specifiers using the squash or three-way
%% merge strategy.
-spec batch_describe_merge_conflicts(aws_client:aws_client(), batch_describe_merge_conflicts_input()) ->
    {ok, batch_describe_merge_conflicts_output(), tuple()} |
    {error, any()} |
    {error, batch_describe_merge_conflicts_errors(), tuple()}.
batch_describe_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_describe_merge_conflicts(Client, Input, []).

-spec batch_describe_merge_conflicts(aws_client:aws_client(), batch_describe_merge_conflicts_input(), proplists:proplist()) ->
    {ok, batch_describe_merge_conflicts_output(), tuple()} |
    {error, any()} |
    {error, batch_describe_merge_conflicts_errors(), tuple()}.
batch_describe_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDescribeMergeConflicts">>, Input, Options).

%% @doc Removes the association between an approval rule template and one or
%% more specified repositories.
-spec batch_disassociate_approval_rule_template_from_repositories(aws_client:aws_client(), batch_disassociate_approval_rule_template_from_repositories_input()) ->
    {ok, batch_disassociate_approval_rule_template_from_repositories_output(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_approval_rule_template_from_repositories_errors(), tuple()}.
batch_disassociate_approval_rule_template_from_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_approval_rule_template_from_repositories(Client, Input, []).

-spec batch_disassociate_approval_rule_template_from_repositories(aws_client:aws_client(), batch_disassociate_approval_rule_template_from_repositories_input(), proplists:proplist()) ->
    {ok, batch_disassociate_approval_rule_template_from_repositories_output(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_approval_rule_template_from_repositories_errors(), tuple()}.
batch_disassociate_approval_rule_template_from_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateApprovalRuleTemplateFromRepositories">>, Input, Options).

%% @doc Returns information about the contents of one or more commits in a
%% repository.
-spec batch_get_commits(aws_client:aws_client(), batch_get_commits_input()) ->
    {ok, batch_get_commits_output(), tuple()} |
    {error, any()} |
    {error, batch_get_commits_errors(), tuple()}.
batch_get_commits(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_commits(Client, Input, []).

-spec batch_get_commits(aws_client:aws_client(), batch_get_commits_input(), proplists:proplist()) ->
    {ok, batch_get_commits_output(), tuple()} |
    {error, any()} |
    {error, batch_get_commits_errors(), tuple()}.
batch_get_commits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCommits">>, Input, Options).

%% @doc Returns information about one or more repositories.
%%
%% The description field for a repository accepts all HTML characters and all
%% valid
%% Unicode characters. Applications that do not HTML-encode the description
%% and display
%% it in a webpage can expose users to potentially malicious code. Make sure
%% that you
%% HTML-encode the description field in any application that uses this API to
%% display
%% the repository description on a webpage.
-spec batch_get_repositories(aws_client:aws_client(), batch_get_repositories_input()) ->
    {ok, batch_get_repositories_output(), tuple()} |
    {error, any()} |
    {error, batch_get_repositories_errors(), tuple()}.
batch_get_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_repositories(Client, Input, []).

-spec batch_get_repositories(aws_client:aws_client(), batch_get_repositories_input(), proplists:proplist()) ->
    {ok, batch_get_repositories_output(), tuple()} |
    {error, any()} |
    {error, batch_get_repositories_errors(), tuple()}.
batch_get_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetRepositories">>, Input, Options).

%% @doc Creates a template for approval rules that can then be associated
%% with one or more
%% repositories in your Amazon Web Services account.
%%
%% When you associate a template with a repository,
%% CodeCommit creates an approval rule that matches the conditions of the
%% template for all
%% pull requests that meet the conditions of the template. For more
%% information, see
%% `AssociateApprovalRuleTemplateWithRepository'.
-spec create_approval_rule_template(aws_client:aws_client(), create_approval_rule_template_input()) ->
    {ok, create_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, create_approval_rule_template_errors(), tuple()}.
create_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_approval_rule_template(Client, Input, []).

-spec create_approval_rule_template(aws_client:aws_client(), create_approval_rule_template_input(), proplists:proplist()) ->
    {ok, create_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, create_approval_rule_template_errors(), tuple()}.
create_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApprovalRuleTemplate">>, Input, Options).

%% @doc Creates a branch in a repository and points the branch to a commit.
%%
%% Calling the create branch operation does not set a repository's
%% default branch. To do this, call the update default branch operation.
-spec create_branch(aws_client:aws_client(), create_branch_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_branch_errors(), tuple()}.
create_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_branch(Client, Input, []).

-spec create_branch(aws_client:aws_client(), create_branch_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_branch_errors(), tuple()}.
create_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBranch">>, Input, Options).

%% @doc Creates a commit for a repository on the tip of a specified branch.
-spec create_commit(aws_client:aws_client(), create_commit_input()) ->
    {ok, create_commit_output(), tuple()} |
    {error, any()} |
    {error, create_commit_errors(), tuple()}.
create_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_commit(Client, Input, []).

-spec create_commit(aws_client:aws_client(), create_commit_input(), proplists:proplist()) ->
    {ok, create_commit_output(), tuple()} |
    {error, any()} |
    {error, create_commit_errors(), tuple()}.
create_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCommit">>, Input, Options).

%% @doc Creates a pull request in the specified repository.
-spec create_pull_request(aws_client:aws_client(), create_pull_request_input()) ->
    {ok, create_pull_request_output(), tuple()} |
    {error, any()} |
    {error, create_pull_request_errors(), tuple()}.
create_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pull_request(Client, Input, []).

-spec create_pull_request(aws_client:aws_client(), create_pull_request_input(), proplists:proplist()) ->
    {ok, create_pull_request_output(), tuple()} |
    {error, any()} |
    {error, create_pull_request_errors(), tuple()}.
create_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePullRequest">>, Input, Options).

%% @doc Creates an approval rule for a pull request.
-spec create_pull_request_approval_rule(aws_client:aws_client(), create_pull_request_approval_rule_input()) ->
    {ok, create_pull_request_approval_rule_output(), tuple()} |
    {error, any()} |
    {error, create_pull_request_approval_rule_errors(), tuple()}.
create_pull_request_approval_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pull_request_approval_rule(Client, Input, []).

-spec create_pull_request_approval_rule(aws_client:aws_client(), create_pull_request_approval_rule_input(), proplists:proplist()) ->
    {ok, create_pull_request_approval_rule_output(), tuple()} |
    {error, any()} |
    {error, create_pull_request_approval_rule_errors(), tuple()}.
create_pull_request_approval_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePullRequestApprovalRule">>, Input, Options).

%% @doc Creates a new, empty repository.
-spec create_repository(aws_client:aws_client(), create_repository_input()) ->
    {ok, create_repository_output(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).

-spec create_repository(aws_client:aws_client(), create_repository_input(), proplists:proplist()) ->
    {ok, create_repository_output(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Creates an unreferenced commit that represents the result of merging
%% two branches
%% using a specified merge strategy.
%%
%% This can help you determine the outcome of a potential
%% merge. This API cannot be used with the fast-forward merge strategy
%% because that
%% strategy does not create a merge commit.
%%
%% This unreferenced merge commit
%% can only be accessed using the GetCommit API or through git commands such
%% as git fetch. To retrieve this commit, you must specify its commit ID or
%% otherwise reference it.
-spec create_unreferenced_merge_commit(aws_client:aws_client(), create_unreferenced_merge_commit_input()) ->
    {ok, create_unreferenced_merge_commit_output(), tuple()} |
    {error, any()} |
    {error, create_unreferenced_merge_commit_errors(), tuple()}.
create_unreferenced_merge_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_unreferenced_merge_commit(Client, Input, []).

-spec create_unreferenced_merge_commit(aws_client:aws_client(), create_unreferenced_merge_commit_input(), proplists:proplist()) ->
    {ok, create_unreferenced_merge_commit_output(), tuple()} |
    {error, any()} |
    {error, create_unreferenced_merge_commit_errors(), tuple()}.
create_unreferenced_merge_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUnreferencedMergeCommit">>, Input, Options).

%% @doc Deletes a specified approval rule template.
%%
%% Deleting a template does not remove approval rules on pull requests
%% already created with the template.
-spec delete_approval_rule_template(aws_client:aws_client(), delete_approval_rule_template_input()) ->
    {ok, delete_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, delete_approval_rule_template_errors(), tuple()}.
delete_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_approval_rule_template(Client, Input, []).

-spec delete_approval_rule_template(aws_client:aws_client(), delete_approval_rule_template_input(), proplists:proplist()) ->
    {ok, delete_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, delete_approval_rule_template_errors(), tuple()}.
delete_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApprovalRuleTemplate">>, Input, Options).

%% @doc Deletes a branch from a repository, unless that branch is the default
%% branch for the repository.
-spec delete_branch(aws_client:aws_client(), delete_branch_input()) ->
    {ok, delete_branch_output(), tuple()} |
    {error, any()} |
    {error, delete_branch_errors(), tuple()}.
delete_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_branch(Client, Input, []).

-spec delete_branch(aws_client:aws_client(), delete_branch_input(), proplists:proplist()) ->
    {ok, delete_branch_output(), tuple()} |
    {error, any()} |
    {error, delete_branch_errors(), tuple()}.
delete_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBranch">>, Input, Options).

%% @doc Deletes the content of a comment made on a change, file, or commit in
%% a repository.
-spec delete_comment_content(aws_client:aws_client(), delete_comment_content_input()) ->
    {ok, delete_comment_content_output(), tuple()} |
    {error, any()} |
    {error, delete_comment_content_errors(), tuple()}.
delete_comment_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_comment_content(Client, Input, []).

-spec delete_comment_content(aws_client:aws_client(), delete_comment_content_input(), proplists:proplist()) ->
    {ok, delete_comment_content_output(), tuple()} |
    {error, any()} |
    {error, delete_comment_content_errors(), tuple()}.
delete_comment_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCommentContent">>, Input, Options).

%% @doc Deletes a specified file from a specified branch.
%%
%% A commit is created on the branch
%% that contains the revision. The file still exists in the commits earlier
%% to the commit
%% that contains the deletion.
-spec delete_file(aws_client:aws_client(), delete_file_input()) ->
    {ok, delete_file_output(), tuple()} |
    {error, any()} |
    {error, delete_file_errors(), tuple()}.
delete_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file(Client, Input, []).

-spec delete_file(aws_client:aws_client(), delete_file_input(), proplists:proplist()) ->
    {ok, delete_file_output(), tuple()} |
    {error, any()} |
    {error, delete_file_errors(), tuple()}.
delete_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFile">>, Input, Options).

%% @doc Deletes an approval rule from a specified pull request.
%%
%% Approval rules can be deleted from a pull request only if the pull request
%% is open, and if the
%% approval rule was created specifically for a pull request and not
%% generated from an approval rule template associated with the repository
%% where the
%% pull request was created. You cannot delete an approval rule from a merged
%% or closed pull request.
-spec delete_pull_request_approval_rule(aws_client:aws_client(), delete_pull_request_approval_rule_input()) ->
    {ok, delete_pull_request_approval_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_pull_request_approval_rule_errors(), tuple()}.
delete_pull_request_approval_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pull_request_approval_rule(Client, Input, []).

-spec delete_pull_request_approval_rule(aws_client:aws_client(), delete_pull_request_approval_rule_input(), proplists:proplist()) ->
    {ok, delete_pull_request_approval_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_pull_request_approval_rule_errors(), tuple()}.
delete_pull_request_approval_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePullRequestApprovalRule">>, Input, Options).

%% @doc Deletes a repository.
%%
%% If a specified repository was already deleted, a null repository
%% ID is returned.
%%
%% Deleting a repository also deletes all associated objects and metadata.
%% After a repository is
%% deleted, all future push calls to the deleted repository fail.
-spec delete_repository(aws_client:aws_client(), delete_repository_input()) ->
    {ok, delete_repository_output(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).

-spec delete_repository(aws_client:aws_client(), delete_repository_input(), proplists:proplist()) ->
    {ok, delete_repository_output(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Returns information about one or more merge conflicts in the
%% attempted merge of two
%% commit specifiers using the squash or three-way merge strategy.
%%
%% If the merge option for
%% the attempted merge is specified as FAST_FORWARD_MERGE, an exception is
%% thrown.
-spec describe_merge_conflicts(aws_client:aws_client(), describe_merge_conflicts_input()) ->
    {ok, describe_merge_conflicts_output(), tuple()} |
    {error, any()} |
    {error, describe_merge_conflicts_errors(), tuple()}.
describe_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_merge_conflicts(Client, Input, []).

-spec describe_merge_conflicts(aws_client:aws_client(), describe_merge_conflicts_input(), proplists:proplist()) ->
    {ok, describe_merge_conflicts_output(), tuple()} |
    {error, any()} |
    {error, describe_merge_conflicts_errors(), tuple()}.
describe_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMergeConflicts">>, Input, Options).

%% @doc Returns information about one or more pull request events.
-spec describe_pull_request_events(aws_client:aws_client(), describe_pull_request_events_input()) ->
    {ok, describe_pull_request_events_output(), tuple()} |
    {error, any()} |
    {error, describe_pull_request_events_errors(), tuple()}.
describe_pull_request_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pull_request_events(Client, Input, []).

-spec describe_pull_request_events(aws_client:aws_client(), describe_pull_request_events_input(), proplists:proplist()) ->
    {ok, describe_pull_request_events_output(), tuple()} |
    {error, any()} |
    {error, describe_pull_request_events_errors(), tuple()}.
describe_pull_request_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePullRequestEvents">>, Input, Options).

%% @doc Removes the association between a template and a repository so that
%% approval rules
%% based on the template are not automatically created when pull requests are
%% created in
%% the specified repository.
%%
%% This does not delete any approval rules previously created for
%% pull requests through the template association.
-spec disassociate_approval_rule_template_from_repository(aws_client:aws_client(), disassociate_approval_rule_template_from_repository_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_approval_rule_template_from_repository_errors(), tuple()}.
disassociate_approval_rule_template_from_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_approval_rule_template_from_repository(Client, Input, []).

-spec disassociate_approval_rule_template_from_repository(aws_client:aws_client(), disassociate_approval_rule_template_from_repository_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_approval_rule_template_from_repository_errors(), tuple()}.
disassociate_approval_rule_template_from_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateApprovalRuleTemplateFromRepository">>, Input, Options).

%% @doc Evaluates whether a pull request has met all the conditions specified
%% in its associated approval rules.
-spec evaluate_pull_request_approval_rules(aws_client:aws_client(), evaluate_pull_request_approval_rules_input()) ->
    {ok, evaluate_pull_request_approval_rules_output(), tuple()} |
    {error, any()} |
    {error, evaluate_pull_request_approval_rules_errors(), tuple()}.
evaluate_pull_request_approval_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    evaluate_pull_request_approval_rules(Client, Input, []).

-spec evaluate_pull_request_approval_rules(aws_client:aws_client(), evaluate_pull_request_approval_rules_input(), proplists:proplist()) ->
    {ok, evaluate_pull_request_approval_rules_output(), tuple()} |
    {error, any()} |
    {error, evaluate_pull_request_approval_rules_errors(), tuple()}.
evaluate_pull_request_approval_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EvaluatePullRequestApprovalRules">>, Input, Options).

%% @doc Returns information about a specified approval rule template.
-spec get_approval_rule_template(aws_client:aws_client(), get_approval_rule_template_input()) ->
    {ok, get_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, get_approval_rule_template_errors(), tuple()}.
get_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_approval_rule_template(Client, Input, []).

-spec get_approval_rule_template(aws_client:aws_client(), get_approval_rule_template_input(), proplists:proplist()) ->
    {ok, get_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, get_approval_rule_template_errors(), tuple()}.
get_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApprovalRuleTemplate">>, Input, Options).

%% @doc Returns the base-64 encoded content of an individual blob in a
%% repository.
-spec get_blob(aws_client:aws_client(), get_blob_input()) ->
    {ok, get_blob_output(), tuple()} |
    {error, any()} |
    {error, get_blob_errors(), tuple()}.
get_blob(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blob(Client, Input, []).

-spec get_blob(aws_client:aws_client(), get_blob_input(), proplists:proplist()) ->
    {ok, get_blob_output(), tuple()} |
    {error, any()} |
    {error, get_blob_errors(), tuple()}.
get_blob(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlob">>, Input, Options).

%% @doc Returns information about a repository branch, including its name and
%% the last commit ID.
-spec get_branch(aws_client:aws_client(), get_branch_input()) ->
    {ok, get_branch_output(), tuple()} |
    {error, any()} |
    {error, get_branch_errors(), tuple()}.
get_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_branch(Client, Input, []).

-spec get_branch(aws_client:aws_client(), get_branch_input(), proplists:proplist()) ->
    {ok, get_branch_output(), tuple()} |
    {error, any()} |
    {error, get_branch_errors(), tuple()}.
get_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBranch">>, Input, Options).

%% @doc Returns the content of a comment made on a change, file, or commit in
%% a repository.
%%
%% Reaction counts might include numbers from user identities who were
%% deleted after the reaction was made. For a count of
%% reactions from active identities, use GetCommentReactions.
-spec get_comment(aws_client:aws_client(), get_comment_input()) ->
    {ok, get_comment_output(), tuple()} |
    {error, any()} |
    {error, get_comment_errors(), tuple()}.
get_comment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comment(Client, Input, []).

-spec get_comment(aws_client:aws_client(), get_comment_input(), proplists:proplist()) ->
    {ok, get_comment_output(), tuple()} |
    {error, any()} |
    {error, get_comment_errors(), tuple()}.
get_comment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComment">>, Input, Options).

%% @doc Returns information about reactions to a specified comment ID.
%%
%% Reactions from users who have been deleted will not be included in the
%% count.
-spec get_comment_reactions(aws_client:aws_client(), get_comment_reactions_input()) ->
    {ok, get_comment_reactions_output(), tuple()} |
    {error, any()} |
    {error, get_comment_reactions_errors(), tuple()}.
get_comment_reactions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comment_reactions(Client, Input, []).

-spec get_comment_reactions(aws_client:aws_client(), get_comment_reactions_input(), proplists:proplist()) ->
    {ok, get_comment_reactions_output(), tuple()} |
    {error, any()} |
    {error, get_comment_reactions_errors(), tuple()}.
get_comment_reactions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentReactions">>, Input, Options).

%% @doc Returns information about comments made on the comparison between two
%% commits.
%%
%% Reaction counts might include numbers from user identities who were
%% deleted after the reaction was made. For a count of
%% reactions from active identities, use GetCommentReactions.
-spec get_comments_for_compared_commit(aws_client:aws_client(), get_comments_for_compared_commit_input()) ->
    {ok, get_comments_for_compared_commit_output(), tuple()} |
    {error, any()} |
    {error, get_comments_for_compared_commit_errors(), tuple()}.
get_comments_for_compared_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comments_for_compared_commit(Client, Input, []).

-spec get_comments_for_compared_commit(aws_client:aws_client(), get_comments_for_compared_commit_input(), proplists:proplist()) ->
    {ok, get_comments_for_compared_commit_output(), tuple()} |
    {error, any()} |
    {error, get_comments_for_compared_commit_errors(), tuple()}.
get_comments_for_compared_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentsForComparedCommit">>, Input, Options).

%% @doc Returns comments made on a pull request.
%%
%% Reaction counts might include numbers from user identities who were
%% deleted after the reaction was made. For a count of
%% reactions from active identities, use GetCommentReactions.
-spec get_comments_for_pull_request(aws_client:aws_client(), get_comments_for_pull_request_input()) ->
    {ok, get_comments_for_pull_request_output(), tuple()} |
    {error, any()} |
    {error, get_comments_for_pull_request_errors(), tuple()}.
get_comments_for_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comments_for_pull_request(Client, Input, []).

-spec get_comments_for_pull_request(aws_client:aws_client(), get_comments_for_pull_request_input(), proplists:proplist()) ->
    {ok, get_comments_for_pull_request_output(), tuple()} |
    {error, any()} |
    {error, get_comments_for_pull_request_errors(), tuple()}.
get_comments_for_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentsForPullRequest">>, Input, Options).

%% @doc Returns information about a commit, including commit message and
%% committer information.
-spec get_commit(aws_client:aws_client(), get_commit_input()) ->
    {ok, get_commit_output(), tuple()} |
    {error, any()} |
    {error, get_commit_errors(), tuple()}.
get_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_commit(Client, Input, []).

-spec get_commit(aws_client:aws_client(), get_commit_input(), proplists:proplist()) ->
    {ok, get_commit_output(), tuple()} |
    {error, any()} |
    {error, get_commit_errors(), tuple()}.
get_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommit">>, Input, Options).

%% @doc Returns information about the differences in a valid commit specifier
%% (such as a
%% branch, tag, HEAD, commit ID, or other fully qualified reference).
%%
%% Results can be
%% limited to a specified path.
-spec get_differences(aws_client:aws_client(), get_differences_input()) ->
    {ok, get_differences_output(), tuple()} |
    {error, any()} |
    {error, get_differences_errors(), tuple()}.
get_differences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_differences(Client, Input, []).

-spec get_differences(aws_client:aws_client(), get_differences_input(), proplists:proplist()) ->
    {ok, get_differences_output(), tuple()} |
    {error, any()} |
    {error, get_differences_errors(), tuple()}.
get_differences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDifferences">>, Input, Options).

%% @doc Returns the base-64 encoded contents of a specified file and its
%% metadata.
-spec get_file(aws_client:aws_client(), get_file_input()) ->
    {ok, get_file_output(), tuple()} |
    {error, any()} |
    {error, get_file_errors(), tuple()}.
get_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_file(Client, Input, []).

-spec get_file(aws_client:aws_client(), get_file_input(), proplists:proplist()) ->
    {ok, get_file_output(), tuple()} |
    {error, any()} |
    {error, get_file_errors(), tuple()}.
get_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFile">>, Input, Options).

%% @doc Returns the contents of a specified folder in a repository.
-spec get_folder(aws_client:aws_client(), get_folder_input()) ->
    {ok, get_folder_output(), tuple()} |
    {error, any()} |
    {error, get_folder_errors(), tuple()}.
get_folder(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_folder(Client, Input, []).

-spec get_folder(aws_client:aws_client(), get_folder_input(), proplists:proplist()) ->
    {ok, get_folder_output(), tuple()} |
    {error, any()} |
    {error, get_folder_errors(), tuple()}.
get_folder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFolder">>, Input, Options).

%% @doc Returns information about a specified merge commit.
-spec get_merge_commit(aws_client:aws_client(), get_merge_commit_input()) ->
    {ok, get_merge_commit_output(), tuple()} |
    {error, any()} |
    {error, get_merge_commit_errors(), tuple()}.
get_merge_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_commit(Client, Input, []).

-spec get_merge_commit(aws_client:aws_client(), get_merge_commit_input(), proplists:proplist()) ->
    {ok, get_merge_commit_output(), tuple()} |
    {error, any()} |
    {error, get_merge_commit_errors(), tuple()}.
get_merge_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeCommit">>, Input, Options).

%% @doc Returns information about merge conflicts between the before and
%% after commit IDs for a pull request in a repository.
-spec get_merge_conflicts(aws_client:aws_client(), get_merge_conflicts_input()) ->
    {ok, get_merge_conflicts_output(), tuple()} |
    {error, any()} |
    {error, get_merge_conflicts_errors(), tuple()}.
get_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_conflicts(Client, Input, []).

-spec get_merge_conflicts(aws_client:aws_client(), get_merge_conflicts_input(), proplists:proplist()) ->
    {ok, get_merge_conflicts_output(), tuple()} |
    {error, any()} |
    {error, get_merge_conflicts_errors(), tuple()}.
get_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeConflicts">>, Input, Options).

%% @doc Returns information about the merge options available for merging two
%% specified
%% branches.
%%
%% For details about why a merge option is not available, use
%% GetMergeConflicts
%% or DescribeMergeConflicts.
-spec get_merge_options(aws_client:aws_client(), get_merge_options_input()) ->
    {ok, get_merge_options_output(), tuple()} |
    {error, any()} |
    {error, get_merge_options_errors(), tuple()}.
get_merge_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_options(Client, Input, []).

-spec get_merge_options(aws_client:aws_client(), get_merge_options_input(), proplists:proplist()) ->
    {ok, get_merge_options_output(), tuple()} |
    {error, any()} |
    {error, get_merge_options_errors(), tuple()}.
get_merge_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeOptions">>, Input, Options).

%% @doc Gets information about a pull request in a specified repository.
-spec get_pull_request(aws_client:aws_client(), get_pull_request_input()) ->
    {ok, get_pull_request_output(), tuple()} |
    {error, any()} |
    {error, get_pull_request_errors(), tuple()}.
get_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request(Client, Input, []).

-spec get_pull_request(aws_client:aws_client(), get_pull_request_input(), proplists:proplist()) ->
    {ok, get_pull_request_output(), tuple()} |
    {error, any()} |
    {error, get_pull_request_errors(), tuple()}.
get_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequest">>, Input, Options).

%% @doc Gets information about the approval states for a specified pull
%% request.
%%
%% Approval states only apply to pull requests that have one or more
%% approval rules applied to them.
-spec get_pull_request_approval_states(aws_client:aws_client(), get_pull_request_approval_states_input()) ->
    {ok, get_pull_request_approval_states_output(), tuple()} |
    {error, any()} |
    {error, get_pull_request_approval_states_errors(), tuple()}.
get_pull_request_approval_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request_approval_states(Client, Input, []).

-spec get_pull_request_approval_states(aws_client:aws_client(), get_pull_request_approval_states_input(), proplists:proplist()) ->
    {ok, get_pull_request_approval_states_output(), tuple()} |
    {error, any()} |
    {error, get_pull_request_approval_states_errors(), tuple()}.
get_pull_request_approval_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequestApprovalStates">>, Input, Options).

%% @doc Returns information about whether approval rules have been set aside
%% (overridden) for a
%% pull request, and if so, the Amazon Resource Name (ARN) of the user or
%% identity that overrode the rules and their requirements for the pull
%% request.
-spec get_pull_request_override_state(aws_client:aws_client(), get_pull_request_override_state_input()) ->
    {ok, get_pull_request_override_state_output(), tuple()} |
    {error, any()} |
    {error, get_pull_request_override_state_errors(), tuple()}.
get_pull_request_override_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request_override_state(Client, Input, []).

-spec get_pull_request_override_state(aws_client:aws_client(), get_pull_request_override_state_input(), proplists:proplist()) ->
    {ok, get_pull_request_override_state_output(), tuple()} |
    {error, any()} |
    {error, get_pull_request_override_state_errors(), tuple()}.
get_pull_request_override_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequestOverrideState">>, Input, Options).

%% @doc Returns information about a repository.
%%
%% The description field for a repository accepts all HTML characters and all
%% valid
%% Unicode characters. Applications that do not HTML-encode the description
%% and display
%% it in a webpage can expose users to potentially malicious code. Make sure
%% that you
%% HTML-encode the description field in any application that uses this API to
%% display
%% the repository description on a webpage.
-spec get_repository(aws_client:aws_client(), get_repository_input()) ->
    {ok, get_repository_output(), tuple()} |
    {error, any()} |
    {error, get_repository_errors(), tuple()}.
get_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository(Client, Input, []).

-spec get_repository(aws_client:aws_client(), get_repository_input(), proplists:proplist()) ->
    {ok, get_repository_output(), tuple()} |
    {error, any()} |
    {error, get_repository_errors(), tuple()}.
get_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepository">>, Input, Options).

%% @doc Gets information about triggers configured for a repository.
-spec get_repository_triggers(aws_client:aws_client(), get_repository_triggers_input()) ->
    {ok, get_repository_triggers_output(), tuple()} |
    {error, any()} |
    {error, get_repository_triggers_errors(), tuple()}.
get_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_triggers(Client, Input, []).

-spec get_repository_triggers(aws_client:aws_client(), get_repository_triggers_input(), proplists:proplist()) ->
    {ok, get_repository_triggers_output(), tuple()} |
    {error, any()} |
    {error, get_repository_triggers_errors(), tuple()}.
get_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryTriggers">>, Input, Options).

%% @doc Lists all approval rule templates in the specified Amazon Web
%% Services Region in your Amazon Web Services account.
%%
%% If
%% an Amazon Web Services Region is not specified, the Amazon Web Services
%% Region where you are signed in is used.
-spec list_approval_rule_templates(aws_client:aws_client(), list_approval_rule_templates_input()) ->
    {ok, list_approval_rule_templates_output(), tuple()} |
    {error, any()} |
    {error, list_approval_rule_templates_errors(), tuple()}.
list_approval_rule_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_approval_rule_templates(Client, Input, []).

-spec list_approval_rule_templates(aws_client:aws_client(), list_approval_rule_templates_input(), proplists:proplist()) ->
    {ok, list_approval_rule_templates_output(), tuple()} |
    {error, any()} |
    {error, list_approval_rule_templates_errors(), tuple()}.
list_approval_rule_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApprovalRuleTemplates">>, Input, Options).

%% @doc Lists all approval rule templates that are associated with a
%% specified repository.
-spec list_associated_approval_rule_templates_for_repository(aws_client:aws_client(), list_associated_approval_rule_templates_for_repository_input()) ->
    {ok, list_associated_approval_rule_templates_for_repository_output(), tuple()} |
    {error, any()} |
    {error, list_associated_approval_rule_templates_for_repository_errors(), tuple()}.
list_associated_approval_rule_templates_for_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associated_approval_rule_templates_for_repository(Client, Input, []).

-spec list_associated_approval_rule_templates_for_repository(aws_client:aws_client(), list_associated_approval_rule_templates_for_repository_input(), proplists:proplist()) ->
    {ok, list_associated_approval_rule_templates_for_repository_output(), tuple()} |
    {error, any()} |
    {error, list_associated_approval_rule_templates_for_repository_errors(), tuple()}.
list_associated_approval_rule_templates_for_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociatedApprovalRuleTemplatesForRepository">>, Input, Options).

%% @doc Gets information about one or more branches in a repository.
-spec list_branches(aws_client:aws_client(), list_branches_input()) ->
    {ok, list_branches_output(), tuple()} |
    {error, any()} |
    {error, list_branches_errors(), tuple()}.
list_branches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_branches(Client, Input, []).

-spec list_branches(aws_client:aws_client(), list_branches_input(), proplists:proplist()) ->
    {ok, list_branches_output(), tuple()} |
    {error, any()} |
    {error, list_branches_errors(), tuple()}.
list_branches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBranches">>, Input, Options).

%% @doc Retrieves a list of commits and changes to a specified file.
-spec list_file_commit_history(aws_client:aws_client(), list_file_commit_history_request()) ->
    {ok, list_file_commit_history_response(), tuple()} |
    {error, any()} |
    {error, list_file_commit_history_errors(), tuple()}.
list_file_commit_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_file_commit_history(Client, Input, []).

-spec list_file_commit_history(aws_client:aws_client(), list_file_commit_history_request(), proplists:proplist()) ->
    {ok, list_file_commit_history_response(), tuple()} |
    {error, any()} |
    {error, list_file_commit_history_errors(), tuple()}.
list_file_commit_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFileCommitHistory">>, Input, Options).

%% @doc Returns a list of pull requests for a specified repository.
%%
%% The return list can be refined by pull request
%% status or pull request author ARN.
-spec list_pull_requests(aws_client:aws_client(), list_pull_requests_input()) ->
    {ok, list_pull_requests_output(), tuple()} |
    {error, any()} |
    {error, list_pull_requests_errors(), tuple()}.
list_pull_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pull_requests(Client, Input, []).

-spec list_pull_requests(aws_client:aws_client(), list_pull_requests_input(), proplists:proplist()) ->
    {ok, list_pull_requests_output(), tuple()} |
    {error, any()} |
    {error, list_pull_requests_errors(), tuple()}.
list_pull_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPullRequests">>, Input, Options).

%% @doc Gets information about one or more repositories.
-spec list_repositories(aws_client:aws_client(), list_repositories_input()) ->
    {ok, list_repositories_output(), tuple()} |
    {error, any()} |
    {error, list_repositories_errors(), tuple()}.
list_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repositories(Client, Input, []).

-spec list_repositories(aws_client:aws_client(), list_repositories_input(), proplists:proplist()) ->
    {ok, list_repositories_output(), tuple()} |
    {error, any()} |
    {error, list_repositories_errors(), tuple()}.
list_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositories">>, Input, Options).

%% @doc Lists all repositories associated with the specified approval rule
%% template.
-spec list_repositories_for_approval_rule_template(aws_client:aws_client(), list_repositories_for_approval_rule_template_input()) ->
    {ok, list_repositories_for_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, list_repositories_for_approval_rule_template_errors(), tuple()}.
list_repositories_for_approval_rule_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repositories_for_approval_rule_template(Client, Input, []).

-spec list_repositories_for_approval_rule_template(aws_client:aws_client(), list_repositories_for_approval_rule_template_input(), proplists:proplist()) ->
    {ok, list_repositories_for_approval_rule_template_output(), tuple()} |
    {error, any()} |
    {error, list_repositories_for_approval_rule_template_errors(), tuple()}.
list_repositories_for_approval_rule_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositoriesForApprovalRuleTemplate">>, Input, Options).

%% @doc Gets information about Amazon Web Servicestags for a specified Amazon
%% Resource Name (ARN) in CodeCommit.
%%
%% For a list of valid resources in CodeCommit, see CodeCommit Resources and
%% Operations:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
%% in the CodeCommit User
%% Guide.
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

%% @doc Merges two branches using the fast-forward merge strategy.
-spec merge_branches_by_fast_forward(aws_client:aws_client(), merge_branches_by_fast_forward_input()) ->
    {ok, merge_branches_by_fast_forward_output(), tuple()} |
    {error, any()} |
    {error, merge_branches_by_fast_forward_errors(), tuple()}.
merge_branches_by_fast_forward(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_branches_by_fast_forward(Client, Input, []).

-spec merge_branches_by_fast_forward(aws_client:aws_client(), merge_branches_by_fast_forward_input(), proplists:proplist()) ->
    {ok, merge_branches_by_fast_forward_output(), tuple()} |
    {error, any()} |
    {error, merge_branches_by_fast_forward_errors(), tuple()}.
merge_branches_by_fast_forward(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeBranchesByFastForward">>, Input, Options).

%% @doc Merges two branches using the squash merge strategy.
-spec merge_branches_by_squash(aws_client:aws_client(), merge_branches_by_squash_input()) ->
    {ok, merge_branches_by_squash_output(), tuple()} |
    {error, any()} |
    {error, merge_branches_by_squash_errors(), tuple()}.
merge_branches_by_squash(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_branches_by_squash(Client, Input, []).

-spec merge_branches_by_squash(aws_client:aws_client(), merge_branches_by_squash_input(), proplists:proplist()) ->
    {ok, merge_branches_by_squash_output(), tuple()} |
    {error, any()} |
    {error, merge_branches_by_squash_errors(), tuple()}.
merge_branches_by_squash(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeBranchesBySquash">>, Input, Options).

%% @doc Merges two specified branches using the three-way merge strategy.
-spec merge_branches_by_three_way(aws_client:aws_client(), merge_branches_by_three_way_input()) ->
    {ok, merge_branches_by_three_way_output(), tuple()} |
    {error, any()} |
    {error, merge_branches_by_three_way_errors(), tuple()}.
merge_branches_by_three_way(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_branches_by_three_way(Client, Input, []).

-spec merge_branches_by_three_way(aws_client:aws_client(), merge_branches_by_three_way_input(), proplists:proplist()) ->
    {ok, merge_branches_by_three_way_output(), tuple()} |
    {error, any()} |
    {error, merge_branches_by_three_way_errors(), tuple()}.
merge_branches_by_three_way(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeBranchesByThreeWay">>, Input, Options).

%% @doc Attempts to merge the source commit of a pull request into the
%% specified destination
%% branch for that pull request at the specified commit using the
%% fast-forward merge strategy.
%%
%% If the merge is successful, it closes the pull request.
-spec merge_pull_request_by_fast_forward(aws_client:aws_client(), merge_pull_request_by_fast_forward_input()) ->
    {ok, merge_pull_request_by_fast_forward_output(), tuple()} |
    {error, any()} |
    {error, merge_pull_request_by_fast_forward_errors(), tuple()}.
merge_pull_request_by_fast_forward(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_fast_forward(Client, Input, []).

-spec merge_pull_request_by_fast_forward(aws_client:aws_client(), merge_pull_request_by_fast_forward_input(), proplists:proplist()) ->
    {ok, merge_pull_request_by_fast_forward_output(), tuple()} |
    {error, any()} |
    {error, merge_pull_request_by_fast_forward_errors(), tuple()}.
merge_pull_request_by_fast_forward(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestByFastForward">>, Input, Options).

%% @doc Attempts to merge the source commit of a pull request into the
%% specified destination
%% branch for that pull request at the specified commit using the squash
%% merge strategy.
%%
%% If the merge is successful, it closes the pull request.
-spec merge_pull_request_by_squash(aws_client:aws_client(), merge_pull_request_by_squash_input()) ->
    {ok, merge_pull_request_by_squash_output(), tuple()} |
    {error, any()} |
    {error, merge_pull_request_by_squash_errors(), tuple()}.
merge_pull_request_by_squash(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_squash(Client, Input, []).

-spec merge_pull_request_by_squash(aws_client:aws_client(), merge_pull_request_by_squash_input(), proplists:proplist()) ->
    {ok, merge_pull_request_by_squash_output(), tuple()} |
    {error, any()} |
    {error, merge_pull_request_by_squash_errors(), tuple()}.
merge_pull_request_by_squash(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestBySquash">>, Input, Options).

%% @doc Attempts to merge the source commit of a pull request into the
%% specified destination
%% branch for that pull request at the specified commit using the three-way
%% merge strategy.
%%
%% If the merge is successful, it closes the pull request.
-spec merge_pull_request_by_three_way(aws_client:aws_client(), merge_pull_request_by_three_way_input()) ->
    {ok, merge_pull_request_by_three_way_output(), tuple()} |
    {error, any()} |
    {error, merge_pull_request_by_three_way_errors(), tuple()}.
merge_pull_request_by_three_way(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_three_way(Client, Input, []).

-spec merge_pull_request_by_three_way(aws_client:aws_client(), merge_pull_request_by_three_way_input(), proplists:proplist()) ->
    {ok, merge_pull_request_by_three_way_output(), tuple()} |
    {error, any()} |
    {error, merge_pull_request_by_three_way_errors(), tuple()}.
merge_pull_request_by_three_way(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestByThreeWay">>, Input, Options).

%% @doc Sets aside (overrides) all approval rule requirements for a specified
%% pull request.
-spec override_pull_request_approval_rules(aws_client:aws_client(), override_pull_request_approval_rules_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, override_pull_request_approval_rules_errors(), tuple()}.
override_pull_request_approval_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    override_pull_request_approval_rules(Client, Input, []).

-spec override_pull_request_approval_rules(aws_client:aws_client(), override_pull_request_approval_rules_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, override_pull_request_approval_rules_errors(), tuple()}.
override_pull_request_approval_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OverridePullRequestApprovalRules">>, Input, Options).

%% @doc Posts a comment on the comparison between two commits.
-spec post_comment_for_compared_commit(aws_client:aws_client(), post_comment_for_compared_commit_input()) ->
    {ok, post_comment_for_compared_commit_output(), tuple()} |
    {error, any()} |
    {error, post_comment_for_compared_commit_errors(), tuple()}.
post_comment_for_compared_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    post_comment_for_compared_commit(Client, Input, []).

-spec post_comment_for_compared_commit(aws_client:aws_client(), post_comment_for_compared_commit_input(), proplists:proplist()) ->
    {ok, post_comment_for_compared_commit_output(), tuple()} |
    {error, any()} |
    {error, post_comment_for_compared_commit_errors(), tuple()}.
post_comment_for_compared_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PostCommentForComparedCommit">>, Input, Options).

%% @doc Posts a comment on a pull request.
-spec post_comment_for_pull_request(aws_client:aws_client(), post_comment_for_pull_request_input()) ->
    {ok, post_comment_for_pull_request_output(), tuple()} |
    {error, any()} |
    {error, post_comment_for_pull_request_errors(), tuple()}.
post_comment_for_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    post_comment_for_pull_request(Client, Input, []).

-spec post_comment_for_pull_request(aws_client:aws_client(), post_comment_for_pull_request_input(), proplists:proplist()) ->
    {ok, post_comment_for_pull_request_output(), tuple()} |
    {error, any()} |
    {error, post_comment_for_pull_request_errors(), tuple()}.
post_comment_for_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PostCommentForPullRequest">>, Input, Options).

%% @doc Posts a comment in reply to an existing comment on a comparison
%% between commits or a pull request.
-spec post_comment_reply(aws_client:aws_client(), post_comment_reply_input()) ->
    {ok, post_comment_reply_output(), tuple()} |
    {error, any()} |
    {error, post_comment_reply_errors(), tuple()}.
post_comment_reply(Client, Input)
  when is_map(Client), is_map(Input) ->
    post_comment_reply(Client, Input, []).

-spec post_comment_reply(aws_client:aws_client(), post_comment_reply_input(), proplists:proplist()) ->
    {ok, post_comment_reply_output(), tuple()} |
    {error, any()} |
    {error, post_comment_reply_errors(), tuple()}.
post_comment_reply(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PostCommentReply">>, Input, Options).

%% @doc Adds or updates a reaction to a specified comment for the user whose
%% identity is used to make the request.
%%
%% You can only add or
%% update a reaction for yourself. You cannot add, modify, or delete a
%% reaction for another user.
-spec put_comment_reaction(aws_client:aws_client(), put_comment_reaction_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_comment_reaction_errors(), tuple()}.
put_comment_reaction(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_comment_reaction(Client, Input, []).

-spec put_comment_reaction(aws_client:aws_client(), put_comment_reaction_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_comment_reaction_errors(), tuple()}.
put_comment_reaction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCommentReaction">>, Input, Options).

%% @doc Adds or updates a file in a branch in an CodeCommit repository, and
%% generates a commit for the addition in the specified branch.
-spec put_file(aws_client:aws_client(), put_file_input()) ->
    {ok, put_file_output(), tuple()} |
    {error, any()} |
    {error, put_file_errors(), tuple()}.
put_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_file(Client, Input, []).

-spec put_file(aws_client:aws_client(), put_file_input(), proplists:proplist()) ->
    {ok, put_file_output(), tuple()} |
    {error, any()} |
    {error, put_file_errors(), tuple()}.
put_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutFile">>, Input, Options).

%% @doc Replaces all triggers for a repository.
%%
%% Used to create or delete triggers.
-spec put_repository_triggers(aws_client:aws_client(), put_repository_triggers_input()) ->
    {ok, put_repository_triggers_output(), tuple()} |
    {error, any()} |
    {error, put_repository_triggers_errors(), tuple()}.
put_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_repository_triggers(Client, Input, []).

-spec put_repository_triggers(aws_client:aws_client(), put_repository_triggers_input(), proplists:proplist()) ->
    {ok, put_repository_triggers_output(), tuple()} |
    {error, any()} |
    {error, put_repository_triggers_errors(), tuple()}.
put_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRepositoryTriggers">>, Input, Options).

%% @doc Adds or updates tags for a resource in CodeCommit.
%%
%% For a list of valid resources
%% in CodeCommit, see CodeCommit Resources and Operations:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
%% in the CodeCommit User
%% Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests the functionality of repository triggers by sending information
%% to the trigger
%% target.
%%
%% If real data is available in the repository, the test sends data from the
%% last
%% commit. If no data is available, sample data is generated.
-spec test_repository_triggers(aws_client:aws_client(), test_repository_triggers_input()) ->
    {ok, test_repository_triggers_output(), tuple()} |
    {error, any()} |
    {error, test_repository_triggers_errors(), tuple()}.
test_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_repository_triggers(Client, Input, []).

-spec test_repository_triggers(aws_client:aws_client(), test_repository_triggers_input(), proplists:proplist()) ->
    {ok, test_repository_triggers_output(), tuple()} |
    {error, any()} |
    {error, test_repository_triggers_errors(), tuple()}.
test_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestRepositoryTriggers">>, Input, Options).

%% @doc Removes tags for a resource in CodeCommit.
%%
%% For a list of valid resources in CodeCommit, see CodeCommit Resources and
%% Operations:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
%% in the CodeCommit User
%% Guide.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the content of an approval rule template.
%%
%% You can change the number of
%% required approvals, the membership of the approval rule, and whether an
%% approval pool is
%% defined.
-spec update_approval_rule_template_content(aws_client:aws_client(), update_approval_rule_template_content_input()) ->
    {ok, update_approval_rule_template_content_output(), tuple()} |
    {error, any()} |
    {error, update_approval_rule_template_content_errors(), tuple()}.
update_approval_rule_template_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_approval_rule_template_content(Client, Input, []).

-spec update_approval_rule_template_content(aws_client:aws_client(), update_approval_rule_template_content_input(), proplists:proplist()) ->
    {ok, update_approval_rule_template_content_output(), tuple()} |
    {error, any()} |
    {error, update_approval_rule_template_content_errors(), tuple()}.
update_approval_rule_template_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApprovalRuleTemplateContent">>, Input, Options).

%% @doc Updates the description for a specified approval rule template.
-spec update_approval_rule_template_description(aws_client:aws_client(), update_approval_rule_template_description_input()) ->
    {ok, update_approval_rule_template_description_output(), tuple()} |
    {error, any()} |
    {error, update_approval_rule_template_description_errors(), tuple()}.
update_approval_rule_template_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_approval_rule_template_description(Client, Input, []).

-spec update_approval_rule_template_description(aws_client:aws_client(), update_approval_rule_template_description_input(), proplists:proplist()) ->
    {ok, update_approval_rule_template_description_output(), tuple()} |
    {error, any()} |
    {error, update_approval_rule_template_description_errors(), tuple()}.
update_approval_rule_template_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApprovalRuleTemplateDescription">>, Input, Options).

%% @doc Updates the name of a specified approval rule template.
-spec update_approval_rule_template_name(aws_client:aws_client(), update_approval_rule_template_name_input()) ->
    {ok, update_approval_rule_template_name_output(), tuple()} |
    {error, any()} |
    {error, update_approval_rule_template_name_errors(), tuple()}.
update_approval_rule_template_name(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_approval_rule_template_name(Client, Input, []).

-spec update_approval_rule_template_name(aws_client:aws_client(), update_approval_rule_template_name_input(), proplists:proplist()) ->
    {ok, update_approval_rule_template_name_output(), tuple()} |
    {error, any()} |
    {error, update_approval_rule_template_name_errors(), tuple()}.
update_approval_rule_template_name(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApprovalRuleTemplateName">>, Input, Options).

%% @doc Replaces the contents of a comment.
-spec update_comment(aws_client:aws_client(), update_comment_input()) ->
    {ok, update_comment_output(), tuple()} |
    {error, any()} |
    {error, update_comment_errors(), tuple()}.
update_comment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_comment(Client, Input, []).

-spec update_comment(aws_client:aws_client(), update_comment_input(), proplists:proplist()) ->
    {ok, update_comment_output(), tuple()} |
    {error, any()} |
    {error, update_comment_errors(), tuple()}.
update_comment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComment">>, Input, Options).

%% @doc Sets or changes the default branch name for the specified repository.
%%
%% If you use this operation to change the default branch name to the current
%% default branch name, a success message is returned even though the default
%% branch did not change.
-spec update_default_branch(aws_client:aws_client(), update_default_branch_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_default_branch_errors(), tuple()}.
update_default_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_branch(Client, Input, []).

-spec update_default_branch(aws_client:aws_client(), update_default_branch_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_default_branch_errors(), tuple()}.
update_default_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultBranch">>, Input, Options).

%% @doc Updates the structure of an approval rule created specifically for a
%% pull request.
%%
%% For example, you can change the number of required approvers and
%% the approval pool for approvers.
-spec update_pull_request_approval_rule_content(aws_client:aws_client(), update_pull_request_approval_rule_content_input()) ->
    {ok, update_pull_request_approval_rule_content_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_approval_rule_content_errors(), tuple()}.
update_pull_request_approval_rule_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_approval_rule_content(Client, Input, []).

-spec update_pull_request_approval_rule_content(aws_client:aws_client(), update_pull_request_approval_rule_content_input(), proplists:proplist()) ->
    {ok, update_pull_request_approval_rule_content_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_approval_rule_content_errors(), tuple()}.
update_pull_request_approval_rule_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestApprovalRuleContent">>, Input, Options).

%% @doc Updates the state of a user's approval on a pull request.
%%
%% The user is derived from the signed-in account when the request is made.
-spec update_pull_request_approval_state(aws_client:aws_client(), update_pull_request_approval_state_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_pull_request_approval_state_errors(), tuple()}.
update_pull_request_approval_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_approval_state(Client, Input, []).

-spec update_pull_request_approval_state(aws_client:aws_client(), update_pull_request_approval_state_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_pull_request_approval_state_errors(), tuple()}.
update_pull_request_approval_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestApprovalState">>, Input, Options).

%% @doc Replaces the contents of the description of a pull request.
-spec update_pull_request_description(aws_client:aws_client(), update_pull_request_description_input()) ->
    {ok, update_pull_request_description_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_description_errors(), tuple()}.
update_pull_request_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_description(Client, Input, []).

-spec update_pull_request_description(aws_client:aws_client(), update_pull_request_description_input(), proplists:proplist()) ->
    {ok, update_pull_request_description_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_description_errors(), tuple()}.
update_pull_request_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestDescription">>, Input, Options).

%% @doc Updates the status of a pull request.
-spec update_pull_request_status(aws_client:aws_client(), update_pull_request_status_input()) ->
    {ok, update_pull_request_status_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_status_errors(), tuple()}.
update_pull_request_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_status(Client, Input, []).

-spec update_pull_request_status(aws_client:aws_client(), update_pull_request_status_input(), proplists:proplist()) ->
    {ok, update_pull_request_status_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_status_errors(), tuple()}.
update_pull_request_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestStatus">>, Input, Options).

%% @doc Replaces the title of a pull request.
-spec update_pull_request_title(aws_client:aws_client(), update_pull_request_title_input()) ->
    {ok, update_pull_request_title_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_title_errors(), tuple()}.
update_pull_request_title(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_request_title(Client, Input, []).

-spec update_pull_request_title(aws_client:aws_client(), update_pull_request_title_input(), proplists:proplist()) ->
    {ok, update_pull_request_title_output(), tuple()} |
    {error, any()} |
    {error, update_pull_request_title_errors(), tuple()}.
update_pull_request_title(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullRequestTitle">>, Input, Options).

%% @doc Sets or changes the comment or description for a repository.
%%
%% The description field for a repository accepts all HTML characters and all
%% valid
%% Unicode characters. Applications that do not HTML-encode the description
%% and display
%% it in a webpage can expose users to potentially malicious code. Make sure
%% that you
%% HTML-encode the description field in any application that uses this API to
%% display
%% the repository description on a webpage.
-spec update_repository_description(aws_client:aws_client(), update_repository_description_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_repository_description_errors(), tuple()}.
update_repository_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_description(Client, Input, []).

-spec update_repository_description(aws_client:aws_client(), update_repository_description_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_repository_description_errors(), tuple()}.
update_repository_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryDescription">>, Input, Options).

%% @doc Updates the Key Management Service encryption key used to encrypt and
%% decrypt a CodeCommit repository.
-spec update_repository_encryption_key(aws_client:aws_client(), update_repository_encryption_key_input()) ->
    {ok, update_repository_encryption_key_output(), tuple()} |
    {error, any()} |
    {error, update_repository_encryption_key_errors(), tuple()}.
update_repository_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_encryption_key(Client, Input, []).

-spec update_repository_encryption_key(aws_client:aws_client(), update_repository_encryption_key_input(), proplists:proplist()) ->
    {ok, update_repository_encryption_key_output(), tuple()} |
    {error, any()} |
    {error, update_repository_encryption_key_errors(), tuple()}.
update_repository_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryEncryptionKey">>, Input, Options).

%% @doc Renames a repository.
%%
%% The repository name must be unique across the calling Amazon Web Services
%% account.
%% Repository names are limited to 100 alphanumeric, dash, and underscore
%% characters, and cannot include certain characters. The suffix .git is
%% prohibited. For
%% more information about the limits on repository names, see Quotas:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html in the
%% CodeCommit
%% User Guide.
-spec update_repository_name(aws_client:aws_client(), update_repository_name_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_repository_name_errors(), tuple()}.
update_repository_name(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_name(Client, Input, []).

-spec update_repository_name(aws_client:aws_client(), update_repository_name_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_repository_name_errors(), tuple()}.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
