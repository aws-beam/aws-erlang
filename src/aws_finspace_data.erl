%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The FinSpace APIs let you take actions inside the FinSpace.
-module(aws_finspace_data).

-export([associate_user_to_permission_group/4,
         associate_user_to_permission_group/5,
         create_changeset/3,
         create_changeset/4,
         create_data_view/3,
         create_data_view/4,
         create_dataset/2,
         create_dataset/3,
         create_permission_group/2,
         create_permission_group/3,
         create_user/2,
         create_user/3,
         delete_dataset/3,
         delete_dataset/4,
         delete_permission_group/3,
         delete_permission_group/4,
         disable_user/3,
         disable_user/4,
         disassociate_user_from_permission_group/4,
         disassociate_user_from_permission_group/5,
         enable_user/3,
         enable_user/4,
         get_changeset/3,
         get_changeset/5,
         get_changeset/6,
         get_data_view/3,
         get_data_view/5,
         get_data_view/6,
         get_dataset/2,
         get_dataset/4,
         get_dataset/5,
         get_external_data_view_access_details/4,
         get_external_data_view_access_details/5,
         get_permission_group/2,
         get_permission_group/4,
         get_permission_group/5,
         get_programmatic_access_credentials/2,
         get_programmatic_access_credentials/4,
         get_programmatic_access_credentials/5,
         get_user/2,
         get_user/4,
         get_user/5,
         get_working_location/2,
         get_working_location/3,
         list_changesets/2,
         list_changesets/4,
         list_changesets/5,
         list_data_views/2,
         list_data_views/4,
         list_data_views/5,
         list_datasets/1,
         list_datasets/3,
         list_datasets/4,
         list_permission_groups/2,
         list_permission_groups/4,
         list_permission_groups/5,
         list_permission_groups_by_user/3,
         list_permission_groups_by_user/5,
         list_permission_groups_by_user/6,
         list_users/2,
         list_users/4,
         list_users/5,
         list_users_by_permission_group/3,
         list_users_by_permission_group/5,
         list_users_by_permission_group/6,
         reset_user_password/3,
         reset_user_password/4,
         update_changeset/4,
         update_changeset/5,
         update_dataset/3,
         update_dataset/4,
         update_permission_group/3,
         update_permission_group/4,
         update_user/3,
         update_user/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% permission_group_params() :: #{
%%   <<"datasetPermissions">> => list(resource_permission()),
%%   <<"permissionGroupId">> => string()
%% }
-type permission_group_params() :: #{binary() => any()}.


%% Example:
%% create_permission_group_request() :: #{
%%   <<"applicationPermissions">> := list(list(any())()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string()
%% }
-type create_permission_group_request() :: #{binary() => any()}.

%% Example:
%% get_external_data_view_access_details_request() :: #{}
-type get_external_data_view_access_details_request() :: #{}.


%% Example:
%% list_users_by_permission_group_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"users">> => list(user_by_permission_group())
%% }
-type list_users_by_permission_group_response() :: #{binary() => any()}.


%% Example:
%% delete_permission_group_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_permission_group_request() :: #{binary() => any()}.


%% Example:
%% delete_dataset_response() :: #{
%%   <<"datasetId">> => string()
%% }
-type delete_dataset_response() :: #{binary() => any()}.


%% Example:
%% get_programmatic_access_credentials_response() :: #{
%%   <<"credentials">> => credentials(),
%%   <<"durationInMinutes">> => float()
%% }
-type get_programmatic_access_credentials_response() :: #{binary() => any()}.


%% Example:
%% update_dataset_response() :: #{
%%   <<"datasetId">> => string()
%% }
-type update_dataset_response() :: #{binary() => any()}.


%% Example:
%% update_user_response() :: #{
%%   <<"userId">> => string()
%% }
-type update_user_response() :: #{binary() => any()}.


%% Example:
%% schema_definition() :: #{
%%   <<"columns">> => list(column_definition()),
%%   <<"primaryKeyColumns">> => list(string())
%% }
-type schema_definition() :: #{binary() => any()}.


%% Example:
%% create_data_view_response() :: #{
%%   <<"dataViewId">> => string(),
%%   <<"datasetId">> => string()
%% }
-type create_data_view_response() :: #{binary() => any()}.


%% Example:
%% credentials() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"secretAccessKey">> => string(),
%%   <<"sessionToken">> => string()
%% }
-type credentials() :: #{binary() => any()}.


%% Example:
%% get_user_response() :: #{
%%   <<"apiAccess">> => list(any()),
%%   <<"apiAccessPrincipalArn">> => string(),
%%   <<"createTime">> => float(),
%%   <<"emailAddress">> => string(),
%%   <<"firstName">> => string(),
%%   <<"lastDisabledTime">> => float(),
%%   <<"lastEnabledTime">> => float(),
%%   <<"lastLoginTime">> => float(),
%%   <<"lastModifiedTime">> => float(),
%%   <<"lastName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"userId">> => string()
%% }
-type get_user_response() :: #{binary() => any()}.


