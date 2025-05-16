%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkSpaces Service
%%
%% Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
%% Windows
%% or Amazon Linux desktops for your users, known as WorkSpaces.
%%
%% WorkSpaces eliminates the need to procure and deploy hardware or install
%% complex
%% software. You can quickly add or remove users as your needs change. Users
%% can access their
%% virtual desktops from multiple devices or web browsers.
%%
%% This API Reference provides detailed information about the actions, data
%% types,
%% parameters, and errors of the WorkSpaces service. For more information
%% about the
%% supported Amazon Web Services Regions, endpoints, and service quotas of
%% the Amazon WorkSpaces service, see WorkSpaces endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/wsp.html in the Amazon Web
%% Services
%% General Reference.
%%
%% You can also manage your WorkSpaces resources using the WorkSpaces
%% console, Command Line Interface (CLI), and SDKs. For more information
%% about
%% administering WorkSpaces, see the Amazon WorkSpaces Administration Guide:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/.
%% For more information about using the Amazon WorkSpaces client application
%% or web
%% browser to access provisioned WorkSpaces, see the Amazon WorkSpaces User
%% Guide: https://docs.aws.amazon.com/workspaces/latest/userguide/. For more
%% information about using the CLI to manage your WorkSpaces resources,
%% see the WorkSpaces section of the CLI Reference:
%% https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html.
-module(aws_workspaces).

-export([accept_account_link_invitation/2,
         accept_account_link_invitation/3,
         associate_connection_alias/2,
         associate_connection_alias/3,
         associate_ip_groups/2,
         associate_ip_groups/3,
         associate_workspace_application/2,
         associate_workspace_application/3,
         authorize_ip_rules/2,
         authorize_ip_rules/3,
         copy_workspace_image/2,
         copy_workspace_image/3,
         create_account_link_invitation/2,
         create_account_link_invitation/3,
         create_connect_client_add_in/2,
         create_connect_client_add_in/3,
         create_connection_alias/2,
         create_connection_alias/3,
         create_ip_group/2,
         create_ip_group/3,
         create_standby_workspaces/2,
         create_standby_workspaces/3,
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
         create_workspaces_pool/2,
         create_workspaces_pool/3,
         delete_account_link_invitation/2,
         delete_account_link_invitation/3,
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
         deploy_workspace_applications/2,
         deploy_workspace_applications/3,
         deregister_workspace_directory/2,
         deregister_workspace_directory/3,
         describe_account/2,
         describe_account/3,
         describe_account_modifications/2,
         describe_account_modifications/3,
         describe_application_associations/2,
         describe_application_associations/3,
         describe_applications/2,
         describe_applications/3,
         describe_bundle_associations/2,
         describe_bundle_associations/3,
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
         describe_image_associations/2,
         describe_image_associations/3,
         describe_ip_groups/2,
         describe_ip_groups/3,
         describe_tags/2,
         describe_tags/3,
         describe_workspace_associations/2,
         describe_workspace_associations/3,
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
         describe_workspaces_pool_sessions/2,
         describe_workspaces_pool_sessions/3,
         describe_workspaces_pools/2,
         describe_workspaces_pools/3,
         disassociate_connection_alias/2,
         disassociate_connection_alias/3,
         disassociate_ip_groups/2,
         disassociate_ip_groups/3,
         disassociate_workspace_application/2,
         disassociate_workspace_application/3,
         get_account_link/2,
         get_account_link/3,
         import_client_branding/2,
         import_client_branding/3,
         import_workspace_image/2,
         import_workspace_image/3,
         list_account_links/2,
         list_account_links/3,
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
         modify_endpoint_encryption_mode/2,
         modify_endpoint_encryption_mode/3,
         modify_saml_properties/2,
         modify_saml_properties/3,
         modify_selfservice_permissions/2,
         modify_selfservice_permissions/3,
         modify_streaming_properties/2,
         modify_streaming_properties/3,
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
         reject_account_link_invitation/2,
         reject_account_link_invitation/3,
         restore_workspace/2,
         restore_workspace/3,
         revoke_ip_rules/2,
         revoke_ip_rules/3,
         start_workspaces/2,
         start_workspaces/3,
         start_workspaces_pool/2,
         start_workspaces_pool/3,
         stop_workspaces/2,
         stop_workspaces/3,
         stop_workspaces_pool/2,
         stop_workspaces_pool/3,
         terminate_workspaces/2,
         terminate_workspaces/3,
         terminate_workspaces_pool/2,
         terminate_workspaces_pool/3,
         terminate_workspaces_pool_session/2,
         terminate_workspaces_pool_session/3,
         update_connect_client_add_in/2,
         update_connect_client_add_in/3,
         update_connection_alias_permission/2,
         update_connection_alias_permission/3,
         update_rules_of_ip_group/2,
         update_rules_of_ip_group/3,
         update_workspace_bundle/2,
         update_workspace_bundle/3,
         update_workspace_image_permission/2,
         update_workspace_image_permission/3,
         update_workspaces_pool/2,
         update_workspaces_pool/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_connect_client_add_in_result() :: #{
%%   <<"AddInId">> => string()
%% }
-type create_connect_client_add_in_result() :: #{binary() => any()}.

%% Example:
%% association_state_reason() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type association_state_reason() :: #{binary() => any()}.

%% Example:
%% describe_account_modifications_result() :: #{
%%   <<"AccountModifications">> => list(account_modification()()),
%%   <<"NextToken">> => string()
%% }
-type describe_account_modifications_result() :: #{binary() => any()}.

%% Example:
%% modify_selfservice_permissions_result() :: #{

%% }
-type modify_selfservice_permissions_result() :: #{binary() => any()}.

%% Example:
%% update_workspace_bundle_result() :: #{

%% }
-type update_workspace_bundle_result() :: #{binary() => any()}.

%% Example:
%% start_workspaces_result() :: #{
%%   <<"FailedRequests">> => list(failed_workspace_change_request()())
%% }
-type start_workspaces_result() :: #{binary() => any()}.

%% Example:
%% start_workspaces_request() :: #{
%%   <<"StartWorkspaceRequests">> := list(start_request()())
%% }
-type start_workspaces_request() :: #{binary() => any()}.

%% Example:
%% delete_account_link_invitation_result() :: #{
%%   <<"AccountLink">> => account_link()
%% }
-type delete_account_link_invitation_result() :: #{binary() => any()}.

%% Example:
%% restore_workspace_result() :: #{

%% }
-type restore_workspace_result() :: #{binary() => any()}.

%% Example:
%% describe_image_associations_request() :: #{
%%   <<"AssociatedResourceTypes">> := list(list(any())()),
%%   <<"ImageId">> := string()
%% }
-type describe_image_associations_request() :: #{binary() => any()}.

%% Example:
%% modify_account_request() :: #{
%%   <<"DedicatedTenancyManagementCidrRange">> => string(),
%%   <<"DedicatedTenancySupport">> => list(any())
%% }
-type modify_account_request() :: #{binary() => any()}.

%% Example:
%% modify_workspace_state_request() :: #{
%%   <<"WorkspaceId">> := string(),
%%   <<"WorkspaceState">> := list(any())
%% }
-type modify_workspace_state_request() :: #{binary() => any()}.

%% Example:
%% register_workspace_directory_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"State">> => list(any())
%% }
-type register_workspace_directory_result() :: #{binary() => any()}.

%% Example:
%% delete_tags_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type delete_tags_request() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserName">> => string(),
%%   <<"WorkspaceIds">> => list(string()()),
%%   <<"WorkspaceName">> => string()
%% }
-type describe_workspaces_request() :: #{binary() => any()}.

%% Example:
%% describe_account_request() :: #{

%% }
-type describe_account_request() :: #{binary() => any()}.

%% Example:
%% workspace_bundle() :: #{
%%   <<"BundleId">> => string(),
%%   <<"BundleType">> => list(any()),
%%   <<"ComputeType">> => compute_type(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RootStorage">> => root_storage(),
%%   <<"State">> => list(any()),
%%   <<"UserStorage">> => user_storage()
%% }
-type workspace_bundle() :: #{binary() => any()}.

%% Example:
%% standby_workspaces_properties() :: #{
%%   <<"DataReplication">> => list(any()),
%%   <<"RecoverySnapshotTime">> => non_neg_integer(),
%%   <<"StandbyWorkspaceId">> => string()
%% }
-type standby_workspaces_properties() :: #{binary() => any()}.

%% Example:
%% modification_state() :: #{
%%   <<"Resource">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type modification_state() :: #{binary() => any()}.

%% Example:
%% describe_connection_alias_permissions_request() :: #{
%%   <<"AliasId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_connection_alias_permissions_request() :: #{binary() => any()}.

%% Example:
%% describe_workspace_directories_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type describe_workspace_directories_filter() :: #{binary() => any()}.

%% Example:
%% workspace_image() :: #{
%%   <<"Created">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorDetails">> => list(error_details()()),
%%   <<"ErrorMessage">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatingSystem">> => operating_system(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"RequiredTenancy">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"Updates">> => update_result()
%% }
-type workspace_image() :: #{binary() => any()}.

%% Example:
%% describe_workspace_associations_request() :: #{
%%   <<"AssociatedResourceTypes">> := list(list(any())()),
%%   <<"WorkspaceId">> := string()
%% }
-type describe_workspace_associations_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% modify_workspace_access_properties_result() :: #{

%% }
-type modify_workspace_access_properties_result() :: #{binary() => any()}.

%% Example:
%% disassociate_ip_groups_result() :: #{

%% }
-type disassociate_ip_groups_result() :: #{binary() => any()}.

%% Example:
%% delete_workspace_bundle_request() :: #{
%%   <<"BundleId">> => string()
%% }
-type delete_workspace_bundle_request() :: #{binary() => any()}.

%% Example:
%% update_connect_client_add_in_result() :: #{

%% }
-type update_connect_client_add_in_result() :: #{binary() => any()}.

%% Example:
%% modify_client_properties_request() :: #{
%%   <<"ClientProperties">> := client_properties(),
%%   <<"ResourceId">> := string()
%% }
-type modify_client_properties_request() :: #{binary() => any()}.

%% Example:
%% update_result() :: #{
%%   <<"Description">> => string(),
%%   <<"UpdateAvailable">> => boolean()
%% }
-type update_result() :: #{binary() => any()}.

%% Example:
%% associate_workspace_application_request() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"WorkspaceId">> := string()
%% }
-type associate_workspace_application_request() :: #{binary() => any()}.

%% Example:
%% saml_properties() :: #{
%%   <<"RelayStateParameterName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserAccessUrl">> => string()
%% }
-type saml_properties() :: #{binary() => any()}.

%% Example:
%% rebuild_workspaces_request() :: #{
%%   <<"RebuildWorkspaceRequests">> := list(rebuild_request()())
%% }
-type rebuild_workspaces_request() :: #{binary() => any()}.

%% Example:
%% network_access_configuration() :: #{
%%   <<"EniId">> => string(),
%%   <<"EniPrivateIpAddress">> => string()
%% }
-type network_access_configuration() :: #{binary() => any()}.

%% Example:
%% accept_account_link_invitation_result() :: #{
%%   <<"AccountLink">> => account_link()
%% }
-type accept_account_link_invitation_result() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"message">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% describe_workspace_images_request() :: #{
%%   <<"ImageIds">> => list(string()()),
%%   <<"ImageType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_workspace_images_request() :: #{binary() => any()}.

%% Example:
%% copy_workspace_image_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"SourceImageId">> := string(),
%%   <<"SourceRegion">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type copy_workspace_image_request() :: #{binary() => any()}.

%% Example:
%% revoke_ip_rules_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"UserRules">> := list(string()())
%% }
-type revoke_ip_rules_request() :: #{binary() => any()}.

%% Example:
%% reboot_request() :: #{
%%   <<"WorkspaceId">> => string()
%% }
-type reboot_request() :: #{binary() => any()}.

%% Example:
%% reboot_workspaces_request() :: #{
%%   <<"RebootWorkspaceRequests">> := list(reboot_request()())
%% }
-type reboot_workspaces_request() :: #{binary() => any()}.

%% Example:
%% failed_create_standby_workspaces_request() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"StandbyWorkspaceRequest">> => standby_workspace()
%% }
-type failed_create_standby_workspaces_request() :: #{binary() => any()}.

%% Example:
%% describe_connection_aliases_result() :: #{
%%   <<"ConnectionAliases">> => list(connection_alias()()),
%%   <<"NextToken">> => string()
%% }
-type describe_connection_aliases_result() :: #{binary() => any()}.

%% Example:
%% describe_workspace_image_permissions_result() :: #{
%%   <<"ImageId">> => string(),
%%   <<"ImagePermissions">> => list(image_permission()()),
%%   <<"NextToken">> => string()
%% }
-type describe_workspace_image_permissions_result() :: #{binary() => any()}.

%% Example:
%% delete_client_branding_result() :: #{

%% }
-type delete_client_branding_result() :: #{binary() => any()}.

%% Example:
%% ios_client_branding_attributes() :: #{
%%   <<"ForgotPasswordLink">> => string(),
%%   <<"LoginMessage">> => map(),
%%   <<"Logo2xUrl">> => string(),
%%   <<"Logo3xUrl">> => string(),
%%   <<"LogoUrl">> => string(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportLink">> => string()
%% }
-type ios_client_branding_attributes() :: #{binary() => any()}.

%% Example:
%% image_resource_association() :: #{
%%   <<"AssociatedResourceId">> => string(),
%%   <<"AssociatedResourceType">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"ImageId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => association_state_reason()
%% }
-type image_resource_association() :: #{binary() => any()}.

%% Example:
%% operating_system() :: #{
%%   <<"Type">> => list(any())
%% }
-type operating_system() :: #{binary() => any()}.

%% Example:
%% start_workspaces_pool_request() :: #{
%%   <<"PoolId">> := string()
%% }
-type start_workspaces_pool_request() :: #{binary() => any()}.

%% Example:
%% describe_application_associations_request() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"AssociatedResourceTypes">> := list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_application_associations_request() :: #{binary() => any()}.

%% Example:
%% create_workspace_bundle_request() :: #{
%%   <<"BundleDescription">> := string(),
%%   <<"BundleName">> := string(),
%%   <<"ComputeType">> := compute_type(),
%%   <<"ImageId">> := string(),
%%   <<"RootStorage">> => root_storage(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserStorage">> := user_storage()
%% }
-type create_workspace_bundle_request() :: #{binary() => any()}.

%% Example:
%% related_workspace_properties() :: #{
%%   <<"Region">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"WorkspaceId">> => string()
%% }
-type related_workspace_properties() :: #{binary() => any()}.

%% Example:
%% workspace_resource_association() :: #{
%%   <<"AssociatedResourceId">> => string(),
%%   <<"AssociatedResourceType">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => association_state_reason(),
%%   <<"WorkspaceId">> => string()
%% }
-type workspace_resource_association() :: #{binary() => any()}.

%% Example:
%% disassociate_connection_alias_request() :: #{
%%   <<"AliasId">> := string()
%% }
-type disassociate_connection_alias_request() :: #{binary() => any()}.

%% Example:
%% modify_workspace_creation_properties_result() :: #{

%% }
-type modify_workspace_creation_properties_result() :: #{binary() => any()}.

%% Example:
%% capacity() :: #{
%%   <<"DesiredUserSessions">> => integer()
%% }
-type capacity() :: #{binary() => any()}.

%% Example:
%% describe_client_branding_result() :: #{
%%   <<"DeviceTypeAndroid">> => default_client_branding_attributes(),
%%   <<"DeviceTypeIos">> => ios_client_branding_attributes(),
%%   <<"DeviceTypeLinux">> => default_client_branding_attributes(),
%%   <<"DeviceTypeOsx">> => default_client_branding_attributes(),
%%   <<"DeviceTypeWeb">> => default_client_branding_attributes(),
%%   <<"DeviceTypeWindows">> => default_client_branding_attributes()
%% }
-type describe_client_branding_result() :: #{binary() => any()}.

%% Example:
%% delete_workspace_image_request() :: #{
%%   <<"ImageId">> := string()
%% }
-type delete_workspace_image_request() :: #{binary() => any()}.

%% Example:
%% list_available_management_cidr_ranges_request() :: #{
%%   <<"ManagementCidrRangeConstraint">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_available_management_cidr_ranges_request() :: #{binary() => any()}.

%% Example:
%% create_account_link_invitation_result() :: #{
%%   <<"AccountLink">> => account_link()
%% }
-type create_account_link_invitation_result() :: #{binary() => any()}.

%% Example:
%% client_properties() :: #{
%%   <<"LogUploadEnabled">> => list(any()),
%%   <<"ReconnectEnabled">> => list(any())
%% }
-type client_properties() :: #{binary() => any()}.

