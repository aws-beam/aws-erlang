%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkSpaces Service
%%
%% Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
%% Windows or Amazon Linux desktops for your users, known as WorkSpaces.
%%
%% WorkSpaces eliminates the need to procure and deploy hardware or install
%% complex software. You can quickly add or remove users as your needs
%% change. Users can access their virtual desktops from multiple devices or
%% web browsers.
%%
%% This API Reference provides detailed information about the actions, data
%% types, parameters, and errors of the WorkSpaces service. For more
%% information about the supported Amazon Web Services Regions, endpoints,
%% and service quotas of the Amazon WorkSpaces service, see WorkSpaces
%% endpoints and quotas in the Amazon Web Services General Reference.
%%
%% You can also manage your WorkSpaces resources using the WorkSpaces
%% console, Command Line Interface (CLI), and SDKs. For more information
%% about administering WorkSpaces, see the Amazon WorkSpaces Administration
%% Guide. For more information about using the Amazon WorkSpaces client
%% application or web browser to access provisioned WorkSpaces, see the
%% Amazon WorkSpaces User Guide. For more information about using the CLI to
%% manage your WorkSpaces resources, see the WorkSpaces section of the CLI
%% Reference.
-module(aws_workspaces).

-export([associate_connection_alias/2,
         associate_connection_alias/3,
         associate_ip_groups/2,
         associate_ip_groups/3,
         authorize_ip_rules/2,
         authorize_ip_rules/3,
         copy_workspace_image/2,
         copy_workspace_image/3,
         create_connect_client_add_in/2,
         create_connect_client_add_in/3,
         create_connection_alias/2,
         create_connection_alias/3,
         create_ip_group/2,
         create_ip_group/3,
         create_tags/2,
         create_tags/3,
         create_updated_workspace_image/2,
         create_updated_workspace_image/3,
         create_workspace_bundle/2,
         create_workspace_bundle/3,
         create_workspace_image/2,
         create_workspace_image/3,
         create_workspaces/2,
         create_workspaces/3,
         delete_client_branding/2,
         delete_client_branding/3,
         delete_connect_client_add_in/2,
         delete_connect_client_add_in/3,
         delete_connection_alias/2,
         delete_connection_alias/3,
         delete_ip_group/2,
         delete_ip_group/3,
         delete_tags/2,
         delete_tags/3,
         delete_workspace_bundle/2,
         delete_workspace_bundle/3,
         delete_workspace_image/2,
         delete_workspace_image/3,
         deregister_workspace_directory/2,
         deregister_workspace_directory/3,
         describe_account/2,
         describe_account/3,
         describe_account_modifications/2,
         describe_account_modifications/3,
         describe_client_branding/2,
         describe_client_branding/3,
         describe_client_properties/2,
         describe_client_properties/3,
         describe_connect_client_add_ins/2,
         describe_connect_client_add_ins/3,
         describe_connection_alias_permissions/2,
         describe_connection_alias_permissions/3,
         describe_connection_aliases/2,
         describe_connection_aliases/3,
         describe_ip_groups/2,
         describe_ip_groups/3,
         describe_tags/2,
         describe_tags/3,
         describe_workspace_bundles/2,
         describe_workspace_bundles/3,
         describe_workspace_directories/2,
         describe_workspace_directories/3,
         describe_workspace_image_permissions/2,
         describe_workspace_image_permissions/3,
         describe_workspace_images/2,
         describe_workspace_images/3,
         describe_workspace_snapshots/2,
         describe_workspace_snapshots/3,
         describe_workspaces/2,
         describe_workspaces/3,
         describe_workspaces_connection_status/2,
         describe_workspaces_connection_status/3,
         disassociate_connection_alias/2,
         disassociate_connection_alias/3,
         disassociate_ip_groups/2,
         disassociate_ip_groups/3,
         import_client_branding/2,
         import_client_branding/3,
         import_workspace_image/2,
         import_workspace_image/3,
         list_available_management_cidr_ranges/2,
         list_available_management_cidr_ranges/3,
         migrate_workspace/2,
         migrate_workspace/3,
         modify_account/2,
         modify_account/3,
         modify_certificate_based_auth_properties/2,
         modify_certificate_based_auth_properties/3,
         modify_client_properties/2,
         modify_client_properties/3,
         modify_saml_properties/2,
         modify_saml_properties/3,
         modify_selfservice_permissions/2,
         modify_selfservice_permissions/3,
         modify_workspace_access_properties/2,
         modify_workspace_access_properties/3,
         modify_workspace_creation_properties/2,
         modify_workspace_creation_properties/3,
         modify_workspace_properties/2,
         modify_workspace_properties/3,
         modify_workspace_state/2,
         modify_workspace_state/3,
         reboot_workspaces/2,
         reboot_workspaces/3,
         rebuild_workspaces/2,
         rebuild_workspaces/3,
         register_workspace_directory/2,
         register_workspace_directory/3,
         restore_workspace/2,
         restore_workspace/3,
         revoke_ip_rules/2,
         revoke_ip_rules/3,
         start_workspaces/2,
         start_workspaces/3,
         stop_workspaces/2,
         stop_workspaces/3,
         terminate_workspaces/2,
         terminate_workspaces/3,
         update_connect_client_add_in/2,
         update_connect_client_add_in/3,
         update_connection_alias_permission/2,
         update_connection_alias_permission/3,
         update_rules_of_ip_group/2,
         update_rules_of_ip_group/3,
         update_workspace_bundle/2,
         update_workspace_bundle/3,
         update_workspace_image_permission/2,
         update_workspace_image_permission/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified connection alias with the specified
%% directory to enable cross-Region redirection.
%%
%% For more information, see Cross-Region Redirection for Amazon WorkSpaces.
%%
%% Before performing this operation, call DescribeConnectionAliases to make
%% sure that the current state of the connection alias is `CREATED'.
associate_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_connection_alias(Client, Input, []).
associate_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConnectionAlias">>, Input, Options).

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

%% @doc Copies the specified image from the specified Region to the current
%% Region.
%%
%% For more information about copying images, see Copy a Custom WorkSpaces
%% Image.
%%
%% In the China (Ningxia) Region, you can copy images only within the same
%% Region.
%%
%% In Amazon Web Services GovCloud (US), to copy images to and from other
%% Regions, contact Amazon Web Services Support.
%%
%% Before copying a shared image, be sure to verify that it has been shared
%% from the correct Amazon Web Services account. To determine if an image has
%% been shared and to see the ID of the Amazon Web Services account that owns
%% an image, use the DescribeWorkSpaceImages and
%% DescribeWorkspaceImagePermissions API operations.
copy_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_workspace_image(Client, Input, []).
copy_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyWorkspaceImage">>, Input, Options).

%% @doc Creates a client-add-in for Amazon Connect within a directory.
%%
%% You can create only one Amazon Connect client add-in within a directory.
%%
%% This client add-in allows WorkSpaces users to seamlessly connect to Amazon
%% Connect.
create_connect_client_add_in(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connect_client_add_in(Client, Input, []).
create_connect_client_add_in(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnectClientAddIn">>, Input, Options).

%% @doc Creates the specified connection alias for use with cross-Region
%% redirection.
%%
%% For more information, see Cross-Region Redirection for Amazon WorkSpaces.
create_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection_alias(Client, Input, []).
create_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnectionAlias">>, Input, Options).

%% @doc Creates an IP access control group.
%%
%% An IP access control group provides you with the ability to control the IP
%% addresses from which users are allowed to access their WorkSpaces. To
%% specify the CIDR address ranges, add rules to your IP access control group
%% and then associate the group with your directory. You can add rules when
%% you create the group or at any time using `AuthorizeIpRules'.
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

%% @doc Creates a new updated WorkSpace image based on the specified source
%% image.
%%
%% The new updated WorkSpace image has the latest drivers and other updates
%% required by the Amazon WorkSpaces components.
%%
%% To determine which WorkSpace images need to be updated with the latest
%% Amazon WorkSpaces requirements, use DescribeWorkspaceImages.
%%
%% Only Windows 10, Windows Sever 2016, and Windows Server 2019 WorkSpace
%% images can be programmatically updated at this time.
%%
%% Microsoft Windows updates and other application updates are not included
%% in the update process.
%%
%% The source WorkSpace image is not deleted. You can delete the source image
%% after you've verified your new updated image and created a new bundle.
create_updated_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_updated_workspace_image(Client, Input, []).
create_updated_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpdatedWorkspaceImage">>, Input, Options).

%% @doc Creates the specified WorkSpace bundle.
%%
%% For more information about creating WorkSpace bundles, see Create a Custom
%% WorkSpaces Image and Bundle.
create_workspace_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspace_bundle(Client, Input, []).
create_workspace_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaceBundle">>, Input, Options).

%% @doc Creates a new WorkSpace image from an existing WorkSpace.
create_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspace_image(Client, Input, []).
create_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaceImage">>, Input, Options).

%% @doc Creates one or more WorkSpaces.
%%
%% This operation is asynchronous and returns before the WorkSpaces are
%% created.
%%
%% The `MANUAL' running mode value is only supported by Amazon WorkSpaces
%% Core. Contact your account team to be allow-listed to use this value. For
%% more information, see Amazon WorkSpaces Core.
create_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspaces(Client, Input, []).
create_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaces">>, Input, Options).

%% @doc Deletes customized client branding.
%%
%% Client branding allows you to customize your WorkSpace's client login
%% portal. You can tailor your login portal company logo, the support email
%% address, support link, link to reset password, and a custom message for
%% users trying to sign in.
%%
%% After you delete your customized client branding, your login portal
%% reverts to the default client branding.
delete_client_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_client_branding(Client, Input, []).
delete_client_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClientBranding">>, Input, Options).

%% @doc Deletes a client-add-in for Amazon Connect that is configured within
%% a directory.
delete_connect_client_add_in(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connect_client_add_in(Client, Input, []).
delete_connect_client_add_in(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnectClientAddIn">>, Input, Options).

%% @doc Deletes the specified connection alias.
%%
%% For more information, see Cross-Region Redirection for Amazon WorkSpaces.
%%
%% If you will no longer be using a fully qualified domain name (FQDN) as the
%% registration code for your WorkSpaces users, you must take certain
%% precautions to prevent potential security issues. For more information,
%% see Security Considerations if You Stop Using Cross-Region Redirection.
%%
%% To delete a connection alias that has been shared, the shared account must
%% first disassociate the connection alias from any directories it has been
%% associated with. Then you must unshare the connection alias from the
%% account it has been shared with. You can delete a connection alias only
%% after it is no longer shared with any accounts or associated with any
%% directories.
delete_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection_alias(Client, Input, []).
delete_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnectionAlias">>, Input, Options).

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

%% @doc Deletes the specified WorkSpace bundle.
%%
%% For more information about deleting WorkSpace bundles, see Delete a Custom
%% WorkSpaces Bundle or Image.
delete_workspace_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workspace_bundle(Client, Input, []).
delete_workspace_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkspaceBundle">>, Input, Options).

%% @doc Deletes the specified image from your account.
%%
%% To delete an image, you must first delete any bundles that are associated
%% with the image and unshare the image if it is shared with other accounts.
delete_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workspace_image(Client, Input, []).
delete_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkspaceImage">>, Input, Options).

%% @doc Deregisters the specified directory.
%%
%% This operation is asynchronous and returns before the WorkSpace directory
%% is deregistered. If any WorkSpaces are registered to this directory, you
%% must remove them before you can deregister the directory.
%%
%% Simple AD and AD Connector are made available to you free of charge to use
%% with WorkSpaces. If there are no WorkSpaces being used with your Simple AD
%% or AD Connector directory for 30 consecutive days, this directory will be
%% automatically deregistered for use with Amazon WorkSpaces, and you will be
%% charged for this directory as per the Directory Service pricing terms.
%%
%% To delete empty directories, see Delete the Directory for Your WorkSpaces.
%% If you delete your Simple AD or AD Connector directory, you can always
%% create a new one when you want to start using WorkSpaces again.
deregister_workspace_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_workspace_directory(Client, Input, []).
deregister_workspace_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterWorkspaceDirectory">>, Input, Options).

%% @doc Retrieves a list that describes the configuration of Bring Your Own
%% License (BYOL) for the specified account.
describe_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account(Client, Input, []).
describe_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccount">>, Input, Options).

%% @doc Retrieves a list that describes modifications to the configuration of
%% Bring Your Own License (BYOL) for the specified account.
describe_account_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_modifications(Client, Input, []).
describe_account_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountModifications">>, Input, Options).

%% @doc Describes the specified client branding.
%%
%% Client branding allows you to customize the log in page of various device
%% types for your users. You can add your company logo, the support email
%% address, support link, link to reset password, and a custom message for
%% users trying to sign in.
%%
%% Only device types that have branding information configured will be shown
%% in the response.
describe_client_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_branding(Client, Input, []).
describe_client_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientBranding">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified Amazon
%% WorkSpaces clients.
describe_client_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_properties(Client, Input, []).
describe_client_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientProperties">>, Input, Options).

%% @doc Retrieves a list of Amazon Connect client add-ins that have been
%% created.
describe_connect_client_add_ins(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connect_client_add_ins(Client, Input, []).
describe_connect_client_add_ins(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectClientAddIns">>, Input, Options).

%% @doc Describes the permissions that the owner of a connection alias has
%% granted to another Amazon Web Services account for the specified
%% connection alias.
%%
%% For more information, see Cross-Region Redirection for Amazon WorkSpaces.
describe_connection_alias_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_alias_permissions(Client, Input, []).
describe_connection_alias_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionAliasPermissions">>, Input, Options).

%% @doc Retrieves a list that describes the connection aliases used for
%% cross-Region redirection.
%%
%% For more information, see Cross-Region Redirection for Amazon WorkSpaces.
describe_connection_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_aliases(Client, Input, []).
describe_connection_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionAliases">>, Input, Options).

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

%% @doc Describes the available directories that are registered with Amazon
%% WorkSpaces.
describe_workspace_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_directories(Client, Input, []).
describe_workspace_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceDirectories">>, Input, Options).

%% @doc Describes the permissions that the owner of an image has granted to
%% other Amazon Web Services accounts for an image.
describe_workspace_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_image_permissions(Client, Input, []).
describe_workspace_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceImagePermissions">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified images, if the
%% image identifiers are provided.
%%
%% Otherwise, all images in the account are described.
describe_workspace_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_images(Client, Input, []).
describe_workspace_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceImages">>, Input, Options).

%% @doc Describes the snapshots for the specified WorkSpace.
describe_workspace_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_snapshots(Client, Input, []).
describe_workspace_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceSnapshots">>, Input, Options).

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

%% @doc Disassociates a connection alias from a directory.
%%
%% Disassociating a connection alias disables cross-Region redirection
%% between two directories in different Regions. For more information, see
%% Cross-Region Redirection for Amazon WorkSpaces.
%%
%% Before performing this operation, call DescribeConnectionAliases to make
%% sure that the current state of the connection alias is `CREATED'.
disassociate_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connection_alias(Client, Input, []).
disassociate_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnectionAlias">>, Input, Options).

%% @doc Disassociates the specified IP access control group from the
%% specified directory.
disassociate_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ip_groups(Client, Input, []).
disassociate_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIpGroups">>, Input, Options).

%% @doc Imports client branding.
%%
%% Client branding allows you to customize your WorkSpace's client login
%% portal. You can tailor your login portal company logo, the support email
%% address, support link, link to reset password, and a custom message for
%% users trying to sign in.
%%
%% After you import client branding, the default branding experience for the
%% specified platform type is replaced with the imported experience
%%
%% You must specify at least one platform type when importing client
%% branding.
%%
%% You can import up to 6 MB of data with each request. If your request
%% exceeds this limit, you can import client branding for different platform
%% types using separate requests.
%%
%% In each platform type, the `SupportEmail' and `SupportLink' parameters are
%% mutually exclusive. You can specify only one parameter for each platform
%% type, but not both.
%%
%% Imported data can take up to a minute to appear in the WorkSpaces client.
import_client_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_client_branding(Client, Input, []).
import_client_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportClientBranding">>, Input, Options).

%% @doc Imports the specified Windows 10 Bring Your Own License (BYOL) or
%% Windows Server 2016 BYOL image into Amazon WorkSpaces.
%%
%% The image must be an already licensed Amazon EC2 image that is in your
%% Amazon Web Services account, and you must own the image. For more
%% information about creating BYOL images, see Bring Your Own Windows Desktop
%% Licenses.
import_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_workspace_image(Client, Input, []).
import_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportWorkspaceImage">>, Input, Options).

%% @doc Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
%% that you can use for the network management interface when you enable
%% Bring Your Own License (BYOL).
%%
%% This operation can be run only by Amazon Web Services accounts that are
%% enabled for BYOL. If your account isn't enabled for BYOL, you'll receive
%% an `AccessDeniedException' error.
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

%% @doc Migrates a WorkSpace from one operating system or bundle type to
%% another, while retaining the data on the user volume.
%%
%% The migration process recreates the WorkSpace by using a new root volume
%% from the target bundle image and the user volume from the last available
%% snapshot of the original WorkSpace. During migration, the original
%% `D:\Users\%USERNAME%' user profile folder is renamed to
%% `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated'. A new
%% `D:\Users\%USERNAME%\' folder is generated by the new OS. Certain files in
%% the old user profile are moved to the new user profile.
%%
%% For available migration scenarios, details about what happens during
%% migration, and best practices, see Migrate a WorkSpace.
migrate_workspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    migrate_workspace(Client, Input, []).
migrate_workspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MigrateWorkspace">>, Input, Options).

%% @doc Modifies the configuration of Bring Your Own License (BYOL) for the
%% specified account.
modify_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_account(Client, Input, []).
modify_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAccount">>, Input, Options).

%% @doc Modifies the properties of the certificate-based authentication you
%% want to use with your WorkSpaces.
modify_certificate_based_auth_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_certificate_based_auth_properties(Client, Input, []).
modify_certificate_based_auth_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCertificateBasedAuthProperties">>, Input, Options).

%% @doc Modifies the properties of the specified Amazon WorkSpaces clients.
modify_client_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_client_properties(Client, Input, []).
modify_client_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClientProperties">>, Input, Options).

%% @doc Modifies multiple properties related to SAML 2.0 authentication,
%% including the enablement status, user access URL, and relay state
%% parameter name that are used for configuring federation with an SAML 2.0
%% identity provider.
modify_saml_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_saml_properties(Client, Input, []).
modify_saml_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySamlProperties">>, Input, Options).

%% @doc Modifies the self-service WorkSpace management capabilities for your
%% users.
%%
%% For more information, see Enable Self-Service WorkSpace Management
%% Capabilities for Your Users.
modify_selfservice_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_selfservice_permissions(Client, Input, []).
modify_selfservice_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySelfservicePermissions">>, Input, Options).

%% @doc Specifies which devices and operating systems users can use to access
%% their WorkSpaces.
%%
%% For more information, see Control Device Access.
modify_workspace_access_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_access_properties(Client, Input, []).
modify_workspace_access_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceAccessProperties">>, Input, Options).

%% @doc Modify the default properties used to create WorkSpaces.
modify_workspace_creation_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_creation_properties(Client, Input, []).
modify_workspace_creation_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceCreationProperties">>, Input, Options).

%% @doc Modifies the specified WorkSpace properties.
%%
%% For important information about how to modify the size of the root and
%% user volumes, see Modify a WorkSpace.
%%
%% The `MANUAL' running mode value is only supported by Amazon WorkSpaces
%% Core. Contact your account team to be allow-listed to use this value. For
%% more information, see Amazon WorkSpaces Core.
modify_workspace_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_properties(Client, Input, []).
modify_workspace_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceProperties">>, Input, Options).

%% @doc Sets the state of the specified WorkSpace.
%%
%% To maintain a WorkSpace without being interrupted, set the WorkSpace state
%% to `ADMIN_MAINTENANCE'. WorkSpaces in this state do not respond to
%% requests to reboot, stop, start, rebuild, or restore. An AutoStop
%% WorkSpace in this state is not stopped. Users cannot log into a WorkSpace
%% in the `ADMIN_MAINTENANCE' state.
modify_workspace_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_state(Client, Input, []).
modify_workspace_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceState">>, Input, Options).

%% @doc Reboots the specified WorkSpaces.
%%
%% You cannot reboot a WorkSpace unless its state is `AVAILABLE' or
%% `UNHEALTHY'.
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
%% You cannot rebuild a WorkSpace unless its state is `AVAILABLE', `ERROR',
%% `UNHEALTHY', `STOPPED', or `REBOOTING'.
%%
%% Rebuilding a WorkSpace is a potentially destructive action that can result
%% in the loss of data. For more information, see Rebuild a WorkSpace.
%%
%% This operation is asynchronous and returns before the WorkSpaces have been
%% completely rebuilt.
rebuild_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebuild_workspaces(Client, Input, []).
rebuild_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebuildWorkspaces">>, Input, Options).

%% @doc Registers the specified directory.
%%
%% This operation is asynchronous and returns before the WorkSpace directory
%% is registered. If this is the first time you are registering a directory,
%% you will need to create the workspaces_DefaultRole role before you can
%% register a directory. For more information, see Creating the
%% workspaces_DefaultRole Role.
register_workspace_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_workspace_directory(Client, Input, []).
register_workspace_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWorkspaceDirectory">>, Input, Options).

%% @doc Restores the specified WorkSpace to its last known healthy state.
%%
%% You cannot restore a WorkSpace unless its state is ` AVAILABLE', `ERROR',
%% `UNHEALTHY', or `STOPPED'.
%%
%% Restoring a WorkSpace is a potentially destructive action that can result
%% in the loss of data. For more information, see Restore a WorkSpace.
%%
%% This operation is asynchronous and returns before the WorkSpace is
%% completely restored.
restore_workspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_workspace(Client, Input, []).
restore_workspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreWorkspace">>, Input, Options).

%% @doc Removes one or more rules from the specified IP access control group.
revoke_ip_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_ip_rules(Client, Input, []).
revoke_ip_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeIpRules">>, Input, Options).

%% @doc Starts the specified WorkSpaces.
%%
%% You cannot start a WorkSpace unless it has a running mode of `AutoStop'
%% and a state of `STOPPED'.
start_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workspaces(Client, Input, []).
start_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkspaces">>, Input, Options).

%% @doc Stops the specified WorkSpaces.
%%
%% You cannot stop a WorkSpace unless it has a running mode of `AutoStop' and
%% a state of `AVAILABLE', `IMPAIRED', `UNHEALTHY', or `ERROR'.
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
%% Amazon Web Services Support before terminating the WorkSpace.
%%
%% You can terminate a WorkSpace that is in any state except `SUSPENDED'.
%%
%% This operation is asynchronous and returns before the WorkSpaces have been
%% completely terminated. After a WorkSpace is terminated, the `TERMINATED'
%% state is returned only briefly before the WorkSpace directory metadata is
%% cleaned up, so this state is rarely returned. To confirm that a WorkSpace
%% is terminated, check for the WorkSpace ID by using DescribeWorkSpaces. If
%% the WorkSpace ID isn't returned, then the WorkSpace has been successfully
%% terminated.
%%
%% Simple AD and AD Connector are made available to you free of charge to use
%% with WorkSpaces. If there are no WorkSpaces being used with your Simple AD
%% or AD Connector directory for 30 consecutive days, this directory will be
%% automatically deregistered for use with Amazon WorkSpaces, and you will be
%% charged for this directory as per the Directory Service pricing terms.
%%
%% To delete empty directories, see Delete the Directory for Your WorkSpaces.
%% If you delete your Simple AD or AD Connector directory, you can always
%% create a new one when you want to start using WorkSpaces again.
terminate_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workspaces(Client, Input, []).
terminate_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkspaces">>, Input, Options).

%% @doc Updates a Amazon Connect client add-in.
%%
%% Use this action to update the name and endpoint URL of a Amazon Connect
%% client add-in.
update_connect_client_add_in(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connect_client_add_in(Client, Input, []).
update_connect_client_add_in(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnectClientAddIn">>, Input, Options).

%% @doc Shares or unshares a connection alias with one account by specifying
%% whether that account has permission to associate the connection alias with
%% a directory.
%%
%% If the association permission is granted, the connection alias is shared
%% with that account. If the association permission is revoked, the
%% connection alias is unshared with the account. For more information, see
%% Cross-Region Redirection for Amazon WorkSpaces.
%%
%% Before performing this operation, call DescribeConnectionAliases to make
%% sure that the current state of the connection alias is `CREATED'.
%%
%% To delete a connection alias that has been shared, the shared account must
%% first disassociate the connection alias from any directories it has been
%% associated with. Then you must unshare the connection alias from the
%% account it has been shared with. You can delete a connection alias only
%% after it is no longer shared with any accounts or associated with any
%% directories.
update_connection_alias_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection_alias_permission(Client, Input, []).
update_connection_alias_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnectionAliasPermission">>, Input, Options).

%% @doc Replaces the current rules of the specified IP access control group
%% with the specified rules.
update_rules_of_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rules_of_ip_group(Client, Input, []).
update_rules_of_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRulesOfIpGroup">>, Input, Options).

%% @doc Updates a WorkSpace bundle with a new image.
%%
%% For more information about updating WorkSpace bundles, see Update a Custom
%% WorkSpaces Bundle.
%%
%% Existing WorkSpaces aren't automatically updated when you update the
%% bundle that they're based on. To update existing WorkSpaces that are based
%% on a bundle that you've updated, you must either rebuild the WorkSpaces or
%% delete and recreate them.
update_workspace_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workspace_bundle(Client, Input, []).
update_workspace_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkspaceBundle">>, Input, Options).

%% @doc Shares or unshares an image with one account in the same Amazon Web
%% Services Region by specifying whether that account has permission to copy
%% the image.
%%
%% If the copy image permission is granted, the image is shared with that
%% account. If the copy image permission is revoked, the image is unshared
%% with the account.
%%
%% After an image has been shared, the recipient account can copy the image
%% to other Regions as needed.
%%
%% In the China (Ningxia) Region, you can copy images only within the same
%% Region.
%%
%% In Amazon Web Services GovCloud (US), to copy images to and from other
%% Regions, contact Amazon Web Services Support.
%%
%% For more information about sharing images, see Share or Unshare a Custom
%% WorkSpaces Image.
%%
%% To delete an image that has been shared, you must unshare the image before
%% you delete it.
%%
%% Sharing Bring Your Own License (BYOL) images across Amazon Web Services
%% accounts isn't supported at this time in Amazon Web Services GovCloud
%% (US). To share BYOL images across accounts in Amazon Web Services GovCloud
%% (US), contact Amazon Web Services Support.
update_workspace_image_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workspace_image_permission(Client, Input, []).
update_workspace_image_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkspaceImagePermission">>, Input, Options).

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
    Client1 = Client#{service => <<"workspaces">>},
    Host = build_host(<<"workspaces">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"WorkspacesService.", Action/binary>>}
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
