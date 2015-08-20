%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Directory Service</fullname>
%%
%% This is the <i>AWS Directory Service API Reference</i>. This guide
%% provides detailed information about AWS Directory Service operations, data
%% types, parameters, and errors.
-module(aws_directory_service).

-export([connect_directory/2,
         connect_directory/3,
         create_alias/2,
         create_alias/3,
         create_computer/2,
         create_computer/3,
         create_directory/2,
         create_directory/3,
         create_snapshot/2,
         create_snapshot/3,
         delete_directory/2,
         delete_directory/3,
         delete_snapshot/2,
         delete_snapshot/3,
         describe_directories/2,
         describe_directories/3,
         describe_snapshots/2,
         describe_snapshots/3,
         disable_radius/2,
         disable_radius/3,
         disable_sso/2,
         disable_sso/3,
         enable_radius/2,
         enable_radius/3,
         enable_sso/2,
         enable_sso/3,
         get_directory_limits/2,
         get_directory_limits/3,
         get_snapshot_limits/2,
         get_snapshot_limits/3,
         restore_from_snapshot/2,
         restore_from_snapshot/3,
         update_radius/2,
         update_radius/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an AD Connector to connect an on-premises directory.
connect_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    connect_directory(Client, Input, []).
connect_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConnectDirectory">>, Input, Options).

%% @doc Creates an alias for a directory and assigns the alias to the
%% directory. The alias is used to construct the access URL for the
%% directory, such as <code>http://&#x3C;alias&#x3E;.awsapps.com</code>.
%%
%% <important> After an alias has been created, it cannot be deleted or
%% reused, so this operation should only be used when absolutely necessary.
%%
%% </important>
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates a computer account in the specified directory, and joins the
%% computer to the directory.
create_computer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_computer(Client, Input, []).
create_computer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComputer">>, Input, Options).

%% @doc Creates a Simple AD directory.
create_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_directory(Client, Input, []).
create_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectory">>, Input, Options).

%% @doc Creates a snapshot of an existing directory.
%%
%% You cannot take snapshots of extended or connected directories.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Deletes an AWS Directory Service directory.
delete_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_directory(Client, Input, []).
delete_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectory">>, Input, Options).

%% @doc Deletes a directory snapshot.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Obtains information about the directories that belong to this
%% account.
%%
%% You can retrieve information about specific directories by passing the
%% directory identifiers in the <i>DirectoryIds</i> parameter. Otherwise, all
%% directories that belong to the current account are returned.
%%
%% This operation supports pagination with the use of the <i>NextToken</i>
%% request and response parameters. If more results are available, the
%% <i>DescribeDirectoriesResult.NextToken</i> member contains a token that
%% you pass in the next call to <a>DescribeDirectories</a> to retrieve the
%% next set of items.
%%
%% You can also specify a maximum number of return results with the
%% <i>Limit</i> parameter.
describe_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_directories(Client, Input, []).
describe_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectories">>, Input, Options).

%% @doc Obtains information about the directory snapshots that belong to this
%% account.
%%
%% This operation supports pagination with the use of the <i>NextToken</i>
%% request and response parameters. If more results are available, the
%% <i>DescribeSnapshots.NextToken</i> member contains a token that you pass
%% in the next call to <a>DescribeSnapshots</a> to retrieve the next set of
%% items.
%%
%% You can also specify a maximum number of return results with the
%% <i>Limit</i> parameter.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Disables multi-factor authentication (MFA) with Remote Authentication
%% Dial In User Service (RADIUS) for an AD Connector directory.
disable_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_radius(Client, Input, []).
disable_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRadius">>, Input, Options).

%% @doc Disables single-sign on for a directory.
disable_sso(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_sso(Client, Input, []).
disable_sso(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSso">>, Input, Options).

%% @doc Enables multi-factor authentication (MFA) with Remote Authentication
%% Dial In User Service (RADIUS) for an AD Connector directory.
enable_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_radius(Client, Input, []).
enable_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRadius">>, Input, Options).

%% @doc Enables single-sign on for a directory.
enable_sso(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_sso(Client, Input, []).
enable_sso(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSso">>, Input, Options).

%% @doc Obtains directory limit information for the current region.
get_directory_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_directory_limits(Client, Input, []).
get_directory_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDirectoryLimits">>, Input, Options).

%% @doc Obtains the manual snapshot limits for a directory.
get_snapshot_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshot_limits(Client, Input, []).
get_snapshot_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshotLimits">>, Input, Options).

%% @doc Restores a directory using an existing directory snapshot.
%%
%% When you restore a directory from a snapshot, any changes made to the
%% directory after the snapshot date are overwritten.
%%
%% This action returns as soon as the restore operation is initiated. You can
%% monitor the progress of the restore operation by calling the
%% <a>DescribeDirectories</a> operation with the directory identifier. When
%% the <b>DirectoryDescription.Stage</b> value changes to
%% <code>Active</code>, the restore operation is complete.
restore_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_snapshot(Client, Input, []).
restore_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromSnapshot">>, Input, Options).

%% @doc Updates the Remote Authentication Dial In User Service (RADIUS)
%% server information for an AD Connector directory.
update_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_radius(Client, Input, []).
update_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRadius">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"ds">>},
    Host = aws_util:binary_join([<<"ds.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"DirectoryService_20150416.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