%% Example:
%% workspace_properties() :: #{
%%   <<"ComputeTypeName">> => list(any()),
%%   <<"GlobalAccelerator">> => global_accelerator_for_work_space(),
%%   <<"OperatingSystemName">> => list(any()),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"RootVolumeSizeGib">> => integer(),
%%   <<"RunningMode">> => list(any()),
%%   <<"RunningModeAutoStopTimeoutInMinutes">> => integer(),
%%   <<"UserVolumeSizeGib">> => integer()
%% }
-type workspace_properties() :: #{binary() => any()}.

%% Example:
%% create_account_link_invitation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"TargetAccountId">> := string()
%% }
-type create_account_link_invitation_request() :: #{binary() => any()}.

%% Example:
%% associate_ip_groups_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"GroupIds">> := list(string()())
%% }
-type associate_ip_groups_request() :: #{binary() => any()}.

%% Example:
%% describe_account_modifications_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type describe_account_modifications_request() :: #{binary() => any()}.

%% Example:
%% terminate_workspaces_pool_result() :: #{

%% }
-type terminate_workspaces_pool_result() :: #{binary() => any()}.

%% Example:
%% unsupported_network_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_network_configuration_exception() :: #{binary() => any()}.

%% Example:
%% delete_account_link_invitation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"LinkId">> := string()
%% }
-type delete_account_link_invitation_request() :: #{binary() => any()}.

%% Example:
%% rebuild_workspaces_result() :: #{
%%   <<"FailedRequests">> => list(failed_workspace_change_request()())
%% }
-type rebuild_workspaces_result() :: #{binary() => any()}.

%% Example:
%% create_workspace_bundle_result() :: #{
%%   <<"WorkspaceBundle">> => workspace_bundle()
%% }
-type create_workspace_bundle_result() :: #{binary() => any()}.

%% Example:
%% list_account_links_request() :: #{
%%   <<"LinkStatusFilter">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_account_links_request() :: #{binary() => any()}.

%% Example:
%% update_workspaces_pool_result() :: #{
%%   <<"WorkspacesPool">> => workspaces_pool()
%% }
-type update_workspaces_pool_result() :: #{binary() => any()}.

%% Example:
%% failed_workspace_change_request() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"WorkspaceId">> => string()
%% }
-type failed_workspace_change_request() :: #{binary() => any()}.

%% Example:
%% list_available_management_cidr_ranges_result() :: #{
%%   <<"ManagementCidrRanges">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_available_management_cidr_ranges_result() :: #{binary() => any()}.

%% Example:
%% modify_certificate_based_auth_properties_result() :: #{

%% }
-type modify_certificate_based_auth_properties_result() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_pool_sessions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sessions">> => list(workspaces_pool_session()())
%% }
-type describe_workspaces_pool_sessions_result() :: #{binary() => any()}.

%% Example:
%% associate_ip_groups_result() :: #{

%% }
-type associate_ip_groups_result() :: #{binary() => any()}.

%% Example:
%% create_tags_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type create_tags_request() :: #{binary() => any()}.

%% Example:
%% terminate_workspaces_result() :: #{
%%   <<"FailedRequests">> => list(failed_workspace_change_request()())
%% }
-type terminate_workspaces_result() :: #{binary() => any()}.

%% Example:
%% create_workspaces_request() :: #{
%%   <<"Workspaces">> := list(workspace_request()())
%% }
-type create_workspaces_request() :: #{binary() => any()}.

%% Example:
%% connection_alias_permission() :: #{
%%   <<"AllowAssociation">> => boolean(),
%%   <<"SharedAccountId">> => string()
%% }
-type connection_alias_permission() :: #{binary() => any()}.

%% Example:
%% modify_streaming_properties_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"StreamingProperties">> => streaming_properties()
%% }
-type modify_streaming_properties_request() :: #{binary() => any()}.

%% Example:
%% get_account_link_request() :: #{
%%   <<"LinkId">> => string(),
%%   <<"LinkedAccountId">> => string()
%% }
-type get_account_link_request() :: #{binary() => any()}.

%% Example:
%% create_standby_workspaces_request() :: #{
%%   <<"PrimaryRegion">> := string(),
%%   <<"StandbyWorkspaces">> := list(standby_workspace()())
%% }
-type create_standby_workspaces_request() :: #{binary() => any()}.

%% Example:
%% pending_create_standby_workspaces_request() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"UserName">> => string(),
%%   <<"WorkspaceId">> => string()
%% }
-type pending_create_standby_workspaces_request() :: #{binary() => any()}.

%% Example:
%% account_modification() :: #{
%%   <<"DedicatedTenancyManagementCidrRange">> => string(),
%%   <<"DedicatedTenancySupport">> => list(any()),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ModificationState">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type account_modification() :: #{binary() => any()}.

%% Example:
%% certificate_based_auth_properties() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type certificate_based_auth_properties() :: #{binary() => any()}.

%% Example:
%% workspaces_ip_group() :: #{
%%   <<"groupDesc">> => string(),
%%   <<"groupId">> => string(),
%%   <<"groupName">> => string(),
%%   <<"userRules">> => list(ip_rule_item()())
%% }
-type workspaces_ip_group() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% accept_account_link_invitation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"LinkId">> := string()
%% }
-type accept_account_link_invitation_request() :: #{binary() => any()}.

%% Example:
%% disassociate_workspace_application_result() :: #{
%%   <<"Association">> => workspace_resource_association()
%% }
-type disassociate_workspace_application_result() :: #{binary() => any()}.

%% Example:
%% root_storage() :: #{
%%   <<"Capacity">> => string()
%% }
-type root_storage() :: #{binary() => any()}.

%% Example:
%% timeout_settings() :: #{
%%   <<"DisconnectTimeoutInSeconds">> => integer(),
%%   <<"IdleDisconnectTimeoutInSeconds">> => integer(),
%%   <<"MaxUserDurationInSeconds">> => integer()
%% }
-type timeout_settings() :: #{binary() => any()}.

%% Example:
%% delete_ip_group_request() :: #{
%%   <<"GroupId">> := string()
%% }
-type delete_ip_group_request() :: #{binary() => any()}.

%% Example:
%% workspaces_pool_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type workspaces_pool_error() :: #{binary() => any()}.

%% Example:
%% default_workspace_creation_properties() :: #{
%%   <<"CustomSecurityGroupId">> => string(),
%%   <<"DefaultOu">> => string(),
%%   <<"EnableInternetAccess">> => boolean(),
%%   <<"EnableMaintenanceMode">> => boolean(),
%%   <<"InstanceIamRoleArn">> => string(),
%%   <<"UserEnabledAsLocalAdministrator">> => boolean()
%% }
-type default_workspace_creation_properties() :: #{binary() => any()}.

%% Example:
%% bundle_resource_association() :: #{
%%   <<"AssociatedResourceId">> => string(),
%%   <<"AssociatedResourceType">> => list(any()),
%%   <<"BundleId">> => string(),
%%   <<"Created">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => association_state_reason()
%% }
-type bundle_resource_association() :: #{binary() => any()}.

%% Example:
%% connect_client_add_in() :: #{
%%   <<"AddInId">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"URL">> => string()
%% }
-type connect_client_add_in() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_bundle_associations_request() :: #{
%%   <<"AssociatedResourceTypes">> := list(list(any())()),
%%   <<"BundleId">> := string()
%% }
-type describe_bundle_associations_request() :: #{binary() => any()}.

%% Example:
%% operation_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% import_workspace_image_result() :: #{
%%   <<"ImageId">> => string()
%% }
-type import_workspace_image_result() :: #{binary() => any()}.

%% Example:
%% create_workspaces_pool_result() :: #{
%%   <<"WorkspacesPool">> => workspaces_pool()
%% }
-type create_workspaces_pool_result() :: #{binary() => any()}.

%% Example:
%% terminate_workspaces_request() :: #{
%%   <<"TerminateWorkspaceRequests">> := list(terminate_request()())
%% }
-type terminate_workspaces_request() :: #{binary() => any()}.

%% Example:
%% update_rules_of_ip_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"UserRules">> := list(ip_rule_item()())
%% }
-type update_rules_of_ip_group_request() :: #{binary() => any()}.

%% Example:
%% deploy_workspace_applications_request() :: #{
%%   <<"Force">> => boolean(),
%%   <<"WorkspaceId">> := string()
%% }
-type deploy_workspace_applications_request() :: #{binary() => any()}.

%% Example:
%% modify_account_result() :: #{

%% }
-type modify_account_result() :: #{binary() => any()}.

%% Example:
%% describe_workspace_bundles_request() :: #{
%%   <<"BundleIds">> => list(string()()),
%%   <<"NextToken">> => string(),
%%   <<"Owner">> => string()
%% }
-type describe_workspace_bundles_request() :: #{binary() => any()}.

%% Example:
%% stop_request() :: #{
%%   <<"WorkspaceId">> => string()
%% }
-type stop_request() :: #{binary() => any()}.

%% Example:
%% global_accelerator_for_work_space() :: #{
%%   <<"Mode">> => list(any()),
%%   <<"PreferredProtocol">> => list(any())
%% }
-type global_accelerator_for_work_space() :: #{binary() => any()}.

%% Example:
%% describe_connection_aliases_request() :: #{
%%   <<"AliasIds">> => list(string()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type describe_connection_aliases_request() :: #{binary() => any()}.

%% Example:
%% update_workspace_bundle_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"ImageId">> => string()
%% }
-type update_workspace_bundle_request() :: #{binary() => any()}.

%% Example:
%% account_link() :: #{
%%   <<"AccountLinkId">> => string(),
%%   <<"AccountLinkStatus">> => list(any()),
%%   <<"SourceAccountId">> => string(),
%%   <<"TargetAccountId">> => string()
%% }
-type account_link() :: #{binary() => any()}.

%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_workspace_image_permission_result() :: #{

%% }
-type update_workspace_image_permission_result() :: #{binary() => any()}.

%% Example:
%% authorize_ip_rules_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"UserRules">> := list(ip_rule_item()())
%% }
-type authorize_ip_rules_request() :: #{binary() => any()}.

%% Example:
%% describe_connection_alias_permissions_result() :: #{
%%   <<"AliasId">> => string(),
%%   <<"ConnectionAliasPermissions">> => list(connection_alias_permission()()),
%%   <<"NextToken">> => string()
%% }
-type describe_connection_alias_permissions_result() :: #{binary() => any()}.

%% Example:
%% user_setting() :: #{
%%   <<"Action">> => list(any()),
%%   <<"MaximumLength">> => integer(),
%%   <<"Permission">> => list(any())
%% }
-type user_setting() :: #{binary() => any()}.

%% Example:
%% reject_account_link_invitation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"LinkId">> := string()
%% }
-type reject_account_link_invitation_request() :: #{binary() => any()}.

%% Example:
%% deploy_workspace_applications_result() :: #{
%%   <<"Deployment">> => work_space_application_deployment()
%% }
-type deploy_workspace_applications_result() :: #{binary() => any()}.

%% Example:
%% delete_workspace_bundle_result() :: #{

%% }
-type delete_workspace_bundle_result() :: #{binary() => any()}.

%% Example:
%% describe_workspace_associations_result() :: #{
%%   <<"Associations">> => list(workspace_resource_association()())
%% }
-type describe_workspace_associations_result() :: #{binary() => any()}.

%% Example:
%% microsoft_entra_config() :: #{
%%   <<"ApplicationConfigSecretArn">> => string(),
%%   <<"TenantId">> => string()
%% }
-type microsoft_entra_config() :: #{binary() => any()}.

%% Example:
%% modify_workspace_creation_properties_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"WorkspaceCreationProperties">> := workspace_creation_properties()
%% }
-type modify_workspace_creation_properties_request() :: #{binary() => any()}.

%% Example:
%% storage_connector() :: #{
%%   <<"ConnectorType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type storage_connector() :: #{binary() => any()}.

%% Example:
%% image_permission() :: #{
%%   <<"SharedAccountId">> => string()
%% }
-type image_permission() :: #{binary() => any()}.

%% Example:
%% workspace_creation_properties() :: #{
%%   <<"CustomSecurityGroupId">> => string(),
%%   <<"DefaultOu">> => string(),
%%   <<"EnableInternetAccess">> => boolean(),
%%   <<"EnableMaintenanceMode">> => boolean(),
%%   <<"InstanceIamRoleArn">> => string(),
%%   <<"UserEnabledAsLocalAdministrator">> => boolean()
%% }
-type workspace_creation_properties() :: #{binary() => any()}.

%% Example:
%% error_details() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type error_details() :: #{binary() => any()}.

%% Example:
%% describe_applications_request() :: #{
%%   <<"ApplicationIds">> => list(string()()),
%%   <<"ComputeTypeNames">> => list(list(any())()),
%%   <<"LicenseType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OperatingSystemNames">> => list(list(any())()),
%%   <<"Owner">> => string()
%% }
-type describe_applications_request() :: #{binary() => any()}.

%% Example:
%% get_account_link_result() :: #{
%%   <<"AccountLink">> => account_link()
%% }
-type get_account_link_result() :: #{binary() => any()}.

%% Example:
%% start_workspaces_pool_result() :: #{

%% }
-type start_workspaces_pool_result() :: #{binary() => any()}.

%% Example:
%% describe_application_associations_result() :: #{
%%   <<"Associations">> => list(application_resource_association()()),
%%   <<"NextToken">> => string()
%% }
-type describe_application_associations_result() :: #{binary() => any()}.

%% Example:
%% create_updated_workspace_image_request() :: #{
%%   <<"Description">> := string(),
%%   <<"Name">> := string(),
%%   <<"SourceImageId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_updated_workspace_image_request() :: #{binary() => any()}.

%% Example:
%% ios_import_client_branding_attributes() :: #{
%%   <<"ForgotPasswordLink">> => string(),
%%   <<"LoginMessage">> => map(),
%%   <<"Logo">> => binary(),
%%   <<"Logo2x">> => binary(),
%%   <<"Logo3x">> => binary(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportLink">> => string()
%% }
-type ios_import_client_branding_attributes() :: #{binary() => any()}.

%% Example:
%% create_workspace_image_result() :: #{
%%   <<"Created">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatingSystem">> => operating_system(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"RequiredTenancy">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type create_workspace_image_result() :: #{binary() => any()}.

%% Example:
%% workspace_access_properties() :: #{
%%   <<"DeviceTypeAndroid">> => list(any()),
%%   <<"DeviceTypeChromeOs">> => list(any()),
%%   <<"DeviceTypeIos">> => list(any()),
%%   <<"DeviceTypeLinux">> => list(any()),
%%   <<"DeviceTypeOsx">> => list(any()),
%%   <<"DeviceTypeWeb">> => list(any()),
%%   <<"DeviceTypeWindows">> => list(any()),
%%   <<"DeviceTypeWorkSpacesThinClient">> => list(any()),
%%   <<"DeviceTypeZeroClient">> => list(any())
%% }
-type workspace_access_properties() :: #{binary() => any()}.

%% Example:
%% list_account_links_result() :: #{
%%   <<"AccountLinks">> => list(account_link()()),
%%   <<"NextToken">> => string()
%% }
-type list_account_links_result() :: #{binary() => any()}.

%% Example:
%% describe_workspace_directories_request() :: #{
%%   <<"DirectoryIds">> => list(string()()),
%%   <<"Filters">> => list(describe_workspace_directories_filter()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkspaceDirectoryNames">> => list(string()())
%% }
-type describe_workspace_directories_request() :: #{binary() => any()}.

%% Example:
%% modify_saml_properties_result() :: #{

%% }
-type modify_saml_properties_result() :: #{binary() => any()}.

%% Example:
%% describe_image_associations_result() :: #{
%%   <<"Associations">> => list(image_resource_association()())
%% }
-type describe_image_associations_result() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_connection_status_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkspacesConnectionStatus">> => list(workspace_connection_status()())
%% }
-type describe_workspaces_connection_status_result() :: #{binary() => any()}.

%% Example:
%% work_space_application() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Created">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LicenseType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"State">> => list(any()),
%%   <<"SupportedComputeTypeNames">> => list(list(any())()),
%%   <<"SupportedOperatingSystemNames">> => list(list(any())())
%% }
-type work_space_application() :: #{binary() => any()}.

%% Example:
%% delete_connect_client_add_in_result() :: #{

%% }
-type delete_connect_client_add_in_result() :: #{binary() => any()}.

%% Example:
%% default_import_client_branding_attributes() :: #{
%%   <<"ForgotPasswordLink">> => string(),
%%   <<"LoginMessage">> => map(),
%%   <<"Logo">> => binary(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportLink">> => string()
%% }
-type default_import_client_branding_attributes() :: #{binary() => any()}.

%% Example:
%% modify_endpoint_encryption_mode_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"EndpointEncryptionMode">> := list(any())
%% }
-type modify_endpoint_encryption_mode_request() :: #{binary() => any()}.

%% Example:
%% create_connection_alias_result() :: #{
%%   <<"AliasId">> => string()
%% }
-type create_connection_alias_result() :: #{binary() => any()}.

