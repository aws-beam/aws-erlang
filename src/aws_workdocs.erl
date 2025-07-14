%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon WorkDocs API is designed for the following use cases:
%%
%% File Migration: File migration applications are supported for users who
%% want to migrate their files from an on-premises or off-premises file
%% system or
%% service.
%%
%% Users can insert files into a user directory structure, as well as
%% allow for basic metadata changes, such as modifications to the permissions
%% of
%% files.
%%
%% Security: Support security applications are supported for users who have
%% additional security needs, such as antivirus or data loss prevention. The
%% API
%% actions, along with CloudTrail, allow these applications to detect when
%% changes occur in Amazon WorkDocs. Then, the application can take the
%% necessary
%% actions and replace the target file. If the target file violates the
%% policy, the
%% application can also choose to email the user.
%%
%% eDiscovery/Analytics: General administrative applications are supported,
%% such as eDiscovery and analytics. These applications can choose to mimic
%% or
%% record the actions in an Amazon WorkDocs site, along with CloudTrail, to
%% replicate data for eDiscovery, backup, or analytical applications.
%%
%% All Amazon WorkDocs API actions are Amazon authenticated and
%% certificate-signed.
%% They not only require the use of the Amazon Web Services SDK, but also
%% allow for the exclusive use of
%% IAM users and roles to help facilitate access, trust, and permission
%% policies. By
%% creating a role and allowing an IAM user to access the Amazon WorkDocs
%% site, the
%% IAM user gains full administrative visibility into the entire Amazon
%% WorkDocs site (or as
%% set in the IAM policy). This includes, but is not limited to, the ability
%% to modify file
%% permissions and upload any file to any user. This allows developers to
%% perform the three
%% use cases above, as well as give users the ability to grant access on a
%% selective basis
%% using the IAM model.
%%
%% The pricing for Amazon WorkDocs APIs varies depending on the API call type
%% for these actions:
%%
%% `READ (Get*)'
%%
%% `WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)'
%%
%% `LIST (Describe*)'
%%
%% `DELETE*, CANCEL'
%%
%% For information about Amazon WorkDocs API pricing, see Amazon WorkDocs
%% Pricing: https://aws.amazon.com/workdocs/pricing/.
-module(aws_workdocs).

-export([abort_document_version_upload/4,
         abort_document_version_upload/5,
         activate_user/3,
         activate_user/4,
         add_resource_permissions/3,
         add_resource_permissions/4,
         create_comment/4,
         create_comment/5,
         create_custom_metadata/3,
         create_custom_metadata/4,
         create_folder/2,
         create_folder/3,
         create_labels/3,
         create_labels/4,
         create_notification_subscription/3,
         create_notification_subscription/4,
         create_user/2,
         create_user/3,
         deactivate_user/3,
         deactivate_user/4,
         delete_comment/5,
         delete_comment/6,
         delete_custom_metadata/3,
         delete_custom_metadata/4,
         delete_document/3,
         delete_document/4,
         delete_document_version/4,
         delete_document_version/5,
         delete_folder/3,
         delete_folder/4,
         delete_folder_contents/3,
         delete_folder_contents/4,
         delete_labels/3,
         delete_labels/4,
         delete_notification_subscription/4,
         delete_notification_subscription/5,
         delete_user/3,
         delete_user/4,
         describe_activities/1,
         describe_activities/3,
         describe_activities/4,
         describe_comments/3,
         describe_comments/5,
         describe_comments/6,
         describe_document_versions/2,
         describe_document_versions/4,
         describe_document_versions/5,
         describe_folder_contents/2,
         describe_folder_contents/4,
         describe_folder_contents/5,
         describe_groups/2,
         describe_groups/4,
         describe_groups/5,
         describe_notification_subscriptions/2,
         describe_notification_subscriptions/4,
         describe_notification_subscriptions/5,
         describe_resource_permissions/2,
         describe_resource_permissions/4,
         describe_resource_permissions/5,
         describe_root_folders/2,
         describe_root_folders/4,
         describe_root_folders/5,
         describe_users/1,
         describe_users/3,
         describe_users/4,
         get_current_user/2,
         get_current_user/4,
         get_current_user/5,
         get_document/2,
         get_document/4,
         get_document/5,
         get_document_path/2,
         get_document_path/4,
         get_document_path/5,
         get_document_version/3,
         get_document_version/5,
         get_document_version/6,
         get_folder/2,
         get_folder/4,
         get_folder/5,
         get_folder_path/2,
         get_folder_path/4,
         get_folder_path/5,
         get_resources/1,
         get_resources/3,
         get_resources/4,
         initiate_document_version_upload/2,
         initiate_document_version_upload/3,
         remove_all_resource_permissions/3,
         remove_all_resource_permissions/4,
         remove_resource_permission/4,
         remove_resource_permission/5,
         restore_document_versions/3,
         restore_document_versions/4,
         search_resources/2,
         search_resources/3,
         update_document/3,
         update_document/4,
         update_document_version/4,
         update_document_version/5,
         update_folder/3,
         update_folder/4,
         update_user/3,
         update_user/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_document_path_response() :: #{
%%   <<"Path">> => resource_path()
%% }
-type get_document_path_response() :: #{binary() => any()}.


%% Example:
%% entity_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entity_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% search_resources_request() :: #{
%%   <<"AdditionalResponseFields">> => list(list(any())()),
%%   <<"AuthenticationToken">> => string(),
%%   <<"Filters">> => filters(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"OrderBy">> => list(search_sort_result()),
%%   <<"OrganizationId">> => string(),
%%   <<"QueryScopes">> => list(list(any())()),
%%   <<"QueryText">> => string()
%% }
-type search_resources_request() :: #{binary() => any()}.


%% Example:
%% describe_resource_permissions_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Principals">> => list(principal())
%% }
-type describe_resource_permissions_response() :: #{binary() => any()}.


%% Example:
%% create_notification_subscription_request() :: #{
%%   <<"Endpoint">> := string(),
%%   <<"Protocol">> := list(any()),
%%   <<"SubscriptionType">> := list(any())
%% }
-type create_notification_subscription_request() :: #{binary() => any()}.


%% Example:
%% add_resource_permissions_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"NotificationOptions">> => notification_options(),
%%   <<"Principals">> := list(share_principal())
%% }
-type add_resource_permissions_request() :: #{binary() => any()}.


%% Example:
%% conflicting_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflicting_operation_exception() :: #{binary() => any()}.


%% Example:
%% create_folder_response() :: #{
%%   <<"Metadata">> => folder_metadata()
%% }
-type create_folder_response() :: #{binary() => any()}.


%% Example:
%% delete_comment_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type delete_comment_request() :: #{binary() => any()}.


%% Example:
%% resource_metadata() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OriginalName">> => string(),
%%   <<"Owner">> => user_metadata(),
%%   <<"ParentId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"VersionId">> => string()
%% }
-type resource_metadata() :: #{binary() => any()}.


%% Example:
%% restore_document_versions_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type restore_document_versions_request() :: #{binary() => any()}.


%% Example:
%% describe_resource_permissions_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"PrincipalId">> => string()
%% }
-type describe_resource_permissions_request() :: #{binary() => any()}.


%% Example:
%% get_folder_path_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Fields">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type get_folder_path_request() :: #{binary() => any()}.


%% Example:
%% get_document_path_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Fields">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type get_document_path_request() :: #{binary() => any()}.


%% Example:
%% update_user_response() :: #{
%%   <<"User">> => user()
%% }
-type update_user_response() :: #{binary() => any()}.


