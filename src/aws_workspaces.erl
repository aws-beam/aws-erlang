%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon WorkSpaces Service</fullname>
%%
%% This is the <i>Amazon WorkSpaces API Reference</i>. This guide provides
%% detailed information about Amazon WorkSpaces operations, data types,
%% parameters, and errors.
-module(aws_workspaces).

-export([create_workspaces/2,
         create_workspaces/3,
         describe_workspace_bundles/2,
         describe_workspace_bundles/3,
         describe_workspace_directories/2,
         describe_workspace_directories/3,
         describe_workspaces/2,
         describe_workspaces/3,
         reboot_workspaces/2,
         reboot_workspaces/3,
         rebuild_workspaces/2,
         rebuild_workspaces/3,
         terminate_workspaces/2,
         terminate_workspaces/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates one or more WorkSpaces.
%%
%% <note> This operation is asynchronous and returns before the WorkSpaces
%% are created.
%%
%% </note>
create_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspaces(Client, Input, []).
create_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaces">>, Input, Options).

%% @doc Obtains information about the WorkSpace bundles that are available to
%% your account in the specified region.
%%
%% You can filter the results with either the <code>BundleIds</code>
%% parameter, or the <code>Owner</code> parameter, but not both.
%%
%% This operation supports pagination with the use of the
%% <code>NextToken</code> request and response parameters. If more results
%% are available, the <code>NextToken</code> response member contains a token
%% that you pass in the next call to this operation to retrieve the next set
%% of items.
describe_workspace_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_bundles(Client, Input, []).
describe_workspace_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceBundles">>, Input, Options).

%% @doc Retrieves information about the AWS Directory Service directories in
%% the region that are registered with Amazon WorkSpaces and are available to
%% your account.
%%
%% This operation supports pagination with the use of the
%% <code>NextToken</code> request and response parameters. If more results
%% are available, the <code>NextToken</code> response member contains a token
%% that you pass in the next call to this operation to retrieve the next set
%% of items.
describe_workspace_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_directories(Client, Input, []).
describe_workspace_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceDirectories">>, Input, Options).

%% @doc Obtains information about the specified WorkSpaces.
%%
%% Only one of the filter parameters, such as <code>BundleId</code>,
%% <code>DirectoryId</code>, or <code>WorkspaceIds</code>, can be specified
%% at a time.
%%
%% This operation supports pagination with the use of the
%% <code>NextToken</code> request and response parameters. If more results
%% are available, the <code>NextToken</code> response member contains a token
%% that you pass in the next call to this operation to retrieve the next set
%% of items.
describe_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces(Client, Input, []).
describe_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaces">>, Input, Options).

%% @doc Reboots the specified WorkSpaces.
%%
%% To be able to reboot a WorkSpace, the WorkSpace must have a <b>State</b>
%% of <code>AVAILABLE</code>, <code>IMPAIRED</code>, or
%% <code>INOPERABLE</code>.
%%
%% <note> This operation is asynchronous and will return before the
%% WorkSpaces have rebooted.
%%
%% </note>
reboot_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_workspaces(Client, Input, []).
reboot_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootWorkspaces">>, Input, Options).

%% @doc Rebuilds the specified WorkSpaces.
%%
%% Rebuilding a WorkSpace is a potentially destructive action that can result
%% in the loss of data. Rebuilding a WorkSpace causes the following to occur:
%%
%% <ul> <li>The system is restored to the image of the bundle that the
%% WorkSpace is created from. Any applications that have been installed, or
%% system settings that have been made since the WorkSpace was created will
%% be lost.</li> <li>The data drive (D drive) is re-created from the last
%% automatic snapshot taken of the data drive. The current contents of the
%% data drive are overwritten. Automatic snapshots of the data drive are
%% taken every 12 hours, so the snapshot can be as much as 12 hours old.</li>
%% </ul> To be able to rebuild a WorkSpace, the WorkSpace must have a
%% <b>State</b> of <code>AVAILABLE</code> or <code>ERROR</code>.
%%
%% <note> This operation is asynchronous and will return before the
%% WorkSpaces have been completely rebuilt.
%%
%% </note>
rebuild_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebuild_workspaces(Client, Input, []).
rebuild_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebuildWorkspaces">>, Input, Options).

%% @doc Terminates the specified WorkSpaces.
%%
%% Terminating a WorkSpace is a permanent action and cannot be undone. The
%% user's data is not maintained and will be destroyed. If you need to
%% archive any user data, contact Amazon Web Services before terminating the
%% WorkSpace.
%%
%% You can terminate a WorkSpace that is in any state except
%% <code>SUSPENDED</code>.
%%
%% <note> This operation is asynchronous and will return before the
%% WorkSpaces have been completely terminated.
%%
%% </note>
terminate_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workspaces(Client, Input, []).
terminate_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkspaces">>, Input, Options).

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
    Client1 = Client#{service => <<"workspaces">>},
    Host = aws_util:binary_join([<<"workspaces.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"WorkspacesService.">>/binary, Action/binary>>}],
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
