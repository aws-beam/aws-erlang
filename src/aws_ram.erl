%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Resource Access Manager API Reference.
%%
%% This documentation provides
%% descriptions and syntax for each of the actions and data types in RAM. RAM
%% is a
%% service that helps you securely share your Amazon Web Services resources
%% to other Amazon Web Services accounts. If
%% you use Organizations to manage your accounts, then you can share your
%% resources with your
%% entire organization or to organizational units (OUs). For supported
%% resource types, you
%% can also share resources with individual Identity and Access Management
%% (IAM) roles and users.
%%
%% To learn more about RAM, see the following resources:
%%
%% Resource Access Manager product page: http://aws.amazon.com/ram
%%
%% Resource Access Manager User
%% Guide: https://docs.aws.amazon.com/ram/latest/userguide/
-module(aws_ram).

-export([accept_resource_share_invitation/2,
         accept_resource_share_invitation/3,
         associate_resource_share/2,
         associate_resource_share/3,
         associate_resource_share_permission/2,
         associate_resource_share_permission/3,
         create_permission/2,
         create_permission/3,
         create_permission_version/2,
         create_permission_version/3,
         create_resource_share/2,
         create_resource_share/3,
         delete_permission/2,
         delete_permission/3,
         delete_permission_version/2,
         delete_permission_version/3,
         delete_resource_share/2,
         delete_resource_share/3,
         disassociate_resource_share/2,
         disassociate_resource_share/3,
         disassociate_resource_share_permission/2,
         disassociate_resource_share_permission/3,
         enable_sharing_with_aws_organization/2,
         enable_sharing_with_aws_organization/3,
         get_permission/2,
         get_permission/3,
         get_resource_policies/2,
         get_resource_policies/3,
         get_resource_share_associations/2,
         get_resource_share_associations/3,
         get_resource_share_invitations/2,
         get_resource_share_invitations/3,
         get_resource_shares/2,
         get_resource_shares/3,
         list_pending_invitation_resources/2,
         list_pending_invitation_resources/3,
         list_permission_associations/2,
         list_permission_associations/3,
         list_permission_versions/2,
         list_permission_versions/3,
         list_permissions/2,
         list_permissions/3,
         list_principals/2,
         list_principals/3,
         list_replace_permission_associations_work/2,
         list_replace_permission_associations_work/3,
         list_resource_share_permissions/2,
         list_resource_share_permissions/3,
         list_resource_types/2,
         list_resource_types/3,
         list_resources/2,
         list_resources/3,
         promote_permission_created_from_policy/2,
         promote_permission_created_from_policy/3,
         promote_resource_share_created_from_policy/2,
         promote_resource_share_created_from_policy/3,
         reject_resource_share_invitation/2,
         reject_resource_share_invitation/3,
         replace_permission_associations/2,
         replace_permission_associations/3,
         set_default_permission_version/2,
         set_default_permission_version/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_resource_share/2,
         update_resource_share/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% set_default_permission_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionArn">> := string(),
%%   <<"permissionVersion">> := integer()
%% }
-type set_default_permission_version_request() :: #{binary() => any()}.


%% Example:
%% resource_share_invitation_expired_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_share_invitation_expired_exception() :: #{binary() => any()}.


%% Example:
%% list_permissions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> => list(resource_share_permission_summary())
%% }
-type list_permissions_response() :: #{binary() => any()}.


%% Example:
%% create_resource_share_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShare">> => resource_share()
%% }
-type create_resource_share_response() :: #{binary() => any()}.


%% Example:
%% get_permission_response() :: #{
%%   <<"permission">> => resource_share_permission_detail()
%% }
-type get_permission_response() :: #{binary() => any()}.


%% Example:
%% invalid_max_results_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_max_results_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"resourceShareArn">> => string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_permission_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"permissionArn">> := string()
%% }
-type list_permission_versions_request() :: #{binary() => any()}.


%% Example:
%% list_replace_permission_associations_work_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any()),
%%   <<"workIds">> => list(string())
%% }
-type list_replace_permission_associations_work_request() :: #{binary() => any()}.


%% Example:
%% update_resource_share_request() :: #{
%%   <<"allowExternalPrincipals">> => boolean(),
%%   <<"clientToken">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceShareArn">> := string()
%% }
-type update_resource_share_request() :: #{binary() => any()}.


%% Example:
%% list_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(resource())
%% }
-type list_resources_response() :: #{binary() => any()}.


%% Example:
%% resource_share_association() :: #{
%%   <<"associatedEntity">> => string(),
%%   <<"associationType">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"external">> => boolean(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"resourceShareArn">> => string(),
%%   <<"resourceShareName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type resource_share_association() :: #{binary() => any()}.


%% Example:
%% resource_arn_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_arn_not_found_exception() :: #{binary() => any()}.


%% Example:
%% malformed_policy_template_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_policy_template_exception() :: #{binary() => any()}.


%% Example:
%% associate_resource_share_permission_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"returnValue">> => boolean()
%% }
-type associate_resource_share_permission_response() :: #{binary() => any()}.


%% Example:
%% create_resource_share_request() :: #{
%%   <<"allowExternalPrincipals">> => boolean(),
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"permissionArns">> => list(string()),
%%   <<"principals">> => list(string()),
%%   <<"resourceArns">> => list(string()),
%%   <<"sources">> => list(string()),
%%   <<"tags">> => list(tag())
%% }
-type create_resource_share_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% accept_resource_share_invitation_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareInvitationArn">> := string()
%% }
-type accept_resource_share_invitation_request() :: #{binary() => any()}.


%% Example:
%% get_permission_request() :: #{
%%   <<"permissionArn">> := string(),
%%   <<"permissionVersion">> => integer()
%% }
-type get_permission_request() :: #{binary() => any()}.


%% Example:
%% replace_permission_associations_work() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"fromPermissionArn">> => string(),
%%   <<"fromPermissionVersion">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"toPermissionArn">> => string(),
%%   <<"toPermissionVersion">> => string()
%% }
-type replace_permission_associations_work() :: #{binary() => any()}.


%% Example:
%% update_resource_share_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShare">> => resource_share()
%% }
-type update_resource_share_response() :: #{binary() => any()}.