%% Example:
%% create_comment_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"NotifyCollaborators">> => boolean(),
%%   <<"ParentId">> => string(),
%%   <<"Text">> := string(),
%%   <<"ThreadId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type create_comment_request() :: #{binary() => any()}.


%% Example:
%% user_metadata() :: #{
%%   <<"EmailAddress">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"Id">> => string(),
%%   <<"Surname">> => string(),
%%   <<"Username">> => string()
%% }
-type user_metadata() :: #{binary() => any()}.


%% Example:
%% permission_info() :: #{
%%   <<"Role">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type permission_info() :: #{binary() => any()}.


%% Example:
%% failed_dependency_exception() :: #{
%%   <<"Message">> => string()
%% }
-type failed_dependency_exception() :: #{binary() => any()}.


%% Example:
%% describe_users_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"TotalNumberOfUsers">> => float(),
%%   <<"Users">> => list(user())
%% }
-type describe_users_response() :: #{binary() => any()}.


%% Example:
%% describe_folder_contents_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Include">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"Order">> => list(any()),
%%   <<"Sort">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type describe_folder_contents_request() :: #{binary() => any()}.


%% Example:
%% prohibited_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type prohibited_state_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_operation_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type unauthorized_operation_exception() :: #{binary() => any()}.

%% Example:
%% delete_labels_response() :: #{}
-type delete_labels_response() :: #{}.


%% Example:
%% add_resource_permissions_response() :: #{
%%   <<"ShareResults">> => list(share_result())
%% }
-type add_resource_permissions_response() :: #{binary() => any()}.


%% Example:
%% get_document_version_response() :: #{
%%   <<"CustomMetadata">> => map(),
%%   <<"Metadata">> => document_version_metadata()
%% }
-type get_document_version_response() :: #{binary() => any()}.


%% Example:
%% describe_folder_contents_response() :: #{
%%   <<"Documents">> => list(document_metadata()),
%%   <<"Folders">> => list(folder_metadata()),
%%   <<"Marker">> => string()
%% }
-type describe_folder_contents_response() :: #{binary() => any()}.


%% Example:
%% describe_root_folders_request() :: #{
%%   <<"AuthenticationToken">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type describe_root_folders_request() :: #{binary() => any()}.


%% Example:
%% get_folder_response() :: #{
%%   <<"CustomMetadata">> => map(),
%%   <<"Metadata">> => folder_metadata()
%% }
-type get_folder_response() :: #{binary() => any()}.


%% Example:
%% invalid_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.


%% Example:
%% describe_users_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Fields">> => string(),
%%   <<"Include">> => list(any()),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"Order">> => list(any()),
%%   <<"OrganizationId">> => string(),
%%   <<"Query">> => string(),
%%   <<"Sort">> => list(any()),
%%   <<"UserIds">> => string()
%% }
-type describe_users_request() :: #{binary() => any()}.


%% Example:
%% group_metadata() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type group_metadata() :: #{binary() => any()}.


%% Example:
%% describe_comments_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type describe_comments_request() :: #{binary() => any()}.


%% Example:
%% update_document_version_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"VersionStatus">> => list(any())
%% }
-type update_document_version_request() :: #{binary() => any()}.


%% Example:
%% update_document_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParentFolderId">> => string(),
%%   <<"ResourceState">> => list(any())
%% }
-type update_document_request() :: #{binary() => any()}.


%% Example:
%% delete_custom_metadata_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"DeleteAll">> => boolean(),
%%   <<"Keys">> => list(string()),
%%   <<"VersionId">> => string()
%% }
-type delete_custom_metadata_request() :: #{binary() => any()}.


%% Example:
%% activate_user_response() :: #{
%%   <<"User">> => user()
%% }
-type activate_user_response() :: #{binary() => any()}.


%% Example:
%% entity_not_exists_exception() :: #{
%%   <<"EntityIds">> => list(string()),
%%   <<"Message">> => string()
%% }
-type entity_not_exists_exception() :: #{binary() => any()}.


%% Example:
%% delete_labels_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"DeleteAll">> => boolean(),
%%   <<"Labels">> => list(string())
%% }
-type delete_labels_request() :: #{binary() => any()}.


%% Example:
%% principal() :: #{
%%   <<"Id">> => string(),
%%   <<"Roles">> => list(permission_info()),
%%   <<"Type">> => list(any())
%% }
-type principal() :: #{binary() => any()}.

%% Example:
%% delete_custom_metadata_response() :: #{}
-type delete_custom_metadata_response() :: #{}.


%% Example:
%% delete_document_version_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"DeletePriorVersions">> := boolean()
%% }
-type delete_document_version_request() :: #{binary() => any()}.


%% Example:
%% delete_document_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type delete_document_request() :: #{binary() => any()}.


%% Example:
%% describe_document_versions_response() :: #{
%%   <<"DocumentVersions">> => list(document_version_metadata()),
%%   <<"Marker">> => string()
%% }
-type describe_document_versions_response() :: #{binary() => any()}.


%% Example:
%% too_many_labels_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_labels_exception() :: #{binary() => any()}.


%% Example:
%% describe_activities_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"UserActivities">> => list(activity())
%% }
-type describe_activities_response() :: #{binary() => any()}.


%% Example:
%% search_principal_type() :: #{
%%   <<"Id">> => string(),
%%   <<"Roles">> => list(list(any())())
%% }
-type search_principal_type() :: #{binary() => any()}.


%% Example:
%% unauthorized_resource_access_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unauthorized_resource_access_exception() :: #{binary() => any()}.


%% Example:
%% custom_metadata_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type custom_metadata_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% comment_metadata() :: #{
%%   <<"CommentId">> => string(),
%%   <<"CommentStatus">> => list(any()),
%%   <<"Contributor">> => user(),
%%   <<"ContributorId">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"RecipientId">> => string()
%% }
-type comment_metadata() :: #{binary() => any()}.


%% Example:
%% search_resources_response() :: #{
%%   <<"Items">> => list(response_item()),
%%   <<"Marker">> => string()
%% }
-type search_resources_response() :: #{binary() => any()}.


%% Example:
%% date_range_type() :: #{
%%   <<"EndValue">> => non_neg_integer(),
%%   <<"StartValue">> => non_neg_integer()
%% }
-type date_range_type() :: #{binary() => any()}.


%% Example:
%% storage_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type storage_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_document_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"IncludeCustomMetadata">> => boolean()
%% }
-type get_document_request() :: #{binary() => any()}.

%% Example:
%% delete_notification_subscription_request() :: #{}
-type delete_notification_subscription_request() :: #{}.


%% Example:
%% get_resources_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"CollectionType">> => list(any()),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"UserId">> => string()
%% }
-type get_resources_request() :: #{binary() => any()}.


%% Example:
%% describe_groups_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"OrganizationId">> => string(),
%%   <<"SearchQuery">> := string()
%% }
-type describe_groups_request() :: #{binary() => any()}.


%% Example:
%% requested_entity_too_large_exception() :: #{
%%   <<"Message">> => string()
%% }
-type requested_entity_too_large_exception() :: #{binary() => any()}.


%% Example:
%% get_folder_path_response() :: #{
%%   <<"Path">> => resource_path()
%% }
-type get_folder_path_response() :: #{binary() => any()}.