%% Example:
%% disassociate_user_from_permission_group_response() :: #{
%%   <<"statusCode">> => integer()
%% }
-type disassociate_user_from_permission_group_response() :: #{binary() => any()}.


%% Example:
%% list_permission_groups_by_user_request() :: #{
%%   <<"maxResults">> := integer(),
%%   <<"nextToken">> => string()
%% }
-type list_permission_groups_by_user_request() :: #{binary() => any()}.


%% Example:
%% list_datasets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.


%% Example:
%% associate_user_to_permission_group_response() :: #{
%%   <<"statusCode">> => integer()
%% }
-type associate_user_to_permission_group_response() :: #{binary() => any()}.

%% Example:
%% get_permission_group_request() :: #{}
-type get_permission_group_request() :: #{}.


%% Example:
%% create_data_view_request() :: #{
%%   <<"asOfTimestamp">> => float(),
%%   <<"autoUpdate">> => boolean(),
%%   <<"clientToken">> => string(),
%%   <<"destinationTypeParams">> := data_view_destination_type_params(),
%%   <<"partitionColumns">> => list(string()),
%%   <<"sortColumns">> => list(string())
%% }
-type create_data_view_request() :: #{binary() => any()}.


%% Example:
%% list_users_by_permission_group_request() :: #{
%%   <<"maxResults">> := integer(),
%%   <<"nextToken">> => string()
%% }
-type list_users_by_permission_group_request() :: #{binary() => any()}.


%% Example:
%% get_external_data_view_access_details_response() :: #{
%%   <<"credentials">> => aws_credentials(),
%%   <<"s3Location">> => s3_location()
%% }
-type get_external_data_view_access_details_response() :: #{binary() => any()}.

%% Example:
%% get_changeset_request() :: #{}
-type get_changeset_request() :: #{}.


%% Example:
%% create_permission_group_response() :: #{
%%   <<"permissionGroupId">> => string()
%% }
-type create_permission_group_response() :: #{binary() => any()}.


%% Example:
%% delete_permission_group_response() :: #{
%%   <<"permissionGroupId">> => string()
%% }
-type delete_permission_group_response() :: #{binary() => any()}.


%% Example:
%% list_permission_groups_by_user_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissionGroups">> => list(permission_group_by_user())
%% }
-type list_permission_groups_by_user_response() :: #{binary() => any()}.


%% Example:
%% dataset() :: #{
%%   <<"alias">> => string(),
%%   <<"createTime">> => float(),
%%   <<"datasetArn">> => string(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"datasetTitle">> => string(),
%%   <<"kind">> => list(any()),
%%   <<"lastModifiedTime">> => float(),
%%   <<"ownerInfo">> => dataset_owner_info(),
%%   <<"schemaDefinition">> => schema_union()
%% }
-type dataset() :: #{binary() => any()}.


%% Example:
%% create_dataset_response() :: #{
%%   <<"datasetId">> => string()
%% }
-type create_dataset_response() :: #{binary() => any()}.

%% Example:
%% get_data_view_request() :: #{}
-type get_data_view_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_changeset_response() :: #{
%%   <<"changesetId">> => string(),
%%   <<"datasetId">> => string()
%% }
-type create_changeset_response() :: #{binary() => any()}.

%% Example:
%% get_user_request() :: #{}
-type get_user_request() :: #{}.


%% Example:
%% dataset_owner_info() :: #{
%%   <<"email">> => string(),
%%   <<"name">> => string(),
%%   <<"phoneNumber">> => string()
%% }
-type dataset_owner_info() :: #{binary() => any()}.


%% Example:
%% get_working_location_response() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3Path">> => string(),
%%   <<"s3Uri">> => string()
%% }
-type get_working_location_response() :: #{binary() => any()}.


%% Example:
%% get_data_view_response() :: #{
%%   <<"asOfTimestamp">> => float(),
%%   <<"autoUpdate">> => boolean(),
%%   <<"createTime">> => float(),
%%   <<"dataViewArn">> => string(),
%%   <<"dataViewId">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"destinationTypeParams">> => data_view_destination_type_params(),
%%   <<"errorInfo">> => data_view_error_info(),
%%   <<"lastModifiedTime">> => float(),
%%   <<"partitionColumns">> => list(string()),
%%   <<"sortColumns">> => list(string()),
%%   <<"status">> => list(any())
%% }
-type get_data_view_response() :: #{binary() => any()}.


%% Example:
%% disassociate_user_from_permission_group_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type disassociate_user_from_permission_group_request() :: #{binary() => any()}.


%% Example:
%% reset_user_password_response() :: #{
%%   <<"temporaryPassword">> => string(),
%%   <<"userId">> => string()
%% }
-type reset_user_password_response() :: #{binary() => any()}.