%% Example:
%% resource_share_permission_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"defaultVersion">> => boolean(),
%%   <<"featureSet">> => list(any()),
%%   <<"isResourceTypeDefault">> => boolean(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"permissionType">> => list(any()),
%%   <<"resourceType">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"version">> => string()
%% }
-type resource_share_permission_summary() :: #{binary() => any()}.


%% Example:
%% resource_share_invitation_arn_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_share_invitation_arn_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_resource_share_invitations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceShareInvitations">> => list(resource_share_invitation())
%% }
-type get_resource_share_invitations_response() :: #{binary() => any()}.


%% Example:
%% missing_required_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type missing_required_parameter_exception() :: #{binary() => any()}.


%% Example:
%% list_resource_share_permissions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceShareArn">> := string()
%% }
-type list_resource_share_permissions_request() :: #{binary() => any()}.


%% Example:
%% unmatched_policy_permission_exception() :: #{
%%   <<"message">> => string()
%% }
-type unmatched_policy_permission_exception() :: #{binary() => any()}.


%% Example:
%% reject_resource_share_invitation_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareInvitationArn">> := string()
%% }
-type reject_resource_share_invitation_request() :: #{binary() => any()}.


%% Example:
%% create_permission_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionArn">> := string(),
%%   <<"policyTemplate">> := string()
%% }
-type create_permission_version_request() :: #{binary() => any()}.


%% Example:
%% list_pending_invitation_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceRegionScope">> => list(any()),
%%   <<"resourceShareInvitationArn">> := string()
%% }
-type list_pending_invitation_resources_request() :: #{binary() => any()}.


%% Example:
%% delete_permission_version_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionStatus">> => list(any()),
%%   <<"returnValue">> => boolean()
%% }
-type delete_permission_version_response() :: #{binary() => any()}.


%% Example:
%% principal() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"external">> => boolean(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"resourceShareArn">> => string()
%% }
-type principal() :: #{binary() => any()}.


%% Example:
%% permission_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type permission_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"resourceShareArn">> => string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_share_permission_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"returnValue">> => boolean()
%% }
-type disassociate_resource_share_permission_response() :: #{binary() => any()}.


%% Example:
%% resource_share_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_share_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% resource_share_invitation() :: #{
%%   <<"invitationTimestamp">> => non_neg_integer(),
%%   <<"receiverAccountId">> => string(),
%%   <<"receiverArn">> => string(),
%%   <<"resourceShareArn">> => string(),
%%   <<"resourceShareAssociations">> => list(resource_share_association()),
%%   <<"resourceShareInvitationArn">> => string(),
%%   <<"resourceShareName">> => string(),
%%   <<"senderAccountId">> => string(),
%%   <<"status">> => list(any())
%% }
-type resource_share_invitation() :: #{binary() => any()}.


%% Example:
%% list_permission_associations_request() :: #{
%%   <<"associationStatus">> => list(any()),
%%   <<"defaultVersion">> => boolean(),
%%   <<"featureSet">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"permissionArn">> => string(),
%%   <<"permissionVersion">> => integer(),
%%   <<"resourceType">> => string()
%% }
-type list_permission_associations_request() :: #{binary() => any()}.


%% Example:
%% promote_permission_created_from_policy_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permission">> => resource_share_permission_summary()
%% }
-type promote_permission_created_from_policy_response() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_share_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareAssociations">> => list(resource_share_association())
%% }
-type disassociate_resource_share_response() :: #{binary() => any()}.


%% Example:
%% delete_permission_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionArn">> := string()
%% }
-type delete_permission_request() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_share_permission_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionArn">> := string(),
%%   <<"resourceShareArn">> := string()
%% }
-type disassociate_resource_share_permission_request() :: #{binary() => any()}.


%% Example:
%% invalid_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_policy_exception() :: #{binary() => any()}.


%% Example:
%% resource_share_invitation_already_rejected_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_share_invitation_already_rejected_exception() :: #{binary() => any()}.


%% Example:
%% get_resource_share_associations_request() :: #{
%%   <<"associationStatus">> => list(any()),
%%   <<"associationType">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principal">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceShareArns">> => list(string())
%% }
-type get_resource_share_associations_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% resource_share_permission_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"defaultVersion">> => boolean(),
%%   <<"featureSet">> => list(any()),
%%   <<"isResourceTypeDefault">> => boolean(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"permission">> => string(),
%%   <<"permissionType">> => list(any()),
%%   <<"resourceType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag()),
%%   <<"version">> => string()
%% }
-type resource_share_permission_detail() :: #{binary() => any()}.


%% Example:
%% delete_permission_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionStatus">> => list(any()),
%%   <<"returnValue">> => boolean()
%% }
-type delete_permission_response() :: #{binary() => any()}.


%% Example:
%% service_name_and_resource_type() :: #{
%%   <<"resourceRegionScope">> => list(any()),
%%   <<"resourceType">> => string(),
%%   <<"serviceName">> => string()
%% }
-type service_name_and_resource_type() :: #{binary() => any()}.


%% Example:
%% list_replace_permission_associations_work_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"replacePermissionAssociationsWorks">> => list(replace_permission_associations_work())
%% }
-type list_replace_permission_associations_work_response() :: #{binary() => any()}.


%% Example:
%% promote_resource_share_created_from_policy_response() :: #{
%%   <<"returnValue">> => boolean()
%% }
-type promote_resource_share_created_from_policy_response() :: #{binary() => any()}.


%% Example:
%% permission_versions_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type permission_versions_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.


%% Example:
%% associate_resource_share_permission_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionArn">> := string(),
%%   <<"permissionVersion">> => integer(),
%%   <<"replace">> => boolean(),
%%   <<"resourceShareArn">> := string()
%% }
-type associate_resource_share_permission_request() :: #{binary() => any()}.


%% Example:
%% tag_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_resource_shares_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"permissionArn">> => string(),
%%   <<"permissionVersion">> => integer(),
%%   <<"resourceOwner">> := list(any()),
%%   <<"resourceShareArns">> => list(string()),
%%   <<"resourceShareStatus">> => list(any()),
%%   <<"tagFilters">> => list(tag_filter())
%% }
-type get_resource_shares_request() :: #{binary() => any()}.