%% Example:
%% activity() :: #{
%%   <<"CommentMetadata">> => comment_metadata(),
%%   <<"Initiator">> => user_metadata(),
%%   <<"IsIndirectActivity">> => boolean(),
%%   <<"OrganizationId">> => string(),
%%   <<"OriginalParent">> => resource_metadata(),
%%   <<"Participants">> => participants(),
%%   <<"ResourceMetadata">> => resource_metadata(),
%%   <<"TimeStamp">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type activity() :: #{binary() => any()}.


%% Example:
%% share_principal() :: #{
%%   <<"Id">> => string(),
%%   <<"Role">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type share_principal() :: #{binary() => any()}.


%% Example:
%% comment() :: #{
%%   <<"CommentId">> => string(),
%%   <<"Contributor">> => user(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ParentId">> => string(),
%%   <<"RecipientId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Text">> => string(),
%%   <<"ThreadId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type comment() :: #{binary() => any()}.


%% Example:
%% get_resources_response() :: #{
%%   <<"Documents">> => list(document_metadata()),
%%   <<"Folders">> => list(folder_metadata()),
%%   <<"Marker">> => string()
%% }
-type get_resources_response() :: #{binary() => any()}.


%% Example:
%% remove_all_resource_permissions_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type remove_all_resource_permissions_request() :: #{binary() => any()}.


%% Example:
%% delete_folder_contents_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type delete_folder_contents_request() :: #{binary() => any()}.


%% Example:
%% folder_metadata() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"CreatorId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Labels">> => list(string()),
%%   <<"LatestVersionSize">> => float(),
%%   <<"ModifiedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ParentFolderId">> => string(),
%%   <<"ResourceState">> => list(any()),
%%   <<"Signature">> => string(),
%%   <<"Size">> => float()
%% }
-type folder_metadata() :: #{binary() => any()}.


%% Example:
%% too_many_subscriptions_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_subscriptions_exception() :: #{binary() => any()}.


%% Example:
%% create_labels_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Labels">> := list(string())
%% }
-type create_labels_request() :: #{binary() => any()}.


%% Example:
%% get_current_user_request() :: #{
%%   <<"AuthenticationToken">> := string()
%% }
-type get_current_user_request() :: #{binary() => any()}.


%% Example:
%% create_comment_response() :: #{
%%   <<"Comment">> => comment()
%% }
-type create_comment_response() :: #{binary() => any()}.


%% Example:
%% delete_folder_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type delete_folder_request() :: #{binary() => any()}.


%% Example:
%% long_range_type() :: #{
%%   <<"EndValue">> => float(),
%%   <<"StartValue">> => float()
%% }
-type long_range_type() :: #{binary() => any()}.


%% Example:
%% describe_notification_subscriptions_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type describe_notification_subscriptions_request() :: #{binary() => any()}.


%% Example:
%% get_current_user_response() :: #{
%%   <<"User">> => user()
%% }
-type get_current_user_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% resource_path() :: #{
%%   <<"Components">> => list(resource_path_component())
%% }
-type resource_path() :: #{binary() => any()}.


%% Example:
%% invalid_comment_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_comment_operation_exception() :: #{binary() => any()}.


%% Example:
%% create_notification_subscription_response() :: #{
%%   <<"Subscription">> => subscription()
%% }
-type create_notification_subscription_response() :: #{binary() => any()}.


%% Example:
%% user_storage_metadata() :: #{
%%   <<"StorageRule">> => storage_rule_type(),
%%   <<"StorageUtilizedInBytes">> => float()
%% }
-type user_storage_metadata() :: #{binary() => any()}.


%% Example:
%% delete_user_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type delete_user_request() :: #{binary() => any()}.


%% Example:
%% describe_document_versions_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Fields">> => string(),
%%   <<"Include">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type describe_document_versions_request() :: #{binary() => any()}.


%% Example:
%% abort_document_version_upload_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type abort_document_version_upload_request() :: #{binary() => any()}.


%% Example:
%% describe_comments_response() :: #{
%%   <<"Comments">> => list(comment()),
%%   <<"Marker">> => string()
%% }
-type describe_comments_response() :: #{binary() => any()}.


%% Example:
%% update_folder_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParentFolderId">> => string(),
%%   <<"ResourceState">> => list(any())
%% }
-type update_folder_request() :: #{binary() => any()}.


%% Example:
%% deactivating_last_system_user_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type deactivating_last_system_user_exception() :: #{binary() => any()}.


%% Example:
%% create_custom_metadata_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"CustomMetadata">> := map(),
%%   <<"VersionId">> => string()
%% }
-type create_custom_metadata_request() :: #{binary() => any()}.


%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.


%% Example:
%% get_document_version_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Fields">> => string(),
%%   <<"IncludeCustomMetadata">> => boolean()
%% }
-type get_document_version_request() :: #{binary() => any()}.


%% Example:
%% describe_groups_response() :: #{
%%   <<"Groups">> => list(group_metadata()),
%%   <<"Marker">> => string()
%% }
-type describe_groups_response() :: #{binary() => any()}.


%% Example:
%% illegal_user_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_user_state_exception() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% describe_root_folders_response() :: #{
%%   <<"Folders">> => list(folder_metadata()),
%%   <<"Marker">> => string()
%% }
-type describe_root_folders_response() :: #{binary() => any()}.


%% Example:
%% update_user_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"GrantPoweruserPrivileges">> => list(any()),
%%   <<"Locale">> => list(any()),
%%   <<"StorageRule">> => storage_rule_type(),
%%   <<"Surname">> => string(),
%%   <<"TimeZoneId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% get_folder_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"IncludeCustomMetadata">> => boolean()
%% }
-type get_folder_request() :: #{binary() => any()}.


%% Example:
%% document_metadata() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"CreatorId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Labels">> => list(string()),
%%   <<"LatestVersionMetadata">> => document_version_metadata(),
%%   <<"ModifiedTimestamp">> => non_neg_integer(),
%%   <<"ParentFolderId">> => string(),
%%   <<"ResourceState">> => list(any())
%% }
-type document_metadata() :: #{binary() => any()}.


%% Example:
%% subscription() :: #{
%%   <<"EndPoint">> => string(),
%%   <<"Protocol">> => list(any()),
%%   <<"SubscriptionId">> => string()
%% }
-type subscription() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EmailAddress">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"Id">> => string(),
%%   <<"Locale">> => list(any()),
%%   <<"ModifiedTimestamp">> => non_neg_integer(),
%%   <<"OrganizationId">> => string(),
%%   <<"RecycleBinFolderId">> => string(),
%%   <<"RootFolderId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Storage">> => user_storage_metadata(),
%%   <<"Surname">> => string(),
%%   <<"TimeZoneId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Username">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% storage_limit_will_exceed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type storage_limit_will_exceed_exception() :: #{binary() => any()}.


%% Example:
%% draft_upload_out_of_sync_exception() :: #{
%%   <<"Message">> => string()
%% }
-type draft_upload_out_of_sync_exception() :: #{binary() => any()}.


%% Example:
%% notification_options() :: #{
%%   <<"EmailMessage">> => string(),
%%   <<"SendEmail">> => boolean()
%% }
-type notification_options() :: #{binary() => any()}.


%% Example:
%% describe_notification_subscriptions_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Subscriptions">> => list(subscription())
%% }
-type describe_notification_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% filters() :: #{
%%   <<"AncestorIds">> => list(string()),
%%   <<"ContentCategories">> => list(list(any())()),
%%   <<"CreatedRange">> => date_range_type(),
%%   <<"Labels">> => list(string()),
%%   <<"ModifiedRange">> => date_range_type(),
%%   <<"Principals">> => list(search_principal_type()),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"SearchCollectionTypes">> => list(list(any())()),
%%   <<"SizeRange">> => long_range_type(),
%%   <<"TextLocales">> => list(list(any())())
%% }
-type filters() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% search_sort_result() :: #{
%%   <<"Field">> => list(any()),
%%   <<"Order">> => list(any())
%% }
-type search_sort_result() :: #{binary() => any()}.