%% Example:
%% permission_group_by_user() :: #{
%%   <<"membershipStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"permissionGroupId">> => string()
%% }
-type permission_group_by_user() :: #{binary() => any()}.


%% Example:
%% list_users_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"users">> => list(user())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% get_permission_group_response() :: #{
%%   <<"permissionGroup">> => permission_group()
%% }
-type get_permission_group_response() :: #{binary() => any()}.


%% Example:
%% data_view_destination_type_params() :: #{
%%   <<"destinationType">> => string(),
%%   <<"s3DestinationExportFileFormat">> => list(any()),
%%   <<"s3DestinationExportFileFormatOptions">> => map()
%% }
-type data_view_destination_type_params() :: #{binary() => any()}.


%% Example:
%% update_permission_group_request() :: #{
%%   <<"applicationPermissions">> => list(list(any())()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_permission_group_request() :: #{binary() => any()}.


%% Example:
%% create_changeset_request() :: #{
%%   <<"changeType">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"formatParams">> := map(),
%%   <<"sourceParams">> := map()
%% }
-type create_changeset_request() :: #{binary() => any()}.


%% Example:
%% schema_union() :: #{
%%   <<"tabularSchemaConfig">> => schema_definition()
%% }
-type schema_union() :: #{binary() => any()}.


%% Example:
%% update_changeset_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"formatParams">> := map(),
%%   <<"sourceParams">> := map()
%% }
-type update_changeset_request() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% update_dataset_request() :: #{
%%   <<"alias">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetTitle">> := string(),
%%   <<"kind">> := list(any()),
%%   <<"schemaDefinition">> => schema_union()
%% }
-type update_dataset_request() :: #{binary() => any()}.


%% Example:
%% list_changesets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_changesets_request() :: #{binary() => any()}.


%% Example:
%% changeset_summary() :: #{
%%   <<"activeFromTimestamp">> => float(),
%%   <<"activeUntilTimestamp">> => float(),
%%   <<"changeType">> => list(any()),
%%   <<"changesetArn">> => string(),
%%   <<"changesetId">> => string(),
%%   <<"createTime">> => float(),
%%   <<"datasetId">> => string(),
%%   <<"errorInfo">> => changeset_error_info(),
%%   <<"formatParams">> => map(),
%%   <<"sourceParams">> => map(),
%%   <<"status">> => list(any()),
%%   <<"updatedByChangesetId">> => string(),
%%   <<"updatesChangesetId">> => string()
%% }
-type changeset_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% reset_user_password_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type reset_user_password_request() :: #{binary() => any()}.


%% Example:
%% disable_user_response() :: #{
%%   <<"userId">> => string()
%% }
-type disable_user_response() :: #{binary() => any()}.


%% Example:
%% changeset_error_info() :: #{
%%   <<"errorCategory">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type changeset_error_info() :: #{binary() => any()}.


%% Example:
%% get_changeset_response() :: #{
%%   <<"activeFromTimestamp">> => float(),
%%   <<"activeUntilTimestamp">> => float(),
%%   <<"changeType">> => list(any()),
%%   <<"changesetArn">> => string(),
%%   <<"changesetId">> => string(),
%%   <<"createTime">> => float(),
%%   <<"datasetId">> => string(),
%%   <<"errorInfo">> => changeset_error_info(),
%%   <<"formatParams">> => map(),
%%   <<"sourceParams">> => map(),
%%   <<"status">> => list(any()),
%%   <<"updatedByChangesetId">> => string(),
%%   <<"updatesChangesetId">> => string()
%% }
-type get_changeset_response() :: #{binary() => any()}.


%% Example:
%% list_permission_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissionGroups">> => list(permission_group())
%% }
-type list_permission_groups_response() :: #{binary() => any()}.


%% Example:
%% update_changeset_response() :: #{
%%   <<"changesetId">> => string(),
%%   <<"datasetId">> => string()
%% }
-type update_changeset_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% data_view_error_info() :: #{
%%   <<"errorCategory">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type data_view_error_info() :: #{binary() => any()}.


%% Example:
%% aws_credentials() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"expiration">> => float(),
%%   <<"secretAccessKey">> => string(),
%%   <<"sessionToken">> => string()
%% }
-type aws_credentials() :: #{binary() => any()}.

%% Example:
%% get_dataset_request() :: #{}
-type get_dataset_request() :: #{}.


%% Example:
%% update_user_request() :: #{
%%   <<"apiAccess">> => list(any()),
%%   <<"apiAccessPrincipalArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string(),
%%   <<"type">> => list(any())
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% get_dataset_response() :: #{
%%   <<"alias">> => string(),
%%   <<"createTime">> => float(),
%%   <<"datasetArn">> => string(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"datasetTitle">> => string(),
%%   <<"kind">> => list(any()),
%%   <<"lastModifiedTime">> => float(),
%%   <<"schemaDefinition">> => schema_union(),
%%   <<"status">> => list(any())
%% }
-type get_dataset_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% create_dataset_request() :: #{
%%   <<"alias">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetTitle">> := string(),
%%   <<"kind">> := list(any()),
%%   <<"ownerInfo">> => dataset_owner_info(),
%%   <<"permissionGroupParams">> := permission_group_params(),
%%   <<"schemaDefinition">> => schema_union()
%% }
-type create_dataset_request() :: #{binary() => any()}.


