%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CodeCommit</fullname>
%%
%% This is the <i>AWS CodeCommit API Reference</i>. This reference provides
%% descriptions of the operations and data types for AWS CodeCommit API along
%% with usage examples.
%%
%% You can use the AWS CodeCommit API to work with the following objects:
%%
%% Repositories, by calling the following:
%%
%% <ul> <li> <a>BatchGetRepositories</a>, which returns information about one
%% or more repositories associated with your AWS account.
%%
%% </li> <li> <a>CreateRepository</a>, which creates an AWS CodeCommit
%% repository.
%%
%% </li> <li> <a>DeleteRepository</a>, which deletes an AWS CodeCommit
%% repository.
%%
%% </li> <li> <a>GetRepository</a>, which returns information about a
%% specified repository.
%%
%% </li> <li> <a>ListRepositories</a>, which lists all AWS CodeCommit
%% repositories associated with your AWS account.
%%
%% </li> <li> <a>UpdateRepositoryDescription</a>, which sets or updates the
%% description of the repository.
%%
%% </li> <li> <a>UpdateRepositoryName</a>, which changes the name of the
%% repository. If you change the name of a repository, no other users of that
%% repository will be able to access it until you send them the new HTTPS or
%% SSH URL to use.
%%
%% </li> </ul> Branches, by calling the following:
%%
%% <ul> <li> <a>CreateBranch</a>, which creates a new branch in a specified
%% repository.
%%
%% </li> <li> <a>DeleteBranch</a>, which deletes the specified branch in a
%% repository unless it is the default branch.
%%
%% </li> <li> <a>GetBranch</a>, which returns information about a specified
%% branch.
%%
%% </li> <li> <a>ListBranches</a>, which lists all branches for a specified
%% repository.
%%
%% </li> <li> <a>UpdateDefaultBranch</a>, which changes the default branch
%% for a repository.
%%
%% </li> </ul> Files, by calling the following:
%%
%% <ul> <li> <a>DeleteFile</a>, which deletes the content of a specified file
%% from a specified branch.
%%
%% </li> <li> <a>GetFile</a>, which returns the base-64 encoded content of a
%% specified file.
%%
%% </li> <li> <a>GetFolder</a>, which returns the contents of a specified
%% folder or directory.
%%
%% </li> <li> <a>PutFile</a>, which adds or modifies a file in a specified
%% repository and branch.
%%
%% </li> </ul> Information about committed code in a repository, by calling
%% the following:
%%
%% <ul> <li> <a>CreateCommit</a>, which creates a commit for changes to a
%% repository.
%%
%% </li> <li> <a>GetBlob</a>, which returns the base-64 encoded content of an
%% individual Git blob object within a repository.
%%
%% </li> <li> <a>GetCommit</a>, which returns information about a commit,
%% including commit messages and author and committer information.
%%
%% </li> <li> <a>GetDifferences</a>, which returns information about the
%% differences in a valid commit specifier (such as a branch, tag, HEAD,
%% commit ID or other fully qualified reference).
%%
%% </li> </ul> Pull requests, by calling the following:
%%
%% <ul> <li> <a>CreatePullRequest</a>, which creates a pull request in a
%% specified repository.
%%
%% </li> <li> <a>DescribePullRequestEvents</a>, which returns information
%% about one or more pull request events.
%%
%% </li> <li> <a>GetCommentsForPullRequest</a>, which returns information
%% about comments on a specified pull request.
%%
%% </li> <li> <a>GetMergeConflicts</a>, which returns information about merge
%% conflicts between the source and destination branch in a pull request.
%%
%% </li> <li> <a>GetPullRequest</a>, which returns information about a
%% specified pull request.
%%
%% </li> <li> <a>ListPullRequests</a>, which lists all pull requests for a
%% repository.
%%
%% </li> <li> <a>MergePullRequestByFastForward</a>, which merges the source
%% destination branch of a pull request into the specified destination branch
%% for that pull request using the fast-forward merge option.
%%
%% </li> <li> <a>PostCommentForPullRequest</a>, which posts a comment to a
%% pull request at the specified line, file, or request.
%%
%% </li> <li> <a>UpdatePullRequestDescription</a>, which updates the
%% description of a pull request.
%%
%% </li> <li> <a>UpdatePullRequestStatus</a>, which updates the status of a
%% pull request.
%%
%% </li> <li> <a>UpdatePullRequestTitle</a>, which updates the title of a
%% pull request.
%%
%% </li> </ul> Information about comments in a repository, by calling the
%% following:
%%
%% <ul> <li> <a>DeleteCommentContent</a>, which deletes the content of a
%% comment on a commit in a repository.
%%
%% </li> <li> <a>GetComment</a>, which returns information about a comment on
%% a commit.
%%
%% </li> <li> <a>GetCommentsForComparedCommit</a>, which returns information
%% about comments on the comparison between two commit specifiers in a
%% repository.
%%
%% </li> <li> <a>PostCommentForComparedCommit</a>, which creates a comment on
%% the comparison between two commit specifiers in a repository.
%%
%% </li> <li> <a>PostCommentReply</a>, which creates a reply to a comment.
%%
%% </li> <li> <a>UpdateComment</a>, which updates the content of a comment on
%% a commit in a repository.
%%
%% </li> </ul> Triggers, by calling the following:
%%
%% <ul> <li> <a>GetRepositoryTriggers</a>, which returns information about
%% triggers configured for a repository.
%%
%% </li> <li> <a>PutRepositoryTriggers</a>, which replaces all triggers for a
%% repository and can be used to create or delete triggers.
%%
%% </li> <li> <a>TestRepositoryTriggers</a>, which tests the functionality of
%% a repository trigger by sending data to the trigger target.
%%
%% </li> </ul> For information about how to use AWS CodeCommit, see the <a
%% href="http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">AWS
%% CodeCommit User Guide</a>.
-module(aws_code_commit).