%% Example:
%% list_permission_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> => list(resource_share_permission_summary())
%% }
-type list_permission_versions_response() :: #{binary() => any()}.


%% Example:
%% invalid_state_transition_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_transition_exception() :: #{binary() => any()}.


%% Example:
%% resource_share() :: #{
%%   <<"allowExternalPrincipals">> => boolean(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"featureSet">> => list(any()),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"owningAccountId">> => string(),
%%   <<"resourceShareArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type resource_share() :: #{binary() => any()}.


%% Example:
%% reject_resource_share_invitation_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareInvitation">> => resource_share_invitation()
%% }
-type reject_resource_share_invitation_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% list_principals_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"principals">> => list(principal())
%% }
-type list_principals_response() :: #{binary() => any()}.


%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.


%% Example:
%% delete_resource_share_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareArn">> := string()
%% }
-type delete_resource_share_request() :: #{binary() => any()}.


%% Example:
%% get_resource_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principal">> => string(),
%%   <<"resourceArns">> := list(string())
%% }
-type get_resource_policies_request() :: #{binary() => any()}.


%% Example:
%% get_resource_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policies">> => list(string())
%% }
-type get_resource_policies_response() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_share_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"principals">> => list(string()),
%%   <<"resourceArns">> => list(string()),
%%   <<"resourceShareArn">> := string(),
%%   <<"sources">> => list(string())
%% }
-type disassociate_resource_share_request() :: #{binary() => any()}.


%% Example:
%% promote_permission_created_from_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"permissionArn">> := string()
%% }
-type promote_permission_created_from_policy_request() :: #{binary() => any()}.


%% Example:
%% create_permission_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"policyTemplate">> := string(),
%%   <<"resourceType">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_permission_request() :: #{binary() => any()}.


%% Example:
%% get_resource_share_invitations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceShareArns">> => list(string()),
%%   <<"resourceShareInvitationArns">> => list(string())
%% }
-type get_resource_share_invitations_request() :: #{binary() => any()}.


%% Example:
%% associated_permission() :: #{
%%   <<"arn">> => string(),
%%   <<"defaultVersion">> => boolean(),
%%   <<"featureSet">> => list(any()),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"permissionVersion">> => string(),
%%   <<"resourceShareArn">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"status">> => string()
%% }
-type associated_permission() :: #{binary() => any()}.


%% Example:
%% list_permissions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"permissionType">> => list(any()),
%%   <<"resourceType">> => string()
%% }
-type list_permissions_request() :: #{binary() => any()}.


%% Example:
%% list_pending_invitation_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(resource())
%% }
-type list_pending_invitation_resources_response() :: #{binary() => any()}.


%% Example:
%% associate_resource_share_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"principals">> => list(string()),
%%   <<"resourceArns">> => list(string()),
%%   <<"resourceShareArn">> := string(),
%%   <<"sources">> => list(string())
%% }
-type associate_resource_share_request() :: #{binary() => any()}.


%% Example:
%% get_resource_share_associations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceShareAssociations">> => list(resource_share_association())
%% }
-type get_resource_share_associations_response() :: #{binary() => any()}.


%% Example:
%% unknown_resource_exception() :: #{
%%   <<"message">> => string()
%% }
-type unknown_resource_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% malformed_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_arn_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_resource_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceRegionScope">> => list(any())
%% }
-type list_resource_types_request() :: #{binary() => any()}.


%% Example:
%% server_internal_exception() :: #{
%%   <<"message">> => string()
%% }
-type server_internal_exception() :: #{binary() => any()}.


%% Example:
%% set_default_permission_version_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"returnValue">> => boolean()
%% }
-type set_default_permission_version_response() :: #{binary() => any()}.


%% Example:
%% enable_sharing_with_aws_organization_response() :: #{
%%   <<"returnValue">> => boolean()
%% }
-type enable_sharing_with_aws_organization_response() :: #{binary() => any()}.


%% Example:
%% delete_resource_share_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"returnValue">> => boolean()
%% }
-type delete_resource_share_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% associate_resource_share_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareAssociations">> => list(resource_share_association())
%% }
-type associate_resource_share_response() :: #{binary() => any()}.


%% Example:
%% invalid_client_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_client_token_exception() :: #{binary() => any()}.

%% Example:
%% enable_sharing_with_aws_organization_request() :: #{}
-type enable_sharing_with_aws_organization_request() :: #{}.


%% Example:
%% list_resource_share_permissions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> => list(resource_share_permission_summary())
%% }
-type list_resource_share_permissions_response() :: #{binary() => any()}.


%% Example:
%% list_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principal">> => string(),
%%   <<"resourceArns">> => list(string()),
%%   <<"resourceOwner">> := list(any()),
%%   <<"resourceRegionScope">> => list(any()),
%%   <<"resourceShareArns">> => list(string()),
%%   <<"resourceType">> => string()
%% }
-type list_resources_request() :: #{binary() => any()}.


%% Example:
%% list_permission_associations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> => list(associated_permission())
%% }
-type list_permission_associations_response() :: #{binary() => any()}.


%% Example:
%% promote_resource_share_created_from_policy_request() :: #{
%%   <<"resourceShareArn">> := string()
%% }
-type promote_resource_share_created_from_policy_request() :: #{binary() => any()}.


%% Example:
%% tag_filter() :: #{
%%   <<"tagKey">> => string(),
%%   <<"tagValues">> => list(string())
%% }
-type tag_filter() :: #{binary() => any()}.


%% Example:
%% resource_share_invitation_already_accepted_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_share_invitation_already_accepted_exception() :: #{binary() => any()}.


%% Example:
%% list_principals_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principals">> => list(string()),
%%   <<"resourceArn">> => string(),
%%   <<"resourceOwner">> := list(any()),
%%   <<"resourceShareArns">> => list(string()),
%%   <<"resourceType">> => string()
%% }
-type list_principals_request() :: #{binary() => any()}.


%% Example:
%% list_resource_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceTypes">> => list(service_name_and_resource_type())
%% }
-type list_resource_types_response() :: #{binary() => any()}.


%% Example:
%% delete_permission_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permissionArn">> := string(),
%%   <<"permissionVersion">> := integer()
%% }
-type delete_permission_version_request() :: #{binary() => any()}.