%% Example:
%% modify_saml_properties_request() :: #{
%%   <<"PropertiesToDelete">> => list(list(any())()),
%%   <<"ResourceId">> := string(),
%%   <<"SamlProperties">> => saml_properties()
%% }
-type modify_saml_properties_request() :: #{binary() => any()}.

%% Example:
%% ip_rule_item() :: #{
%%   <<"ipRule">> => string(),
%%   <<"ruleDesc">> => string()
%% }
-type ip_rule_item() :: #{binary() => any()}.

%% Example:
%% describe_workspace_images_result() :: #{
%%   <<"Images">> => list(workspace_image()()),
%%   <<"NextToken">> => string()
%% }
-type describe_workspace_images_result() :: #{binary() => any()}.

%% Example:
%% restore_workspace_request() :: #{
%%   <<"WorkspaceId">> := string()
%% }
-type restore_workspace_request() :: #{binary() => any()}.

%% Example:
%% invalid_resource_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_resource_state_exception() :: #{binary() => any()}.

%% Example:
%% resource_creation_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_creation_failed_exception() :: #{binary() => any()}.

%% Example:
%% create_updated_workspace_image_result() :: #{
%%   <<"ImageId">> => string()
%% }
-type create_updated_workspace_image_result() :: #{binary() => any()}.

%% Example:
%% create_connect_client_add_in_request() :: #{
%%   <<"Name">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"URL">> := string()
%% }
-type create_connect_client_add_in_request() :: #{binary() => any()}.

%% Example:
%% modify_workspace_properties_result() :: #{

%% }
-type modify_workspace_properties_result() :: #{binary() => any()}.

%% Example:
%% application_resource_association() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"AssociatedResourceId">> => string(),
%%   <<"AssociatedResourceType">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => association_state_reason()
%% }
-type application_resource_association() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_pool_sessions_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PoolId">> := string(),
%%   <<"UserId">> => string()
%% }
-type describe_workspaces_pool_sessions_request() :: #{binary() => any()}.

%% Example:
%% delete_client_branding_request() :: #{
%%   <<"Platforms">> := list(list(any())()),
%%   <<"ResourceId">> := string()
%% }
-type delete_client_branding_request() :: #{binary() => any()}.

%% Example:
%% modify_streaming_properties_result() :: #{

%% }
-type modify_streaming_properties_result() :: #{binary() => any()}.

%% Example:
%% data_replication_settings() :: #{
%%   <<"DataReplication">> => list(any()),
%%   <<"RecoverySnapshotTime">> => non_neg_integer()
%% }
-type data_replication_settings() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Workspaces">> => list(workspace()())
%% }
-type describe_workspaces_result() :: #{binary() => any()}.

%% Example:
%% create_workspaces_result() :: #{
%%   <<"FailedRequests">> => list(failed_create_workspace_request()()),
%%   <<"PendingRequests">> => list(workspace()())
%% }
-type create_workspaces_result() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_values_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_values_exception() :: #{binary() => any()}.

%% Example:
%% default_client_branding_attributes() :: #{
%%   <<"ForgotPasswordLink">> => string(),
%%   <<"LoginMessage">> => map(),
%%   <<"LogoUrl">> => string(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportLink">> => string()
%% }
-type default_client_branding_attributes() :: #{binary() => any()}.

%% Example:
%% active_directory_config() :: #{
%%   <<"DomainName">> => string(),
%%   <<"ServiceAccountSecretArn">> => string()
%% }
-type active_directory_config() :: #{binary() => any()}.

%% Example:
%% disassociate_workspace_application_request() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"WorkspaceId">> := string()
%% }
-type disassociate_workspace_application_request() :: #{binary() => any()}.

%% Example:
%% modify_workspace_properties_request() :: #{
%%   <<"DataReplication">> => list(any()),
%%   <<"WorkspaceId">> := string(),
%%   <<"WorkspaceProperties">> => workspace_properties()
%% }
-type modify_workspace_properties_request() :: #{binary() => any()}.

%% Example:
%% create_tags_result() :: #{

%% }
-type create_tags_result() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% workspace() :: #{
%%   <<"BundleId">> => string(),
%%   <<"ComputerName">> => string(),
%%   <<"DataReplicationSettings">> => data_replication_settings(),
%%   <<"DirectoryId">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"ModificationStates">> => list(modification_state()()),
%%   <<"RelatedWorkspaces">> => list(related_workspace_properties()()),
%%   <<"RootVolumeEncryptionEnabled">> => boolean(),
%%   <<"StandbyWorkspacesProperties">> => list(standby_workspaces_properties()()),
%%   <<"State">> => list(any()),
%%   <<"SubnetId">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserVolumeEncryptionEnabled">> => boolean(),
%%   <<"VolumeEncryptionKey">> => string(),
%%   <<"WorkspaceId">> => string(),
%%   <<"WorkspaceName">> => string(),
%%   <<"WorkspaceProperties">> => workspace_properties()
%% }
-type workspace() :: #{binary() => any()}.

%% Example:
%% selfservice_permissions() :: #{
%%   <<"ChangeComputeType">> => list(any()),
%%   <<"IncreaseVolumeSize">> => list(any()),
%%   <<"RebuildWorkspace">> => list(any()),
%%   <<"RestartWorkspace">> => list(any()),
%%   <<"SwitchRunningMode">> => list(any())
%% }
-type selfservice_permissions() :: #{binary() => any()}.

%% Example:
%% workspaces_default_role_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type workspaces_default_role_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_client_properties_result() :: #{
%%   <<"ClientPropertiesList">> => list(client_properties_result()())
%% }
-type describe_client_properties_result() :: #{binary() => any()}.

%% Example:
%% terminate_workspaces_pool_request() :: #{
%%   <<"PoolId">> := string()
%% }
-type terminate_workspaces_pool_request() :: #{binary() => any()}.

%% Example:
%% update_connection_alias_permission_request() :: #{
%%   <<"AliasId">> := string(),
%%   <<"ConnectionAliasPermission">> := connection_alias_permission()
%% }
-type update_connection_alias_permission_request() :: #{binary() => any()}.

%% Example:
%% describe_workspace_snapshots_result() :: #{
%%   <<"RebuildSnapshots">> => list(snapshot()()),
%%   <<"RestoreSnapshots">> => list(snapshot()())
%% }
-type describe_workspace_snapshots_result() :: #{binary() => any()}.

%% Example:
%% describe_ip_groups_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Result">> => list(workspaces_ip_group()())
%% }
-type describe_ip_groups_result() :: #{binary() => any()}.

%% Example:
%% import_workspace_image_request() :: #{
%%   <<"Applications">> => list(list(any())()),
%%   <<"Ec2ImageId">> := string(),
%%   <<"ImageDescription">> := string(),
%%   <<"ImageName">> := string(),
%%   <<"IngestionProcess">> := list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type import_workspace_image_request() :: #{binary() => any()}.

%% Example:
%% create_connection_alias_request() :: #{
%%   <<"ConnectionString">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_connection_alias_request() :: #{binary() => any()}.

%% Example:
%% revoke_ip_rules_result() :: #{

%% }
-type revoke_ip_rules_result() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"SnapshotTime">> => non_neg_integer()
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_pools_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type describe_workspaces_pools_filter() :: #{binary() => any()}.

%% Example:
%% import_client_branding_result() :: #{
%%   <<"DeviceTypeAndroid">> => default_client_branding_attributes(),
%%   <<"DeviceTypeIos">> => ios_client_branding_attributes(),
%%   <<"DeviceTypeLinux">> => default_client_branding_attributes(),
%%   <<"DeviceTypeOsx">> => default_client_branding_attributes(),
%%   <<"DeviceTypeWeb">> => default_client_branding_attributes(),
%%   <<"DeviceTypeWindows">> => default_client_branding_attributes()
%% }
-type import_client_branding_result() :: #{binary() => any()}.

%% Example:
%% create_ip_group_request() :: #{
%%   <<"GroupDesc">> => string(),
%%   <<"GroupName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserRules">> => list(ip_rule_item()())
%% }
-type create_ip_group_request() :: #{binary() => any()}.

%% Example:
%% workspace_connection_status() :: #{
%%   <<"ConnectionState">> => list(any()),
%%   <<"ConnectionStateCheckTimestamp">> => non_neg_integer(),
%%   <<"LastKnownUserConnectionTimestamp">> => non_neg_integer(),
%%   <<"WorkspaceId">> => string()
%% }
-type workspace_connection_status() :: #{binary() => any()}.

%% Example:
%% delete_tags_result() :: #{

%% }
-type delete_tags_result() :: #{binary() => any()}.

%% Example:
%% register_workspace_directory_request() :: #{
%%   <<"ActiveDirectoryConfig">> => active_directory_config(),
%%   <<"DirectoryId">> => string(),
%%   <<"EnableSelfService">> => boolean(),
%%   <<"IdcInstanceArn">> => string(),
%%   <<"MicrosoftEntraConfig">> => microsoft_entra_config(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"Tenancy">> => list(any()),
%%   <<"UserIdentityType">> => list(any()),
%%   <<"WorkspaceDirectoryDescription">> => string(),
%%   <<"WorkspaceDirectoryName">> => string(),
%%   <<"WorkspaceType">> => list(any())
%% }
-type register_workspace_directory_request() :: #{binary() => any()}.

%% Example:
%% compute_type() :: #{
%%   <<"Name">> => list(any())
%% }
-type compute_type() :: #{binary() => any()}.

%% Example:
%% update_workspace_image_permission_request() :: #{
%%   <<"AllowCopyImage">> := boolean(),
%%   <<"ImageId">> := string(),
%%   <<"SharedAccountId">> := string()
%% }
-type update_workspace_image_permission_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_connection_alias_result() :: #{

%% }
-type delete_connection_alias_result() :: #{binary() => any()}.

%% Example:
%% create_workspace_image_request() :: #{
%%   <<"Description">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"WorkspaceId">> := string()
%% }
-type create_workspace_image_request() :: #{binary() => any()}.

%% Example:
%% modify_endpoint_encryption_mode_response() :: #{

%% }
-type modify_endpoint_encryption_mode_response() :: #{binary() => any()}.

%% Example:
%% application_settings_request() :: #{
%%   <<"SettingsGroup">> => string(),
%%   <<"Status">> => list(any())
%% }
-type application_settings_request() :: #{binary() => any()}.

%% Example:
%% copy_workspace_image_result() :: #{
%%   <<"ImageId">> => string()
%% }
-type copy_workspace_image_result() :: #{binary() => any()}.

%% Example:
%% modify_workspace_access_properties_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"WorkspaceAccessProperties">> := workspace_access_properties()
%% }
-type modify_workspace_access_properties_request() :: #{binary() => any()}.

%% Example:
%% user_storage() :: #{
%%   <<"Capacity">> => string()
%% }
-type user_storage() :: #{binary() => any()}.

%% Example:
%% migrate_workspace_request() :: #{
%%   <<"BundleId">> := string(),
%%   <<"SourceWorkspaceId">> := string()
%% }
-type migrate_workspace_request() :: #{binary() => any()}.

%% Example:
%% capacity_status() :: #{
%%   <<"ActiveUserSessions">> => integer(),
%%   <<"ActualUserSessions">> => integer(),
%%   <<"AvailableUserSessions">> => integer(),
%%   <<"DesiredUserSessions">> => integer()
%% }
-type capacity_status() :: #{binary() => any()}.

%% Example:
%% associate_workspace_application_result() :: #{
%%   <<"Association">> => workspace_resource_association()
%% }
-type associate_workspace_application_result() :: #{binary() => any()}.

%% Example:
%% deregister_workspace_directory_result() :: #{

%% }
-type deregister_workspace_directory_result() :: #{binary() => any()}.

%% Example:
%% resource_associated_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_associated_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% update_workspaces_pool_request() :: #{
%%   <<"ApplicationSettings">> => application_settings_request(),
%%   <<"BundleId">> => string(),
%%   <<"Capacity">> => capacity(),
%%   <<"Description">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"PoolId">> := string(),
%%   <<"RunningMode">> => list(any()),
%%   <<"TimeoutSettings">> => timeout_settings()
%% }
-type update_workspaces_pool_request() :: #{binary() => any()}.

%% Example:
%% terminate_workspaces_pool_session_result() :: #{

%% }
-type terminate_workspaces_pool_session_result() :: #{binary() => any()}.

%% Example:
%% workspace_directory() :: #{
%%   <<"ActiveDirectoryConfig">> => active_directory_config(),
%%   <<"Alias">> => string(),
%%   <<"CertificateBasedAuthProperties">> => certificate_based_auth_properties(),
%%   <<"CustomerUserName">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"DirectoryName">> => string(),
%%   <<"DirectoryType">> => list(any()),
%%   <<"DnsIpAddresses">> => list(string()()),
%%   <<"EndpointEncryptionMode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"IDCConfig">> => id_c_config(),
%%   <<"IamRoleId">> => string(),
%%   <<"MicrosoftEntraConfig">> => microsoft_entra_config(),
%%   <<"RegistrationCode">> => string(),
%%   <<"SamlProperties">> => saml_properties(),
%%   <<"SelfservicePermissions">> => selfservice_permissions(),
%%   <<"State">> => list(any()),
%%   <<"StreamingProperties">> => streaming_properties(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tenancy">> => list(any()),
%%   <<"UserIdentityType">> => list(any()),
%%   <<"WorkspaceAccessProperties">> => workspace_access_properties(),
%%   <<"WorkspaceCreationProperties">> => default_workspace_creation_properties(),
%%   <<"WorkspaceDirectoryDescription">> => string(),
%%   <<"WorkspaceDirectoryName">> => string(),
%%   <<"WorkspaceSecurityGroupId">> => string(),
%%   <<"WorkspaceType">> => list(any()),
%%   <<"ipGroupIds">> => list(string()())
%% }
-type workspace_directory() :: #{binary() => any()}.

%% Example:
%% id_c_config() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"InstanceArn">> => string()
%% }
-type id_c_config() :: #{binary() => any()}.

%% Example:
%% stop_workspaces_result() :: #{
%%   <<"FailedRequests">> => list(failed_workspace_change_request()())
%% }
-type stop_workspaces_result() :: #{binary() => any()}.

%% Example:
%% modify_client_properties_result() :: #{

%% }
-type modify_client_properties_result() :: #{binary() => any()}.

%% Example:
%% standby_workspace() :: #{
%%   <<"DataReplication">> => list(any()),
%%   <<"DirectoryId">> => string(),
%%   <<"PrimaryWorkspaceId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeEncryptionKey">> => string()
%% }
-type standby_workspace() :: #{binary() => any()}.

%% Example:
%% create_standby_workspaces_result() :: #{
%%   <<"FailedStandbyRequests">> => list(failed_create_standby_workspaces_request()()),
%%   <<"PendingStandbyRequests">> => list(pending_create_standby_workspaces_request()())
%% }
-type create_standby_workspaces_result() :: #{binary() => any()}.

%% Example:
%% describe_account_result() :: #{
%%   <<"DedicatedTenancyAccountType">> => list(any()),
%%   <<"DedicatedTenancyManagementCidrRange">> => string(),
%%   <<"DedicatedTenancySupport">> => list(any())
%% }
-type describe_account_result() :: #{binary() => any()}.

%% Example:
%% associate_connection_alias_result() :: #{
%%   <<"ConnectionIdentifier">> => string()
%% }
-type associate_connection_alias_result() :: #{binary() => any()}.

%% Example:
%% delete_workspace_image_result() :: #{

%% }
-type delete_workspace_image_result() :: #{binary() => any()}.

%% Example:
%% delete_ip_group_result() :: #{

%% }
-type delete_ip_group_result() :: #{binary() => any()}.

%% Example:
%% delete_connect_client_add_in_request() :: #{
%%   <<"AddInId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type delete_connect_client_add_in_request() :: #{binary() => any()}.

%% Example:
%% modify_certificate_based_auth_properties_request() :: #{
%%   <<"CertificateBasedAuthProperties">> => certificate_based_auth_properties(),
%%   <<"PropertiesToDelete">> => list(list(any())()),
%%   <<"ResourceId">> := string()
%% }
-type modify_certificate_based_auth_properties_request() :: #{binary() => any()}.

%% Example:
%% describe_bundle_associations_result() :: #{
%%   <<"Associations">> => list(bundle_resource_association()())
%% }
-type describe_bundle_associations_result() :: #{binary() => any()}.

%% Example:
%% update_connect_client_add_in_request() :: #{
%%   <<"AddInId">> := string(),
%%   <<"Name">> => string(),
%%   <<"ResourceId">> := string(),
%%   <<"URL">> => string()
%% }
-type update_connect_client_add_in_request() :: #{binary() => any()}.