%% Example:
%% enable_user_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type enable_user_request() :: #{binary() => any()}.


%% Example:
%% update_permission_group_response() :: #{
%%   <<"permissionGroupId">> => string()
%% }
-type update_permission_group_response() :: #{binary() => any()}.


%% Example:
%% associate_user_to_permission_group_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type associate_user_to_permission_group_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{}
-type throttling_exception() :: #{}.


%% Example:
%% user() :: #{
%%   <<"apiAccess">> => list(any()),
%%   <<"apiAccessPrincipalArn">> => string(),
%%   <<"createTime">> => float(),
%%   <<"emailAddress">> => string(),
%%   <<"firstName">> => string(),
%%   <<"lastDisabledTime">> => float(),
%%   <<"lastEnabledTime">> => float(),
%%   <<"lastLoginTime">> => float(),
%%   <<"lastModifiedTime">> => float(),
%%   <<"lastName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"userId">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% list_data_views_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_views_request() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"maxResults">> := integer(),
%%   <<"nextToken">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.


%% Example:
%% user_by_permission_group() :: #{
%%   <<"apiAccess">> => list(any()),
%%   <<"apiAccessPrincipalArn">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string(),
%%   <<"membershipStatus">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"userId">> => string()
%% }
-type user_by_permission_group() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_working_location_request() :: #{
%%   <<"locationType">> => list(any())
%% }
-type get_working_location_request() :: #{binary() => any()}.


%% Example:
%% resource_permission() :: #{
%%   <<"permission">> => string()
%% }
-type resource_permission() :: #{binary() => any()}.


%% Example:
%% delete_dataset_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_dataset_request() :: #{binary() => any()}.


%% Example:
%% list_datasets_response() :: #{
%%   <<"datasets">> => list(dataset()),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.


%% Example:
%% permission_group() :: #{
%%   <<"applicationPermissions">> => list(list(any())()),
%%   <<"createTime">> => float(),
%%   <<"description">> => string(),
%%   <<"lastModifiedTime">> => float(),
%%   <<"membershipStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"permissionGroupId">> => string()
%% }
-type permission_group() :: #{binary() => any()}.


%% Example:
%% get_programmatic_access_credentials_request() :: #{
%%   <<"durationInMinutes">> => float(),
%%   <<"environmentId">> := string()
%% }
-type get_programmatic_access_credentials_request() :: #{binary() => any()}.


%% Example:
%% list_permission_groups_request() :: #{
%%   <<"maxResults">> := integer(),
%%   <<"nextToken">> => string()
%% }
-type list_permission_groups_request() :: #{binary() => any()}.


%% Example:
%% list_changesets_response() :: #{
%%   <<"changesets">> => list(changeset_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_changesets_response() :: #{binary() => any()}.


%% Example:
%% data_view_summary() :: #{
%%   <<"asOfTimestamp">> => float(),
%%   <<"autoUpdate">> => boolean(),
%%   <<"createTime">> => float(),
%%   <<"dataViewArn">> => string(),
%%   <<"dataViewId">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"destinationTypeProperties">> => data_view_destination_type_params(),
%%   <<"errorInfo">> => data_view_error_info(),
%%   <<"lastModifiedTime">> => float(),
%%   <<"partitionColumns">> => list(string()),
%%   <<"sortColumns">> => list(string()),
%%   <<"status">> => list(any())
%% }
-type data_view_summary() :: #{binary() => any()}.


%% Example:
%% disable_user_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type disable_user_request() :: #{binary() => any()}.


%% Example:
%% create_user_response() :: #{
%%   <<"userId">> => string()
%% }
-type create_user_response() :: #{binary() => any()}.


%% Example:
%% enable_user_response() :: #{
%%   <<"userId">> => string()
%% }
-type enable_user_response() :: #{binary() => any()}.


%% Example:
%% column_definition() :: #{
%%   <<"columnDescription">> => string(),
%%   <<"columnName">> => string(),
%%   <<"dataType">> => list(any())
%% }
-type column_definition() :: #{binary() => any()}.


%% Example:
%% list_data_views_response() :: #{
%%   <<"dataViews">> => list(data_view_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_data_views_response() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"apiAccess">> => list(any()),
%%   <<"apiAccessPrincipalArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"emailAddress">> := string(),
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string(),
%%   <<"type">> := list(any())
%% }
-type create_user_request() :: #{binary() => any()}.

