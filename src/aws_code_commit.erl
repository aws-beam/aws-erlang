%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CodeCommit</fullname>
%%
%% This is the <i>AWS CodeCommit API Reference</i>. This reference provides
%% descriptions of the AWS CodeCommit API.
%%
%% You can use the AWS CodeCommit API to work with the following objects:
%%
%% <ul> <li>Repositories</li> <li>Branches</li> <li>Commits</li> </ul> For
%% information about how to use AWS CodeCommit, see the <i>AWS CodeCommit
%% User Guide</i>.
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
         get_repository/2,
         get_repository/3,
         list_branches/2,
         list_branches/3,
         list_repositories/2,
         list_repositories/3,
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

%% @doc Gets information about one or more repositories.
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
%% default branch. To do this, call the update default branch
%% operation.</note>
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

%% @doc Retrieves information about a repository branch, including its name
%% and the last commit ID.
get_branch(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_branch(Client, Input, []).
get_branch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBranch">>, Input, Options).

%% @doc Gets information about a repository.
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

%% @doc Sets or changes the default branch name for the specified repository.
%%
%% <note>If you use this operation to change the default branch name to the
%% current default branch name, a success message is returned even though the
%% default branch did not change.</note>
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

%% @doc Renames a repository.
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
    Host = aws_util:binary_join([<<"codecommit.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
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
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