%% Example:
%% workspaces_pool() :: #{
%%   <<"ApplicationSettings">> => application_settings_response(),
%%   <<"BundleId">> => string(),
%%   <<"CapacityStatus">> => capacity_status(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"Errors">> => list(workspaces_pool_error()()),
%%   <<"PoolArn">> => string(),
%%   <<"PoolId">> => string(),
%%   <<"PoolName">> => string(),
%%   <<"RunningMode">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"TimeoutSettings">> => timeout_settings()
%% }
-type workspaces_pool() :: #{binary() => any()}.

%% Example:
%% streaming_properties() :: #{
%%   <<"GlobalAccelerator">> => global_accelerator_for_directory(),
%%   <<"StorageConnectors">> => list(storage_connector()()),
%%   <<"StreamingExperiencePreferredProtocol">> => list(any()),
%%   <<"UserSettings">> => list(user_setting()())
%% }
-type streaming_properties() :: #{binary() => any()}.

%% Example:
%% incompatible_applications_exception() :: #{

%% }
-type incompatible_applications_exception() :: #{binary() => any()}.

%% Example:
%% terminate_request() :: #{
%%   <<"WorkspaceId">> => string()
%% }
-type terminate_request() :: #{binary() => any()}.

%% Example:
%% create_workspaces_pool_request() :: #{
%%   <<"ApplicationSettings">> => application_settings_request(),
%%   <<"BundleId">> := string(),
%%   <<"Capacity">> := capacity(),
%%   <<"Description">> := string(),
%%   <<"DirectoryId">> := string(),
%%   <<"PoolName">> := string(),
%%   <<"RunningMode">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TimeoutSettings">> => timeout_settings()
%% }
-type create_workspaces_pool_request() :: #{binary() => any()}.

%% Example:
%% compute_not_compatible_exception() :: #{

%% }
-type compute_not_compatible_exception() :: #{binary() => any()}.

%% Example:
%% rebuild_request() :: #{
%%   <<"WorkspaceId">> => string()
%% }
-type rebuild_request() :: #{binary() => any()}.

%% Example:
%% describe_client_properties_request() :: #{
%%   <<"ResourceIds">> := list(string()())
%% }
-type describe_client_properties_request() :: #{binary() => any()}.

%% Example:
%% deregister_workspace_directory_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type deregister_workspace_directory_request() :: #{binary() => any()}.

%% Example:
%% operating_system_not_compatible_exception() :: #{

%% }
-type operating_system_not_compatible_exception() :: #{binary() => any()}.

%% Example:
%% update_rules_of_ip_group_result() :: #{

%% }
-type update_rules_of_ip_group_result() :: #{binary() => any()}.

%% Example:
%% describe_tags_result() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type describe_tags_result() :: #{binary() => any()}.

%% Example:
%% modify_selfservice_permissions_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"SelfservicePermissions">> := selfservice_permissions()
%% }
-type modify_selfservice_permissions_request() :: #{binary() => any()}.

%% Example:
%% modify_workspace_state_result() :: #{

%% }
-type modify_workspace_state_result() :: #{binary() => any()}.

%% Example:
%% describe_workspace_bundles_result() :: #{
%%   <<"Bundles">> => list(workspace_bundle()()),
%%   <<"NextToken">> => string()
%% }
-type describe_workspace_bundles_result() :: #{binary() => any()}.

%% Example:
%% start_request() :: #{
%%   <<"WorkspaceId">> => string()
%% }
-type start_request() :: #{binary() => any()}.

%% Example:
%% describe_ip_groups_request() :: #{
%%   <<"GroupIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_ip_groups_request() :: #{binary() => any()}.

%% Example:
%% update_connection_alias_permission_result() :: #{

%% }
-type update_connection_alias_permission_result() :: #{binary() => any()}.

%% Example:
%% work_space_application_deployment() :: #{
%%   <<"Associations">> => list(workspace_resource_association()())
%% }
-type work_space_application_deployment() :: #{binary() => any()}.

%% Example:
%% unsupported_workspace_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_workspace_configuration_exception() :: #{binary() => any()}.

%% Example:
%% application_not_supported_exception() :: #{

%% }
-type application_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% stop_workspaces_pool_result() :: #{

%% }
-type stop_workspaces_pool_result() :: #{binary() => any()}.

%% Example:
%% describe_tags_request() :: #{
%%   <<"ResourceId">> := string()
%% }
-type describe_tags_request() :: #{binary() => any()}.

%% Example:
%% workspaces_pool_session() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"ConnectionState">> => list(any()),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"InstanceId">> => string(),
%%   <<"NetworkAccessConfiguration">> => network_access_configuration(),
%%   <<"PoolId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"UserId">> => string()
%% }
-type workspaces_pool_session() :: #{binary() => any()}.

%% Example:
%% reboot_workspaces_result() :: #{
%%   <<"FailedRequests">> => list(failed_workspace_change_request()())
%% }
-type reboot_workspaces_result() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% operation_not_supported_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type operation_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_ip_groups_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"GroupIds">> := list(string()())
%% }
-type disassociate_ip_groups_request() :: #{binary() => any()}.

%% Example:
%% connection_alias_association() :: #{
%%   <<"AssociatedAccountId">> => string(),
%%   <<"AssociationStatus">> => list(any()),
%%   <<"ConnectionIdentifier">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type connection_alias_association() :: #{binary() => any()}.

%% Example:
%% describe_workspace_image_permissions_request() :: #{
%%   <<"ImageId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_workspace_image_permissions_request() :: #{binary() => any()}.

%% Example:
%% global_accelerator_for_directory() :: #{
%%   <<"Mode">> => list(any()),
%%   <<"PreferredProtocol">> => list(any())
%% }
-type global_accelerator_for_directory() :: #{binary() => any()}.

%% Example:
%% failed_create_workspace_request() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"WorkspaceRequest">> => workspace_request()
%% }
-type failed_create_workspace_request() :: #{binary() => any()}.

%% Example:
%% authorize_ip_rules_result() :: #{

%% }
-type authorize_ip_rules_result() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_pools_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkspacesPools">> => list(workspaces_pool()())
%% }
-type describe_workspaces_pools_result() :: #{binary() => any()}.

%% Example:
%% connection_alias() :: #{
%%   <<"AliasId">> => string(),
%%   <<"Associations">> => list(connection_alias_association()()),
%%   <<"ConnectionString">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"State">> => list(any())
%% }
-type connection_alias() :: #{binary() => any()}.

%% Example:
%% stop_workspaces_pool_request() :: #{
%%   <<"PoolId">> := string()
%% }
-type stop_workspaces_pool_request() :: #{binary() => any()}.

%% Example:
%% workspace_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"RootVolumeEncryptionEnabled">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserName">> => string(),
%%   <<"UserVolumeEncryptionEnabled">> => boolean(),
%%   <<"VolumeEncryptionKey">> => string(),
%%   <<"WorkspaceName">> => string(),
%%   <<"WorkspaceProperties">> => workspace_properties()
%% }
-type workspace_request() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_connection_status_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkspaceIds">> => list(string()())
%% }
-type describe_workspaces_connection_status_request() :: #{binary() => any()}.

%% Example:
%% delete_connection_alias_request() :: #{
%%   <<"AliasId">> := string()
%% }
-type delete_connection_alias_request() :: #{binary() => any()}.

%% Example:
%% terminate_workspaces_pool_session_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type terminate_workspaces_pool_session_request() :: #{binary() => any()}.

%% Example:
%% describe_connect_client_add_ins_result() :: #{
%%   <<"AddIns">> => list(connect_client_add_in()()),
%%   <<"NextToken">> => string()
%% }
-type describe_connect_client_add_ins_result() :: #{binary() => any()}.

%% Example:
%% application_settings_response() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"SettingsGroup">> => string(),
%%   <<"Status">> => list(any())
%% }
-type application_settings_response() :: #{binary() => any()}.

%% Example:
%% describe_workspace_directories_result() :: #{
%%   <<"Directories">> => list(workspace_directory()()),
%%   <<"NextToken">> => string()
%% }
-type describe_workspace_directories_result() :: #{binary() => any()}.

%% Example:
%% describe_client_branding_request() :: #{
%%   <<"ResourceId">> := string()
%% }
-type describe_client_branding_request() :: #{binary() => any()}.

%% Example:
%% client_properties_result() :: #{
%%   <<"ClientProperties">> => client_properties(),
%%   <<"ResourceId">> => string()
%% }
-type client_properties_result() :: #{binary() => any()}.

%% Example:
%% reject_account_link_invitation_result() :: #{
%%   <<"AccountLink">> => account_link()
%% }
-type reject_account_link_invitation_result() :: #{binary() => any()}.

%% Example:
%% describe_applications_result() :: #{
%%   <<"Applications">> => list(work_space_application()()),
%%   <<"NextToken">> => string()
%% }
-type describe_applications_result() :: #{binary() => any()}.

%% Example:
%% describe_workspace_snapshots_request() :: #{
%%   <<"WorkspaceId">> := string()
%% }
-type describe_workspace_snapshots_request() :: #{binary() => any()}.

%% Example:
%% disassociate_connection_alias_result() :: #{

%% }
-type disassociate_connection_alias_result() :: #{binary() => any()}.

%% Example:
%% stop_workspaces_request() :: #{
%%   <<"StopWorkspaceRequests">> := list(stop_request()())
%% }
-type stop_workspaces_request() :: #{binary() => any()}.

%% Example:
%% describe_connect_client_add_ins_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> := string()
%% }
-type describe_connect_client_add_ins_request() :: #{binary() => any()}.

%% Example:
%% describe_workspaces_pools_request() :: #{
%%   <<"Filters">> => list(describe_workspaces_pools_filter()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PoolIds">> => list(string()())
%% }
-type describe_workspaces_pools_request() :: #{binary() => any()}.

%% Example:
%% import_client_branding_request() :: #{
%%   <<"DeviceTypeAndroid">> => default_import_client_branding_attributes(),
%%   <<"DeviceTypeIos">> => ios_import_client_branding_attributes(),
%%   <<"DeviceTypeLinux">> => default_import_client_branding_attributes(),
%%   <<"DeviceTypeOsx">> => default_import_client_branding_attributes(),
%%   <<"DeviceTypeWeb">> => default_import_client_branding_attributes(),
%%   <<"DeviceTypeWindows">> => default_import_client_branding_attributes(),
%%   <<"ResourceId">> := string()
%% }
-type import_client_branding_request() :: #{binary() => any()}.

%% Example:
%% associate_connection_alias_request() :: #{
%%   <<"AliasId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type associate_connection_alias_request() :: #{binary() => any()}.

%% Example:
%% create_ip_group_result() :: #{
%%   <<"GroupId">> => string()
%% }
-type create_ip_group_result() :: #{binary() => any()}.

%% Example:
%% migrate_workspace_result() :: #{
%%   <<"SourceWorkspaceId">> => string(),
%%   <<"TargetWorkspaceId">> => string()
%% }
-type migrate_workspace_result() :: #{binary() => any()}.

-type accept_account_link_invitation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_connection_alias_errors() ::
    operation_not_supported_exception() | 
    resource_associated_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type associate_ip_groups_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type associate_workspace_application_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    application_not_supported_exception() | 
    operating_system_not_compatible_exception() | 
    compute_not_compatible_exception() | 
    incompatible_applications_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type authorize_ip_rules_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type copy_workspace_image_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type create_account_link_invitation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_connect_client_add_in_errors() ::
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_creation_failed_exception() | 
    resource_not_found_exception().

-type create_connection_alias_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception().

-type create_ip_group_errors() ::
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_creation_failed_exception() | 
    resource_limit_exceeded_exception().

-type create_standby_workspaces_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type create_tags_errors() ::
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type create_updated_workspace_image_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type create_workspace_bundle_errors() ::
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type create_workspace_image_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type create_workspaces_errors() ::
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception().

-type create_workspaces_pool_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type delete_account_link_invitation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_client_branding_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type delete_connect_client_add_in_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type delete_connection_alias_errors() ::
    operation_not_supported_exception() | 
    resource_associated_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type delete_ip_group_errors() ::
    resource_associated_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type delete_tags_errors() ::
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type delete_workspace_bundle_errors() ::
    resource_associated_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type delete_workspace_image_errors() ::
    resource_associated_exception() | 
    access_denied_exception() | 
    invalid_resource_state_exception().

-type deploy_workspace_applications_errors() ::
    operation_not_supported_exception() | 
    incompatible_applications_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type deregister_workspace_directory_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type describe_account_errors() ::
    access_denied_exception().

-type describe_account_modifications_errors() ::
    access_denied_exception().

-type describe_application_associations_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_applications_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_bundle_associations_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_client_branding_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_client_properties_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_connect_client_add_ins_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_connection_alias_permissions_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_connection_aliases_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception().

-type describe_image_associations_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_ip_groups_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception().

-type describe_tags_errors() ::
    resource_not_found_exception().

-type describe_workspace_associations_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_workspace_bundles_errors() ::
    invalid_parameter_values_exception().

-type describe_workspace_directories_errors() ::
    invalid_parameter_values_exception().

-type describe_workspace_image_permissions_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_workspace_images_errors() ::
    access_denied_exception().

-type describe_workspace_snapshots_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_workspaces_errors() ::
    invalid_parameter_values_exception() | 
    resource_unavailable_exception().

-type describe_workspaces_connection_status_errors() ::
    invalid_parameter_values_exception().

-type describe_workspaces_pool_sessions_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type describe_workspaces_pools_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type disassociate_connection_alias_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type disassociate_ip_groups_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type disassociate_workspace_application_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type get_account_link_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type import_client_branding_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type import_workspace_image_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type list_account_links_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_available_management_cidr_ranges_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception().

-type migrate_workspace_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type modify_account_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type modify_certificate_based_auth_properties_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type modify_client_properties_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type modify_endpoint_encryption_mode_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type modify_saml_properties_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type modify_selfservice_permissions_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type modify_streaming_properties_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type modify_workspace_access_properties_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type modify_workspace_creation_properties_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type modify_workspace_properties_errors() ::
    unsupported_workspace_configuration_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type modify_workspace_state_errors() ::
    operation_not_supported_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type reboot_workspaces_errors() ::
    operation_not_supported_exception().

-type rebuild_workspaces_errors() ::
    operation_not_supported_exception().

-type register_workspace_directory_errors() ::
    operation_not_supported_exception() | 
    resource_already_exists_exception() | 
    access_denied_exception() | 
    workspaces_default_role_not_found_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    unsupported_network_configuration_exception().

-type reject_account_link_invitation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_workspace_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type revoke_ip_rules_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_not_found_exception().

-type start_workspaces_pool_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception().

-type stop_workspaces_pool_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception().

-type terminate_workspaces_pool_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception().

-type terminate_workspaces_pool_session_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception().

-type update_connect_client_add_in_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception().

-type update_connection_alias_permission_errors() ::
    operation_not_supported_exception() | 
    resource_associated_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type update_rules_of_ip_group_errors() ::
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception().

-type update_workspace_bundle_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type update_workspace_image_permission_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type update_workspaces_pool_errors() ::
    operation_not_supported_exception() | 
    access_denied_exception() | 
    invalid_parameter_values_exception() | 
    invalid_resource_state_exception() | 
    resource_limit_exceeded_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the account link invitation.
%%
%% There's currently no unlinking capability after you accept the account
%% linking invitation.
-spec accept_account_link_invitation(aws_client:aws_client(), accept_account_link_invitation_request()) ->
    {ok, accept_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, accept_account_link_invitation_errors(), tuple()}.
accept_account_link_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_account_link_invitation(Client, Input, []).

-spec accept_account_link_invitation(aws_client:aws_client(), accept_account_link_invitation_request(), proplists:proplist()) ->
    {ok, accept_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, accept_account_link_invitation_errors(), tuple()}.
accept_account_link_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptAccountLinkInvitation">>, Input, Options).

