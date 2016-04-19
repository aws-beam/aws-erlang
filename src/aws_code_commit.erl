%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CodeCommit</fullname>
%%
%% This is the <i>AWS CodeCommit API Reference</i>. This reference provides
%% descriptions of the operations and data types for AWS CodeCommit API.
%%
%% You can use the AWS CodeCommit API to work with the following objects:
%%
%% <ul> <li>Repositories, by calling the following: <ul>
%% <li><a>BatchGetRepositories</a>, which returns information about one or
%% more repositories associated with your AWS account</li>
%% <li><a>CreateRepository</a>, which creates an AWS CodeCommit
%% repository</li> <li><a>DeleteRepository</a>, which deletes an AWS
%% CodeCommit repository</li> <li><a>GetRepository</a>, which returns
%% information about a specified repository</li> <li><a>ListRepositories</a>,
%% which lists all AWS CodeCommit repositories associated with your AWS
%% account</li> <li><a>UpdateRepositoryDescription</a>, which sets or updates
%% the description of the repository</li> <li><a>UpdateRepositoryName</a>,
%% which changes the name of the repository. If you change the name of a
%% repository, no other users of that repository will be able to access it
%% until you send them the new HTTPS or SSH URL to use.</li> </ul></li>
%% <li>Branches, by calling the following: <ul> <li><a>CreateBranch</a>,
%% which creates a new branch in a specified repository</li>
%% <li><a>GetBranch</a>, which returns information about a specified
%% branch</li> <li><a>ListBranches</a>, which lists all branches for a
%% specified repository</li> <li><a>UpdateDefaultBranch</a>, which changes
%% the default branch for a repository</li> </ul></li> <li>Information about
%% committed code in a repository, by calling the following: <ul>
%% <li><a>GetCommit</a>, which returns information about a commit, including
%% commit messages and committer information.</li> </ul></li> <li>Triggers,
%% by calling the following: <ul> <li><a>GetRepositoryTriggers</a>, which
%% returns information about triggers configured for a repository</li>
%% <li><a>PutRepositoryTriggers</a>, which replaces all triggers for a
%% repository and can be used to create or delete triggers</li>
%% <li><a>TestRepositoryTriggers</a>, which tests the functionality of a
%% repository trigger by sending data to the trigger target</li> </ul> </li>
%% </ul> For information about how to use AWS CodeCommit, see the <a
%% href="http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">AWS
%% CodeCommit User Guide</a>.
-module(aws_code_commit).

-export([batch_get_repositories/2,
         batch_get_repositories/3,
         create_branch/2,
         create_branch/3,
         create_repository/2,
         create_repository/3,
         delete_repository/2,
         delete_repository/3,
         get_branch/2,
         get_branch/3,
         get_commit/2,
         get_commit/3,
         get_repository/2,
         get_repository/3,
         get_repository_triggers/2,
         get_repository_triggers/3,
         list_branches/2,
         list_branches/3,
         list_repositories/2,
         list_repositories/3,
         put_repository_triggers/2,
         put_repository_triggers/3,
         test_repository_triggers/2,
         test_repository_triggers/3,
         update_default_branch/2,
         update_default_branch/3,
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
%% <note>The description field for a repository accepts all HTML characters
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
%% <note>Calling the create branch operation does not set a repository's
%% default branch. To do this, call the update default branch operation.
%%
%% </note>
create_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_branch(Client, Input, []).
create_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBranch">>, Input, Options).

%% @doc Creates a new, empty repository.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Deletes a repository. If a specified repository was already deleted,
%% a null repository ID will be returned.
%%
%% <important>Deleting a repository also deletes all associated objects and
%% metadata. After a repository is deleted, all future push calls to the
%% deleted repository will fail.</important>
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Returns information about a repository branch, including its name and
%% the last commit ID.
get_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_branch(Client, Input, []).
get_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBranch">>, Input, Options).

%% @doc Returns information about a commit, including commit message and
%% committer information.
get_commit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_commit(Client, Input, []).
get_commit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommit">>, Input, Options).

%% @doc Returns information about a repository.
%%
%% <note>The description field for a repository accepts all HTML characters
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

%% @doc Gets information about one or more repositories.
list_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repositories(Client, Input, []).
list_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositories">>, Input, Options).

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

%% @doc Sets or changes the default branch name for the specified repository.
%%
%% <note>If you use this operation to change the default branch name to the
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

%% @doc Sets or changes the comment or description for a repository.
%%
%% <note>The description field for a repository accepts all HTML characters
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