-type associate_user_to_permission_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_changeset_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_view_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_dataset_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_permission_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_user_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_dataset_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_permission_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_user_from_permission_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_user_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_changeset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_data_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_external_data_view_access_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_permission_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_programmatic_access_credentials_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_working_location_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_changesets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_datasets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_permission_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_permission_groups_by_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_users_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_users_by_permission_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reset_user_password_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_changeset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_permission_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a user to a permission group to grant permissions for actions a
%% user can perform in FinSpace.
-spec associate_user_to_permission_group(aws_client:aws_client(), binary() | list(), binary() | list(), associate_user_to_permission_group_request()) ->
    {ok, associate_user_to_permission_group_response(), tuple()} |
    {error, any()} |
    {error, associate_user_to_permission_group_errors(), tuple()}.
associate_user_to_permission_group(Client, PermissionGroupId, UserId, Input) ->
    associate_user_to_permission_group(Client, PermissionGroupId, UserId, Input, []).

-spec associate_user_to_permission_group(aws_client:aws_client(), binary() | list(), binary() | list(), associate_user_to_permission_group_request(), proplists:proplist()) ->
    {ok, associate_user_to_permission_group_response(), tuple()} |
    {error, any()} |
    {error, associate_user_to_permission_group_errors(), tuple()}.