%% @doc Associates the specified connection alias with the specified
%% directory to enable
%% cross-Region redirection.
%%
%% For more information, see Cross-Region
%% Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
%%
%% Before performing this operation, call
%% DescribeConnectionAliases:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
%% to make sure that the current state of the
%% connection alias is `CREATED'.
-spec associate_connection_alias(aws_client:aws_client(), associate_connection_alias_request()) ->
    {ok, associate_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, associate_connection_alias_errors(), tuple()}.
associate_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_connection_alias(Client, Input, []).

-spec associate_connection_alias(aws_client:aws_client(), associate_connection_alias_request(), proplists:proplist()) ->
    {ok, associate_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, associate_connection_alias_errors(), tuple()}.
associate_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConnectionAlias">>, Input, Options).

%% @doc Associates the specified IP access control group with the specified
%% directory.
-spec associate_ip_groups(aws_client:aws_client(), associate_ip_groups_request()) ->
    {ok, associate_ip_groups_result(), tuple()} |
    {error, any()} |
    {error, associate_ip_groups_errors(), tuple()}.
associate_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_ip_groups(Client, Input, []).

-spec associate_ip_groups(aws_client:aws_client(), associate_ip_groups_request(), proplists:proplist()) ->
    {ok, associate_ip_groups_result(), tuple()} |
    {error, any()} |
    {error, associate_ip_groups_errors(), tuple()}.
associate_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateIpGroups">>, Input, Options).

%% @doc Associates the specified application to the specified WorkSpace.
-spec associate_workspace_application(aws_client:aws_client(), associate_workspace_application_request()) ->
    {ok, associate_workspace_application_result(), tuple()} |
    {error, any()} |
    {error, associate_workspace_application_errors(), tuple()}.
associate_workspace_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_workspace_application(Client, Input, []).

-spec associate_workspace_application(aws_client:aws_client(), associate_workspace_application_request(), proplists:proplist()) ->
    {ok, associate_workspace_application_result(), tuple()} |
    {error, any()} |
    {error, associate_workspace_application_errors(), tuple()}.
associate_workspace_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateWorkspaceApplication">>, Input, Options).

%% @doc Adds one or more rules to the specified IP access control group.
%%
%% This action gives users permission to access their WorkSpaces from the
%% CIDR address
%% ranges specified in the rules.
-spec authorize_ip_rules(aws_client:aws_client(), authorize_ip_rules_request()) ->
    {ok, authorize_ip_rules_result(), tuple()} |
    {error, any()} |
    {error, authorize_ip_rules_errors(), tuple()}.
authorize_ip_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_ip_rules(Client, Input, []).

-spec authorize_ip_rules(aws_client:aws_client(), authorize_ip_rules_request(), proplists:proplist()) ->
    {ok, authorize_ip_rules_result(), tuple()} |
    {error, any()} |
    {error, authorize_ip_rules_errors(), tuple()}.
authorize_ip_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeIpRules">>, Input, Options).

%% @doc Copies the specified image from the specified Region to the current
%% Region.
%%
%% For more
%% information about copying images, see Copy a Custom WorkSpaces
%% Image:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html.
%%
%% In the China (Ningxia) Region, you can copy images only within the same
%% Region.
%%
%% In Amazon Web Services GovCloud (US), to copy images to and from other
%% Regions, contact Amazon Web ServicesSupport.
%%
%% Before copying a shared image, be sure to verify that it has been shared
%% from the
%% correct Amazon Web Services account. To determine if an image has been
%% shared and to see
%% the ID of the Amazon Web Services account that owns an image, use the
%% DescribeWorkSpaceImages:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html
%% and DescribeWorkspaceImagePermissions:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html
%% API operations.
-spec copy_workspace_image(aws_client:aws_client(), copy_workspace_image_request()) ->
    {ok, copy_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, copy_workspace_image_errors(), tuple()}.
copy_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_workspace_image(Client, Input, []).

-spec copy_workspace_image(aws_client:aws_client(), copy_workspace_image_request(), proplists:proplist()) ->
    {ok, copy_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, copy_workspace_image_errors(), tuple()}.
copy_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyWorkspaceImage">>, Input, Options).

%% @doc Creates the account link invitation.
-spec create_account_link_invitation(aws_client:aws_client(), create_account_link_invitation_request()) ->
    {ok, create_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, create_account_link_invitation_errors(), tuple()}.
create_account_link_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account_link_invitation(Client, Input, []).

-spec create_account_link_invitation(aws_client:aws_client(), create_account_link_invitation_request(), proplists:proplist()) ->
    {ok, create_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, create_account_link_invitation_errors(), tuple()}.
create_account_link_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccountLinkInvitation">>, Input, Options).

%% @doc Creates a client-add-in for Amazon Connect within a directory.
%%
%% You can create only
%% one Amazon Connect client add-in within a directory.
%%
%% This client add-in allows WorkSpaces users to seamlessly connect to Amazon
%% Connect.
-spec create_connect_client_add_in(aws_client:aws_client(), create_connect_client_add_in_request()) ->
    {ok, create_connect_client_add_in_result(), tuple()} |
    {error, any()} |
    {error, create_connect_client_add_in_errors(), tuple()}.
create_connect_client_add_in(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connect_client_add_in(Client, Input, []).

-spec create_connect_client_add_in(aws_client:aws_client(), create_connect_client_add_in_request(), proplists:proplist()) ->
    {ok, create_connect_client_add_in_result(), tuple()} |
    {error, any()} |
    {error, create_connect_client_add_in_errors(), tuple()}.
create_connect_client_add_in(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnectClientAddIn">>, Input, Options).

%% @doc Creates the specified connection alias for use with cross-Region
%% redirection.
%%
%% For more
%% information, see Cross-Region
%% Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
-spec create_connection_alias(aws_client:aws_client(), create_connection_alias_request()) ->
    {ok, create_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, create_connection_alias_errors(), tuple()}.
create_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection_alias(Client, Input, []).

-spec create_connection_alias(aws_client:aws_client(), create_connection_alias_request(), proplists:proplist()) ->
    {ok, create_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, create_connection_alias_errors(), tuple()}.
create_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnectionAlias">>, Input, Options).

%% @doc Creates an IP access control group.
%%
%% An IP access control group provides you with the ability to control the IP
%% addresses
%% from which users are allowed to access their WorkSpaces. To specify the
%% CIDR address
%% ranges, add rules to your IP access control group and then associate the
%% group with your
%% directory. You can add rules when you create the group or at any time
%% using `AuthorizeIpRules'.
%%
%% There is a default IP access control group associated with your directory.
%% If you don't
%% associate an IP access control group with your directory, the default
%% group is used. The
%% default group includes a default rule that allows users to access their
%% WorkSpaces from
%% anywhere. You cannot modify the default IP access control group for your
%% directory.
-spec create_ip_group(aws_client:aws_client(), create_ip_group_request()) ->
    {ok, create_ip_group_result(), tuple()} |
    {error, any()} |
    {error, create_ip_group_errors(), tuple()}.
create_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ip_group(Client, Input, []).

-spec create_ip_group(aws_client:aws_client(), create_ip_group_request(), proplists:proplist()) ->
    {ok, create_ip_group_result(), tuple()} |
    {error, any()} |
    {error, create_ip_group_errors(), tuple()}.
create_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIpGroup">>, Input, Options).

%% @doc Creates a standby WorkSpace in a secondary Region.
-spec create_standby_workspaces(aws_client:aws_client(), create_standby_workspaces_request()) ->
    {ok, create_standby_workspaces_result(), tuple()} |
    {error, any()} |
    {error, create_standby_workspaces_errors(), tuple()}.
create_standby_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_standby_workspaces(Client, Input, []).

-spec create_standby_workspaces(aws_client:aws_client(), create_standby_workspaces_request(), proplists:proplist()) ->
    {ok, create_standby_workspaces_result(), tuple()} |
    {error, any()} |
    {error, create_standby_workspaces_errors(), tuple()}.
create_standby_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStandbyWorkspaces">>, Input, Options).

%% @doc Creates the specified tags for the specified WorkSpaces resource.
-spec create_tags(aws_client:aws_client(), create_tags_request()) ->
    {ok, create_tags_result(), tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).