%% Example:
%% get_resource_shares_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceShares">> => list(resource_share())
%% }
-type get_resource_shares_response() :: #{binary() => any()}.


%% Example:
%% accept_resource_share_invitation_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceShareInvitation">> => resource_share_invitation()
%% }
-type accept_resource_share_invitation_response() :: #{binary() => any()}.


%% Example:
%% create_permission_version_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permission">> => resource_share_permission_detail()
%% }
-type create_permission_version_response() :: #{binary() => any()}.


%% Example:
%% replace_permission_associations_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"fromPermissionArn">> := string(),
%%   <<"fromPermissionVersion">> => integer(),
%%   <<"toPermissionArn">> := string()
%% }
-type replace_permission_associations_request() :: #{binary() => any()}.


%% Example:
%% invalid_resource_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_resource_type_exception() :: #{binary() => any()}.


%% Example:
%% replace_permission_associations_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"replacePermissionAssociationsWork">> => replace_permission_associations_work()
%% }
-type replace_permission_associations_response() :: #{binary() => any()}.


%% Example:
%% create_permission_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"permission">> => resource_share_permission_summary()
%% }
-type create_permission_response() :: #{binary() => any()}.


%% Example:
%% tag_policy_violation_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_policy_violation_exception() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"resourceGroupArn">> => string(),
%%   <<"resourceRegionScope">> => list(any()),
%%   <<"resourceShareArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% permission_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type permission_limit_exceeded_exception() :: #{binary() => any()}.

-type accept_resource_share_invitation_errors() ::
    resource_share_invitation_already_accepted_exception() | 
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_share_invitation_already_rejected_exception() | 
    resource_share_invitation_arn_not_found_exception() | 
    resource_share_invitation_expired_exception().

-type associate_resource_share_errors() ::
    invalid_client_token_exception() | 
    throttling_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_share_limit_exceeded_exception().

-type associate_resource_share_permission_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception().

-type create_permission_errors() ::
    permission_limit_exceeded_exception() | 
    invalid_client_token_exception() | 
    server_internal_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_policy_exception() | 
    permission_already_exists_exception() | 
    malformed_policy_template_exception().

-type create_permission_version_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    permission_versions_limit_exceeded_exception() | 
    invalid_policy_exception() | 
    malformed_policy_template_exception().

-type create_resource_share_errors() ::
    tag_policy_violation_exception() | 
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    tag_limit_exceeded_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_share_limit_exceeded_exception().

-type delete_permission_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception().

-type delete_permission_version_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception().

-type delete_resource_share_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    idempotent_parameter_mismatch_exception().

-type disassociate_resource_share_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_share_limit_exceeded_exception().

-type disassociate_resource_share_permission_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception().

-type enable_sharing_with_aws_organization_errors() ::
    server_internal_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception().

-type get_permission_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception().

-type get_resource_policies_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    resource_arn_not_found_exception().

-type get_resource_share_associations_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type get_resource_share_invitations_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    resource_share_invitation_arn_not_found_exception() | 
    invalid_max_results_exception().

-type get_resource_shares_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_pending_invitation_resources_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    resource_share_invitation_already_rejected_exception() | 
    missing_required_parameter_exception() | 
    resource_share_invitation_arn_not_found_exception() | 
    resource_share_invitation_expired_exception().

-type list_permission_associations_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_permission_versions_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_permissions_errors() ::
    server_internal_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_principals_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_replace_permission_associations_work_errors() ::
    server_internal_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_resource_share_permissions_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_resource_types_errors() ::
    server_internal_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type list_resources_errors() ::
    invalid_resource_type_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    invalid_next_token_exception().

-type promote_permission_created_from_policy_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    missing_required_parameter_exception().

-type promote_resource_share_created_from_policy_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    resource_share_limit_exceeded_exception() | 
    unmatched_policy_permission_exception() | 
    missing_required_parameter_exception().

-type reject_resource_share_invitation_errors() ::
    resource_share_invitation_already_accepted_exception() | 
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_share_invitation_already_rejected_exception() | 
    resource_share_invitation_arn_not_found_exception() | 
    resource_share_invitation_expired_exception().

-type replace_permission_associations_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception().

-type set_default_permission_version_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception().

-type tag_resource_errors() ::
    tag_policy_violation_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception() | 
    tag_limit_exceeded_exception() | 
    resource_arn_not_found_exception().

-type untag_resource_errors() ::
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    service_unavailable_exception().

-type update_resource_share_errors() ::
    invalid_client_token_exception() | 
    server_internal_exception() | 
    malformed_arn_exception() | 
    invalid_parameter_exception() | 
    unknown_resource_exception() | 
    operation_not_permitted_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    missing_required_parameter_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an invitation to a resource share from another Amazon Web
%% Services account.
%%
%% After you accept the
%% invitation, the resources included in the resource share are available to
%% interact with in the
%% relevant Amazon Web Services Management Consoles and tools.
-spec accept_resource_share_invitation(aws_client:aws_client(), accept_resource_share_invitation_request()) ->
    {ok, accept_resource_share_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_resource_share_invitation_errors(), tuple()}.
accept_resource_share_invitation(Client, Input) ->
    accept_resource_share_invitation(Client, Input, []).

-spec accept_resource_share_invitation(aws_client:aws_client(), accept_resource_share_invitation_request(), proplists:proplist()) ->
    {ok, accept_resource_share_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_resource_share_invitation_errors(), tuple()}.
accept_resource_share_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/acceptresourceshareinvitation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified list of principals and list of resources to a
%% resource share.
%%
%% Principals that
%% already have access to this resource share immediately receive access to
%% the added resources.
%% Newly added principals immediately receive access to the resources shared
%% in this resource share.
-spec associate_resource_share(aws_client:aws_client(), associate_resource_share_request()) ->
    {ok, associate_resource_share_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_share_errors(), tuple()}.
associate_resource_share(Client, Input) ->
    associate_resource_share(Client, Input, []).

-spec associate_resource_share(aws_client:aws_client(), associate_resource_share_request(), proplists:proplist()) ->
    {ok, associate_resource_share_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_share_errors(), tuple()}.
