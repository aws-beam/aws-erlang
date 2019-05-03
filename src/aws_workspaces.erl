%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon WorkSpaces Service</fullname>
%%
%% Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
%% Windows and Amazon Linux desktops for your users.
-module(aws_workspaces).

-export([associate_ip_groups/2,
         associate_ip_groups/3,
         authorize_ip_rules/2,
         authorize_ip_rules/3,
         create_ip_group/2,
         create_ip_group/3,
         create_tags/2,
         create_tags/3,
         create_workspaces/2,
         create_workspaces/3,
         delete_ip_group/2,
         delete_ip_group/3,
         delete_tags/2,
         delete_tags/3,
         delete_workspace_image/2,
         delete_workspace_image/3,
         describe_account/2,
         describe_account/3,
         describe_account_modifications/2,
         describe_account_modifications/3,
         describe_client_properties/2,
         describe_client_properties/3,
         describe_ip_groups/2,
         describe_ip_groups/3,
         describe_tags/2,
         describe_tags/3,
         describe_workspace_bundles/2,
         describe_workspace_bundles/3,
         describe_workspace_directories/2,
         describe_workspace_directories/3,
         describe_workspace_images/2,
         describe_workspace_images/3,
         describe_workspaces/2,
         describe_workspaces/3,
         describe_workspaces_connection_status/2,
         describe_workspaces_connection_status/3,
         disassociate_ip_groups/2,
         disassociate_ip_groups/3,
         import_workspace_image/2,
         import_workspace_image/3,
         list_available_management_cidr_ranges/2,
         list_available_management_cidr_ranges/3,
         modify_account/2,
         modify_account/3,
         modify_client_properties/2,
         modify_client_properties/3,
         modify_workspace_properties/2,
         modify_workspace_properties/3,
         modify_workspace_state/2,
         modify_workspace_state/3,
         reboot_workspaces/2,
         reboot_workspaces/3,
         rebuild_workspaces/2,
         rebuild_workspaces/3,
         revoke_ip_rules/2,
         revoke_ip_rules/3,
         start_workspaces/2,
         start_workspaces/3,
         stop_workspaces/2,
         stop_workspaces/3,
         terminate_workspaces/2,
         terminate_workspaces/3,
         update_rules_of_ip_group/2,
         update_rules_of_ip_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified IP access control group with the specified
%% directory.
associate_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_ip_groups(Client, Input, []).
associate_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateIpGroups">>, Input, Options).

%% @doc Adds one or more rules to the specified IP access control group.
%%
%% This action gives users permission to access their WorkSpaces from the
%% CIDR address ranges specified in the rules.
authorize_ip_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_ip_rules(Client, Input, []).
authorize_ip_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeIpRules">>, Input, Options).

%% @doc Creates an IP access control group.
%%
%% An IP access control group provides you with the ability to control the IP
%% addresses from which users are allowed to access their WorkSpaces. To
%% specify the CIDR address ranges, add rules to your IP access control group
%% and then associate the group with your directory. You can add rules when
%% you create the group or at any time using <a>AuthorizeIpRules</a>.
%%
%% There is a default IP access control group associated with your directory.
%% If you don't associate an IP access control group with your directory, the
%% default group is used. The default group includes a default rule that
%% allows users to access their WorkSpaces from anywhere. You cannot modify
%% the default IP access control group for your directory.
create_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ip_group(Client, Input, []).
create_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIpGroup">>, Input, Options).

%% @doc Creates the specified tags for the specified WorkSpaces resource.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Creates one or more WorkSpaces.
%%
%% This operation is asynchronous and returns before the WorkSpaces are
%% created.
create_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspaces(Client, Input, []).
create_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaces">>, Input, Options).

%% @doc Deletes the specified IP access control group.
%%
%% You cannot delete an IP access control group that is associated with a
%% directory.
delete_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ip_group(Client, Input, []).
delete_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIpGroup">>, Input, Options).

%% @doc Deletes the specified tags from the specified WorkSpaces resource.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the specified image from your account. To delete an image,
%% you must first delete any bundles that are associated with the image.
delete_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workspace_image(Client, Input, []).
delete_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkspaceImage">>, Input, Options).

%% @doc Retrieves a list that describes the configuration of bring your own
%% license (BYOL) for the specified account.
describe_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account(Client, Input, []).
describe_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccount">>, Input, Options).

%% @doc Retrieves a list that describes modifications to the configuration of
%% bring your own license (BYOL) for the specified account.
describe_account_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_modifications(Client, Input, []).
describe_account_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountModifications">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified Amazon
%% WorkSpaces clients.
describe_client_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_properties(Client, Input, []).
describe_client_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientProperties">>, Input, Options).

%% @doc Describes one or more of your IP access control groups.
describe_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ip_groups(Client, Input, []).
describe_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpGroups">>, Input, Options).

%% @doc Describes the specified tags for the specified WorkSpaces resource.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Retrieves a list that describes the available WorkSpace bundles.
%%
%% You can filter the results using either bundle ID or owner, but not both.
describe_workspace_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_bundles(Client, Input, []).
describe_workspace_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceBundles">>, Input, Options).

%% @doc Describes the available AWS Directory Service directories that are
%% registered with Amazon WorkSpaces.
describe_workspace_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_directories(Client, Input, []).
describe_workspace_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceDirectories">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified images, if the
%% image identifiers are provided. Otherwise, all images in the account are
%% described.
describe_workspace_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_images(Client, Input, []).
describe_workspace_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceImages">>, Input, Options).

%% @doc Describes the specified WorkSpaces.
%%
%% You can filter the results by using the bundle identifier, directory
%% identifier, or owner, but you can specify only one filter at a time.
describe_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces(Client, Input, []).
describe_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaces">>, Input, Options).

%% @doc Describes the connection status of the specified WorkSpaces.
describe_workspaces_connection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces_connection_status(Client, Input, []).
describe_workspaces_connection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspacesConnectionStatus">>, Input, Options).

%% @doc Disassociates the specified IP access control group from the
%% specified directory.
disassociate_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ip_groups(Client, Input, []).
disassociate_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIpGroups">>, Input, Options).

%% @doc Imports the specified Windows 7 or Windows 10 bring your own license
%% (BYOL) image into Amazon WorkSpaces. The image must be an already licensed
%% EC2 image that is in your AWS account, and you must own the image.
import_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_workspace_image(Client, Input, []).
import_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportWorkspaceImage">>, Input, Options).

%% @doc Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
%% that you can use for the network management interface when you enable
%% bring your own license (BYOL).
%%
%% The management network interface is connected to a secure Amazon
%% WorkSpaces management network. It is used for interactive streaming of the
%% WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon
%% WorkSpaces to manage the WorkSpace.
list_available_management_cidr_ranges(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_management_cidr_ranges(Client, Input, []).
list_available_management_cidr_ranges(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagementCidrRanges">>, Input, Options).

%% @doc Modifies the configuration of bring your own license (BYOL) for the
%% specified account.
modify_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_account(Client, Input, []).
modify_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAccount">>, Input, Options).

%% @doc Modifies the properties of the specified Amazon WorkSpaces clients.
modify_client_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_client_properties(Client, Input, []).
modify_client_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClientProperties">>, Input, Options).

%% @doc Modifies the specified WorkSpace properties.
modify_workspace_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_properties(Client, Input, []).
modify_workspace_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceProperties">>, Input, Options).

%% @doc Sets the state of the specified WorkSpace.
%%
%% To maintain a WorkSpace without being interrupted, set the WorkSpace state
%% to <code>ADMIN_MAINTENANCE</code>. WorkSpaces in this state do not respond
%% to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace in
%% this state is not stopped. Users can log into a WorkSpace in the
%% <code>ADMIN_MAINTENANCE</code> state.
modify_workspace_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_state(Client, Input, []).
modify_workspace_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceState">>, Input, Options).

%% @doc Reboots the specified WorkSpaces.
%%
%% You cannot reboot a WorkSpace unless its state is <code>AVAILABLE</code>
%% or <code>UNHEALTHY</code>.
%%
%% This operation is asynchronous and returns before the WorkSpaces have
%% rebooted.
reboot_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_workspaces(Client, Input, []).
reboot_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootWorkspaces">>, Input, Options).

%% @doc Rebuilds the specified WorkSpace.
%%
%% You cannot rebuild a WorkSpace unless its state is <code>AVAILABLE</code>,
%% <code>ERROR</code>, or <code>UNHEALTHY</code>.
%%
%% Rebuilding a WorkSpace is a potentially destructive action that can result
%% in the loss of data. For more information, see <a
%% href="https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html">Rebuild
%% a WorkSpace</a>.
%%
%% This operation is asynchronous and returns before the WorkSpaces have been
%% completely rebuilt.
rebuild_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebuild_workspaces(Client, Input, []).
rebuild_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebuildWorkspaces">>, Input, Options).

%% @doc Removes one or more rules from the specified IP access control group.
revoke_ip_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_ip_rules(Client, Input, []).
revoke_ip_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeIpRules">>, Input, Options).

%% @doc Starts the specified WorkSpaces.
%%
%% You cannot start a WorkSpace unless it has a running mode of
%% <code>AutoStop</code> and a state of <code>STOPPED</code>.
start_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workspaces(Client, Input, []).
start_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkspaces">>, Input, Options).

%% @doc Stops the specified WorkSpaces.
%%
%% You cannot stop a WorkSpace unless it has a running mode of
%% <code>AutoStop</code> and a state of <code>AVAILABLE</code>,
%% <code>IMPAIRED</code>, <code>UNHEALTHY</code>, or <code>ERROR</code>.
stop_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_workspaces(Client, Input, []).
stop_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopWorkspaces">>, Input, Options).

%% @doc Terminates the specified WorkSpaces.
%%
%% Terminating a WorkSpace is a permanent action and cannot be undone. The
%% user's data is destroyed. If you need to archive any user data, contact
%% Amazon Web Services before terminating the WorkSpace.
%%
%% You can terminate a WorkSpace that is in any state except
%% <code>SUSPENDED</code>.
%%
%% This operation is asynchronous and returns before the WorkSpaces have been
%% completely terminated.
terminate_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workspaces(Client, Input, []).
terminate_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkspaces">>, Input, Options).

%% @doc Replaces the current rules of the specified IP access control group
%% with the specified rules.
update_rules_of_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rules_of_ip_group(Client, Input, []).
update_rules_of_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRulesOfIpGroup">>, Input, Options).

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
    Host = get_host(<<"workspaces">>, Client1),
    URL = get_url(Host, Client1),
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