-export([batch_get_repositories/2,
         batch_get_repositories/3,
         create_branch/2,
         create_branch/3,
         create_commit/2,
         create_commit/3,
         create_pull_request/2,
         create_pull_request/3,
         create_repository/2,
         create_repository/3,
         delete_branch/2,
         delete_branch/3,
         delete_comment_content/2,
         delete_comment_content/3,
         delete_file/2,
         delete_file/3,
         delete_repository/2,
         delete_repository/3,
         describe_pull_request_events/2,
         describe_pull_request_events/3,
         get_blob/2,
         get_blob/3,
         get_branch/2,
         get_branch/3,
         get_comment/2,
         get_comment/3,
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
         get_merge_conflicts/2,
         get_merge_conflicts/3,
         get_pull_request/2,
         get_pull_request/3,
         get_repository/2,
         get_repository/3,
         get_repository_triggers/2,
         get_repository_triggers/3,
         list_branches/2,
         list_branches/3,
         list_pull_requests/2,
         list_pull_requests/3,
         list_repositories/2,
         list_repositories/3,
         merge_pull_request_by_fast_forward/2,
         merge_pull_request_by_fast_forward/3,
         post_comment_for_compared_commit/2,
         post_comment_for_compared_commit/3,
         post_comment_for_pull_request/2,
         post_comment_for_pull_request/3,
         post_comment_reply/2,
         post_comment_reply/3,
         put_file/2,
         put_file/3,
         put_repository_triggers/2,
         put_repository_triggers/3,
         test_repository_triggers/2,
         test_repository_triggers/3,
         update_comment/2,
         update_comment/3,
         update_default_branch/2,
         update_default_branch/3,
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

%% @doc Returns information about one or more repositories.
%%
%% <note> The description field for a repository accepts all HTML characters
%% and all valid Unicode characters. Applications that do not HTML-encode the
%% description and display it in a web page could expose users to potentially
%% malicious code. Make sure that you HTML-encode the description field in
%% any application that uses this API to display the repository description
%% on a web page.
%%
%% </note>
batch_get_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_repositories(Client, Input, []).
batch_get_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetRepositories">>, Input, Options).

%% @doc Creates a new branch in a repository and points the branch to a
%% commit.
%%
%% <note> Calling the create branch operation does not set a repository's
%% default branch. To do this, call the update default branch operation.
%%
%% </note>
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

%% @doc Creates a new, empty repository.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

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

%% @doc Deletes a specified file from a specified branch. A commit is created
%% on the branch that contains the revision. The file will still exist in the
%% commits prior to the commit that contains the deletion.
delete_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file(Client, Input, []).
delete_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFile">>, Input, Options).

%% @doc Deletes a repository. If a specified repository was already deleted,
%% a null repository ID will be returned.
%%
%% <important> Deleting a repository also deletes all associated objects and
%% metadata. After a repository is deleted, all future push calls to the
%% deleted repository will fail.
%%
%% </important>
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Returns information about one or more pull request events.
describe_pull_request_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pull_request_events(Client, Input, []).
describe_pull_request_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePullRequestEvents">>, Input, Options).

%% @doc Returns the base-64 encoded content of an individual blob within a
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
get_comment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comment(Client, Input, []).
get_comment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComment">>, Input, Options).

%% @doc Returns information about comments made on the comparison between two
%% commits.
get_comments_for_compared_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_comments_for_compared_commit(Client, Input, []).
get_comments_for_compared_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommentsForComparedCommit">>, Input, Options).

%% @doc Returns comments made on a pull request.
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
%% (such as a branch, tag, HEAD, commit ID or other fully qualified
%% reference). Results can be limited to a specified path.
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

%% @doc Returns information about merge conflicts between the before and
%% after commit IDs for a pull request in a repository.
get_merge_conflicts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_merge_conflicts(Client, Input, []).
get_merge_conflicts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMergeConflicts">>, Input, Options).

%% @doc Gets information about a pull request in a specified repository.
get_pull_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pull_request(Client, Input, []).
get_pull_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPullRequest">>, Input, Options).

%% @doc Returns information about a repository.
%%
%% <note> The description field for a repository accepts all HTML characters
%% and all valid Unicode characters. Applications that do not HTML-encode the
%% description and display it in a web page could expose users to potentially
%% malicious code. Make sure that you HTML-encode the description field in
%% any application that uses this API to display the repository description
%% on a web page.
%%
%% </note>
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

%% @doc Gets information about one or more branches in a repository.
list_branches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_branches(Client, Input, []).
list_branches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBranches">>, Input, Options).

%% @doc Returns a list of pull requests for a specified repository. The
%% return list can be refined by pull request status or pull request author
%% ARN.
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

%% @doc Closes a pull request and attempts to merge the source commit of a
%% pull request into the specified destination branch for that pull request
%% at the specified commit using the fast-forward merge option.
merge_pull_request_by_fast_forward(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_pull_request_by_fast_forward(Client, Input, []).
merge_pull_request_by_fast_forward(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergePullRequestByFastForward">>, Input, Options).

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

%% @doc Adds or updates a file in a branch in an AWS CodeCommit repository,
%% and generates a commit for the addition in the specified branch.
put_file(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_file(Client, Input, []).
put_file(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutFile">>, Input, Options).

%% @doc Replaces all triggers for a repository. This can be used to create or
%% delete triggers.
put_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_repository_triggers(Client, Input, []).
put_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRepositoryTriggers">>, Input, Options).

%% @doc Tests the functionality of repository triggers by sending information
%% to the trigger target. If real data is available in the repository, the
%% test will send data from the last commit. If no data is available, sample
%% data will be generated.
test_repository_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_repository_triggers(Client, Input, []).
test_repository_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestRepositoryTriggers">>, Input, Options).

%% @doc Replaces the contents of a comment.
update_comment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_comment(Client, Input, []).
update_comment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComment">>, Input, Options).

%% @doc Sets or changes the default branch name for the specified repository.
%%
%% <note> If you use this operation to change the default branch name to the
%% current default branch name, a success message is returned even though the
%% default branch did not change.
%%
%% </note>
update_default_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_branch(Client, Input, []).
update_default_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultBranch">>, Input, Options).

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
%% <note> The description field for a repository accepts all HTML characters
%% and all valid Unicode characters. Applications that do not HTML-encode the
%% description and display it in a web page could expose users to potentially
%% malicious code. Make sure that you HTML-encode the description field in
%% any application that uses this API to display the repository description
%% on a web page.
%%
%% </note>
update_repository_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_description(Client, Input, []).
update_repository_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryDescription">>, Input, Options).

%% @doc Renames a repository. The repository name must be unique across the
%% calling AWS account. In addition, repository names are limited to 100
%% alphanumeric, dash, and underscore characters, and cannot include certain
%% characters. The suffix ".git" is prohibited. For a full description of the
%% limits on repository names, see <a
%% href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a>
%% in the AWS CodeCommit User Guide.
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"codecommit">>},
    Host = get_host(<<"codecommit">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"CodeCommit_20150413.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