associate_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateresourceshare"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or replaces the RAM permission for a resource type included in a
%% resource share.
%%
%% You can
%% have exactly one permission associated with each resource type in the
%% resource share. You can add
%% a new RAM permission only if there are currently no resources of that
%% resource type
%% currently in the resource share.
-spec associate_resource_share_permission(aws_client:aws_client(), associate_resource_share_permission_request()) ->
    {ok, associate_resource_share_permission_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_share_permission_errors(), tuple()}.
associate_resource_share_permission(Client, Input) ->
    associate_resource_share_permission(Client, Input, []).

-spec associate_resource_share_permission(aws_client:aws_client(), associate_resource_share_permission_request(), proplists:proplist()) ->
    {ok, associate_resource_share_permission_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_share_permission_errors(), tuple()}.
associate_resource_share_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateresourcesharepermission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a customer managed permission for a specified resource type
%% that you can attach to resource shares.
%%
%% It is created in the Amazon Web Services Region in which you call the
%% operation.
-spec create_permission(aws_client:aws_client(), create_permission_request()) ->
    {ok, create_permission_response(), tuple()} |
    {error, any()} |
    {error, create_permission_errors(), tuple()}.
create_permission(Client, Input) ->
    create_permission(Client, Input, []).

-spec create_permission(aws_client:aws_client(), create_permission_request(), proplists:proplist()) ->
    {ok, create_permission_response(), tuple()} |
    {error, any()} |
    {error, create_permission_errors(), tuple()}.
create_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createpermission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of the specified customer managed permission.
%%
%% The new version is automatically set as
%% the default version of the customer managed permission. New resource
%% shares automatically use the default
%% permission. Existing resource shares continue to use their original
%% permission versions,
%% but you can use `ReplacePermissionAssociations' to update them.
%%
%% If the specified customer managed permission already has the maximum of 5
%% versions, then
%% you must delete one of the existing versions before you can create a new
%% one.
-spec create_permission_version(aws_client:aws_client(), create_permission_version_request()) ->
    {ok, create_permission_version_response(), tuple()} |
    {error, any()} |
    {error, create_permission_version_errors(), tuple()}.
create_permission_version(Client, Input) ->
    create_permission_version(Client, Input, []).

-spec create_permission_version(aws_client:aws_client(), create_permission_version_request(), proplists:proplist()) ->
    {ok, create_permission_version_response(), tuple()} |
    {error, any()} |
    {error, create_permission_version_errors(), tuple()}.
create_permission_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createpermissionversion"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a resource share.
%%
%% You can provide a list of the Amazon Resource Names (ARNs):
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% for the resources that you
%% want to share, a list of principals you want to share the resources with,
%% and the
%% permissions to grant those principals.
%%
%% Sharing a resource makes it available for use by principals outside of the
%% Amazon Web Services account that created the resource. Sharing doesn't
%% change any permissions or
%% quotas that apply to the resource in the account that created it.
-spec create_resource_share(aws_client:aws_client(), create_resource_share_request()) ->
    {ok, create_resource_share_response(), tuple()} |
    {error, any()} |
    {error, create_resource_share_errors(), tuple()}.
create_resource_share(Client, Input) ->
    create_resource_share(Client, Input, []).

-spec create_resource_share(aws_client:aws_client(), create_resource_share_request(), proplists:proplist()) ->
    {ok, create_resource_share_response(), tuple()} |
    {error, any()} |
    {error, create_resource_share_errors(), tuple()}.
create_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createresourceshare"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified customer managed permission in the Amazon Web
%% Services Region in which you call this operation.
%%
%% You
%% can delete a customer managed permission only if it isn't attached to
%% any resource share. The operation deletes all
%% versions associated with the customer managed permission.
-spec delete_permission(aws_client:aws_client(), delete_permission_request()) ->
    {ok, delete_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_errors(), tuple()}.
delete_permission(Client, Input) ->
    delete_permission(Client, Input, []).

-spec delete_permission(aws_client:aws_client(), delete_permission_request(), proplists:proplist()) ->
    {ok, delete_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_errors(), tuple()}.
delete_permission(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deletepermission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"permissionArn">>, <<"permissionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one version of a customer managed permission.
%%
%% The version you specify must not be attached to any
%% resource share and must not be the default version for the permission.
%%
%% If a customer managed permission has the maximum of 5 versions, then you
%% must delete at
%% least one version before you can create another.
-spec delete_permission_version(aws_client:aws_client(), delete_permission_version_request()) ->
    {ok, delete_permission_version_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_version_errors(), tuple()}.
delete_permission_version(Client, Input) ->
    delete_permission_version(Client, Input, []).

-spec delete_permission_version(aws_client:aws_client(), delete_permission_version_request(), proplists:proplist()) ->
    {ok, delete_permission_version_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_version_errors(), tuple()}.
delete_permission_version(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deletepermissionversion"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"permissionArn">>, <<"permissionArn">>},
                     {<<"permissionVersion">>, <<"permissionVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified resource share.
%%
%% This doesn't delete any of the resources that were associated with the
%% resource share; it
%% only stops the sharing of those resources through this resource share.
-spec delete_resource_share(aws_client:aws_client(), delete_resource_share_request()) ->
    {ok, delete_resource_share_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_share_errors(), tuple()}.
delete_resource_share(Client, Input) ->
    delete_resource_share(Client, Input, []).

-spec delete_resource_share(aws_client:aws_client(), delete_resource_share_request(), proplists:proplist()) ->
    {ok, delete_resource_share_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_share_errors(), tuple()}.
delete_resource_share(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deleteresourceshare"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified principals or resources from participating in
%% the specified
%% resource share.
-spec disassociate_resource_share(aws_client:aws_client(), disassociate_resource_share_request()) ->
    {ok, disassociate_resource_share_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_share_errors(), tuple()}.
disassociate_resource_share(Client, Input) ->
    disassociate_resource_share(Client, Input, []).

-spec disassociate_resource_share(aws_client:aws_client(), disassociate_resource_share_request(), proplists:proplist()) ->
    {ok, disassociate_resource_share_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_share_errors(), tuple()}.
disassociate_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateresourceshare"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a managed permission from a resource share.
%%
%% Permission changes take effect immediately. You can
%% remove a managed permission from a resource share only if there are
%% currently no resources of the relevant
%% resource type currently attached to the resource share.
-spec disassociate_resource_share_permission(aws_client:aws_client(), disassociate_resource_share_permission_request()) ->
    {ok, disassociate_resource_share_permission_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_share_permission_errors(), tuple()}.
disassociate_resource_share_permission(Client, Input) ->
    disassociate_resource_share_permission(Client, Input, []).

-spec disassociate_resource_share_permission(aws_client:aws_client(), disassociate_resource_share_permission_request(), proplists:proplist()) ->
    {ok, disassociate_resource_share_permission_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_share_permission_errors(), tuple()}.
disassociate_resource_share_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateresourcesharepermission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables resource sharing within your organization in Organizations.
%%
%% This operation creates
%% a service-linked role called `AWSServiceRoleForResourceAccessManager'
%% that has the IAM managed policy
%% named AWSResourceAccessManagerServiceRolePolicy attached. This role
%% permits RAM to retrieve information about
%% the organization and its structure. This lets you share resources with all
%% of the
%% accounts in the calling account's organization by specifying the
%% organization ID, or all
%% of the accounts in an organizational unit (OU) by specifying the OU ID.
%% Until you enable
%% sharing within the organization, you can specify only individual Amazon
%% Web Services accounts, or for
%% supported resource types, IAM roles and users.
%%
%% You must call this operation from an IAM role or user in the
%% organization's
%% management account.
-spec enable_sharing_with_aws_organization(aws_client:aws_client(), enable_sharing_with_aws_organization_request()) ->
    {ok, enable_sharing_with_aws_organization_response(), tuple()} |
    {error, any()} |
    {error, enable_sharing_with_aws_organization_errors(), tuple()}.