%% Example:
%% share_result() :: #{
%%   <<"InviteePrincipalId">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"Role">> => list(any()),
%%   <<"ShareId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type share_result() :: #{binary() => any()}.


%% Example:
%% initiate_document_version_upload_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"ContentCreatedTimestamp">> => non_neg_integer(),
%%   <<"ContentModifiedTimestamp">> => non_neg_integer(),
%%   <<"ContentType">> => string(),
%%   <<"DocumentSizeInBytes">> => float(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParentFolderId">> => string()
%% }
-type initiate_document_version_upload_request() :: #{binary() => any()}.


%% Example:
%% describe_activities_request() :: #{
%%   <<"ActivityTypes">> => string(),
%%   <<"AuthenticationToken">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"IncludeIndirectActivities">> => boolean(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"OrganizationId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"UserId">> => string()
%% }
-type describe_activities_request() :: #{binary() => any()}.


%% Example:
%% storage_rule_type() :: #{
%%   <<"StorageAllocatedInBytes">> => float(),
%%   <<"StorageType">> => list(any())
%% }
-type storage_rule_type() :: #{binary() => any()}.


%% Example:
%% initiate_document_version_upload_response() :: #{
%%   <<"Metadata">> => document_metadata(),
%%   <<"UploadMetadata">> => upload_metadata()
%% }
-type initiate_document_version_upload_response() :: #{binary() => any()}.


%% Example:
%% document_version_metadata() :: #{
%%   <<"ContentCreatedTimestamp">> => non_neg_integer(),
%%   <<"ContentModifiedTimestamp">> => non_neg_integer(),
%%   <<"ContentType">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"CreatorId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Signature">> => string(),
%%   <<"Size">> => float(),
%%   <<"Source">> => map(),
%%   <<"Status">> => list(any()),
%%   <<"Thumbnail">> => map()
%% }
-type document_version_metadata() :: #{binary() => any()}.


%% Example:
%% remove_resource_permission_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type remove_resource_permission_request() :: #{binary() => any()}.


%% Example:
%% participants() :: #{
%%   <<"Groups">> => list(group_metadata()),
%%   <<"Users">> => list(user_metadata())
%% }
-type participants() :: #{binary() => any()}.


%% Example:
%% activate_user_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type activate_user_request() :: #{binary() => any()}.


%% Example:
%% create_folder_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParentFolderId">> := string()
%% }
-type create_folder_request() :: #{binary() => any()}.


%% Example:
%% response_item() :: #{
%%   <<"CommentMetadata">> => comment_metadata(),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"DocumentVersionMetadata">> => document_version_metadata(),
%%   <<"FolderMetadata">> => folder_metadata(),
%%   <<"ResourceType">> => list(any()),
%%   <<"WebUrl">> => string()
%% }
-type response_item() :: #{binary() => any()}.

%% Example:
%% create_labels_response() :: #{}
-type create_labels_response() :: #{}.


%% Example:
%% upload_metadata() :: #{
%%   <<"SignedHeaders">> => map(),
%%   <<"UploadUrl">> => string()
%% }
-type upload_metadata() :: #{binary() => any()}.


%% Example:
%% resource_path_component() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type resource_path_component() :: #{binary() => any()}.


%% Example:
%% document_locked_for_comments_exception() :: #{
%%   <<"Message">> => string()
%% }
-type document_locked_for_comments_exception() :: #{binary() => any()}.

%% Example:
%% create_custom_metadata_response() :: #{}
-type create_custom_metadata_response() :: #{}.


%% Example:
%% create_user_response() :: #{
%%   <<"User">> => user()
%% }
-type create_user_response() :: #{binary() => any()}.


%% Example:
%% invalid_password_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_password_exception() :: #{binary() => any()}.


%% Example:
%% deactivate_user_request() :: #{
%%   <<"AuthenticationToken">> => string()
%% }
-type deactivate_user_request() :: #{binary() => any()}.


%% Example:
%% get_document_response() :: #{
%%   <<"CustomMetadata">> => map(),
%%   <<"Metadata">> => document_metadata()
%% }
-type get_document_response() :: #{binary() => any()}.


%% Example:
%% resource_already_checked_out_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_checked_out_exception() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"AuthenticationToken">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"GivenName">> := string(),
%%   <<"OrganizationId">> => string(),
%%   <<"Password">> := string(),
%%   <<"StorageRule">> => storage_rule_type(),
%%   <<"Surname">> := string(),
%%   <<"TimeZoneId">> => string(),
%%   <<"Username">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.

-type abort_document_version_upload_errors() ::
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type activate_user_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type add_resource_permissions_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type create_comment_errors() ::
    document_locked_for_comments_exception() | 
    invalid_comment_operation_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type create_custom_metadata_errors() ::
    service_unavailable_exception() | 
    custom_metadata_limit_exceeded_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type create_folder_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception() | 
    entity_already_exists_exception().

-type create_labels_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    too_many_labels_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type create_notification_subscription_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    too_many_subscriptions_exception() | 
    unauthorized_resource_access_exception().

-type create_user_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception() | 
    entity_already_exists_exception().

-type deactivate_user_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type delete_comment_errors() ::
    document_locked_for_comments_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type delete_custom_metadata_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type delete_document_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception().

-type delete_document_version_errors() ::
    concurrent_modification_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    invalid_operation_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception().

-type delete_folder_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception().

-type delete_folder_contents_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception().

-type delete_labels_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type delete_notification_subscription_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    prohibited_state_exception().

-type delete_user_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type describe_activities_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type describe_comments_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type describe_document_versions_errors() ::
    invalid_password_exception() | 
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type describe_folder_contents_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type describe_groups_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type describe_notification_subscriptions_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception().

-type describe_resource_permissions_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type describe_root_folders_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type describe_users_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    requested_entity_too_large_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type get_current_user_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type get_document_errors() ::
    invalid_password_exception() | 
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type get_document_path_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type get_document_version_errors() ::
    invalid_password_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type get_folder_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type get_folder_path_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type get_resources_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type initiate_document_version_upload_errors() ::
    resource_already_checked_out_exception() | 
    invalid_password_exception() | 
    limit_exceeded_exception() | 
    draft_upload_out_of_sync_exception() | 
    storage_limit_will_exceed_exception() | 
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    storage_limit_exceeded_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    entity_already_exists_exception().

-type remove_all_resource_permissions_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type remove_resource_permission_errors() ::
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception() | 
    failed_dependency_exception().

-type restore_document_versions_errors() ::
    concurrent_modification_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    invalid_operation_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception().

-type search_resources_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    unauthorized_operation_exception().

-type update_document_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception() | 
    entity_already_exists_exception().

-type update_document_version_errors() ::
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    invalid_operation_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

-type update_folder_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception() | 
    conflicting_operation_exception() | 
    entity_already_exists_exception().

-type update_user_errors() ::
    illegal_user_state_exception() | 
    invalid_argument_exception() | 
    deactivating_last_system_user_exception() | 
    service_unavailable_exception() | 
    unauthorized_resource_access_exception() | 
    entity_not_exists_exception() | 
    unauthorized_operation_exception() | 
    prohibited_state_exception() | 
    failed_dependency_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Aborts the upload of the specified document version that was