-spec create_tags(aws_client:aws_client(), create_tags_request(), proplists:proplist()) ->
    {ok, create_tags_result(), tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Creates a new updated WorkSpace image based on the specified source
%% image.
%%
%% The new
%% updated WorkSpace image has the latest drivers and other updates required
%% by the
%% Amazon WorkSpaces components.
%%
%% To determine which WorkSpace images need to be updated with the latest
%% Amazon WorkSpaces
%% requirements, use
%% DescribeWorkspaceImages:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html.
%%
%% Only Windows 10, Windows Server 2016, and Windows Server 2019 WorkSpace
%% images
%% can be programmatically updated at this time.
%%
%% Microsoft Windows updates and other application updates are not included
%% in the
%% update process.
%%
%% The source WorkSpace image is not deleted. You can delete the source image
%% after you've verified your new updated image and created a new bundle.
-spec create_updated_workspace_image(aws_client:aws_client(), create_updated_workspace_image_request()) ->
    {ok, create_updated_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, create_updated_workspace_image_errors(), tuple()}.
create_updated_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_updated_workspace_image(Client, Input, []).

-spec create_updated_workspace_image(aws_client:aws_client(), create_updated_workspace_image_request(), proplists:proplist()) ->
    {ok, create_updated_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, create_updated_workspace_image_errors(), tuple()}.
create_updated_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpdatedWorkspaceImage">>, Input, Options).

%% @doc Creates the specified WorkSpace bundle.
%%
%% For more information about creating WorkSpace bundles, see
%%
%% Create a Custom WorkSpaces Image and Bundle:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html.
-spec create_workspace_bundle(aws_client:aws_client(), create_workspace_bundle_request()) ->
    {ok, create_workspace_bundle_result(), tuple()} |
    {error, any()} |
    {error, create_workspace_bundle_errors(), tuple()}.
create_workspace_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspace_bundle(Client, Input, []).

-spec create_workspace_bundle(aws_client:aws_client(), create_workspace_bundle_request(), proplists:proplist()) ->
    {ok, create_workspace_bundle_result(), tuple()} |
    {error, any()} |
    {error, create_workspace_bundle_errors(), tuple()}.
create_workspace_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaceBundle">>, Input, Options).

%% @doc Creates a new WorkSpace image from an existing WorkSpace.
-spec create_workspace_image(aws_client:aws_client(), create_workspace_image_request()) ->
    {ok, create_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, create_workspace_image_errors(), tuple()}.
create_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspace_image(Client, Input, []).

-spec create_workspace_image(aws_client:aws_client(), create_workspace_image_request(), proplists:proplist()) ->
    {ok, create_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, create_workspace_image_errors(), tuple()}.
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
%% more
%% information, see Amazon WorkSpaces
%% Core: http://aws.amazon.com/workspaces/core/.
%%
%% You don't need to specify the `PCOIP' protocol for Linux bundles
%% because `DCV' (formerly WSP) is the default protocol for those
%% bundles.
%%
%% User-decoupled WorkSpaces are only supported by Amazon WorkSpaces
%% Core.
%%
%% Review your running mode to ensure you are using one that is optimal for
%% your needs and budget.
%% For more information on switching running modes, see
%%
%% Can I switch between hourly and monthly billing?:
%% http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F
-spec create_workspaces(aws_client:aws_client(), create_workspaces_request()) ->
    {ok, create_workspaces_result(), tuple()} |
    {error, any()} |
    {error, create_workspaces_errors(), tuple()}.
create_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspaces(Client, Input, []).

-spec create_workspaces(aws_client:aws_client(), create_workspaces_request(), proplists:proplist()) ->
    {ok, create_workspaces_result(), tuple()} |
    {error, any()} |
    {error, create_workspaces_errors(), tuple()}.
create_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaces">>, Input, Options).

%% @doc Creates a pool of WorkSpaces.
-spec create_workspaces_pool(aws_client:aws_client(), create_workspaces_pool_request()) ->
    {ok, create_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, create_workspaces_pool_errors(), tuple()}.
create_workspaces_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspaces_pool(Client, Input, []).

-spec create_workspaces_pool(aws_client:aws_client(), create_workspaces_pool_request(), proplists:proplist()) ->
    {ok, create_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, create_workspaces_pool_errors(), tuple()}.
create_workspaces_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspacesPool">>, Input, Options).

%% @doc Deletes the account link invitation.
-spec delete_account_link_invitation(aws_client:aws_client(), delete_account_link_invitation_request()) ->
    {ok, delete_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, delete_account_link_invitation_errors(), tuple()}.
delete_account_link_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_link_invitation(Client, Input, []).

-spec delete_account_link_invitation(aws_client:aws_client(), delete_account_link_invitation_request(), proplists:proplist()) ->
    {ok, delete_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, delete_account_link_invitation_errors(), tuple()}.
delete_account_link_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountLinkInvitation">>, Input, Options).

%% @doc Deletes customized client branding.
%%
%% Client branding allows you to customize your
%% WorkSpace's client login portal. You can tailor your login portal
%% company logo, the support
%% email address, support link, link to reset password, and a custom message
%% for users trying
%% to sign in.
%%
%% After you delete your customized client branding, your login portal
%% reverts to the
%% default client branding.
-spec delete_client_branding(aws_client:aws_client(), delete_client_branding_request()) ->
    {ok, delete_client_branding_result(), tuple()} |
    {error, any()} |
    {error, delete_client_branding_errors(), tuple()}.
delete_client_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_client_branding(Client, Input, []).

-spec delete_client_branding(aws_client:aws_client(), delete_client_branding_request(), proplists:proplist()) ->
    {ok, delete_client_branding_result(), tuple()} |
    {error, any()} |
    {error, delete_client_branding_errors(), tuple()}.
delete_client_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClientBranding">>, Input, Options).

%% @doc Deletes a client-add-in for Amazon Connect that is configured within
%% a
%% directory.
-spec delete_connect_client_add_in(aws_client:aws_client(), delete_connect_client_add_in_request()) ->
    {ok, delete_connect_client_add_in_result(), tuple()} |
    {error, any()} |
    {error, delete_connect_client_add_in_errors(), tuple()}.
delete_connect_client_add_in(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connect_client_add_in(Client, Input, []).

-spec delete_connect_client_add_in(aws_client:aws_client(), delete_connect_client_add_in_request(), proplists:proplist()) ->
    {ok, delete_connect_client_add_in_result(), tuple()} |
    {error, any()} |
    {error, delete_connect_client_add_in_errors(), tuple()}.
delete_connect_client_add_in(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnectClientAddIn">>, Input, Options).

%% @doc Deletes the specified connection alias.
%%
%% For more information, see
%% Cross-Region Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
%%
%% If you will no longer be using a fully qualified domain name
%% (FQDN) as the registration code for your WorkSpaces users, you must take
%% certain
%% precautions to prevent potential security issues. For more information,
%% see Security Considerations if You Stop Using Cross-Region Redirection:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations.
%%
%% To delete a connection alias that has been shared, the shared account must
%% first
%% disassociate the connection alias from any directories it has been
%% associated with. Then
%% you must unshare the connection alias from the account it has been shared
%% with. You can
%% delete a connection alias only after it is no longer shared with any
%% accounts or
%% associated with any directories.
-spec delete_connection_alias(aws_client:aws_client(), delete_connection_alias_request()) ->
    {ok, delete_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, delete_connection_alias_errors(), tuple()}.
delete_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection_alias(Client, Input, []).

-spec delete_connection_alias(aws_client:aws_client(), delete_connection_alias_request(), proplists:proplist()) ->
    {ok, delete_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, delete_connection_alias_errors(), tuple()}.
delete_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnectionAlias">>, Input, Options).

%% @doc Deletes the specified IP access control group.
%%
%% You cannot delete an IP access control group that is associated with a
%% directory.
-spec delete_ip_group(aws_client:aws_client(), delete_ip_group_request()) ->
    {ok, delete_ip_group_result(), tuple()} |
    {error, any()} |
    {error, delete_ip_group_errors(), tuple()}.
delete_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ip_group(Client, Input, []).

-spec delete_ip_group(aws_client:aws_client(), delete_ip_group_request(), proplists:proplist()) ->
    {ok, delete_ip_group_result(), tuple()} |
    {error, any()} |
    {error, delete_ip_group_errors(), tuple()}.
delete_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIpGroup">>, Input, Options).

%% @doc Deletes the specified tags from the specified WorkSpaces resource.
-spec delete_tags(aws_client:aws_client(), delete_tags_request()) ->
    {ok, delete_tags_result(), tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).

-spec delete_tags(aws_client:aws_client(), delete_tags_request(), proplists:proplist()) ->
    {ok, delete_tags_result(), tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the specified WorkSpace bundle.
%%
%% For more information about deleting WorkSpace bundles, see
%%
%% Delete a Custom WorkSpaces Bundle or Image:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html.
-spec delete_workspace_bundle(aws_client:aws_client(), delete_workspace_bundle_request()) ->
    {ok, delete_workspace_bundle_result(), tuple()} |
    {error, any()} |
    {error, delete_workspace_bundle_errors(), tuple()}.
delete_workspace_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workspace_bundle(Client, Input, []).

-spec delete_workspace_bundle(aws_client:aws_client(), delete_workspace_bundle_request(), proplists:proplist()) ->
    {ok, delete_workspace_bundle_result(), tuple()} |
    {error, any()} |
    {error, delete_workspace_bundle_errors(), tuple()}.
delete_workspace_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkspaceBundle">>, Input, Options).

%% @doc Deletes the specified image from your account.
%%
%% To delete an image, you must first delete
%% any bundles that are associated with the image and unshare the image if it
%% is shared with
%% other accounts.
-spec delete_workspace_image(aws_client:aws_client(), delete_workspace_image_request()) ->
    {ok, delete_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, delete_workspace_image_errors(), tuple()}.
delete_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workspace_image(Client, Input, []).

-spec delete_workspace_image(aws_client:aws_client(), delete_workspace_image_request(), proplists:proplist()) ->
    {ok, delete_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, delete_workspace_image_errors(), tuple()}.
delete_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkspaceImage">>, Input, Options).

%% @doc Deploys associated applications to the specified WorkSpace
-spec deploy_workspace_applications(aws_client:aws_client(), deploy_workspace_applications_request()) ->
    {ok, deploy_workspace_applications_result(), tuple()} |
    {error, any()} |
    {error, deploy_workspace_applications_errors(), tuple()}.
deploy_workspace_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    deploy_workspace_applications(Client, Input, []).

-spec deploy_workspace_applications(aws_client:aws_client(), deploy_workspace_applications_request(), proplists:proplist()) ->
    {ok, deploy_workspace_applications_result(), tuple()} |
    {error, any()} |
    {error, deploy_workspace_applications_errors(), tuple()}.
deploy_workspace_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeployWorkspaceApplications">>, Input, Options).

%% @doc Deregisters the specified directory.
%%
%% This operation is asynchronous and returns before
%% the WorkSpace directory is deregistered. If any WorkSpaces are registered
%% to this
%% directory, you must remove them before you can deregister the directory.
%%
%% Simple AD and AD Connector are made available to you free of charge to use
%% with
%% WorkSpaces. If there are no WorkSpaces being used with your Simple AD or
%% AD Connector
%% directory for 30 consecutive days, this directory will be automatically
%% deregistered for
%% use with Amazon WorkSpaces, and you will be charged for this directory as
%% per the Directory Service pricing
%% terms: http://aws.amazon.com/directoryservice/pricing/.
%%
%% To delete empty directories, see Delete the
%% Directory for Your WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html.
%% If you delete your Simple AD or AD Connector
%% directory, you can always create a new one when you want to start using
%% WorkSpaces
%% again.
-spec deregister_workspace_directory(aws_client:aws_client(), deregister_workspace_directory_request()) ->
    {ok, deregister_workspace_directory_result(), tuple()} |
    {error, any()} |
    {error, deregister_workspace_directory_errors(), tuple()}.
deregister_workspace_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_workspace_directory(Client, Input, []).

-spec deregister_workspace_directory(aws_client:aws_client(), deregister_workspace_directory_request(), proplists:proplist()) ->
    {ok, deregister_workspace_directory_result(), tuple()} |
    {error, any()} |
    {error, deregister_workspace_directory_errors(), tuple()}.
deregister_workspace_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterWorkspaceDirectory">>, Input, Options).

%% @doc Retrieves a list that describes the configuration of Bring Your Own
%% License (BYOL) for
%% the specified account.
-spec describe_account(aws_client:aws_client(), describe_account_request()) ->
    {ok, describe_account_result(), tuple()} |
    {error, any()} |
    {error, describe_account_errors(), tuple()}.
describe_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account(Client, Input, []).

-spec describe_account(aws_client:aws_client(), describe_account_request(), proplists:proplist()) ->
    {ok, describe_account_result(), tuple()} |
    {error, any()} |
    {error, describe_account_errors(), tuple()}.
describe_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccount">>, Input, Options).

%% @doc Retrieves a list that describes modifications to the configuration of
%% Bring Your Own
%% License (BYOL) for the specified account.
-spec describe_account_modifications(aws_client:aws_client(), describe_account_modifications_request()) ->
    {ok, describe_account_modifications_result(), tuple()} |
    {error, any()} |
    {error, describe_account_modifications_errors(), tuple()}.
describe_account_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_modifications(Client, Input, []).

-spec describe_account_modifications(aws_client:aws_client(), describe_account_modifications_request(), proplists:proplist()) ->
    {ok, describe_account_modifications_result(), tuple()} |
    {error, any()} |
    {error, describe_account_modifications_errors(), tuple()}.
describe_account_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountModifications">>, Input, Options).

%% @doc Describes the associations between the application and the specified
%% associated resources.
-spec describe_application_associations(aws_client:aws_client(), describe_application_associations_request()) ->
    {ok, describe_application_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_application_associations_errors(), tuple()}.
describe_application_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_associations(Client, Input, []).

-spec describe_application_associations(aws_client:aws_client(), describe_application_associations_request(), proplists:proplist()) ->
    {ok, describe_application_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_application_associations_errors(), tuple()}.
describe_application_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationAssociations">>, Input, Options).

%% @doc Describes the specified applications by filtering based on their
%% compute types, license availability, operating systems, and owners.
-spec describe_applications(aws_client:aws_client(), describe_applications_request()) ->
    {ok, describe_applications_result(), tuple()} |
    {error, any()} |
    {error, describe_applications_errors(), tuple()}.
describe_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applications(Client, Input, []).

-spec describe_applications(aws_client:aws_client(), describe_applications_request(), proplists:proplist()) ->
    {ok, describe_applications_result(), tuple()} |
    {error, any()} |
    {error, describe_applications_errors(), tuple()}.
describe_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplications">>, Input, Options).

%% @doc Describes the associations between the applications and the specified
%% bundle.
-spec describe_bundle_associations(aws_client:aws_client(), describe_bundle_associations_request()) ->
    {ok, describe_bundle_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_bundle_associations_errors(), tuple()}.
describe_bundle_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_bundle_associations(Client, Input, []).

-spec describe_bundle_associations(aws_client:aws_client(), describe_bundle_associations_request(), proplists:proplist()) ->
    {ok, describe_bundle_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_bundle_associations_errors(), tuple()}.
describe_bundle_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBundleAssociations">>, Input, Options).

%% @doc Describes the specified client branding.
%%
%% Client branding allows you to customize the log
%% in page of various device types for your users. You can add your company
%% logo, the support
%% email address, support link, link to reset password, and a custom message
%% for users trying
%% to sign in.
%%
%% Only device types that have branding information configured will be shown
%% in the
%% response.
-spec describe_client_branding(aws_client:aws_client(), describe_client_branding_request()) ->
    {ok, describe_client_branding_result(), tuple()} |
    {error, any()} |
    {error, describe_client_branding_errors(), tuple()}.
describe_client_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_branding(Client, Input, []).

-spec describe_client_branding(aws_client:aws_client(), describe_client_branding_request(), proplists:proplist()) ->
    {ok, describe_client_branding_result(), tuple()} |
    {error, any()} |
    {error, describe_client_branding_errors(), tuple()}.
describe_client_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientBranding">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified Amazon
%% WorkSpaces clients.
-spec describe_client_properties(aws_client:aws_client(), describe_client_properties_request()) ->
    {ok, describe_client_properties_result(), tuple()} |
    {error, any()} |
    {error, describe_client_properties_errors(), tuple()}.
describe_client_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_properties(Client, Input, []).

-spec describe_client_properties(aws_client:aws_client(), describe_client_properties_request(), proplists:proplist()) ->
    {ok, describe_client_properties_result(), tuple()} |
    {error, any()} |
    {error, describe_client_properties_errors(), tuple()}.
describe_client_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientProperties">>, Input, Options).

%% @doc Retrieves a list of Amazon Connect client add-ins that have been
%% created.
-spec describe_connect_client_add_ins(aws_client:aws_client(), describe_connect_client_add_ins_request()) ->
    {ok, describe_connect_client_add_ins_result(), tuple()} |
    {error, any()} |
    {error, describe_connect_client_add_ins_errors(), tuple()}.
describe_connect_client_add_ins(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connect_client_add_ins(Client, Input, []).

-spec describe_connect_client_add_ins(aws_client:aws_client(), describe_connect_client_add_ins_request(), proplists:proplist()) ->
    {ok, describe_connect_client_add_ins_result(), tuple()} |
    {error, any()} |
    {error, describe_connect_client_add_ins_errors(), tuple()}.
describe_connect_client_add_ins(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectClientAddIns">>, Input, Options).

%% @doc Describes the permissions that the owner of a connection alias has
%% granted to another
%% Amazon Web Services account for the specified connection alias.
%%
%% For more information, see
%% Cross-Region
%% Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
-spec describe_connection_alias_permissions(aws_client:aws_client(), describe_connection_alias_permissions_request()) ->
    {ok, describe_connection_alias_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_connection_alias_permissions_errors(), tuple()}.
describe_connection_alias_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_alias_permissions(Client, Input, []).

-spec describe_connection_alias_permissions(aws_client:aws_client(), describe_connection_alias_permissions_request(), proplists:proplist()) ->
    {ok, describe_connection_alias_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_connection_alias_permissions_errors(), tuple()}.
describe_connection_alias_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionAliasPermissions">>, Input, Options).

%% @doc Retrieves a list that describes the connection aliases used for
%% cross-Region
%% redirection.
%%
%% For more information, see Cross-Region
%% Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
-spec describe_connection_aliases(aws_client:aws_client(), describe_connection_aliases_request()) ->
    {ok, describe_connection_aliases_result(), tuple()} |
    {error, any()} |
    {error, describe_connection_aliases_errors(), tuple()}.
describe_connection_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_aliases(Client, Input, []).

-spec describe_connection_aliases(aws_client:aws_client(), describe_connection_aliases_request(), proplists:proplist()) ->
    {ok, describe_connection_aliases_result(), tuple()} |
    {error, any()} |
    {error, describe_connection_aliases_errors(), tuple()}.
describe_connection_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionAliases">>, Input, Options).

%% @doc Describes the associations between the applications and the specified
%% image.
-spec describe_image_associations(aws_client:aws_client(), describe_image_associations_request()) ->
    {ok, describe_image_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_image_associations_errors(), tuple()}.
describe_image_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_associations(Client, Input, []).

-spec describe_image_associations(aws_client:aws_client(), describe_image_associations_request(), proplists:proplist()) ->
    {ok, describe_image_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_image_associations_errors(), tuple()}.
describe_image_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageAssociations">>, Input, Options).

%% @doc Describes one or more of your IP access control groups.
-spec describe_ip_groups(aws_client:aws_client(), describe_ip_groups_request()) ->
    {ok, describe_ip_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_ip_groups_errors(), tuple()}.
describe_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ip_groups(Client, Input, []).

-spec describe_ip_groups(aws_client:aws_client(), describe_ip_groups_request(), proplists:proplist()) ->
    {ok, describe_ip_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_ip_groups_errors(), tuple()}.
describe_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpGroups">>, Input, Options).

%% @doc Describes the specified tags for the specified WorkSpaces resource.
-spec describe_tags(aws_client:aws_client(), describe_tags_request()) ->
    {ok, describe_tags_result(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_request(), proplists:proplist()) ->
    {ok, describe_tags_result(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes the associations betweens applications and the specified
%% WorkSpace.
-spec describe_workspace_associations(aws_client:aws_client(), describe_workspace_associations_request()) ->
    {ok, describe_workspace_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_associations_errors(), tuple()}.
describe_workspace_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_associations(Client, Input, []).

-spec describe_workspace_associations(aws_client:aws_client(), describe_workspace_associations_request(), proplists:proplist()) ->
    {ok, describe_workspace_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_associations_errors(), tuple()}.
describe_workspace_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceAssociations">>, Input, Options).

%% @doc Retrieves a list that describes the available WorkSpace bundles.
%%
%% You can filter the results using either bundle ID or owner, but not both.
-spec describe_workspace_bundles(aws_client:aws_client(), describe_workspace_bundles_request()) ->
    {ok, describe_workspace_bundles_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_bundles_errors(), tuple()}.
describe_workspace_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_bundles(Client, Input, []).

-spec describe_workspace_bundles(aws_client:aws_client(), describe_workspace_bundles_request(), proplists:proplist()) ->
    {ok, describe_workspace_bundles_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_bundles_errors(), tuple()}.
describe_workspace_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceBundles">>, Input, Options).

%% @doc Describes the available directories that are registered with Amazon
%% WorkSpaces.
-spec describe_workspace_directories(aws_client:aws_client(), describe_workspace_directories_request()) ->
    {ok, describe_workspace_directories_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_directories_errors(), tuple()}.
describe_workspace_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_directories(Client, Input, []).

-spec describe_workspace_directories(aws_client:aws_client(), describe_workspace_directories_request(), proplists:proplist()) ->
    {ok, describe_workspace_directories_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_directories_errors(), tuple()}.
describe_workspace_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceDirectories">>, Input, Options).

%% @doc Describes the permissions that the owner of an image has granted to
%% other Amazon Web Services accounts for an image.
-spec describe_workspace_image_permissions(aws_client:aws_client(), describe_workspace_image_permissions_request()) ->
    {ok, describe_workspace_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_image_permissions_errors(), tuple()}.
describe_workspace_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_image_permissions(Client, Input, []).

-spec describe_workspace_image_permissions(aws_client:aws_client(), describe_workspace_image_permissions_request(), proplists:proplist()) ->
    {ok, describe_workspace_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_image_permissions_errors(), tuple()}.
describe_workspace_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceImagePermissions">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified images, if the
%% image identifiers
%% are provided.
%%
%% Otherwise, all images in the account are described.
-spec describe_workspace_images(aws_client:aws_client(), describe_workspace_images_request()) ->
    {ok, describe_workspace_images_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_images_errors(), tuple()}.
describe_workspace_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_images(Client, Input, []).

-spec describe_workspace_images(aws_client:aws_client(), describe_workspace_images_request(), proplists:proplist()) ->
    {ok, describe_workspace_images_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_images_errors(), tuple()}.
describe_workspace_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceImages">>, Input, Options).

%% @doc Describes the snapshots for the specified WorkSpace.
-spec describe_workspace_snapshots(aws_client:aws_client(), describe_workspace_snapshots_request()) ->
    {ok, describe_workspace_snapshots_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_snapshots_errors(), tuple()}.
describe_workspace_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspace_snapshots(Client, Input, []).

-spec describe_workspace_snapshots(aws_client:aws_client(), describe_workspace_snapshots_request(), proplists:proplist()) ->
    {ok, describe_workspace_snapshots_result(), tuple()} |
    {error, any()} |
    {error, describe_workspace_snapshots_errors(), tuple()}.
describe_workspace_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaceSnapshots">>, Input, Options).

%% @doc Describes the specified WorkSpaces.
%%
%% You can filter the results by using the bundle identifier, directory
%% identifier, or
%% owner, but you can specify only one filter at a time.
-spec describe_workspaces(aws_client:aws_client(), describe_workspaces_request()) ->
    {ok, describe_workspaces_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_errors(), tuple()}.
describe_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces(Client, Input, []).

-spec describe_workspaces(aws_client:aws_client(), describe_workspaces_request(), proplists:proplist()) ->
    {ok, describe_workspaces_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_errors(), tuple()}.
describe_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspaces">>, Input, Options).

%% @doc Describes the connection status of the specified WorkSpaces.
-spec describe_workspaces_connection_status(aws_client:aws_client(), describe_workspaces_connection_status_request()) ->
    {ok, describe_workspaces_connection_status_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_connection_status_errors(), tuple()}.
describe_workspaces_connection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces_connection_status(Client, Input, []).

-spec describe_workspaces_connection_status(aws_client:aws_client(), describe_workspaces_connection_status_request(), proplists:proplist()) ->
    {ok, describe_workspaces_connection_status_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_connection_status_errors(), tuple()}.
describe_workspaces_connection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspacesConnectionStatus">>, Input, Options).

%% @doc Retrieves a list that describes the streaming sessions for a
%% specified pool.
-spec describe_workspaces_pool_sessions(aws_client:aws_client(), describe_workspaces_pool_sessions_request()) ->
    {ok, describe_workspaces_pool_sessions_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_pool_sessions_errors(), tuple()}.
describe_workspaces_pool_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces_pool_sessions(Client, Input, []).

-spec describe_workspaces_pool_sessions(aws_client:aws_client(), describe_workspaces_pool_sessions_request(), proplists:proplist()) ->
    {ok, describe_workspaces_pool_sessions_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_pool_sessions_errors(), tuple()}.
describe_workspaces_pool_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspacesPoolSessions">>, Input, Options).

%% @doc Describes the specified WorkSpaces Pools.
-spec describe_workspaces_pools(aws_client:aws_client(), describe_workspaces_pools_request()) ->
    {ok, describe_workspaces_pools_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_pools_errors(), tuple()}.
describe_workspaces_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workspaces_pools(Client, Input, []).

-spec describe_workspaces_pools(aws_client:aws_client(), describe_workspaces_pools_request(), proplists:proplist()) ->
    {ok, describe_workspaces_pools_result(), tuple()} |
    {error, any()} |
    {error, describe_workspaces_pools_errors(), tuple()}.
describe_workspaces_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkspacesPools">>, Input, Options).

%% @doc Disassociates a connection alias from a directory.
%%
%% Disassociating a connection alias
%% disables cross-Region redirection between two directories in different
%% Regions. For more
%% information, see Cross-Region
%% Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
%%
%% Before performing this operation, call
%% DescribeConnectionAliases:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
%% to make sure that the current state of the
%% connection alias is `CREATED'.
-spec disassociate_connection_alias(aws_client:aws_client(), disassociate_connection_alias_request()) ->
    {ok, disassociate_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, disassociate_connection_alias_errors(), tuple()}.
disassociate_connection_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connection_alias(Client, Input, []).

-spec disassociate_connection_alias(aws_client:aws_client(), disassociate_connection_alias_request(), proplists:proplist()) ->
    {ok, disassociate_connection_alias_result(), tuple()} |
    {error, any()} |
    {error, disassociate_connection_alias_errors(), tuple()}.
disassociate_connection_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnectionAlias">>, Input, Options).

%% @doc Disassociates the specified IP access control group from the
%% specified directory.
-spec disassociate_ip_groups(aws_client:aws_client(), disassociate_ip_groups_request()) ->
    {ok, disassociate_ip_groups_result(), tuple()} |
    {error, any()} |
    {error, disassociate_ip_groups_errors(), tuple()}.
disassociate_ip_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ip_groups(Client, Input, []).

-spec disassociate_ip_groups(aws_client:aws_client(), disassociate_ip_groups_request(), proplists:proplist()) ->
    {ok, disassociate_ip_groups_result(), tuple()} |
    {error, any()} |
    {error, disassociate_ip_groups_errors(), tuple()}.
disassociate_ip_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIpGroups">>, Input, Options).

%% @doc Disassociates the specified application from a WorkSpace.
-spec disassociate_workspace_application(aws_client:aws_client(), disassociate_workspace_application_request()) ->
    {ok, disassociate_workspace_application_result(), tuple()} |
    {error, any()} |
    {error, disassociate_workspace_application_errors(), tuple()}.
disassociate_workspace_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_workspace_application(Client, Input, []).

-spec disassociate_workspace_application(aws_client:aws_client(), disassociate_workspace_application_request(), proplists:proplist()) ->
    {ok, disassociate_workspace_application_result(), tuple()} |
    {error, any()} |
    {error, disassociate_workspace_application_errors(), tuple()}.
disassociate_workspace_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateWorkspaceApplication">>, Input, Options).

%% @doc Retrieves account link information.
-spec get_account_link(aws_client:aws_client(), get_account_link_request()) ->
    {ok, get_account_link_result(), tuple()} |
    {error, any()} |
    {error, get_account_link_errors(), tuple()}.
get_account_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_link(Client, Input, []).

-spec get_account_link(aws_client:aws_client(), get_account_link_request(), proplists:proplist()) ->
    {ok, get_account_link_result(), tuple()} |
    {error, any()} |
    {error, get_account_link_errors(), tuple()}.
get_account_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountLink">>, Input, Options).

%% @doc Imports client branding.
%%
%% Client branding allows you to customize your WorkSpace's client
%% login portal. You can tailor your login portal company logo, the support
%% email address,
%% support link, link to reset password, and a custom message for users
%% trying to sign
%% in.
%%
%% After you import client branding, the default branding experience for the
%% specified
%% platform type is replaced with the imported experience
%%
%% You must specify at least one platform type when importing client
%% branding.
%%
%% You can import up to 6 MB of data with each request. If your request
%% exceeds
%% this limit, you can import client branding for different platform types
%% using
%% separate requests.
%%
%% In each platform type, the `SupportEmail' and
%% `SupportLink' parameters are mutually exclusive. You can specify
%% only one parameter for each platform type, but not both.
%%
%% Imported data can take up to a minute to appear in the WorkSpaces
%% client.
-spec import_client_branding(aws_client:aws_client(), import_client_branding_request()) ->
    {ok, import_client_branding_result(), tuple()} |
    {error, any()} |
    {error, import_client_branding_errors(), tuple()}.
import_client_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_client_branding(Client, Input, []).

-spec import_client_branding(aws_client:aws_client(), import_client_branding_request(), proplists:proplist()) ->
    {ok, import_client_branding_result(), tuple()} |
    {error, any()} |
    {error, import_client_branding_errors(), tuple()}.
import_client_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportClientBranding">>, Input, Options).

%% @doc Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
%% image into Amazon WorkSpaces.
%%
%% The image must be an already licensed Amazon EC2 image that is
%% in your Amazon Web Services account, and you must own the image. For more
%% information about
%% creating BYOL images, see Bring Your Own Windows
%% Desktop Licenses:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html.
-spec import_workspace_image(aws_client:aws_client(), import_workspace_image_request()) ->
    {ok, import_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, import_workspace_image_errors(), tuple()}.
import_workspace_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_workspace_image(Client, Input, []).

-spec import_workspace_image(aws_client:aws_client(), import_workspace_image_request(), proplists:proplist()) ->
    {ok, import_workspace_image_result(), tuple()} |
    {error, any()} |
    {error, import_workspace_image_errors(), tuple()}.
import_workspace_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportWorkspaceImage">>, Input, Options).

%% @doc Lists all account links.
-spec list_account_links(aws_client:aws_client(), list_account_links_request()) ->
    {ok, list_account_links_result(), tuple()} |
    {error, any()} |
    {error, list_account_links_errors(), tuple()}.
list_account_links(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_links(Client, Input, []).

-spec list_account_links(aws_client:aws_client(), list_account_links_request(), proplists:proplist()) ->
    {ok, list_account_links_result(), tuple()} |
    {error, any()} |
    {error, list_account_links_errors(), tuple()}.
list_account_links(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountLinks">>, Input, Options).

%% @doc Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
%% that you can use
%% for the network management interface when you enable Bring Your Own
%% License (BYOL).
%%
%% This operation can be run only by Amazon Web Services accounts that are
%% enabled for BYOL.
%% If your account isn't enabled for BYOL, you'll receive an
%% `AccessDeniedException' error.
%%
%% The management network interface is connected to a secure Amazon
%% WorkSpaces management
%% network. It is used for interactive streaming of the WorkSpace desktop to
%% Amazon WorkSpaces
%% clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
-spec list_available_management_cidr_ranges(aws_client:aws_client(), list_available_management_cidr_ranges_request()) ->
    {ok, list_available_management_cidr_ranges_result(), tuple()} |
    {error, any()} |
    {error, list_available_management_cidr_ranges_errors(), tuple()}.
list_available_management_cidr_ranges(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_management_cidr_ranges(Client, Input, []).

-spec list_available_management_cidr_ranges(aws_client:aws_client(), list_available_management_cidr_ranges_request(), proplists:proplist()) ->
    {ok, list_available_management_cidr_ranges_result(), tuple()} |
    {error, any()} |
    {error, list_available_management_cidr_ranges_errors(), tuple()}.
list_available_management_cidr_ranges(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagementCidrRanges">>, Input, Options).

%% @doc Migrates a WorkSpace from one operating system or bundle type to
%% another, while
%% retaining the data on the user volume.
%%
%% The migration process recreates the WorkSpace by using a new root volume
%% from the target
%% bundle image and the user volume from the last available snapshot of the
%% original
%% WorkSpace. During migration, the original `D:\Users\%USERNAME%' user
%% profile
%% folder is renamed to `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated'.
%% A new
%% `D:\Users\%USERNAME%\' folder is generated by the new OS. Certain
%% files in
%% the old user profile are moved to the new user profile.
%%
%% For available migration scenarios, details about what happens during
%% migration, and best
%% practices, see Migrate a
%% WorkSpace:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html.
-spec migrate_workspace(aws_client:aws_client(), migrate_workspace_request()) ->
    {ok, migrate_workspace_result(), tuple()} |
    {error, any()} |
    {error, migrate_workspace_errors(), tuple()}.
migrate_workspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    migrate_workspace(Client, Input, []).

-spec migrate_workspace(aws_client:aws_client(), migrate_workspace_request(), proplists:proplist()) ->
    {ok, migrate_workspace_result(), tuple()} |
    {error, any()} |
    {error, migrate_workspace_errors(), tuple()}.
migrate_workspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MigrateWorkspace">>, Input, Options).

%% @doc Modifies the configuration of Bring Your Own License (BYOL) for the
%% specified
%% account.
-spec modify_account(aws_client:aws_client(), modify_account_request()) ->
    {ok, modify_account_result(), tuple()} |
    {error, any()} |
    {error, modify_account_errors(), tuple()}.
modify_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_account(Client, Input, []).

-spec modify_account(aws_client:aws_client(), modify_account_request(), proplists:proplist()) ->
    {ok, modify_account_result(), tuple()} |
    {error, any()} |
    {error, modify_account_errors(), tuple()}.
modify_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAccount">>, Input, Options).

%% @doc Modifies the properties of the certificate-based authentication you
%% want
%% to use with your WorkSpaces.
-spec modify_certificate_based_auth_properties(aws_client:aws_client(), modify_certificate_based_auth_properties_request()) ->
    {ok, modify_certificate_based_auth_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_certificate_based_auth_properties_errors(), tuple()}.
modify_certificate_based_auth_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_certificate_based_auth_properties(Client, Input, []).

-spec modify_certificate_based_auth_properties(aws_client:aws_client(), modify_certificate_based_auth_properties_request(), proplists:proplist()) ->
    {ok, modify_certificate_based_auth_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_certificate_based_auth_properties_errors(), tuple()}.
modify_certificate_based_auth_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCertificateBasedAuthProperties">>, Input, Options).

%% @doc Modifies the properties of the specified Amazon WorkSpaces clients.
-spec modify_client_properties(aws_client:aws_client(), modify_client_properties_request()) ->
    {ok, modify_client_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_client_properties_errors(), tuple()}.
modify_client_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_client_properties(Client, Input, []).

-spec modify_client_properties(aws_client:aws_client(), modify_client_properties_request(), proplists:proplist()) ->
    {ok, modify_client_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_client_properties_errors(), tuple()}.
modify_client_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClientProperties">>, Input, Options).

%% @doc Modifies the endpoint encryption mode that allows you to configure
%% the specified
%% directory between Standard TLS and FIPS 140-2 validated mode.
-spec modify_endpoint_encryption_mode(aws_client:aws_client(), modify_endpoint_encryption_mode_request()) ->
    {ok, modify_endpoint_encryption_mode_response(), tuple()} |
    {error, any()} |
    {error, modify_endpoint_encryption_mode_errors(), tuple()}.
modify_endpoint_encryption_mode(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint_encryption_mode(Client, Input, []).

-spec modify_endpoint_encryption_mode(aws_client:aws_client(), modify_endpoint_encryption_mode_request(), proplists:proplist()) ->
    {ok, modify_endpoint_encryption_mode_response(), tuple()} |
    {error, any()} |
    {error, modify_endpoint_encryption_mode_errors(), tuple()}.
modify_endpoint_encryption_mode(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpointEncryptionMode">>, Input, Options).

%% @doc Modifies multiple properties related to SAML 2.0 authentication,
%% including the enablement status,
%% user access URL, and relay state parameter name that are used for
%% configuring federation with an
%% SAML 2.0 identity provider.
-spec modify_saml_properties(aws_client:aws_client(), modify_saml_properties_request()) ->
    {ok, modify_saml_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_saml_properties_errors(), tuple()}.
modify_saml_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_saml_properties(Client, Input, []).

-spec modify_saml_properties(aws_client:aws_client(), modify_saml_properties_request(), proplists:proplist()) ->
    {ok, modify_saml_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_saml_properties_errors(), tuple()}.
modify_saml_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySamlProperties">>, Input, Options).

%% @doc Modifies the self-service WorkSpace management capabilities for your
%% users.
%%
%% For more
%% information, see Enable Self-Service WorkSpace Management Capabilities for
%% Your Users:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html.
-spec modify_selfservice_permissions(aws_client:aws_client(), modify_selfservice_permissions_request()) ->
    {ok, modify_selfservice_permissions_result(), tuple()} |
    {error, any()} |
    {error, modify_selfservice_permissions_errors(), tuple()}.
modify_selfservice_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_selfservice_permissions(Client, Input, []).

-spec modify_selfservice_permissions(aws_client:aws_client(), modify_selfservice_permissions_request(), proplists:proplist()) ->
    {ok, modify_selfservice_permissions_result(), tuple()} |
    {error, any()} |
    {error, modify_selfservice_permissions_errors(), tuple()}.
modify_selfservice_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySelfservicePermissions">>, Input, Options).

%% @doc Modifies the specified streaming properties.
-spec modify_streaming_properties(aws_client:aws_client(), modify_streaming_properties_request()) ->
    {ok, modify_streaming_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_streaming_properties_errors(), tuple()}.
modify_streaming_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_streaming_properties(Client, Input, []).

-spec modify_streaming_properties(aws_client:aws_client(), modify_streaming_properties_request(), proplists:proplist()) ->
    {ok, modify_streaming_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_streaming_properties_errors(), tuple()}.
modify_streaming_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyStreamingProperties">>, Input, Options).

%% @doc Specifies which devices and operating systems users can use to access
%% their WorkSpaces.
%%
%% For more information, see
%% Control Device Access:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access.
-spec modify_workspace_access_properties(aws_client:aws_client(), modify_workspace_access_properties_request()) ->
    {ok, modify_workspace_access_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_access_properties_errors(), tuple()}.
modify_workspace_access_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_access_properties(Client, Input, []).

-spec modify_workspace_access_properties(aws_client:aws_client(), modify_workspace_access_properties_request(), proplists:proplist()) ->
    {ok, modify_workspace_access_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_access_properties_errors(), tuple()}.
modify_workspace_access_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceAccessProperties">>, Input, Options).

%% @doc Modify the default properties used to create WorkSpaces.
-spec modify_workspace_creation_properties(aws_client:aws_client(), modify_workspace_creation_properties_request()) ->
    {ok, modify_workspace_creation_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_creation_properties_errors(), tuple()}.
modify_workspace_creation_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_creation_properties(Client, Input, []).

-spec modify_workspace_creation_properties(aws_client:aws_client(), modify_workspace_creation_properties_request(), proplists:proplist()) ->
    {ok, modify_workspace_creation_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_creation_properties_errors(), tuple()}.
modify_workspace_creation_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceCreationProperties">>, Input, Options).

%% @doc Modifies the specified WorkSpace properties.
%%
%% For important information about how to
%% modify the size of the root and user volumes, see Modify a WorkSpace:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html.
%%
%% The `MANUAL' running mode value is only supported by Amazon WorkSpaces
%% Core. Contact your account team to be allow-listed to use this value. For
%% more
%% information, see Amazon WorkSpaces
%% Core: http://aws.amazon.com/workspaces/core/.
-spec modify_workspace_properties(aws_client:aws_client(), modify_workspace_properties_request()) ->
    {ok, modify_workspace_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_properties_errors(), tuple()}.
modify_workspace_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_properties(Client, Input, []).

-spec modify_workspace_properties(aws_client:aws_client(), modify_workspace_properties_request(), proplists:proplist()) ->
    {ok, modify_workspace_properties_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_properties_errors(), tuple()}.
modify_workspace_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceProperties">>, Input, Options).

%% @doc Sets the state of the specified WorkSpace.
%%
%% To maintain a WorkSpace without being interrupted, set the WorkSpace state
%% to
%% `ADMIN_MAINTENANCE'. WorkSpaces in this state do not respond to
%% requests to
%% reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this
%% state is not
%% stopped. Users cannot log into a WorkSpace in the `ADMIN_MAINTENANCE'
%% state.
-spec modify_workspace_state(aws_client:aws_client(), modify_workspace_state_request()) ->
    {ok, modify_workspace_state_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_state_errors(), tuple()}.
modify_workspace_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_workspace_state(Client, Input, []).

-spec modify_workspace_state(aws_client:aws_client(), modify_workspace_state_request(), proplists:proplist()) ->
    {ok, modify_workspace_state_result(), tuple()} |
    {error, any()} |
    {error, modify_workspace_state_errors(), tuple()}.
modify_workspace_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyWorkspaceState">>, Input, Options).

%% @doc Reboots the specified WorkSpaces.
%%
%% You cannot reboot a WorkSpace unless its state is `AVAILABLE',
%% `UNHEALTHY', or `REBOOTING'. Reboot a WorkSpace in the
%% `REBOOTING'
%% state only if your WorkSpace has been stuck in the `REBOOTING' state
%% for over 20 minutes.
%%
%% This operation is asynchronous and returns before the WorkSpaces have
%% rebooted.
-spec reboot_workspaces(aws_client:aws_client(), reboot_workspaces_request()) ->
    {ok, reboot_workspaces_result(), tuple()} |
    {error, any()} |
    {error, reboot_workspaces_errors(), tuple()}.
reboot_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_workspaces(Client, Input, []).

-spec reboot_workspaces(aws_client:aws_client(), reboot_workspaces_request(), proplists:proplist()) ->
    {ok, reboot_workspaces_result(), tuple()} |
    {error, any()} |
    {error, reboot_workspaces_errors(), tuple()}.
reboot_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootWorkspaces">>, Input, Options).

%% @doc Rebuilds the specified WorkSpace.
%%
%% You cannot rebuild a WorkSpace unless its state is `AVAILABLE',
%% `ERROR', `UNHEALTHY', `STOPPED', or
%% `REBOOTING'.
%%
%% Rebuilding a WorkSpace is a potentially destructive action that can result
%% in the loss
%% of data. For more information, see Rebuild a
%% WorkSpace:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html.
%%
%% This operation is asynchronous and returns before the WorkSpaces have been
%% completely
%% rebuilt.
-spec rebuild_workspaces(aws_client:aws_client(), rebuild_workspaces_request()) ->
    {ok, rebuild_workspaces_result(), tuple()} |
    {error, any()} |
    {error, rebuild_workspaces_errors(), tuple()}.
rebuild_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebuild_workspaces(Client, Input, []).

-spec rebuild_workspaces(aws_client:aws_client(), rebuild_workspaces_request(), proplists:proplist()) ->
    {ok, rebuild_workspaces_result(), tuple()} |
    {error, any()} |
    {error, rebuild_workspaces_errors(), tuple()}.
rebuild_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebuildWorkspaces">>, Input, Options).

%% @doc Registers the specified directory.
%%
%% This operation is asynchronous and returns before the
%% WorkSpace directory is registered. If this is the first time you are
%% registering a
%% directory, you will need to create the workspaces_DefaultRole role before
%% you can register
%% a directory. For more information, see
%% Creating the workspaces_DefaultRole Role:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role.
-spec register_workspace_directory(aws_client:aws_client(), register_workspace_directory_request()) ->
    {ok, register_workspace_directory_result(), tuple()} |
    {error, any()} |
    {error, register_workspace_directory_errors(), tuple()}.
register_workspace_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_workspace_directory(Client, Input, []).

-spec register_workspace_directory(aws_client:aws_client(), register_workspace_directory_request(), proplists:proplist()) ->
    {ok, register_workspace_directory_result(), tuple()} |
    {error, any()} |
    {error, register_workspace_directory_errors(), tuple()}.
register_workspace_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWorkspaceDirectory">>, Input, Options).

%% @doc Rejects the account link invitation.
-spec reject_account_link_invitation(aws_client:aws_client(), reject_account_link_invitation_request()) ->
    {ok, reject_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, reject_account_link_invitation_errors(), tuple()}.
reject_account_link_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_account_link_invitation(Client, Input, []).

-spec reject_account_link_invitation(aws_client:aws_client(), reject_account_link_invitation_request(), proplists:proplist()) ->
    {ok, reject_account_link_invitation_result(), tuple()} |
    {error, any()} |
    {error, reject_account_link_invitation_errors(), tuple()}.
reject_account_link_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectAccountLinkInvitation">>, Input, Options).

%% @doc Restores the specified WorkSpace to its last known healthy state.
%%
%% You cannot restore a WorkSpace unless its state is ` AVAILABLE',
%% `ERROR', `UNHEALTHY', or `STOPPED'.
%%
%% Restoring a WorkSpace is a potentially destructive action that can result
%% in the loss of
%% data. For more information, see Restore a
%% WorkSpace:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html.
%%
%% This operation is asynchronous and returns before the WorkSpace is
%% completely
%% restored.
-spec restore_workspace(aws_client:aws_client(), restore_workspace_request()) ->
    {ok, restore_workspace_result(), tuple()} |
    {error, any()} |
    {error, restore_workspace_errors(), tuple()}.
restore_workspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_workspace(Client, Input, []).

-spec restore_workspace(aws_client:aws_client(), restore_workspace_request(), proplists:proplist()) ->
    {ok, restore_workspace_result(), tuple()} |
    {error, any()} |
    {error, restore_workspace_errors(), tuple()}.
restore_workspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreWorkspace">>, Input, Options).

%% @doc Removes one or more rules from the specified IP access control group.
-spec revoke_ip_rules(aws_client:aws_client(), revoke_ip_rules_request()) ->
    {ok, revoke_ip_rules_result(), tuple()} |
    {error, any()} |
    {error, revoke_ip_rules_errors(), tuple()}.
revoke_ip_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_ip_rules(Client, Input, []).

-spec revoke_ip_rules(aws_client:aws_client(), revoke_ip_rules_request(), proplists:proplist()) ->
    {ok, revoke_ip_rules_result(), tuple()} |
    {error, any()} |
    {error, revoke_ip_rules_errors(), tuple()}.
revoke_ip_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeIpRules">>, Input, Options).

%% @doc Starts the specified WorkSpaces.
%%
%% You cannot start a WorkSpace unless it has a running mode of
%% `AutoStop' or
%% `Manual' and a state of `STOPPED'.
-spec start_workspaces(aws_client:aws_client(), start_workspaces_request()) ->
    {ok, start_workspaces_result(), tuple()} |
    {error, any()}.
start_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workspaces(Client, Input, []).

-spec start_workspaces(aws_client:aws_client(), start_workspaces_request(), proplists:proplist()) ->
    {ok, start_workspaces_result(), tuple()} |
    {error, any()}.
start_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkspaces">>, Input, Options).

%% @doc Starts the specified pool.
%%
%% You cannot start a pool unless it has a running mode of
%% `AutoStop' and a state of `STOPPED'.
-spec start_workspaces_pool(aws_client:aws_client(), start_workspaces_pool_request()) ->
    {ok, start_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, start_workspaces_pool_errors(), tuple()}.
start_workspaces_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workspaces_pool(Client, Input, []).

-spec start_workspaces_pool(aws_client:aws_client(), start_workspaces_pool_request(), proplists:proplist()) ->
    {ok, start_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, start_workspaces_pool_errors(), tuple()}.
start_workspaces_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkspacesPool">>, Input, Options).

%% @doc Stops the specified WorkSpaces.
%%
%% You cannot stop a WorkSpace unless it has a running mode of `AutoStop'
%% or
%% `Manual' and a state of `AVAILABLE', `IMPAIRED',
%% `UNHEALTHY', or `ERROR'.
-spec stop_workspaces(aws_client:aws_client(), stop_workspaces_request()) ->
    {ok, stop_workspaces_result(), tuple()} |
    {error, any()}.
stop_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_workspaces(Client, Input, []).

-spec stop_workspaces(aws_client:aws_client(), stop_workspaces_request(), proplists:proplist()) ->
    {ok, stop_workspaces_result(), tuple()} |
    {error, any()}.
stop_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopWorkspaces">>, Input, Options).

%% @doc Stops the specified pool.
%%
%% You cannot stop a WorkSpace pool unless it has a running mode of
%% `AutoStop'
%% and a state of `AVAILABLE', `IMPAIRED', `UNHEALTHY', or
%% `ERROR'.
-spec stop_workspaces_pool(aws_client:aws_client(), stop_workspaces_pool_request()) ->
    {ok, stop_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, stop_workspaces_pool_errors(), tuple()}.
stop_workspaces_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_workspaces_pool(Client, Input, []).

-spec stop_workspaces_pool(aws_client:aws_client(), stop_workspaces_pool_request(), proplists:proplist()) ->
    {ok, stop_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, stop_workspaces_pool_errors(), tuple()}.
stop_workspaces_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopWorkspacesPool">>, Input, Options).

%% @doc Terminates the specified WorkSpaces.
%%
%% Terminating a WorkSpace is a permanent action and cannot be undone. The
%% user's data
%% is destroyed. If you need to archive any user data, contact Amazon Web
%% ServicesSupport before
%% terminating the WorkSpace.
%%
%% You can terminate a WorkSpace that is in any state except `SUSPENDED'.
%%
%% This operation is asynchronous and returns before the WorkSpaces have been
%% completely
%% terminated. After a WorkSpace is terminated, the `TERMINATED' state is
%% returned
%% only briefly before the WorkSpace directory metadata is cleaned up, so
%% this state is rarely
%% returned. To confirm that a WorkSpace is terminated, check for the
%% WorkSpace ID by using
%%
%% DescribeWorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html.
%% If the WorkSpace ID isn't returned, then the WorkSpace has
%% been successfully terminated.
%%
%% Simple AD and AD Connector are made available to you free of charge to use
%% with
%% WorkSpaces. If there are no WorkSpaces being used with your Simple AD or
%% AD Connector
%% directory for 30 consecutive days, this directory will be automatically
%% deregistered for
%% use with Amazon WorkSpaces, and you will be charged for this directory as
%% per the Directory Service pricing
%% terms: http://aws.amazon.com/directoryservice/pricing/.
%%
%% To delete empty directories, see Delete the
%% Directory for Your WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html.
%% If you delete your Simple AD or AD Connector
%% directory, you can always create a new one when you want to start using
%% WorkSpaces
%% again.
-spec terminate_workspaces(aws_client:aws_client(), terminate_workspaces_request()) ->
    {ok, terminate_workspaces_result(), tuple()} |
    {error, any()}.
terminate_workspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workspaces(Client, Input, []).

-spec terminate_workspaces(aws_client:aws_client(), terminate_workspaces_request(), proplists:proplist()) ->
    {ok, terminate_workspaces_result(), tuple()} |
    {error, any()}.
terminate_workspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkspaces">>, Input, Options).

%% @doc Terminates the specified pool.
-spec terminate_workspaces_pool(aws_client:aws_client(), terminate_workspaces_pool_request()) ->
    {ok, terminate_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, terminate_workspaces_pool_errors(), tuple()}.
terminate_workspaces_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workspaces_pool(Client, Input, []).

-spec terminate_workspaces_pool(aws_client:aws_client(), terminate_workspaces_pool_request(), proplists:proplist()) ->
    {ok, terminate_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, terminate_workspaces_pool_errors(), tuple()}.
terminate_workspaces_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkspacesPool">>, Input, Options).

%% @doc Terminates the pool session.
-spec terminate_workspaces_pool_session(aws_client:aws_client(), terminate_workspaces_pool_session_request()) ->
    {ok, terminate_workspaces_pool_session_result(), tuple()} |
    {error, any()} |
    {error, terminate_workspaces_pool_session_errors(), tuple()}.
terminate_workspaces_pool_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workspaces_pool_session(Client, Input, []).

-spec terminate_workspaces_pool_session(aws_client:aws_client(), terminate_workspaces_pool_session_request(), proplists:proplist()) ->
    {ok, terminate_workspaces_pool_session_result(), tuple()} |
    {error, any()} |
    {error, terminate_workspaces_pool_session_errors(), tuple()}.
terminate_workspaces_pool_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkspacesPoolSession">>, Input, Options).

%% @doc Updates a Amazon Connect client add-in.
%%
%% Use this action to update the name and
%% endpoint URL of a Amazon Connect client add-in.
-spec update_connect_client_add_in(aws_client:aws_client(), update_connect_client_add_in_request()) ->
    {ok, update_connect_client_add_in_result(), tuple()} |
    {error, any()} |
    {error, update_connect_client_add_in_errors(), tuple()}.
update_connect_client_add_in(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connect_client_add_in(Client, Input, []).

-spec update_connect_client_add_in(aws_client:aws_client(), update_connect_client_add_in_request(), proplists:proplist()) ->
    {ok, update_connect_client_add_in_result(), tuple()} |
    {error, any()} |
    {error, update_connect_client_add_in_errors(), tuple()}.
update_connect_client_add_in(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnectClientAddIn">>, Input, Options).

%% @doc Shares or unshares a connection alias with one account by specifying
%% whether that
%% account has permission to associate the connection alias with a directory.
%%
%% If the
%% association permission is granted, the connection alias is shared with
%% that account. If the
%% association permission is revoked, the connection alias is unshared with
%% the account. For
%% more information, see Cross-Region
%% Redirection for Amazon WorkSpaces:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html.
%%
%% Before performing this operation, call
%% DescribeConnectionAliases:
%% https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
%% to make sure that the current state of the
%% connection alias is `CREATED'.
%%
%% To delete a connection alias that has been shared, the shared account must
%% first disassociate the connection alias from any directories it has been
%% associated with. Then you must unshare the connection alias from the
%% account it
%% has been shared with. You can delete a connection alias only after it is
%% no longer
%% shared with any accounts or associated with any directories.
-spec update_connection_alias_permission(aws_client:aws_client(), update_connection_alias_permission_request()) ->
    {ok, update_connection_alias_permission_result(), tuple()} |
    {error, any()} |
    {error, update_connection_alias_permission_errors(), tuple()}.
update_connection_alias_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection_alias_permission(Client, Input, []).

-spec update_connection_alias_permission(aws_client:aws_client(), update_connection_alias_permission_request(), proplists:proplist()) ->
    {ok, update_connection_alias_permission_result(), tuple()} |
    {error, any()} |
    {error, update_connection_alias_permission_errors(), tuple()}.
update_connection_alias_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnectionAliasPermission">>, Input, Options).

%% @doc Replaces the current rules of the specified IP access control group
%% with the specified
%% rules.
-spec update_rules_of_ip_group(aws_client:aws_client(), update_rules_of_ip_group_request()) ->
    {ok, update_rules_of_ip_group_result(), tuple()} |
    {error, any()} |
    {error, update_rules_of_ip_group_errors(), tuple()}.
update_rules_of_ip_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rules_of_ip_group(Client, Input, []).

-spec update_rules_of_ip_group(aws_client:aws_client(), update_rules_of_ip_group_request(), proplists:proplist()) ->
    {ok, update_rules_of_ip_group_result(), tuple()} |
    {error, any()} |
    {error, update_rules_of_ip_group_errors(), tuple()}.
update_rules_of_ip_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRulesOfIpGroup">>, Input, Options).

%% @doc Updates a WorkSpace bundle with a new image.
%%
%% For more information about updating WorkSpace bundles, see
%%
%% Update a Custom WorkSpaces Bundle:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html.
%%
%% Existing WorkSpaces aren't automatically updated when you update the
%% bundle that they're
%% based on. To update existing WorkSpaces that are based on a bundle that
%% you've updated, you
%% must either rebuild the WorkSpaces or delete and recreate them.
-spec update_workspace_bundle(aws_client:aws_client(), update_workspace_bundle_request()) ->
    {ok, update_workspace_bundle_result(), tuple()} |
    {error, any()} |
    {error, update_workspace_bundle_errors(), tuple()}.
update_workspace_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workspace_bundle(Client, Input, []).

-spec update_workspace_bundle(aws_client:aws_client(), update_workspace_bundle_request(), proplists:proplist()) ->
    {ok, update_workspace_bundle_result(), tuple()} |
    {error, any()} |
    {error, update_workspace_bundle_errors(), tuple()}.
update_workspace_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkspaceBundle">>, Input, Options).

%% @doc Shares or unshares an image with one account in the same Amazon Web
%% Services Region by
%% specifying whether that account has permission to copy the image.
%%
%% If the copy image
%% permission is granted, the image is shared with that account. If the copy
%% image permission
%% is revoked, the image is unshared with the account.
%%
%% After an image has been shared, the recipient account can copy the image
%% to other
%% Regions as needed.
%%
%% In the China (Ningxia) Region, you can copy images only within the same
%% Region.
%%
%% In Amazon Web Services GovCloud (US), to copy images to and from other
%% Regions, contact Amazon Web ServicesSupport.
%%
%% For more information about sharing images, see Share or Unshare a Custom
%% WorkSpaces Image:
%% https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html.
%%
%% To delete an image that has been shared, you must unshare the image before
%% you
%% delete it.
%%
%% Sharing Bring Your Own License (BYOL) images across Amazon Web Services
%% accounts
%% isn't supported at this time in Amazon Web Services GovCloud (US). To
%% share BYOL images
%% across accounts in Amazon Web Services GovCloud (US), contact Amazon Web
%% ServicesSupport.
-spec update_workspace_image_permission(aws_client:aws_client(), update_workspace_image_permission_request()) ->
    {ok, update_workspace_image_permission_result(), tuple()} |
    {error, any()} |
    {error, update_workspace_image_permission_errors(), tuple()}.
update_workspace_image_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workspace_image_permission(Client, Input, []).

-spec update_workspace_image_permission(aws_client:aws_client(), update_workspace_image_permission_request(), proplists:proplist()) ->
    {ok, update_workspace_image_permission_result(), tuple()} |
    {error, any()} |
    {error, update_workspace_image_permission_errors(), tuple()}.
update_workspace_image_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkspaceImagePermission">>, Input, Options).

%% @doc Updates the specified pool.
-spec update_workspaces_pool(aws_client:aws_client(), update_workspaces_pool_request()) ->
    {ok, update_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, update_workspaces_pool_errors(), tuple()}.
update_workspaces_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workspaces_pool(Client, Input, []).

-spec update_workspaces_pool(aws_client:aws_client(), update_workspaces_pool_request(), proplists:proplist()) ->
    {ok, update_workspaces_pool_result(), tuple()} |
    {error, any()} |
    {error, update_workspaces_pool_errors(), tuple()}.
update_workspaces_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkspacesPool">>, Input, Options).

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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