enable_sharing_with_aws_organization(Client, Input) ->
    enable_sharing_with_aws_organization(Client, Input, []).

-spec enable_sharing_with_aws_organization(aws_client:aws_client(), enable_sharing_with_aws_organization_request(), proplists:proplist()) ->
    {ok, enable_sharing_with_aws_organization_response(), tuple()} |
    {error, any()} |
    {error, enable_sharing_with_aws_organization_errors(), tuple()}.
enable_sharing_with_aws_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enablesharingwithawsorganization"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the contents of a managed permission in JSON format.
-spec get_permission(aws_client:aws_client(), get_permission_request()) ->
    {ok, get_permission_response(), tuple()} |
    {error, any()} |
    {error, get_permission_errors(), tuple()}.
get_permission(Client, Input) ->
    get_permission(Client, Input, []).

-spec get_permission(aws_client:aws_client(), get_permission_request(), proplists:proplist()) ->
    {ok, get_permission_response(), tuple()} |
    {error, any()} |
    {error, get_permission_errors(), tuple()}.
get_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getpermission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource policies for the specified resources that you
%% own and have
%% shared.
-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_request()) ->
    {ok, get_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input) ->
    get_resource_policies(Client, Input, []).

-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_request(), proplists:proplist()) ->
    {ok, get_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourcepolicies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the lists of resources and principals that associated for
%% resource shares that you
%% own.
-spec get_resource_share_associations(aws_client:aws_client(), get_resource_share_associations_request()) ->
    {ok, get_resource_share_associations_response(), tuple()} |
    {error, any()} |
    {error, get_resource_share_associations_errors(), tuple()}.
get_resource_share_associations(Client, Input) ->
    get_resource_share_associations(Client, Input, []).

-spec get_resource_share_associations(aws_client:aws_client(), get_resource_share_associations_request(), proplists:proplist()) ->
    {ok, get_resource_share_associations_response(), tuple()} |
    {error, any()} |
    {error, get_resource_share_associations_errors(), tuple()}.
get_resource_share_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshareassociations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about invitations that you have received for
%% resource shares.
-spec get_resource_share_invitations(aws_client:aws_client(), get_resource_share_invitations_request()) ->
    {ok, get_resource_share_invitations_response(), tuple()} |
    {error, any()} |
    {error, get_resource_share_invitations_errors(), tuple()}.
get_resource_share_invitations(Client, Input) ->
    get_resource_share_invitations(Client, Input, []).

-spec get_resource_share_invitations(aws_client:aws_client(), get_resource_share_invitations_request(), proplists:proplist()) ->
    {ok, get_resource_share_invitations_response(), tuple()} |
    {error, any()} |
    {error, get_resource_share_invitations_errors(), tuple()}.
get_resource_share_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshareinvitations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about the resource shares that you own or that are
%% shared with you.
-spec get_resource_shares(aws_client:aws_client(), get_resource_shares_request()) ->
    {ok, get_resource_shares_response(), tuple()} |
    {error, any()} |
    {error, get_resource_shares_errors(), tuple()}.
get_resource_shares(Client, Input) ->
    get_resource_shares(Client, Input, []).

-spec get_resource_shares(aws_client:aws_client(), get_resource_shares_request(), proplists:proplist()) ->
    {ok, get_resource_shares_response(), tuple()} |
    {error, any()} |
    {error, get_resource_shares_errors(), tuple()}.
get_resource_shares(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshares"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources in a resource share that is shared with you but
%% for which the invitation is
%% still `PENDING'.
%%
%% That means that you haven't accepted or rejected the
%% invitation and the invitation hasn't expired.
-spec list_pending_invitation_resources(aws_client:aws_client(), list_pending_invitation_resources_request()) ->
    {ok, list_pending_invitation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_pending_invitation_resources_errors(), tuple()}.
list_pending_invitation_resources(Client, Input) ->
    list_pending_invitation_resources(Client, Input, []).

-spec list_pending_invitation_resources(aws_client:aws_client(), list_pending_invitation_resources_request(), proplists:proplist()) ->
    {ok, list_pending_invitation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_pending_invitation_resources_errors(), tuple()}.
list_pending_invitation_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpendinginvitationresources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists information about the managed permission and its associations
%% to any resource shares that use
%% this managed permission.
%%
%% This lets you see which resource shares use which versions of the
%% specified
%% managed permission.
-spec list_permission_associations(aws_client:aws_client(), list_permission_associations_request()) ->
    {ok, list_permission_associations_response(), tuple()} |
    {error, any()} |
    {error, list_permission_associations_errors(), tuple()}.
list_permission_associations(Client, Input) ->
    list_permission_associations(Client, Input, []).

-spec list_permission_associations(aws_client:aws_client(), list_permission_associations_request(), proplists:proplist()) ->
    {ok, list_permission_associations_response(), tuple()} |
    {error, any()} |
    {error, list_permission_associations_errors(), tuple()}.
list_permission_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissionassociations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the available versions of the specified RAM permission.
-spec list_permission_versions(aws_client:aws_client(), list_permission_versions_request()) ->
    {ok, list_permission_versions_response(), tuple()} |
    {error, any()} |
    {error, list_permission_versions_errors(), tuple()}.
list_permission_versions(Client, Input) ->
    list_permission_versions(Client, Input, []).

-spec list_permission_versions(aws_client:aws_client(), list_permission_versions_request(), proplists:proplist()) ->
    {ok, list_permission_versions_response(), tuple()} |
    {error, any()} |
    {error, list_permission_versions_errors(), tuple()}.
list_permission_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissionversions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of available RAM permissions that you can use for
%% the supported
%% resource types.
-spec list_permissions(aws_client:aws_client(), list_permissions_request()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, Input) ->
    list_permissions(Client, Input, []).

-spec list_permissions(aws_client:aws_client(), list_permissions_request(), proplists:proplist()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the principals that you are sharing resources with or that are
%% sharing resources
%% with you.
-spec list_principals(aws_client:aws_client(), list_principals_request()) ->
    {ok, list_principals_response(), tuple()} |
    {error, any()} |
    {error, list_principals_errors(), tuple()}.
list_principals(Client, Input) ->
    list_principals(Client, Input, []).

-spec list_principals(aws_client:aws_client(), list_principals_request(), proplists:proplist()) ->
    {ok, list_principals_response(), tuple()} |
    {error, any()} |
    {error, list_principals_errors(), tuple()}.
list_principals(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listprincipals"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current status of the asynchronous tasks performed by
%% RAM when you
%% perform the `ReplacePermissionAssociationsWork' operation.
-spec list_replace_permission_associations_work(aws_client:aws_client(), list_replace_permission_associations_work_request()) ->
    {ok, list_replace_permission_associations_work_response(), tuple()} |
    {error, any()} |
    {error, list_replace_permission_associations_work_errors(), tuple()}.
list_replace_permission_associations_work(Client, Input) ->
    list_replace_permission_associations_work(Client, Input, []).

-spec list_replace_permission_associations_work(aws_client:aws_client(), list_replace_permission_associations_work_request(), proplists:proplist()) ->
    {ok, list_replace_permission_associations_work_response(), tuple()} |
    {error, any()} |
    {error, list_replace_permission_associations_work_errors(), tuple()}.
list_replace_permission_associations_work(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listreplacepermissionassociationswork"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the RAM permissions that are associated with a resource share.
-spec list_resource_share_permissions(aws_client:aws_client(), list_resource_share_permissions_request()) ->
    {ok, list_resource_share_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_resource_share_permissions_errors(), tuple()}.
list_resource_share_permissions(Client, Input) ->
    list_resource_share_permissions(Client, Input, []).

-spec list_resource_share_permissions(aws_client:aws_client(), list_resource_share_permissions_request(), proplists:proplist()) ->
    {ok, list_resource_share_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_resource_share_permissions_errors(), tuple()}.
list_resource_share_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresourcesharepermissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resource types that can be shared by RAM.
-spec list_resource_types(aws_client:aws_client(), list_resource_types_request()) ->
    {ok, list_resource_types_response(), tuple()} |
    {error, any()} |
    {error, list_resource_types_errors(), tuple()}.
list_resource_types(Client, Input) ->
    list_resource_types(Client, Input, []).

-spec list_resource_types(aws_client:aws_client(), list_resource_types_request(), proplists:proplist()) ->
    {ok, list_resource_types_response(), tuple()} |
    {error, any()} |
    {error, list_resource_types_errors(), tuple()}.
list_resource_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresourcetypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources that you added to a resource share or the
%% resources that are shared with
%% you.
-spec list_resources(aws_client:aws_client(), list_resources_request()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input) ->
    list_resources(Client, Input, []).

-spec list_resources(aws_client:aws_client(), list_resources_request(), proplists:proplist()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you attach a resource-based policy to a resource, RAM
%% automatically creates
%% a resource share of `featureSet'=`CREATED_FROM_POLICY' with a
%% managed permission that
%% has the same IAM permissions as the original resource-based policy.
%%
%% However, this type
%% of managed permission is visible to only the resource share owner, and the
%% associated resource share can't be modified by
%% using RAM.
%%
%% This operation creates a separate, fully manageable customer managed
%% permission that has the same IAM
%% permissions as the original resource-based policy. You can associate this
%% customer managed permission to any
%% resource shares.
%%
%% Before you use `PromoteResourceShareCreatedFromPolicy', you should
%% first run this operation to ensure that you have an appropriate customer
%% managed permission that can be
%% associated with the promoted resource share.
%%
%% The original `CREATED_FROM_POLICY' policy isn't deleted, and
%% resource shares using that original policy aren't automatically
%% updated.
%%
%% You can't modify a `CREATED_FROM_POLICY' resource share so you
%% can't
%% associate the new customer managed permission by using
%% `ReplacePermsissionAssociations'. However, if you use
%% `PromoteResourceShareCreatedFromPolicy', that operation
%% automatically associates the fully manageable customer managed permission
%% to the newly promoted
%% `STANDARD' resource share.
%%
%% After you promote a resource share, if the original
%% `CREATED_FROM_POLICY'
%% managed permission has no other associations to A resource share, then RAM
%% automatically deletes
%% it.
-spec promote_permission_created_from_policy(aws_client:aws_client(), promote_permission_created_from_policy_request()) ->
    {ok, promote_permission_created_from_policy_response(), tuple()} |
    {error, any()} |
    {error, promote_permission_created_from_policy_errors(), tuple()}.
promote_permission_created_from_policy(Client, Input) ->
    promote_permission_created_from_policy(Client, Input, []).

-spec promote_permission_created_from_policy(aws_client:aws_client(), promote_permission_created_from_policy_request(), proplists:proplist()) ->
    {ok, promote_permission_created_from_policy_response(), tuple()} |
    {error, any()} |
    {error, promote_permission_created_from_policy_errors(), tuple()}.
promote_permission_created_from_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/promotepermissioncreatedfrompolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you attach a resource-based policy to a resource, RAM
%% automatically creates
%% a resource share of `featureSet'=`CREATED_FROM_POLICY' with a
%% managed permission that
%% has the same IAM permissions as the original resource-based policy.
%%
%% However, this type
%% of managed permission is visible to only the resource share owner, and the
%% associated resource share can't be modified by
%% using RAM.
%%
%% This operation promotes the resource share to a `STANDARD' resource
%% share that is fully
%% manageable in RAM. When you promote a resource share, you can then manage
%% the resource share in RAM and
%% it becomes visible to all of the principals you shared it with.
%%
%% Before you perform this operation, you should first run
%% `PromotePermissionCreatedFromPolicy'to ensure that you have an
%% appropriate customer managed permission that can be associated with this
%% resource share after its is promoted. If
%% this operation can't find a managed permission that exactly matches
%% the existing
%% `CREATED_FROM_POLICY' permission, then this operation fails.
-spec promote_resource_share_created_from_policy(aws_client:aws_client(), promote_resource_share_created_from_policy_request()) ->
    {ok, promote_resource_share_created_from_policy_response(), tuple()} |
    {error, any()} |
    {error, promote_resource_share_created_from_policy_errors(), tuple()}.
promote_resource_share_created_from_policy(Client, Input) ->
    promote_resource_share_created_from_policy(Client, Input, []).

-spec promote_resource_share_created_from_policy(aws_client:aws_client(), promote_resource_share_created_from_policy_request(), proplists:proplist()) ->
    {ok, promote_resource_share_created_from_policy_response(), tuple()} |
    {error, any()} |
    {error, promote_resource_share_created_from_policy_errors(), tuple()}.
promote_resource_share_created_from_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/promoteresourcesharecreatedfrompolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects an invitation to a resource share from another Amazon Web
%% Services account.
-spec reject_resource_share_invitation(aws_client:aws_client(), reject_resource_share_invitation_request()) ->
    {ok, reject_resource_share_invitation_response(), tuple()} |
    {error, any()} |
    {error, reject_resource_share_invitation_errors(), tuple()}.
reject_resource_share_invitation(Client, Input) ->
    reject_resource_share_invitation(Client, Input, []).

-spec reject_resource_share_invitation(aws_client:aws_client(), reject_resource_share_invitation_request(), proplists:proplist()) ->
    {ok, reject_resource_share_invitation_response(), tuple()} |
    {error, any()} |
    {error, reject_resource_share_invitation_errors(), tuple()}.
reject_resource_share_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rejectresourceshareinvitation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates all resource shares that use a managed permission to a
%% different managed
%% permission.
%%
%% This operation always applies the default version of the target managed
%% permission. You can optionally specify that the update applies to only
%% resource shares that
%% currently use a specified version. This enables you to update to the
%% latest version,
%% without changing the which managed permission is used.
%%
%% You can use this operation to update all of your resource shares to use
%% the current
%% default version of the permission by specifying the same value for the
%% `fromPermissionArn' and `toPermissionArn' parameters.
%%
%% You can use the optional `fromPermissionVersion' parameter to update
%% only
%% those resources that use a specified version of the managed permission to
%% the new managed
%% permission.
%%
%% To successfully perform this operation, you must have permission to update
%% the
%% resource-based policy on all affected resource types.
-spec replace_permission_associations(aws_client:aws_client(), replace_permission_associations_request()) ->
    {ok, replace_permission_associations_response(), tuple()} |
    {error, any()} |
    {error, replace_permission_associations_errors(), tuple()}.
replace_permission_associations(Client, Input) ->
    replace_permission_associations(Client, Input, []).

-spec replace_permission_associations(aws_client:aws_client(), replace_permission_associations_request(), proplists:proplist()) ->
    {ok, replace_permission_associations_response(), tuple()} |
    {error, any()} |
    {error, replace_permission_associations_errors(), tuple()}.
replace_permission_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/replacepermissionassociations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Designates the specified version number as the default version for
%% the specified
%% customer managed permission.
%%
%% New resource shares automatically use this new default permission.
%% Existing
%% resource shares continue to use their original permission version, but you
%% can use `ReplacePermissionAssociations' to update them.
-spec set_default_permission_version(aws_client:aws_client(), set_default_permission_version_request()) ->
    {ok, set_default_permission_version_response(), tuple()} |
    {error, any()} |
    {error, set_default_permission_version_errors(), tuple()}.
set_default_permission_version(Client, Input) ->
    set_default_permission_version(Client, Input, []).

-spec set_default_permission_version(aws_client:aws_client(), set_default_permission_version_request(), proplists:proplist()) ->
    {ok, set_default_permission_version_response(), tuple()} |
    {error, any()} |
    {error, set_default_permission_version_errors(), tuple()}.
set_default_permission_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/setdefaultpermissionversion"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tag keys and values to a resource share or managed
%% permission.
%%
%% If you choose a resource share, the
%% tags are attached to only the resource share, not to the resources that
%% are in the resource share.
%%
%% The tags on a managed permission are the same for all versions of the
%% managed permission.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagresource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tag key and value pairs from the specified
%% resource share or managed permission.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagresource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies some of the properties of the specified resource share.
-spec update_resource_share(aws_client:aws_client(), update_resource_share_request()) ->
    {ok, update_resource_share_response(), tuple()} |
    {error, any()} |
    {error, update_resource_share_errors(), tuple()}.
update_resource_share(Client, Input) ->
    update_resource_share(Client, Input, []).

-spec update_resource_share(aws_client:aws_client(), update_resource_share_request(), proplists:proplist()) ->
    {ok, update_resource_share_response(), tuple()} |
    {error, any()} |
    {error, update_resource_share_errors(), tuple()}.
update_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateresourceshare"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"ram">>},
    Host = build_host(<<"ram">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