%% previously initiated
%% by `InitiateDocumentVersionUpload'.
%%
%% The client should make this call
%% only when it no longer intends to upload the document version, or fails to
%% do
%% so.
-spec abort_document_version_upload(aws_client:aws_client(), binary() | list(), binary() | list(), abort_document_version_upload_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_document_version_upload_errors(), tuple()}.
abort_document_version_upload(Client, DocumentId, VersionId, Input) ->
    abort_document_version_upload(Client, DocumentId, VersionId, Input, []).

-spec abort_document_version_upload(aws_client:aws_client(), binary() | list(), binary() | list(), abort_document_version_upload_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_document_version_upload_errors(), tuple()}.
abort_document_version_upload(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Activates the specified user.
%%
%% Only active users can access Amazon
%% WorkDocs.
-spec activate_user(aws_client:aws_client(), binary() | list(), activate_user_request()) ->
    {ok, activate_user_response(), tuple()} |
    {error, any()} |
    {error, activate_user_errors(), tuple()}.
activate_user(Client, UserId, Input) ->
    activate_user(Client, UserId, Input, []).

-spec activate_user(aws_client:aws_client(), binary() | list(), activate_user_request(), proplists:proplist()) ->
    {ok, activate_user_response(), tuple()} |
    {error, any()} |
    {error, activate_user_errors(), tuple()}.
activate_user(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), "/activation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a set of permissions for the specified folder or document.
%%
%% The resource
%% permissions are overwritten if the principals already have different
%% permissions.
-spec add_resource_permissions(aws_client:aws_client(), binary() | list(), add_resource_permissions_request()) ->
    {ok, add_resource_permissions_response(), tuple()} |
    {error, any()} |
    {error, add_resource_permissions_errors(), tuple()}.
add_resource_permissions(Client, ResourceId, Input) ->
    add_resource_permissions(Client, ResourceId, Input, []).

-spec add_resource_permissions(aws_client:aws_client(), binary() | list(), add_resource_permissions_request(), proplists:proplist()) ->
    {ok, add_resource_permissions_response(), tuple()} |
    {error, any()} |
    {error, add_resource_permissions_errors(), tuple()}.
add_resource_permissions(Client, ResourceId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new comment to the specified document version.
-spec create_comment(aws_client:aws_client(), binary() | list(), binary() | list(), create_comment_request()) ->
    {ok, create_comment_response(), tuple()} |
    {error, any()} |
    {error, create_comment_errors(), tuple()}.
create_comment(Client, DocumentId, VersionId, Input) ->
    create_comment(Client, DocumentId, VersionId, Input, []).

-spec create_comment(aws_client:aws_client(), binary() | list(), binary() | list(), create_comment_request(), proplists:proplist()) ->
    {ok, create_comment_response(), tuple()} |
    {error, any()} |
    {error, create_comment_errors(), tuple()}.
create_comment(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), "/comment"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more custom properties to the specified resource (a
%% folder, document,
%% or version).
-spec create_custom_metadata(aws_client:aws_client(), binary() | list(), create_custom_metadata_request()) ->
    {ok, create_custom_metadata_response(), tuple()} |
    {error, any()} |
    {error, create_custom_metadata_errors(), tuple()}.
create_custom_metadata(Client, ResourceId, Input) ->
    create_custom_metadata(Client, ResourceId, Input, []).

-spec create_custom_metadata(aws_client:aws_client(), binary() | list(), create_custom_metadata_request(), proplists:proplist()) ->
    {ok, create_custom_metadata_response(), tuple()} |
    {error, any()} |
    {error, create_custom_metadata_errors(), tuple()}.
create_custom_metadata(Client, ResourceId, Input0, Options0) ->
    Method = put,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/customMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionid">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a folder with the specified name and parent folder.
-spec create_folder(aws_client:aws_client(), create_folder_request()) ->
    {ok, create_folder_response(), tuple()} |
    {error, any()} |
    {error, create_folder_errors(), tuple()}.
create_folder(Client, Input) ->
    create_folder(Client, Input, []).

-spec create_folder(aws_client:aws_client(), create_folder_request(), proplists:proplist()) ->
    {ok, create_folder_response(), tuple()} |
    {error, any()} |
    {error, create_folder_errors(), tuple()}.
create_folder(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/folders"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified list of labels to the given resource (a document
%% or
%% folder)
-spec create_labels(aws_client:aws_client(), binary() | list(), create_labels_request()) ->
    {ok, create_labels_response(), tuple()} |
    {error, any()} |
    {error, create_labels_errors(), tuple()}.
create_labels(Client, ResourceId, Input) ->
    create_labels(Client, ResourceId, Input, []).

-spec create_labels(aws_client:aws_client(), binary() | list(), create_labels_request(), proplists:proplist()) ->
    {ok, create_labels_response(), tuple()} |
    {error, any()} |
    {error, create_labels_errors(), tuple()}.
create_labels(Client, ResourceId, Input0, Options0) ->
    Method = put,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/labels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Configure Amazon WorkDocs to use Amazon SNS notifications.
%%
%% The endpoint receives a
%% confirmation message, and must confirm the subscription.
%%
%% For more information, see Setting up notifications for an IAM user or
%% role:
%% https://docs.aws.amazon.com/workdocs/latest/developerguide/manage-notifications.html
%% in the Amazon WorkDocs Developer
%% Guide.
-spec create_notification_subscription(aws_client:aws_client(), binary() | list(), create_notification_subscription_request()) ->
    {ok, create_notification_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_notification_subscription_errors(), tuple()}.
create_notification_subscription(Client, OrganizationId, Input) ->
    create_notification_subscription(Client, OrganizationId, Input, []).

-spec create_notification_subscription(aws_client:aws_client(), binary() | list(), create_notification_subscription_request(), proplists:proplist()) ->
    {ok, create_notification_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_notification_subscription_errors(), tuple()}.
create_notification_subscription(Client, OrganizationId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/organizations/", aws_util:encode_uri(OrganizationId), "/subscriptions"],
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

%% @doc Creates a user in a Simple AD or Microsoft AD directory.
%%
%% The status of a newly
%% created user is &quot;ACTIVE&quot;. New users can access Amazon WorkDocs.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/users"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates the specified user, which revokes the user's access
%% to Amazon
%% WorkDocs.
-spec deactivate_user(aws_client:aws_client(), binary() | list(), deactivate_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deactivate_user_errors(), tuple()}.
deactivate_user(Client, UserId, Input) ->
    deactivate_user(Client, UserId, Input, []).

-spec deactivate_user(aws_client:aws_client(), binary() | list(), deactivate_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deactivate_user_errors(), tuple()}.
deactivate_user(Client, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), "/activation"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified comment from the document version.
-spec delete_comment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_comment_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_comment_errors(), tuple()}.
delete_comment(Client, CommentId, DocumentId, VersionId, Input) ->
    delete_comment(Client, CommentId, DocumentId, VersionId, Input, []).

-spec delete_comment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_comment_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_comment_errors(), tuple()}.
delete_comment(Client, CommentId, DocumentId, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), "/comment/", aws_util:encode_uri(CommentId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes custom metadata from the specified resource.
-spec delete_custom_metadata(aws_client:aws_client(), binary() | list(), delete_custom_metadata_request()) ->
    {ok, delete_custom_metadata_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_metadata_errors(), tuple()}.
delete_custom_metadata(Client, ResourceId, Input) ->
    delete_custom_metadata(Client, ResourceId, Input, []).

-spec delete_custom_metadata(aws_client:aws_client(), binary() | list(), delete_custom_metadata_request(), proplists:proplist()) ->
    {ok, delete_custom_metadata_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_metadata_errors(), tuple()}.
delete_custom_metadata(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/customMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deleteAll">>, <<"DeleteAll">>},
                     {<<"keys">>, <<"Keys">>},
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified document and its associated
%% metadata.
-spec delete_document(aws_client:aws_client(), binary() | list(), delete_document_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_document_errors(), tuple()}.
delete_document(Client, DocumentId, Input) ->
    delete_document(Client, DocumentId, Input, []).

-spec delete_document(aws_client:aws_client(), binary() | list(), delete_document_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_document_errors(), tuple()}.
delete_document(Client, DocumentId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version of a document.
-spec delete_document_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_document_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_document_version_errors(), tuple()}.
delete_document_version(Client, DocumentId, VersionId, Input) ->
    delete_document_version(Client, DocumentId, VersionId, Input, []).

-spec delete_document_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_document_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_document_version_errors(), tuple()}.
delete_document_version(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documentVersions/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deletePriorVersions">>, <<"DeletePriorVersions">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified folder and its contents.
-spec delete_folder(aws_client:aws_client(), binary() | list(), delete_folder_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_folder_errors(), tuple()}.
delete_folder(Client, FolderId, Input) ->
    delete_folder(Client, FolderId, Input, []).

-spec delete_folder(aws_client:aws_client(), binary() | list(), delete_folder_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_folder_errors(), tuple()}.
delete_folder(Client, FolderId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the contents of the specified folder.
-spec delete_folder_contents(aws_client:aws_client(), binary() | list(), delete_folder_contents_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_folder_contents_errors(), tuple()}.
delete_folder_contents(Client, FolderId, Input) ->
    delete_folder_contents(Client, FolderId, Input, []).

-spec delete_folder_contents(aws_client:aws_client(), binary() | list(), delete_folder_contents_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_folder_contents_errors(), tuple()}.
delete_folder_contents(Client, FolderId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), "/contents"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified list of labels from a resource.
-spec delete_labels(aws_client:aws_client(), binary() | list(), delete_labels_request()) ->
    {ok, delete_labels_response(), tuple()} |
    {error, any()} |
    {error, delete_labels_errors(), tuple()}.
delete_labels(Client, ResourceId, Input) ->
    delete_labels(Client, ResourceId, Input, []).

-spec delete_labels(aws_client:aws_client(), binary() | list(), delete_labels_request(), proplists:proplist()) ->
    {ok, delete_labels_response(), tuple()} |
    {error, any()} |
    {error, delete_labels_errors(), tuple()}.
delete_labels(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/labels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deleteAll">>, <<"DeleteAll">>},
                     {<<"labels">>, <<"Labels">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified subscription from the specified organization.
-spec delete_notification_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), delete_notification_subscription_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_subscription_errors(), tuple()}.
delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input) ->
    delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input, []).

-spec delete_notification_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), delete_notification_subscription_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_subscription_errors(), tuple()}.
delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/organizations/", aws_util:encode_uri(OrganizationId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), ""],
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

%% @doc Deletes the specified user from a Simple AD or Microsoft AD
%% directory.
%%
%% Deleting a user immediately and permanently deletes all content in that
%% user's folder structure. Site retention policies do NOT apply to this
%% type of deletion.
-spec delete_user(aws_client:aws_client(), binary() | list(), delete_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, UserId, Input) ->
    delete_user(Client, UserId, Input, []).

-spec delete_user(aws_client:aws_client(), binary() | list(), delete_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the user activities in a specified time period.
-spec describe_activities(aws_client:aws_client()) ->
    {ok, describe_activities_response(), tuple()} |
    {error, any()} |
    {error, describe_activities_errors(), tuple()}.
describe_activities(Client)
  when is_map(Client) ->
    describe_activities(Client, #{}, #{}).

-spec describe_activities(aws_client:aws_client(), map(), map()) ->
    {ok, describe_activities_response(), tuple()} |
    {error, any()} |
    {error, describe_activities_errors(), tuple()}.
describe_activities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_activities(Client, QueryMap, HeadersMap, []).

-spec describe_activities(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_activities_response(), tuple()} |
    {error, any()} |
    {error, describe_activities_errors(), tuple()}.
describe_activities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/activities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"activityTypes">>, maps:get(<<"activityTypes">>, QueryMap, undefined)},
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"includeIndirectActivities">>, maps:get(<<"includeIndirectActivities">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"organizationId">>, maps:get(<<"organizationId">>, QueryMap, undefined)},
        {<<"resourceId">>, maps:get(<<"resourceId">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the comments for the specified document version.
-spec describe_comments(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_comments_response(), tuple()} |
    {error, any()} |
    {error, describe_comments_errors(), tuple()}.
describe_comments(Client, DocumentId, VersionId)
  when is_map(Client) ->
    describe_comments(Client, DocumentId, VersionId, #{}, #{}).

-spec describe_comments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_comments_response(), tuple()} |
    {error, any()} |
    {error, describe_comments_errors(), tuple()}.
describe_comments(Client, DocumentId, VersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_comments(Client, DocumentId, VersionId, QueryMap, HeadersMap, []).

-spec describe_comments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_comments_response(), tuple()} |
    {error, any()} |
    {error, describe_comments_errors(), tuple()}.
describe_comments(Client, DocumentId, VersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), "/comments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the document versions for the specified document.
%%
%% By default, only active versions are returned.
-spec describe_document_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_document_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_document_versions_errors(), tuple()}.
describe_document_versions(Client, DocumentId)
  when is_map(Client) ->
    describe_document_versions(Client, DocumentId, #{}, #{}).

-spec describe_document_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_document_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_document_versions_errors(), tuple()}.
describe_document_versions(Client, DocumentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_document_versions(Client, DocumentId, QueryMap, HeadersMap, []).

-spec describe_document_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_document_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_document_versions_errors(), tuple()}.
describe_document_versions(Client, DocumentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the contents of the specified folder, including its
%% documents and
%% subfolders.
%%
%% By default, Amazon WorkDocs returns the first 100 active document and
%% folder
%% metadata items. If there are more results, the response includes a marker
%% that you can
%% use to request the next set of results. You can also request initialized
%% documents.
-spec describe_folder_contents(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_folder_contents_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_contents_errors(), tuple()}.
describe_folder_contents(Client, FolderId)
  when is_map(Client) ->
    describe_folder_contents(Client, FolderId, #{}, #{}).

-spec describe_folder_contents(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_folder_contents_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_contents_errors(), tuple()}.
describe_folder_contents(Client, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder_contents(Client, FolderId, QueryMap, HeadersMap, []).

-spec describe_folder_contents(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_folder_contents_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_contents_errors(), tuple()}.
describe_folder_contents(Client, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), "/contents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"sort">>, maps:get(<<"sort">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the groups specified by the query.
%%
%% Groups are defined by the underlying
%% Active Directory.
-spec describe_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_groups_errors(), tuple()}.
describe_groups(Client, SearchQuery)
  when is_map(Client) ->
    describe_groups(Client, SearchQuery, #{}, #{}).

-spec describe_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_groups_errors(), tuple()}.
describe_groups(Client, SearchQuery, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_groups(Client, SearchQuery, QueryMap, HeadersMap, []).

-spec describe_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_groups_errors(), tuple()}.
describe_groups(Client, SearchQuery, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"organizationId">>, maps:get(<<"organizationId">>, QueryMap, undefined)},
        {<<"searchQuery">>, SearchQuery}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the specified notification subscriptions.
-spec describe_notification_subscriptions(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_notification_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, describe_notification_subscriptions_errors(), tuple()}.
describe_notification_subscriptions(Client, OrganizationId)
  when is_map(Client) ->
    describe_notification_subscriptions(Client, OrganizationId, #{}, #{}).

-spec describe_notification_subscriptions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_notification_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, describe_notification_subscriptions_errors(), tuple()}.
describe_notification_subscriptions(Client, OrganizationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_notification_subscriptions(Client, OrganizationId, QueryMap, HeadersMap, []).

-spec describe_notification_subscriptions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_notification_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, describe_notification_subscriptions_errors(), tuple()}.
describe_notification_subscriptions(Client, OrganizationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/organizations/", aws_util:encode_uri(OrganizationId), "/subscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions of a specified resource.
-spec describe_resource_permissions(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_resource_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_permissions_errors(), tuple()}.
describe_resource_permissions(Client, ResourceId)
  when is_map(Client) ->
    describe_resource_permissions(Client, ResourceId, #{}, #{}).

-spec describe_resource_permissions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_resource_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_permissions_errors(), tuple()}.
describe_resource_permissions(Client, ResourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_permissions(Client, ResourceId, QueryMap, HeadersMap, []).

-spec describe_resource_permissions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_resource_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_permissions_errors(), tuple()}.
describe_resource_permissions(Client, ResourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the current user's special folders; the
%% `RootFolder' and the
%% `RecycleBin'.
%%
%% `RootFolder' is the root of user's files and
%% folders and `RecycleBin' is the root of recycled items. This is not a
%% valid
%% action for SigV4 (administrative API) clients.
%%
%% This action requires an authentication token. To get an authentication
%% token,
%% register an application with Amazon WorkDocs. For more information, see
%% Authentication and Access
%% Control for User Applications:
%% https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html
%% in the
%% Amazon
%% WorkDocs Developer Guide.
-spec describe_root_folders(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_root_folders_response(), tuple()} |
    {error, any()} |
    {error, describe_root_folders_errors(), tuple()}.
describe_root_folders(Client, AuthenticationToken)
  when is_map(Client) ->
    describe_root_folders(Client, AuthenticationToken, #{}, #{}).

-spec describe_root_folders(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_root_folders_response(), tuple()} |
    {error, any()} |
    {error, describe_root_folders_errors(), tuple()}.
describe_root_folders(Client, AuthenticationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_root_folders(Client, AuthenticationToken, QueryMap, HeadersMap, []).

-spec describe_root_folders(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_root_folders_response(), tuple()} |
    {error, any()} |
    {error, describe_root_folders_errors(), tuple()}.
describe_root_folders(Client, AuthenticationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/me/root"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified users.
%%
%% You can describe all users or filter the results
%% (for example, by status or organization).
%%
%% By default, Amazon WorkDocs returns the first 24 active or pending users.
%% If there
%% are more results, the response includes a marker that you can use to
%% request the next
%% set of results.
-spec describe_users(aws_client:aws_client()) ->
    {ok, describe_users_response(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client)
  when is_map(Client) ->
    describe_users(Client, #{}, #{}).

-spec describe_users(aws_client:aws_client(), map(), map()) ->
    {ok, describe_users_response(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_users(Client, QueryMap, HeadersMap, []).

-spec describe_users(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_users_response(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"organizationId">>, maps:get(<<"organizationId">>, QueryMap, undefined)},
        {<<"query">>, maps:get(<<"query">>, QueryMap, undefined)},
        {<<"sort">>, maps:get(<<"sort">>, QueryMap, undefined)},
        {<<"userIds">>, maps:get(<<"userIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of the current user for whom the authentication
%% token was
%% generated.
%%
%% This is not a valid action for SigV4 (administrative API) clients.
%%
%% This action requires an authentication token. To get an authentication
%% token,
%% register an application with Amazon WorkDocs. For more information, see
%% Authentication and Access
%% Control for User Applications:
%% https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html
%% in the
%% Amazon
%% WorkDocs Developer Guide.
-spec get_current_user(aws_client:aws_client(), binary() | list()) ->
    {ok, get_current_user_response(), tuple()} |
    {error, any()} |
    {error, get_current_user_errors(), tuple()}.
get_current_user(Client, AuthenticationToken)
  when is_map(Client) ->
    get_current_user(Client, AuthenticationToken, #{}, #{}).

-spec get_current_user(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_current_user_response(), tuple()} |
    {error, any()} |
    {error, get_current_user_errors(), tuple()}.
get_current_user(Client, AuthenticationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_current_user(Client, AuthenticationToken, QueryMap, HeadersMap, []).

-spec get_current_user(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_current_user_response(), tuple()} |
    {error, any()} |
    {error, get_current_user_errors(), tuple()}.
get_current_user(Client, AuthenticationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/me"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of a document.
-spec get_document(aws_client:aws_client(), binary() | list()) ->
    {ok, get_document_response(), tuple()} |
    {error, any()} |
    {error, get_document_errors(), tuple()}.
get_document(Client, DocumentId)
  when is_map(Client) ->
    get_document(Client, DocumentId, #{}, #{}).

-spec get_document(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_document_response(), tuple()} |
    {error, any()} |
    {error, get_document_errors(), tuple()}.
get_document(Client, DocumentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_document(Client, DocumentId, QueryMap, HeadersMap, []).

-spec get_document(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_document_response(), tuple()} |
    {error, any()} |
    {error, get_document_errors(), tuple()}.
get_document(Client, DocumentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"includeCustomMetadata">>, maps:get(<<"includeCustomMetadata">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the path information (the hierarchy from the root folder)
%% for the
%% requested document.
%%
%% By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
%% the
%% requested document and only includes the IDs of the parent folders in the
%% path. You can
%% limit the maximum number of levels. You can also request the names of the
%% parent
%% folders.
-spec get_document_path(aws_client:aws_client(), binary() | list()) ->
    {ok, get_document_path_response(), tuple()} |
    {error, any()} |
    {error, get_document_path_errors(), tuple()}.
get_document_path(Client, DocumentId)
  when is_map(Client) ->
    get_document_path(Client, DocumentId, #{}, #{}).

-spec get_document_path(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_document_path_response(), tuple()} |
    {error, any()} |
    {error, get_document_path_errors(), tuple()}.
get_document_path(Client, DocumentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_document_path(Client, DocumentId, QueryMap, HeadersMap, []).

-spec get_document_path(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_document_path_response(), tuple()} |
    {error, any()} |
    {error, get_document_path_errors(), tuple()}.
get_document_path(Client, DocumentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/path"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves version metadata for the specified document.
-spec get_document_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_document_version_response(), tuple()} |
    {error, any()} |
    {error, get_document_version_errors(), tuple()}.
get_document_version(Client, DocumentId, VersionId)
  when is_map(Client) ->
    get_document_version(Client, DocumentId, VersionId, #{}, #{}).

-spec get_document_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_document_version_response(), tuple()} |
    {error, any()} |
    {error, get_document_version_errors(), tuple()}.
get_document_version(Client, DocumentId, VersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_document_version(Client, DocumentId, VersionId, QueryMap, HeadersMap, []).

-spec get_document_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_document_version_response(), tuple()} |
    {error, any()} |
    {error, get_document_version_errors(), tuple()}.
get_document_version(Client, DocumentId, VersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"includeCustomMetadata">>, maps:get(<<"includeCustomMetadata">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the metadata of the specified folder.
-spec get_folder(aws_client:aws_client(), binary() | list()) ->
    {ok, get_folder_response(), tuple()} |
    {error, any()} |
    {error, get_folder_errors(), tuple()}.
get_folder(Client, FolderId)
  when is_map(Client) ->
    get_folder(Client, FolderId, #{}, #{}).

-spec get_folder(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_folder_response(), tuple()} |
    {error, any()} |
    {error, get_folder_errors(), tuple()}.
get_folder(Client, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_folder(Client, FolderId, QueryMap, HeadersMap, []).

-spec get_folder(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_folder_response(), tuple()} |
    {error, any()} |
    {error, get_folder_errors(), tuple()}.
get_folder(Client, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"includeCustomMetadata">>, maps:get(<<"includeCustomMetadata">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the path information (the hierarchy from the root folder)
%% for the
%% specified folder.
%%
%% By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
%% the
%% requested folder and only includes the IDs of the parent folders in the
%% path. You can
%% limit the maximum number of levels. You can also request the parent folder
%% names.
-spec get_folder_path(aws_client:aws_client(), binary() | list()) ->
    {ok, get_folder_path_response(), tuple()} |
    {error, any()} |
    {error, get_folder_path_errors(), tuple()}.
get_folder_path(Client, FolderId)
  when is_map(Client) ->
    get_folder_path(Client, FolderId, #{}, #{}).

-spec get_folder_path(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_folder_path_response(), tuple()} |
    {error, any()} |
    {error, get_folder_path_errors(), tuple()}.
get_folder_path(Client, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_folder_path(Client, FolderId, QueryMap, HeadersMap, []).

-spec get_folder_path(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_folder_path_response(), tuple()} |
    {error, any()} |
    {error, get_folder_path_errors(), tuple()}.
get_folder_path(Client, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), "/path"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a collection of resources, including folders and documents.
%%
%% The only
%% `CollectionType' supported is `SHARED_WITH_ME'.
-spec get_resources(aws_client:aws_client()) ->
    {ok, get_resources_response(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client)
  when is_map(Client) ->
    get_resources(Client, #{}, #{}).

-spec get_resources(aws_client:aws_client(), map(), map()) ->
    {ok, get_resources_response(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resources(Client, QueryMap, HeadersMap, []).

-spec get_resources(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_resources_response(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"collectionType">>, maps:get(<<"collectionType">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new document object and version object.
%%
%% The client specifies the parent folder ID and name of the document to
%% upload. The
%% ID is optionally specified when creating a new version of an existing
%% document. This is
%% the first step to upload a document. Next, upload the document to the URL
%% returned from
%% the call, and then call `UpdateDocumentVersion'.
%%
%% To cancel the document upload, call `AbortDocumentVersionUpload'.
-spec initiate_document_version_upload(aws_client:aws_client(), initiate_document_version_upload_request()) ->
    {ok, initiate_document_version_upload_response(), tuple()} |
    {error, any()} |
    {error, initiate_document_version_upload_errors(), tuple()}.
initiate_document_version_upload(Client, Input) ->
    initiate_document_version_upload(Client, Input, []).

-spec initiate_document_version_upload(aws_client:aws_client(), initiate_document_version_upload_request(), proplists:proplist()) ->
    {ok, initiate_document_version_upload_response(), tuple()} |
    {error, any()} |
    {error, initiate_document_version_upload_errors(), tuple()}.
initiate_document_version_upload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/documents"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes all the permissions from the specified resource.
-spec remove_all_resource_permissions(aws_client:aws_client(), binary() | list(), remove_all_resource_permissions_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_all_resource_permissions_errors(), tuple()}.
remove_all_resource_permissions(Client, ResourceId, Input) ->
    remove_all_resource_permissions(Client, ResourceId, Input, []).

-spec remove_all_resource_permissions(aws_client:aws_client(), binary() | list(), remove_all_resource_permissions_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_all_resource_permissions_errors(), tuple()}.
remove_all_resource_permissions(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the permission for the specified principal from the specified
%% resource.
-spec remove_resource_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_resource_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_resource_permission_errors(), tuple()}.
remove_resource_permission(Client, PrincipalId, ResourceId, Input) ->
    remove_resource_permission(Client, PrincipalId, ResourceId, Input, []).

-spec remove_resource_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_resource_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_resource_permission_errors(), tuple()}.
remove_resource_permission(Client, PrincipalId, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"type">>, <<"PrincipalType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Recovers a deleted version of an Amazon WorkDocs document.
-spec restore_document_versions(aws_client:aws_client(), binary() | list(), restore_document_versions_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, restore_document_versions_errors(), tuple()}.
restore_document_versions(Client, DocumentId, Input) ->
    restore_document_versions(Client, DocumentId, Input, []).

-spec restore_document_versions(aws_client:aws_client(), binary() | list(), restore_document_versions_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, restore_document_versions_errors(), tuple()}.
restore_document_versions(Client, DocumentId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/documentVersions/restore/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches metadata and the content of folders, documents, document
%% versions, and comments.
-spec search_resources(aws_client:aws_client(), search_resources_request()) ->
    {ok, search_resources_response(), tuple()} |
    {error, any()} |
    {error, search_resources_errors(), tuple()}.
search_resources(Client, Input) ->
    search_resources(Client, Input, []).

-spec search_resources(aws_client:aws_client(), search_resources_request(), proplists:proplist()) ->
    {ok, search_resources_response(), tuple()} |
    {error, any()} |
    {error, search_resources_errors(), tuple()}.
search_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/search"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of a document.
%%
%% The user must have access to both
%% the document and its parent folder, if applicable.
-spec update_document(aws_client:aws_client(), binary() | list(), update_document_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_document_errors(), tuple()}.
update_document(Client, DocumentId, Input) ->
    update_document(Client, DocumentId, Input, []).

-spec update_document(aws_client:aws_client(), binary() | list(), update_document_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_document_errors(), tuple()}.
update_document(Client, DocumentId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the status of the document version to ACTIVE.
%%
%% Amazon WorkDocs also sets its document container to ACTIVE. This is the
%% last step
%% in a document upload, after the client uploads the document to an
%% S3-presigned URL
%% returned by `InitiateDocumentVersionUpload'.
-spec update_document_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_document_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_document_version_errors(), tuple()}.
update_document_version(Client, DocumentId, VersionId, Input) ->
    update_document_version(Client, DocumentId, VersionId, Input, []).

-spec update_document_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_document_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_document_version_errors(), tuple()}.
update_document_version(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of the specified folder.
%%
%% The user must have access
%% to both the folder and its parent folder, if applicable.
-spec update_folder(aws_client:aws_client(), binary() | list(), update_folder_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_folder_errors(), tuple()}.
update_folder(Client, FolderId, Input) ->
    update_folder(Client, FolderId, Input, []).

-spec update_folder(aws_client:aws_client(), binary() | list(), update_folder_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_folder_errors(), tuple()}.
update_folder(Client, FolderId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of the specified user, and grants or
%% revokes
%% administrative privileges to the Amazon WorkDocs site.
-spec update_user(aws_client:aws_client(), binary() | list(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, UserId, Input) ->
    update_user(Client, UserId, Input, []).

-spec update_user(aws_client:aws_client(), binary() | list(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, UserId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"workdocs">>},
    Host = build_host(<<"workdocs">>, Client1),
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