associate_user_to_permission_group(Client, PermissionGroupId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Creates a new Changeset in a FinSpace Dataset.
-spec create_changeset(aws_client:aws_client(), binary() | list(), create_changeset_request()) ->
    {ok, create_changeset_response(), tuple()} |
    {error, any()} |
    {error, create_changeset_errors(), tuple()}.
create_changeset(Client, DatasetId, Input) ->
    create_changeset(Client, DatasetId, Input, []).

-spec create_changeset(aws_client:aws_client(), binary() | list(), create_changeset_request(), proplists:proplist()) ->
    {ok, create_changeset_response(), tuple()} |
    {error, any()} |
    {error, create_changeset_errors(), tuple()}.
create_changeset(Client, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2"],
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

%% @doc Creates a Dataview for a Dataset.
-spec create_data_view(aws_client:aws_client(), binary() | list(), create_data_view_request()) ->
    {ok, create_data_view_response(), tuple()} |
    {error, any()} |
    {error, create_data_view_errors(), tuple()}.
create_data_view(Client, DatasetId, Input) ->
    create_data_view(Client, DatasetId, Input, []).

-spec create_data_view(aws_client:aws_client(), binary() | list(), create_data_view_request(), proplists:proplist()) ->
    {ok, create_data_view_response(), tuple()} |
    {error, any()} |
    {error, create_data_view_errors(), tuple()}.
create_data_view(Client, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2"],
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

%% @doc Creates a new FinSpace Dataset.
-spec create_dataset(aws_client:aws_client(), create_dataset_request()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).

-spec create_dataset(aws_client:aws_client(), create_dataset_request(), proplists:proplist()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasetsv2"],
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

%% @doc Creates a group of permissions for various actions that a user can
%% perform in FinSpace.
-spec create_permission_group(aws_client:aws_client(), create_permission_group_request()) ->
    {ok, create_permission_group_response(), tuple()} |
    {error, any()} |
    {error, create_permission_group_errors(), tuple()}.
create_permission_group(Client, Input) ->
    create_permission_group(Client, Input, []).

-spec create_permission_group(aws_client:aws_client(), create_permission_group_request(), proplists:proplist()) ->
    {ok, create_permission_group_response(), tuple()} |
    {error, any()} |
    {error, create_permission_group_errors(), tuple()}.
create_permission_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/permission-group"],
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

%% @doc Creates a new user in FinSpace.
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
    Path = ["/user"],
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

%% @doc Deletes a FinSpace Dataset.
-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetId, Input) ->
    delete_dataset(Client, DatasetId, Input, []).

-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request(), proplists:proplist()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetId, Input0, Options0) ->
    Method = delete,
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a permission group.
%%
%% This action is irreversible.
-spec delete_permission_group(aws_client:aws_client(), binary() | list(), delete_permission_group_request()) ->
    {ok, delete_permission_group_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_group_errors(), tuple()}.
delete_permission_group(Client, PermissionGroupId, Input) ->
    delete_permission_group(Client, PermissionGroupId, Input, []).

-spec delete_permission_group(aws_client:aws_client(), binary() | list(), delete_permission_group_request(), proplists:proplist()) ->
    {ok, delete_permission_group_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_group_errors(), tuple()}.
delete_permission_group(Client, PermissionGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Denies access to the FinSpace web application and API for the
%% specified user.
-spec disable_user(aws_client:aws_client(), binary() | list(), disable_user_request()) ->
    {ok, disable_user_response(), tuple()} |
    {error, any()} |
    {error, disable_user_errors(), tuple()}.
disable_user(Client, UserId, Input) ->
    disable_user(Client, UserId, Input, []).

-spec disable_user(aws_client:aws_client(), binary() | list(), disable_user_request(), proplists:proplist()) ->
    {ok, disable_user_response(), tuple()} |
    {error, any()} |
    {error, disable_user_errors(), tuple()}.
disable_user(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/user/", aws_util:encode_uri(UserId), "/disable"],
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

%% @doc Removes a user from a permission group.
-spec disassociate_user_from_permission_group(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_user_from_permission_group_request()) ->
    {ok, disassociate_user_from_permission_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_from_permission_group_errors(), tuple()}.
disassociate_user_from_permission_group(Client, PermissionGroupId, UserId, Input) ->
    disassociate_user_from_permission_group(Client, PermissionGroupId, UserId, Input, []).

-spec disassociate_user_from_permission_group(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_user_from_permission_group_request(), proplists:proplist()) ->
    {ok, disassociate_user_from_permission_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_from_permission_group_errors(), tuple()}.
disassociate_user_from_permission_group(Client, PermissionGroupId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), "/users/", aws_util:encode_uri(UserId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows the specified user to access the FinSpace web application and
%% API.
-spec enable_user(aws_client:aws_client(), binary() | list(), enable_user_request()) ->
    {ok, enable_user_response(), tuple()} |
    {error, any()} |
    {error, enable_user_errors(), tuple()}.
enable_user(Client, UserId, Input) ->
    enable_user(Client, UserId, Input, []).

-spec enable_user(aws_client:aws_client(), binary() | list(), enable_user_request(), proplists:proplist()) ->
    {ok, enable_user_response(), tuple()} |
    {error, any()} |
    {error, enable_user_errors(), tuple()}.
enable_user(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/user/", aws_util:encode_uri(UserId), "/enable"],
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

%% @doc Get information about a Changeset.
-spec get_changeset(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_changeset_response(), tuple()} |
    {error, any()} |
    {error, get_changeset_errors(), tuple()}.
get_changeset(Client, ChangesetId, DatasetId)
  when is_map(Client) ->
    get_changeset(Client, ChangesetId, DatasetId, #{}, #{}).

-spec get_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_changeset_response(), tuple()} |
    {error, any()} |
    {error, get_changeset_errors(), tuple()}.
get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap, []).

-spec get_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_changeset_response(), tuple()} |
    {error, any()} |
    {error, get_changeset_errors(), tuple()}.
get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2/", aws_util:encode_uri(ChangesetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Dataview.
-spec get_data_view(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_view_response(), tuple()} |
    {error, any()} |
    {error, get_data_view_errors(), tuple()}.
get_data_view(Client, DataViewId, DatasetId)
  when is_map(Client) ->
    get_data_view(Client, DataViewId, DatasetId, #{}, #{}).

-spec get_data_view(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_view_response(), tuple()} |
    {error, any()} |
    {error, get_data_view_errors(), tuple()}.
get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap, []).

-spec get_data_view(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_view_response(), tuple()} |
    {error, any()} |
    {error, get_data_view_errors(), tuple()}.
get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2/", aws_util:encode_uri(DataViewId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a Dataset.
-spec get_dataset(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_dataset_errors(), tuple()}.
get_dataset(Client, DatasetId)
  when is_map(Client) ->
    get_dataset(Client, DatasetId, #{}, #{}).

-spec get_dataset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_dataset_errors(), tuple()}.
get_dataset(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataset(Client, DatasetId, QueryMap, HeadersMap, []).

-spec get_dataset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_dataset_errors(), tuple()}.
get_dataset(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the credentials to access the external Dataview from an S3
%% location.
%%
%% To call this API:
%%
%% You must retrieve the programmatic credentials.
%%
%% You must be a member of a FinSpace user group, where the dataset that you
%% want to access has `Read Dataset Data' permissions.
-spec get_external_data_view_access_details(aws_client:aws_client(), binary() | list(), binary() | list(), get_external_data_view_access_details_request()) ->
    {ok, get_external_data_view_access_details_response(), tuple()} |
    {error, any()} |
    {error, get_external_data_view_access_details_errors(), tuple()}.
get_external_data_view_access_details(Client, DataViewId, DatasetId, Input) ->
    get_external_data_view_access_details(Client, DataViewId, DatasetId, Input, []).

-spec get_external_data_view_access_details(aws_client:aws_client(), binary() | list(), binary() | list(), get_external_data_view_access_details_request(), proplists:proplist()) ->
    {ok, get_external_data_view_access_details_response(), tuple()} |
    {error, any()} |
    {error, get_external_data_view_access_details_errors(), tuple()}.
get_external_data_view_access_details(Client, DataViewId, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2/", aws_util:encode_uri(DataViewId), "/external-access-details"],
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

%% @doc Retrieves the details of a specific permission group.
-spec get_permission_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_permission_group_response(), tuple()} |
    {error, any()} |
    {error, get_permission_group_errors(), tuple()}.
get_permission_group(Client, PermissionGroupId)
  when is_map(Client) ->
    get_permission_group(Client, PermissionGroupId, #{}, #{}).

-spec get_permission_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_permission_group_response(), tuple()} |
    {error, any()} |
    {error, get_permission_group_errors(), tuple()}.
get_permission_group(Client, PermissionGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_permission_group(Client, PermissionGroupId, QueryMap, HeadersMap, []).

-spec get_permission_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_permission_group_response(), tuple()} |
    {error, any()} |
    {error, get_permission_group_errors(), tuple()}.
get_permission_group(Client, PermissionGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request programmatic credentials to use with FinSpace SDK.
%%
%% For more information, see Step 2. Access credentials programmatically
%% using IAM access key id and secret access key:
%% https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#accessing-credentials.
-spec get_programmatic_access_credentials(aws_client:aws_client(), binary() | list()) ->
    {ok, get_programmatic_access_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_programmatic_access_credentials_errors(), tuple()}.
get_programmatic_access_credentials(Client, EnvironmentId)
  when is_map(Client) ->
    get_programmatic_access_credentials(Client, EnvironmentId, #{}, #{}).

-spec get_programmatic_access_credentials(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_programmatic_access_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_programmatic_access_credentials_errors(), tuple()}.
get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_programmatic_access_credentials(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_programmatic_access_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_programmatic_access_credentials_errors(), tuple()}.
get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/credentials/programmatic"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"durationInMinutes">>, maps:get(<<"durationInMinutes">>, QueryMap, undefined)},
        {<<"environmentId">>, EnvironmentId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for a specific user.
-spec get_user(aws_client:aws_client(), binary() | list()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, UserId)
  when is_map(Client) ->
    get_user(Client, UserId, #{}, #{}).

-spec get_user(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, UserId, QueryMap, HeadersMap, []).

-spec get_user(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A temporary Amazon S3 location, where you can copy your files from a
%% source location to stage or use
%% as a scratch space in FinSpace notebook.
-spec get_working_location(aws_client:aws_client(), get_working_location_request()) ->
    {ok, get_working_location_response(), tuple()} |
    {error, any()} |
    {error, get_working_location_errors(), tuple()}.
get_working_location(Client, Input) ->
    get_working_location(Client, Input, []).

-spec get_working_location(aws_client:aws_client(), get_working_location_request(), proplists:proplist()) ->
    {ok, get_working_location_response(), tuple()} |
    {error, any()} |
    {error, get_working_location_errors(), tuple()}.
get_working_location(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workingLocationV1"],
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

%% @doc Lists the FinSpace Changesets for a Dataset.
-spec list_changesets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_changesets_response(), tuple()} |
    {error, any()} |
    {error, list_changesets_errors(), tuple()}.
list_changesets(Client, DatasetId)
  when is_map(Client) ->
    list_changesets(Client, DatasetId, #{}, #{}).

-spec list_changesets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_changesets_response(), tuple()} |
    {error, any()} |
    {error, list_changesets_errors(), tuple()}.
list_changesets(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_changesets(Client, DatasetId, QueryMap, HeadersMap, []).

-spec list_changesets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_changesets_response(), tuple()} |
    {error, any()} |
    {error, list_changesets_errors(), tuple()}.
list_changesets(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available Dataviews for a Dataset.
-spec list_data_views(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_views_response(), tuple()} |
    {error, any()} |
    {error, list_data_views_errors(), tuple()}.
list_data_views(Client, DatasetId)
  when is_map(Client) ->
    list_data_views(Client, DatasetId, #{}, #{}).

-spec list_data_views(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_views_response(), tuple()} |
    {error, any()} |
    {error, list_data_views_errors(), tuple()}.
list_data_views(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_views(Client, DatasetId, QueryMap, HeadersMap, []).

-spec list_data_views(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_views_response(), tuple()} |
    {error, any()} |
    {error, list_data_views_errors(), tuple()}.
list_data_views(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the active Datasets that a user has access to.
-spec list_datasets(aws_client:aws_client()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client)
  when is_map(Client) ->
    list_datasets(Client, #{}, #{}).

-spec list_datasets(aws_client:aws_client(), map(), map()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, QueryMap, HeadersMap, []).

-spec list_datasets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasetsv2"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available permission groups in FinSpace.
-spec list_permission_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_permission_groups_response(), tuple()} |
    {error, any()} |
    {error, list_permission_groups_errors(), tuple()}.
list_permission_groups(Client, MaxResults)
  when is_map(Client) ->
    list_permission_groups(Client, MaxResults, #{}, #{}).

-spec list_permission_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_permission_groups_response(), tuple()} |
    {error, any()} |
    {error, list_permission_groups_errors(), tuple()}.
list_permission_groups(Client, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_permission_groups(Client, MaxResults, QueryMap, HeadersMap, []).

-spec list_permission_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_permission_groups_response(), tuple()} |
    {error, any()} |
    {error, list_permission_groups_errors(), tuple()}.
list_permission_groups(Client, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/permission-group"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the permission groups that are associated with a specific
%% user.
-spec list_permission_groups_by_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_permission_groups_by_user_response(), tuple()} |
    {error, any()} |
    {error, list_permission_groups_by_user_errors(), tuple()}.
list_permission_groups_by_user(Client, UserId, MaxResults)
  when is_map(Client) ->
    list_permission_groups_by_user(Client, UserId, MaxResults, #{}, #{}).

-spec list_permission_groups_by_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_permission_groups_by_user_response(), tuple()} |
    {error, any()} |
    {error, list_permission_groups_by_user_errors(), tuple()}.
list_permission_groups_by_user(Client, UserId, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_permission_groups_by_user(Client, UserId, MaxResults, QueryMap, HeadersMap, []).

-spec list_permission_groups_by_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_permission_groups_by_user_response(), tuple()} |
    {error, any()} |
    {error, list_permission_groups_by_user_errors(), tuple()}.
list_permission_groups_by_user(Client, UserId, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user/", aws_util:encode_uri(UserId), "/permission-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available users in FinSpace.
-spec list_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, MaxResults)
  when is_map(Client) ->
    list_users(Client, MaxResults, #{}, #{}).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, MaxResults, QueryMap, HeadersMap, []).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details of all the users in a specific permission group.
-spec list_users_by_permission_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_users_by_permission_group_response(), tuple()} |
    {error, any()} |
    {error, list_users_by_permission_group_errors(), tuple()}.
list_users_by_permission_group(Client, PermissionGroupId, MaxResults)
  when is_map(Client) ->
    list_users_by_permission_group(Client, PermissionGroupId, MaxResults, #{}, #{}).

-spec list_users_by_permission_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_users_by_permission_group_response(), tuple()} |
    {error, any()} |
    {error, list_users_by_permission_group_errors(), tuple()}.
list_users_by_permission_group(Client, PermissionGroupId, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users_by_permission_group(Client, PermissionGroupId, MaxResults, QueryMap, HeadersMap, []).

-spec list_users_by_permission_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_by_permission_group_response(), tuple()} |
    {error, any()} |
    {error, list_users_by_permission_group_errors(), tuple()}.
list_users_by_permission_group(Client, PermissionGroupId, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), "/users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Resets the password for a specified user ID and generates a temporary
%% one.
%%
%% Only a superuser can reset password for other users. Resetting the
%% password immediately invalidates the previous password associated with the
%% user.
-spec reset_user_password(aws_client:aws_client(), binary() | list(), reset_user_password_request()) ->
    {ok, reset_user_password_response(), tuple()} |
    {error, any()} |
    {error, reset_user_password_errors(), tuple()}.
reset_user_password(Client, UserId, Input) ->
    reset_user_password(Client, UserId, Input, []).

-spec reset_user_password(aws_client:aws_client(), binary() | list(), reset_user_password_request(), proplists:proplist()) ->
    {ok, reset_user_password_response(), tuple()} |
    {error, any()} |
    {error, reset_user_password_errors(), tuple()}.
reset_user_password(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/user/", aws_util:encode_uri(UserId), "/password"],
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

%% @doc Updates a FinSpace Changeset.
-spec update_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), update_changeset_request()) ->
    {ok, update_changeset_response(), tuple()} |
    {error, any()} |
    {error, update_changeset_errors(), tuple()}.
update_changeset(Client, ChangesetId, DatasetId, Input) ->
    update_changeset(Client, ChangesetId, DatasetId, Input, []).

-spec update_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), update_changeset_request(), proplists:proplist()) ->
    {ok, update_changeset_response(), tuple()} |
    {error, any()} |
    {error, update_changeset_errors(), tuple()}.
update_changeset(Client, ChangesetId, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2/", aws_util:encode_uri(ChangesetId), ""],
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

%% @doc Updates a FinSpace Dataset.
-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, DatasetId, Input) ->
    update_dataset(Client, DatasetId, Input, []).

-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request(), proplists:proplist()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
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

%% @doc Modifies the details of a permission group.
%%
%% You cannot modify a `permissionGroupID'.
-spec update_permission_group(aws_client:aws_client(), binary() | list(), update_permission_group_request()) ->
    {ok, update_permission_group_response(), tuple()} |
    {error, any()} |
    {error, update_permission_group_errors(), tuple()}.
update_permission_group(Client, PermissionGroupId, Input) ->
    update_permission_group(Client, PermissionGroupId, Input, []).

-spec update_permission_group(aws_client:aws_client(), binary() | list(), update_permission_group_request(), proplists:proplist()) ->
    {ok, update_permission_group_response(), tuple()} |
    {error, any()} |
    {error, update_permission_group_errors(), tuple()}.
update_permission_group(Client, PermissionGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), ""],
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

%% @doc Modifies the details of the specified user.
%%
%% You cannot update the `userId' for a user.
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
    Method = put,
    Path = ["/user/", aws_util:encode_uri(UserId), ""],
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
    Client1 = Client#{service => <<"finspace-api">>},
    Host = build_host(<<"finspace-api">>, Client1),
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
