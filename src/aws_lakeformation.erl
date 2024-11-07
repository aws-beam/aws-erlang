%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Lake Formation
%%
%% Defines the public endpoint for the Lake Formation service.
-module(aws_lakeformation).

-export([add_l_f_tags_to_resource/2,
         add_l_f_tags_to_resource/3,
         assume_decorated_role_with_saml/2,
         assume_decorated_role_with_saml/3,
         batch_grant_permissions/2,
         batch_grant_permissions/3,
         batch_revoke_permissions/2,
         batch_revoke_permissions/3,
         cancel_transaction/2,
         cancel_transaction/3,
         commit_transaction/2,
         commit_transaction/3,
         create_data_cells_filter/2,
         create_data_cells_filter/3,
         create_l_f_tag/2,
         create_l_f_tag/3,
         create_l_f_tag_expression/2,
         create_l_f_tag_expression/3,
         create_lake_formation_identity_center_configuration/2,
         create_lake_formation_identity_center_configuration/3,
         create_lake_formation_opt_in/2,
         create_lake_formation_opt_in/3,
         delete_data_cells_filter/2,
         delete_data_cells_filter/3,
         delete_l_f_tag/2,
         delete_l_f_tag/3,
         delete_l_f_tag_expression/2,
         delete_l_f_tag_expression/3,
         delete_lake_formation_identity_center_configuration/2,
         delete_lake_formation_identity_center_configuration/3,
         delete_lake_formation_opt_in/2,
         delete_lake_formation_opt_in/3,
         delete_objects_on_cancel/2,
         delete_objects_on_cancel/3,
         deregister_resource/2,
         deregister_resource/3,
         describe_lake_formation_identity_center_configuration/2,
         describe_lake_formation_identity_center_configuration/3,
         describe_resource/2,
         describe_resource/3,
         describe_transaction/2,
         describe_transaction/3,
         extend_transaction/2,
         extend_transaction/3,
         get_data_cells_filter/2,
         get_data_cells_filter/3,
         get_data_lake_principal/2,
         get_data_lake_principal/3,
         get_data_lake_settings/2,
         get_data_lake_settings/3,
         get_effective_permissions_for_path/2,
         get_effective_permissions_for_path/3,
         get_l_f_tag/2,
         get_l_f_tag/3,
         get_l_f_tag_expression/2,
         get_l_f_tag_expression/3,
         get_query_state/2,
         get_query_state/3,
         get_query_statistics/2,
         get_query_statistics/3,
         get_resource_l_f_tags/2,
         get_resource_l_f_tags/3,
         get_table_objects/2,
         get_table_objects/3,
         get_temporary_glue_partition_credentials/2,
         get_temporary_glue_partition_credentials/3,
         get_temporary_glue_table_credentials/2,
         get_temporary_glue_table_credentials/3,
         get_work_unit_results/2,
         get_work_unit_results/3,
         get_work_units/2,
         get_work_units/3,
         grant_permissions/2,
         grant_permissions/3,
         list_data_cells_filter/2,
         list_data_cells_filter/3,
         list_l_f_tag_expressions/2,
         list_l_f_tag_expressions/3,
         list_l_f_tags/2,
         list_l_f_tags/3,
         list_lake_formation_opt_ins/2,
         list_lake_formation_opt_ins/3,
         list_permissions/2,
         list_permissions/3,
         list_resources/2,
         list_resources/3,
         list_table_storage_optimizers/2,
         list_table_storage_optimizers/3,
         list_transactions/2,
         list_transactions/3,
         put_data_lake_settings/2,
         put_data_lake_settings/3,
         register_resource/2,
         register_resource/3,
         remove_l_f_tags_from_resource/2,
         remove_l_f_tags_from_resource/3,
         revoke_permissions/2,
         revoke_permissions/3,
         search_databases_by_l_f_tags/2,
         search_databases_by_l_f_tags/3,
         search_tables_by_l_f_tags/2,
         search_tables_by_l_f_tags/3,
         start_query_planning/2,
         start_query_planning/3,
         start_transaction/2,
         start_transaction/3,
         update_data_cells_filter/2,
         update_data_cells_filter/3,
         update_l_f_tag/2,
         update_l_f_tag/3,
         update_l_f_tag_expression/2,
         update_l_f_tag_expression/3,
         update_lake_formation_identity_center_configuration/2,
         update_lake_formation_identity_center_configuration/3,
         update_resource/2,
         update_resource/3,
         update_table_objects/2,
         update_table_objects/3,
         update_table_storage_optimizer/2,
         update_table_storage_optimizer/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% delete_object_input() :: #{
%%   <<"ETag">> => string(),
%%   <<"PartitionValues">> => list(string()()),
%%   <<"Uri">> => string()
%% }
-type delete_object_input() :: #{binary() => any()}.


%% Example:
%% grant_permissions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Permissions">> := list(list(any())()),
%%   <<"PermissionsWithGrantOption">> => list(list(any())()),
%%   <<"Principal">> := data_lake_principal(),
%%   <<"Resource">> := resource()
%% }
-type grant_permissions_request() :: #{binary() => any()}.

%% Example:
%% get_data_lake_principal_request() :: #{}
-type get_data_lake_principal_request() :: #{}.


%% Example:
%% list_permissions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PrincipalResourcePermissions">> => list(principal_resource_permissions()())
%% }
-type list_permissions_response() :: #{binary() => any()}.


%% Example:
%% search_databases_by_l_f_tags_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Expression">> := list(l_f_tag()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_databases_by_l_f_tags_request() :: #{binary() => any()}.


%% Example:
%% create_lake_formation_identity_center_configuration_response() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type create_lake_formation_identity_center_configuration_response() :: #{binary() => any()}.


%% Example:
%% l_f_tag_key_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> => string(),
%%   <<"TagValues">> => list(string()())
%% }
-type l_f_tag_key_resource() :: #{binary() => any()}.


%% Example:
%% principal_permissions() :: #{
%%   <<"Permissions">> => list(list(any())()),
%%   <<"Principal">> => data_lake_principal()
%% }
-type principal_permissions() :: #{binary() => any()}.


%% Example:
%% entity_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entity_not_found_exception() :: #{binary() => any()}.


%% Example:
%% operation_timeout_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_timeout_exception() :: #{binary() => any()}.


%% Example:
%% list_resources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceInfoList">> => list(resource_info()())
%% }
-type list_resources_response() :: #{binary() => any()}.


%% Example:
%% l_f_tag_expression() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> => list(l_f_tag()()),
%%   <<"Name">> => string()
%% }
-type l_f_tag_expression() :: #{binary() => any()}.


%% Example:
%% describe_resource_response() :: #{
%%   <<"ResourceInfo">> => resource_info()
%% }
-type describe_resource_response() :: #{binary() => any()}.


%% Example:
%% filter_condition() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"Field">> => list(any()),
%%   <<"StringValueList">> => list(string()())
%% }
-type filter_condition() :: #{binary() => any()}.


%% Example:
%% update_l_f_tag_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> := string(),
%%   <<"TagValuesToAdd">> => list(string()()),
%%   <<"TagValuesToDelete">> => list(string()())
%% }
-type update_l_f_tag_request() :: #{binary() => any()}.


%% Example:
%% query_session_context() :: #{
%%   <<"AdditionalContext">> => map(),
%%   <<"ClusterId">> => string(),
%%   <<"QueryAuthorizationId">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryStartTime">> => non_neg_integer()
%% }
-type query_session_context() :: #{binary() => any()}.


%% Example:
%% l_f_tag() :: #{
%%   <<"TagKey">> => string(),
%%   <<"TagValues">> => list(string()())
%% }
-type l_f_tag() :: #{binary() => any()}.


%% Example:
%% expired_exception() :: #{
%%   <<"Message">> => string()
%% }
-type expired_exception() :: #{binary() => any()}.


%% Example:
%% update_resource_request() :: #{
%%   <<"HybridAccessEnabled">> => boolean(),
%%   <<"ResourceArn">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"WithFederation">> => boolean()
%% }
-type update_resource_request() :: #{binary() => any()}.


%% Example:
%% update_table_storage_optimizer_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"StorageOptimizerConfig">> := map(),
%%   <<"TableName">> := string()
%% }
-type update_table_storage_optimizer_request() :: #{binary() => any()}.


%% Example:
%% commit_transaction_request() :: #{
%%   <<"TransactionId">> := string()
%% }
-type commit_transaction_request() :: #{binary() => any()}.


%% Example:
%% get_l_f_tag_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> := string()
%% }
-type get_l_f_tag_request() :: #{binary() => any()}.


%% Example:
%% get_resource_l_f_tags_response() :: #{
%%   <<"LFTagOnDatabase">> => list(l_f_tag_pair()()),
%%   <<"LFTagsOnColumns">> => list(column_l_f_tag()()),
%%   <<"LFTagsOnTable">> => list(l_f_tag_pair()())
%% }
-type get_resource_l_f_tags_response() :: #{binary() => any()}.


%% Example:
%% cancel_transaction_request() :: #{
%%   <<"TransactionId">> := string()
%% }
-type cancel_transaction_request() :: #{binary() => any()}.


%% Example:
%% describe_transaction_response() :: #{
%%   <<"TransactionDescription">> => transaction_description()
%% }
-type describe_transaction_response() :: #{binary() => any()}.


%% Example:
%% l_f_tag_policy_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Expression">> => list(l_f_tag()()),
%%   <<"ExpressionName">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type l_f_tag_policy_resource() :: #{binary() => any()}.


%% Example:
%% table_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string(),
%%   <<"TableWildcard">> => table_wildcard()
%% }
-type table_resource() :: #{binary() => any()}.


%% Example:
%% l_f_tag_error() :: #{
%%   <<"Error">> => error_detail(),
%%   <<"LFTag">> => l_f_tag_pair()
%% }
-type l_f_tag_error() :: #{binary() => any()}.


%% Example:
%% planning_statistics() :: #{
%%   <<"EstimatedDataToScanBytes">> => float(),
%%   <<"PlanningTimeMillis">> => float(),
%%   <<"QueueTimeMillis">> => float(),
%%   <<"WorkUnitsGeneratedCount">> => float()
%% }
-type planning_statistics() :: #{binary() => any()}.


%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.


%% Example:
%% update_lake_formation_identity_center_configuration_request() :: #{
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"CatalogId">> => string(),
%%   <<"ExternalFiltering">> => external_filtering_configuration(),
%%   <<"ShareRecipients">> => list(data_lake_principal()())
%% }
-type update_lake_formation_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% all_rows_wildcard() :: #{}
-type all_rows_wildcard() :: #{}.


%% Example:
%% list_l_f_tag_expressions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_l_f_tag_expressions_request() :: #{binary() => any()}.


%% Example:
%% create_lake_formation_identity_center_configuration_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ExternalFiltering">> => external_filtering_configuration(),
%%   <<"InstanceArn">> => string(),
%%   <<"ShareRecipients">> => list(data_lake_principal()())
%% }
-type create_lake_formation_identity_center_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_transactions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Transactions">> => list(transaction_description()())
%% }
-type list_transactions_response() :: #{binary() => any()}.


%% Example:
%% get_temporary_glue_partition_credentials_response() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"SecretAccessKey">> => string(),
%%   <<"SessionToken">> => string()
%% }
-type get_temporary_glue_partition_credentials_response() :: #{binary() => any()}.


%% Example:
%% database_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Name">> => string()
%% }
-type database_resource() :: #{binary() => any()}.


%% Example:
%% delete_lake_formation_opt_in_request() :: #{
%%   <<"Principal">> := data_lake_principal(),
%%   <<"Resource">> := resource()
%% }
-type delete_lake_formation_opt_in_request() :: #{binary() => any()}.

%% Example:
%% delete_l_f_tag_response() :: #{}
-type delete_l_f_tag_response() :: #{}.


%% Example:
%% create_l_f_tag_expression_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> := list(l_f_tag()()),
%%   <<"Name">> := string()
%% }
-type create_l_f_tag_expression_request() :: #{binary() => any()}.


%% Example:
%% tagged_table() :: #{
%%   <<"LFTagOnDatabase">> => list(l_f_tag_pair()()),
%%   <<"LFTagsOnColumns">> => list(column_l_f_tag()()),
%%   <<"LFTagsOnTable">> => list(l_f_tag_pair()()),
%%   <<"Table">> => table_resource()
%% }
-type tagged_table() :: #{binary() => any()}.


%% Example:
%% principal_resource_permissions() :: #{
%%   <<"AdditionalDetails">> => details_map(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"LastUpdatedBy">> => string(),
%%   <<"Permissions">> => list(list(any())()),
%%   <<"PermissionsWithGrantOption">> => list(list(any())()),
%%   <<"Principal">> => data_lake_principal(),
%%   <<"Resource">> => resource()
%% }
-type principal_resource_permissions() :: #{binary() => any()}.


%% Example:
%% list_table_storage_optimizers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StorageOptimizerList">> => list(storage_optimizer()())
%% }
-type list_table_storage_optimizers_response() :: #{binary() => any()}.


%% Example:
%% search_tables_by_l_f_tags_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Expression">> := list(l_f_tag()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_tables_by_l_f_tags_request() :: #{binary() => any()}.


%% Example:
%% update_l_f_tag_expression_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> := list(l_f_tag()()),
%%   <<"Name">> := string()
%% }
-type update_l_f_tag_expression_request() :: #{binary() => any()}.


%% Example:
%% transaction_canceled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type transaction_canceled_exception() :: #{binary() => any()}.


%% Example:
%% partition_objects() :: #{
%%   <<"Objects">> => list(table_object()()),
%%   <<"PartitionValues">> => list(string()())
%% }
-type partition_objects() :: #{binary() => any()}.


%% Example:
%% get_query_state_request() :: #{
%%   <<"QueryId">> := string()
%% }
-type get_query_state_request() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% get_l_f_tag_response() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> => string(),
%%   <<"TagValues">> => list(string()())
%% }
-type get_l_f_tag_response() :: #{binary() => any()}.

%% Example:
%% deregister_resource_response() :: #{}
-type deregister_resource_response() :: #{}.


%% Example:
%% create_l_f_tag_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> := string(),
%%   <<"TagValues">> := list(string()())
%% }
-type create_l_f_tag_request() :: #{binary() => any()}.


%% Example:
%% list_lake_formation_opt_ins_response() :: #{
%%   <<"LakeFormationOptInsInfoList">> => list(lake_formation_opt_ins_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_lake_formation_opt_ins_response() :: #{binary() => any()}.


%% Example:
%% list_data_cells_filter_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Table">> => table_resource()
%% }
-type list_data_cells_filter_request() :: #{binary() => any()}.


%% Example:
%% resource_number_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_number_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% virtual_object() :: #{
%%   <<"ETag">> => string(),
%%   <<"Uri">> => string()
%% }
-type virtual_object() :: #{binary() => any()}.


%% Example:
%% start_transaction_request() :: #{
%%   <<"TransactionType">> => list(any())
%% }
-type start_transaction_request() :: #{binary() => any()}.


%% Example:
%% transaction_commit_in_progress_exception() :: #{
%%   <<"Message">> => string()
%% }
-type transaction_commit_in_progress_exception() :: #{binary() => any()}.


%% Example:
%% list_l_f_tag_expressions_response() :: #{
%%   <<"LFTagExpressions">> => list(l_f_tag_expression()()),
%%   <<"NextToken">> => string()
%% }
-type list_l_f_tag_expressions_response() :: #{binary() => any()}.


%% Example:
%% list_transactions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StatusFilter">> => list(any())
%% }
-type list_transactions_request() :: #{binary() => any()}.

%% Example:
%% extend_transaction_response() :: #{}
-type extend_transaction_response() :: #{}.


%% Example:
%% query_planning_context() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"QueryAsOfTime">> => non_neg_integer(),
%%   <<"QueryParameters">> => map(),
%%   <<"TransactionId">> => string()
%% }
-type query_planning_context() :: #{binary() => any()}.


%% Example:
%% create_lake_formation_opt_in_request() :: #{
%%   <<"Principal">> := data_lake_principal(),
%%   <<"Resource">> := resource()
%% }
-type create_lake_formation_opt_in_request() :: #{binary() => any()}.


%% Example:
%% get_table_objects_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PartitionPredicate">> => string(),
%%   <<"QueryAsOfTime">> => non_neg_integer(),
%%   <<"TableName">> := string(),
%%   <<"TransactionId">> => string()
%% }
-type get_table_objects_request() :: #{binary() => any()}.


%% Example:
%% start_query_planning_request() :: #{
%%   <<"QueryPlanningContext">> := query_planning_context(),
%%   <<"QueryString">> := string()
%% }
-type start_query_planning_request() :: #{binary() => any()}.


%% Example:
%% data_lake_principal() :: #{
%%   <<"DataLakePrincipalIdentifier">> => string()
%% }
-type data_lake_principal() :: #{binary() => any()}.


%% Example:
%% add_l_f_tags_to_resource_response() :: #{
%%   <<"Failures">> => list(l_f_tag_error()())
%% }
-type add_l_f_tags_to_resource_response() :: #{binary() => any()}.


%% Example:
%% data_cells_filter() :: #{
%%   <<"ColumnNames">> => list(string()()),
%%   <<"ColumnWildcard">> => column_wildcard(),
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RowFilter">> => row_filter(),
%%   <<"TableCatalogId">> => string(),
%%   <<"TableName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type data_cells_filter() :: #{binary() => any()}.


%% Example:
%% delete_l_f_tag_expression_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Name">> := string()
%% }
-type delete_l_f_tag_expression_request() :: #{binary() => any()}.


%% Example:
%% throttled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttled_exception() :: #{binary() => any()}.


%% Example:
%% storage_optimizer() :: #{
%%   <<"Config">> => map(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastRunDetails">> => string(),
%%   <<"StorageOptimizerType">> => list(any()),
%%   <<"Warnings">> => string()
%% }
-type storage_optimizer() :: #{binary() => any()}.


%% Example:
%% data_location_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type data_location_resource() :: #{binary() => any()}.

%% Example:
%% delete_data_cells_filter_response() :: #{}
-type delete_data_cells_filter_response() :: #{}.

%% Example:
%% register_resource_response() :: #{}
-type register_resource_response() :: #{}.

%% Example:
%% put_data_lake_settings_response() :: #{}
-type put_data_lake_settings_response() :: #{}.


%% Example:
%% partition_value_list() :: #{
%%   <<"Values">> => list(string()())
%% }
-type partition_value_list() :: #{binary() => any()}.


%% Example:
%% get_work_unit_results_request() :: #{
%%   <<"QueryId">> := string(),
%%   <<"WorkUnitId">> := float(),
%%   <<"WorkUnitToken">> := string()
%% }
-type get_work_unit_results_request() :: #{binary() => any()}.


%% Example:
%% search_databases_by_l_f_tags_response() :: #{
%%   <<"DatabaseList">> => list(tagged_database()()),
%%   <<"NextToken">> => string()
%% }
-type search_databases_by_l_f_tags_response() :: #{binary() => any()}.

%% Example:
%% update_l_f_tag_response() :: #{}
-type update_l_f_tag_response() :: #{}.


%% Example:
%% get_data_lake_settings_request() :: #{
%%   <<"CatalogId">> => string()
%% }
-type get_data_lake_settings_request() :: #{binary() => any()}.


%% Example:
%% get_temporary_glue_partition_credentials_request() :: #{
%%   <<"AuditContext">> => audit_context(),
%%   <<"DurationSeconds">> => integer(),
%%   <<"Partition">> := partition_value_list(),
%%   <<"Permissions">> => list(list(any())()),
%%   <<"SupportedPermissionTypes">> => list(list(any())()),
%%   <<"TableArn">> := string()
%% }
-type get_temporary_glue_partition_credentials_request() :: #{binary() => any()}.

%% Example:
%% update_data_cells_filter_response() :: #{}
-type update_data_cells_filter_response() :: #{}.


%% Example:
%% transaction_committed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type transaction_committed_exception() :: #{binary() => any()}.


%% Example:
%% column_wildcard() :: #{
%%   <<"ExcludedColumnNames">> => list(string()())
%% }
-type column_wildcard() :: #{binary() => any()}.


%% Example:
%% batch_permissions_request_entry() :: #{
%%   <<"Id">> => string(),
%%   <<"Permissions">> => list(list(any())()),
%%   <<"PermissionsWithGrantOption">> => list(list(any())()),
%%   <<"Principal">> => data_lake_principal(),
%%   <<"Resource">> => resource()
%% }
-type batch_permissions_request_entry() :: #{binary() => any()}.

%% Example:
%% update_table_objects_response() :: #{}
-type update_table_objects_response() :: #{}.


%% Example:
%% commit_transaction_response() :: #{
%%   <<"TransactionStatus">> => list(any())
%% }
-type commit_transaction_response() :: #{binary() => any()}.

%% Example:
%% table_wildcard() :: #{}
-type table_wildcard() :: #{}.

%% Example:
%% catalog_resource() :: #{}
-type catalog_resource() :: #{}.

%% Example:
%% update_resource_response() :: #{}
-type update_resource_response() :: #{}.


%% Example:
%% table_object() :: #{
%%   <<"ETag">> => string(),
%%   <<"Size">> => float(),
%%   <<"Uri">> => string()
%% }
-type table_object() :: #{binary() => any()}.


%% Example:
%% describe_transaction_request() :: #{
%%   <<"TransactionId">> := string()
%% }
-type describe_transaction_request() :: #{binary() => any()}.


%% Example:
%% lake_formation_opt_ins_info() :: #{
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastUpdatedBy">> => string(),
%%   <<"Principal">> => data_lake_principal(),
%%   <<"Resource">> => resource()
%% }
-type lake_formation_opt_ins_info() :: #{binary() => any()}.


%% Example:
%% remove_l_f_tags_from_resource_response() :: #{
%%   <<"Failures">> => list(l_f_tag_error()())
%% }
-type remove_l_f_tags_from_resource_response() :: #{binary() => any()}.


%% Example:
%% details_map() :: #{
%%   <<"ResourceShare">> => list(string()())
%% }
-type details_map() :: #{binary() => any()}.


%% Example:
%% get_work_units_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => [integer()],
%%   <<"QueryId">> := string()
%% }
-type get_work_units_request() :: #{binary() => any()}.


%% Example:
%% search_tables_by_l_f_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TableList">> => list(tagged_table()())
%% }
-type search_tables_by_l_f_tags_response() :: #{binary() => any()}.


%% Example:
%% add_object_input() :: #{
%%   <<"ETag">> => string(),
%%   <<"PartitionValues">> => list(string()()),
%%   <<"Size">> => float(),
%%   <<"Uri">> => string()
%% }
-type add_object_input() :: #{binary() => any()}.


%% Example:
%% l_f_tag_expression_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Name">> => string()
%% }
-type l_f_tag_expression_resource() :: #{binary() => any()}.


%% Example:
%% transaction_description() :: #{
%%   <<"TransactionEndTime">> => non_neg_integer(),
%%   <<"TransactionId">> => string(),
%%   <<"TransactionStartTime">> => non_neg_integer(),
%%   <<"TransactionStatus">> => list(any())
%% }
-type transaction_description() :: #{binary() => any()}.


%% Example:
%% get_resource_l_f_tags_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Resource">> := resource(),
%%   <<"ShowAssignedLFTags">> => boolean()
%% }
-type get_resource_l_f_tags_request() :: #{binary() => any()}.


%% Example:
%% get_l_f_tag_expression_response() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> => list(l_f_tag()()),
%%   <<"Name">> => string()
%% }
-type get_l_f_tag_expression_response() :: #{binary() => any()}.


%% Example:
%% row_filter() :: #{
%%   <<"AllRowsWildcard">> => all_rows_wildcard(),
%%   <<"FilterExpression">> => string()
%% }
-type row_filter() :: #{binary() => any()}.


%% Example:
%% invalid_input_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% delete_objects_on_cancel_response() :: #{}
-type delete_objects_on_cancel_response() :: #{}.


%% Example:
%% get_data_lake_settings_response() :: #{
%%   <<"DataLakeSettings">> => data_lake_settings()
%% }
-type get_data_lake_settings_response() :: #{binary() => any()}.


%% Example:
%% update_data_cells_filter_request() :: #{
%%   <<"TableData">> := data_cells_filter()
%% }
-type update_data_cells_filter_request() :: #{binary() => any()}.


%% Example:
%% write_operation() :: #{
%%   <<"AddObject">> => add_object_input(),
%%   <<"DeleteObject">> => delete_object_input()
%% }
-type write_operation() :: #{binary() => any()}.


%% Example:
%% get_temporary_glue_table_credentials_response() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"SecretAccessKey">> => string(),
%%   <<"SessionToken">> => string(),
%%   <<"VendedS3Path">> => list(string()())
%% }
-type get_temporary_glue_table_credentials_response() :: #{binary() => any()}.


%% Example:
%% describe_lake_formation_identity_center_configuration_response() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"CatalogId">> => string(),
%%   <<"ExternalFiltering">> => external_filtering_configuration(),
%%   <<"InstanceArn">> => string(),
%%   <<"ResourceShare">> => string(),
%%   <<"ShareRecipients">> => list(data_lake_principal()())
%% }
-type describe_lake_formation_identity_center_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_query_state_response() :: #{
%%   <<"Error">> => string(),
%%   <<"State">> => list(any())
%% }
-type get_query_state_response() :: #{binary() => any()}.


%% Example:
%% l_f_tag_pair() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> => string(),
%%   <<"TagValues">> => list(string()())
%% }
-type l_f_tag_pair() :: #{binary() => any()}.


%% Example:
%% delete_l_f_tag_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"TagKey">> := string()
%% }
-type delete_l_f_tag_request() :: #{binary() => any()}.


%% Example:
%% list_lake_formation_opt_ins_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Principal">> => data_lake_principal(),
%%   <<"Resource">> => resource()
%% }
-type list_lake_formation_opt_ins_request() :: #{binary() => any()}.


%% Example:
%% describe_lake_formation_identity_center_configuration_request() :: #{
%%   <<"CatalogId">> => string()
%% }
-type describe_lake_formation_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_l_f_tag_response() :: #{}
-type create_l_f_tag_response() :: #{}.

%% Example:
%% delete_lake_formation_identity_center_configuration_response() :: #{}
-type delete_lake_formation_identity_center_configuration_response() :: #{}.


%% Example:
%% list_permissions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"IncludeRelated">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Principal">> => data_lake_principal(),
%%   <<"Resource">> => resource(),
%%   <<"ResourceType">> => list(any())
%% }
-type list_permissions_request() :: #{binary() => any()}.


%% Example:
%% batch_revoke_permissions_response() :: #{
%%   <<"Failures">> => list(batch_permissions_failure_entry()())
%% }
-type batch_revoke_permissions_response() :: #{binary() => any()}.


%% Example:
%% update_table_objects_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"TransactionId">> => string(),
%%   <<"WriteOperations">> := list(write_operation()())
%% }
-type update_table_objects_request() :: #{binary() => any()}.

%% Example:
%% update_lake_formation_identity_center_configuration_response() :: #{}
-type update_lake_formation_identity_center_configuration_response() :: #{}.


%% Example:
%% list_data_cells_filter_response() :: #{
%%   <<"DataCellsFilters">> => list(data_cells_filter()()),
%%   <<"NextToken">> => string()
%% }
-type list_data_cells_filter_response() :: #{binary() => any()}.


%% Example:
%% batch_permissions_failure_entry() :: #{
%%   <<"Error">> => error_detail(),
%%   <<"RequestEntry">> => batch_permissions_request_entry()
%% }
-type batch_permissions_failure_entry() :: #{binary() => any()}.


%% Example:
%% get_effective_permissions_for_path_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Permissions">> => list(principal_resource_permissions()())
%% }
-type get_effective_permissions_for_path_response() :: #{binary() => any()}.


%% Example:
%% batch_grant_permissions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Entries">> := list(batch_permissions_request_entry()())
%% }
-type batch_grant_permissions_request() :: #{binary() => any()}.


%% Example:
%% update_table_storage_optimizer_response() :: #{
%%   <<"Result">> => string()
%% }
-type update_table_storage_optimizer_response() :: #{binary() => any()}.


%% Example:
%% list_l_f_tags_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceShareType">> => list(any())
%% }
-type list_l_f_tags_request() :: #{binary() => any()}.

%% Example:
%% revoke_permissions_response() :: #{}
-type revoke_permissions_response() :: #{}.


%% Example:
%% get_work_unit_results_response() :: #{
%%   <<"ResultStream">> => binary()
%% }
-type get_work_unit_results_response() :: #{binary() => any()}.


%% Example:
%% register_resource_request() :: #{
%%   <<"HybridAccessEnabled">> => boolean(),
%%   <<"ResourceArn">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"UseServiceLinkedRole">> => boolean(),
%%   <<"WithFederation">> => boolean()
%% }
-type register_resource_request() :: #{binary() => any()}.


%% Example:
%% delete_objects_on_cancel_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Objects">> := list(virtual_object()()),
%%   <<"TableName">> := string(),
%%   <<"TransactionId">> := string()
%% }
-type delete_objects_on_cancel_request() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.

%% Example:
%% create_lake_formation_opt_in_response() :: #{}
-type create_lake_formation_opt_in_response() :: #{}.


%% Example:
%% data_lake_settings() :: #{
%%   <<"AllowExternalDataFiltering">> => boolean(),
%%   <<"AllowFullTableExternalDataAccess">> => boolean(),
%%   <<"AuthorizedSessionTagValueList">> => list(string()()),
%%   <<"CreateDatabaseDefaultPermissions">> => list(principal_permissions()()),
%%   <<"CreateTableDefaultPermissions">> => list(principal_permissions()()),
%%   <<"DataLakeAdmins">> => list(data_lake_principal()()),
%%   <<"ExternalDataFilteringAllowList">> => list(data_lake_principal()()),
%%   <<"Parameters">> => map(),
%%   <<"ReadOnlyAdmins">> => list(data_lake_principal()()),
%%   <<"TrustedResourceOwners">> => list(string()())
%% }
-type data_lake_settings() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% statistics_not_ready_yet_exception() :: #{
%%   <<"Message">> => string()
%% }
-type statistics_not_ready_yet_exception() :: #{binary() => any()}.


%% Example:
%% assume_decorated_role_with_saml_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"PrincipalArn">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SAMLAssertion">> := string()
%% }
-type assume_decorated_role_with_saml_request() :: #{binary() => any()}.


%% Example:
%% batch_grant_permissions_response() :: #{
%%   <<"Failures">> => list(batch_permissions_failure_entry()())
%% }
-type batch_grant_permissions_response() :: #{binary() => any()}.


%% Example:
%% external_filtering_configuration() :: #{
%%   <<"AuthorizedTargets">> => list(string()()),
%%   <<"Status">> => list(any())
%% }
-type external_filtering_configuration() :: #{binary() => any()}.

%% Example:
%% create_data_cells_filter_response() :: #{}
-type create_data_cells_filter_response() :: #{}.


%% Example:
%% data_cells_filter_resource() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string(),
%%   <<"TableCatalogId">> => string(),
%%   <<"TableName">> => string()
%% }
-type data_cells_filter_resource() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% get_query_statistics_request() :: #{
%%   <<"QueryId">> := string()
%% }
-type get_query_statistics_request() :: #{binary() => any()}.


%% Example:
%% work_units_not_ready_yet_exception() :: #{
%%   <<"Message">> => string()
%% }
-type work_units_not_ready_yet_exception() :: #{binary() => any()}.


%% Example:
%% audit_context() :: #{
%%   <<"AdditionalAuditContext">> => string()
%% }
-type audit_context() :: #{binary() => any()}.


%% Example:
%% get_work_units_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"WorkUnitRanges">> => list(work_unit_range()())
%% }
-type get_work_units_response() :: #{binary() => any()}.


%% Example:
%% tagged_database() :: #{
%%   <<"Database">> => database_resource(),
%%   <<"LFTags">> => list(l_f_tag_pair()())
%% }
-type tagged_database() :: #{binary() => any()}.


%% Example:
%% put_data_lake_settings_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DataLakeSettings">> := data_lake_settings()
%% }
-type put_data_lake_settings_request() :: #{binary() => any()}.

%% Example:
%% create_l_f_tag_expression_response() :: #{}
-type create_l_f_tag_expression_response() :: #{}.


%% Example:
%% batch_revoke_permissions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Entries">> := list(batch_permissions_request_entry()())
%% }
-type batch_revoke_permissions_request() :: #{binary() => any()}.


%% Example:
%% create_data_cells_filter_request() :: #{
%%   <<"TableData">> := data_cells_filter()
%% }
-type create_data_cells_filter_request() :: #{binary() => any()}.


%% Example:
%% permission_type_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type permission_type_mismatch_exception() :: #{binary() => any()}.


%% Example:
%% execution_statistics() :: #{
%%   <<"AverageExecutionTimeMillis">> => float(),
%%   <<"DataScannedBytes">> => float(),
%%   <<"WorkUnitsExecutedCount">> => float()
%% }
-type execution_statistics() :: #{binary() => any()}.


%% Example:
%% get_query_statistics_response() :: #{
%%   <<"ExecutionStatistics">> => execution_statistics(),
%%   <<"PlanningStatistics">> => planning_statistics(),
%%   <<"QuerySubmissionTime">> => non_neg_integer()
%% }
-type get_query_statistics_response() :: #{binary() => any()}.


%% Example:
%% resource_info() :: #{
%%   <<"HybridAccessEnabled">> => boolean(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"WithFederation">> => boolean()
%% }
-type resource_info() :: #{binary() => any()}.


%% Example:
%% describe_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type describe_resource_request() :: #{binary() => any()}.


%% Example:
%% get_table_objects_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Objects">> => list(partition_objects()())
%% }
-type get_table_objects_response() :: #{binary() => any()}.


%% Example:
%% extend_transaction_request() :: #{
%%   <<"TransactionId">> => string()
%% }
-type extend_transaction_request() :: #{binary() => any()}.


%% Example:
%% table_with_columns_resource() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnNames">> => list(string()()),
%%   <<"ColumnWildcard">> => column_wildcard(),
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string()
%% }
-type table_with_columns_resource() :: #{binary() => any()}.


%% Example:
%% list_resources_request() :: #{
%%   <<"FilterConditionList">> => list(filter_condition()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resources_request() :: #{binary() => any()}.


%% Example:
%% list_l_f_tags_response() :: #{
%%   <<"LFTags">> => list(l_f_tag_pair()()),
%%   <<"NextToken">> => string()
%% }
-type list_l_f_tags_response() :: #{binary() => any()}.


%% Example:
%% revoke_permissions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Permissions">> := list(list(any())()),
%%   <<"PermissionsWithGrantOption">> => list(list(any())()),
%%   <<"Principal">> := data_lake_principal(),
%%   <<"Resource">> := resource()
%% }
-type revoke_permissions_request() :: #{binary() => any()}.


%% Example:
%% delete_data_cells_filter_request() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string(),
%%   <<"TableCatalogId">> => string(),
%%   <<"TableName">> => string()
%% }
-type delete_data_cells_filter_request() :: #{binary() => any()}.


%% Example:
%% delete_lake_formation_identity_center_configuration_request() :: #{
%%   <<"CatalogId">> => string()
%% }
-type delete_lake_formation_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% cancel_transaction_response() :: #{}
-type cancel_transaction_response() :: #{}.


%% Example:
%% get_data_cells_filter_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"Name">> := string(),
%%   <<"TableCatalogId">> := string(),
%%   <<"TableName">> := string()
%% }
-type get_data_cells_filter_request() :: #{binary() => any()}.


%% Example:
%% get_temporary_glue_table_credentials_request() :: #{
%%   <<"AuditContext">> => audit_context(),
%%   <<"DurationSeconds">> => integer(),
%%   <<"Permissions">> => list(list(any())()),
%%   <<"QuerySessionContext">> => query_session_context(),
%%   <<"S3Path">> => string(),
%%   <<"SupportedPermissionTypes">> => list(list(any())()),
%%   <<"TableArn">> := string()
%% }
-type get_temporary_glue_table_credentials_request() :: #{binary() => any()}.


%% Example:
%% glue_encryption_exception() :: #{
%%   <<"Message">> => string()
%% }
-type glue_encryption_exception() :: #{binary() => any()}.


%% Example:
%% get_l_f_tag_expression_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Name">> := string()
%% }
-type get_l_f_tag_expression_request() :: #{binary() => any()}.


%% Example:
%% remove_l_f_tags_from_resource_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"LFTags">> := list(l_f_tag_pair()()),
%%   <<"Resource">> := resource()
%% }
-type remove_l_f_tags_from_resource_request() :: #{binary() => any()}.


%% Example:
%% get_effective_permissions_for_path_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type get_effective_permissions_for_path_request() :: #{binary() => any()}.


%% Example:
%% work_unit_range() :: #{
%%   <<"WorkUnitIdMax">> => float(),
%%   <<"WorkUnitIdMin">> => float(),
%%   <<"WorkUnitToken">> => string()
%% }
-type work_unit_range() :: #{binary() => any()}.


%% Example:
%% get_data_lake_principal_response() :: #{
%%   <<"Identity">> => string()
%% }
-type get_data_lake_principal_response() :: #{binary() => any()}.


%% Example:
%% get_data_cells_filter_response() :: #{
%%   <<"DataCellsFilter">> => data_cells_filter()
%% }
-type get_data_cells_filter_response() :: #{binary() => any()}.


%% Example:
%% resource_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% assume_decorated_role_with_saml_response() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"SecretAccessKey">> => string(),
%%   <<"SessionToken">> => string()
%% }
-type assume_decorated_role_with_saml_response() :: #{binary() => any()}.


%% Example:
%% deregister_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type deregister_resource_request() :: #{binary() => any()}.

%% Example:
%% update_l_f_tag_expression_response() :: #{}
-type update_l_f_tag_expression_response() :: #{}.


%% Example:
%% list_table_storage_optimizers_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StorageOptimizerType">> => list(any()),
%%   <<"TableName">> := string()
%% }
-type list_table_storage_optimizers_request() :: #{binary() => any()}.


%% Example:
%% start_transaction_response() :: #{
%%   <<"TransactionId">> => string()
%% }
-type start_transaction_response() :: #{binary() => any()}.

%% Example:
%% delete_lake_formation_opt_in_response() :: #{}
-type delete_lake_formation_opt_in_response() :: #{}.

%% Example:
%% grant_permissions_response() :: #{}
-type grant_permissions_response() :: #{}.

%% Example:
%% delete_l_f_tag_expression_response() :: #{}
-type delete_l_f_tag_expression_response() :: #{}.


%% Example:
%% add_l_f_tags_to_resource_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"LFTags">> := list(l_f_tag_pair()()),
%%   <<"Resource">> := resource()
%% }
-type add_l_f_tags_to_resource_request() :: #{binary() => any()}.


%% Example:
%% start_query_planning_response() :: #{
%%   <<"QueryId">> => string()
%% }
-type start_query_planning_response() :: #{binary() => any()}.


%% Example:
%% column_l_f_tag() :: #{
%%   <<"LFTags">> => list(l_f_tag_pair()()),
%%   <<"Name">> => string()
%% }
-type column_l_f_tag() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"Catalog">> => catalog_resource(),
%%   <<"DataCellsFilter">> => data_cells_filter_resource(),
%%   <<"DataLocation">> => data_location_resource(),
%%   <<"Database">> => database_resource(),
%%   <<"LFTag">> => l_f_tag_key_resource(),
%%   <<"LFTagExpression">> => l_f_tag_expression_resource(),
%%   <<"LFTagPolicy">> => l_f_tag_policy_resource(),
%%   <<"Table">> => table_resource(),
%%   <<"TableWithColumns">> => table_with_columns_resource()
%% }
-type resource() :: #{binary() => any()}.

-type add_l_f_tags_to_resource_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type assume_decorated_role_with_saml_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type batch_grant_permissions_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception().

-type batch_revoke_permissions_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception().

-type cancel_transaction_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    transaction_committed_exception() | 
    transaction_commit_in_progress_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type commit_transaction_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    transaction_canceled_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_data_cells_filter_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_l_f_tag_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_l_f_tag_expression_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_lake_formation_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_lake_formation_opt_in_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_data_cells_filter_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_l_f_tag_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_l_f_tag_expression_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_lake_formation_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_lake_formation_opt_in_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_objects_on_cancel_errors() ::
    resource_not_ready_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    transaction_committed_exception() | 
    internal_service_exception() | 
    transaction_canceled_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type deregister_resource_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type describe_lake_formation_identity_center_configuration_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type describe_resource_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type describe_transaction_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type extend_transaction_errors() ::
    invalid_input_exception() | 
    transaction_committed_exception() | 
    transaction_commit_in_progress_exception() | 
    internal_service_exception() | 
    transaction_canceled_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_cells_filter_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_lake_principal_errors() ::
    access_denied_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type get_data_lake_settings_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_effective_permissions_for_path_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_l_f_tag_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_l_f_tag_expression_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_query_state_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception().

-type get_query_statistics_errors() ::
    statistics_not_ready_yet_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    throttled_exception() | 
    internal_service_exception() | 
    expired_exception().

-type get_resource_l_f_tags_errors() ::
    glue_encryption_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_table_objects_errors() ::
    resource_not_ready_exception() | 
    invalid_input_exception() | 
    transaction_committed_exception() | 
    internal_service_exception() | 
    transaction_canceled_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_temporary_glue_partition_credentials_errors() ::
    permission_type_mismatch_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_temporary_glue_table_credentials_errors() ::
    permission_type_mismatch_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_work_unit_results_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    throttled_exception() | 
    internal_service_exception() | 
    expired_exception().

-type get_work_units_errors() ::
    work_units_not_ready_yet_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    expired_exception().

-type grant_permissions_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type list_data_cells_filter_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_l_f_tag_expressions_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_l_f_tags_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_lake_formation_opt_ins_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_permissions_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_resources_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_table_storage_optimizers_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type list_transactions_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type put_data_lake_settings_errors() ::
    invalid_input_exception() | 
    internal_service_exception().

-type register_resource_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type remove_l_f_tags_from_resource_errors() ::
    glue_encryption_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type revoke_permissions_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type search_databases_by_l_f_tags_errors() ::
    glue_encryption_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type search_tables_by_l_f_tags_errors() ::
    glue_encryption_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_query_planning_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    throttled_exception() | 
    internal_service_exception().

-type start_transaction_errors() ::
    internal_service_exception() | 
    operation_timeout_exception().

-type update_data_cells_filter_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_l_f_tag_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_l_f_tag_expression_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_lake_formation_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_resource_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_table_objects_errors() ::
    resource_not_ready_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    transaction_committed_exception() | 
    transaction_commit_in_progress_exception() | 
    internal_service_exception() | 
    transaction_canceled_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_table_storage_optimizer_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches one or more LF-tags to an existing resource.
-spec add_l_f_tags_to_resource(aws_client:aws_client(), add_l_f_tags_to_resource_request()) ->
    {ok, add_l_f_tags_to_resource_response(), tuple()} |
    {error, any()} |
    {error, add_l_f_tags_to_resource_errors(), tuple()}.
add_l_f_tags_to_resource(Client, Input) ->
    add_l_f_tags_to_resource(Client, Input, []).

-spec add_l_f_tags_to_resource(aws_client:aws_client(), add_l_f_tags_to_resource_request(), proplists:proplist()) ->
    {ok, add_l_f_tags_to_resource_response(), tuple()} |
    {error, any()} |
    {error, add_l_f_tags_to_resource_errors(), tuple()}.
add_l_f_tags_to_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AddLFTagsToResource"],
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

%% @doc Allows a caller to assume an IAM role decorated as the SAML user
%% specified in the SAML assertion included in the request.
%%
%% This decoration allows Lake Formation to enforce access policies against
%% the SAML users and groups. This API operation requires SAML federation
%% setup in the caller’s account as it can only be called with valid SAML
%% assertions.
%% Lake Formation does not scope down the permission of the assumed role. All
%% permissions attached to the role via the SAML federation setup will be
%% included in the role session.
%%
%% This decorated role is expected to access data in Amazon S3 by getting
%% temporary access from Lake Formation which is authorized via the virtual
%% API `GetDataAccess'. Therefore, all SAML roles that can be assumed via
%% `AssumeDecoratedRoleWithSAML' must at a minimum include
%% `lakeformation:GetDataAccess' in their role policies. A typical IAM
%% policy attached to such a role would look as follows:
-spec assume_decorated_role_with_saml(aws_client:aws_client(), assume_decorated_role_with_saml_request()) ->
    {ok, assume_decorated_role_with_saml_response(), tuple()} |
    {error, any()} |
    {error, assume_decorated_role_with_saml_errors(), tuple()}.
assume_decorated_role_with_saml(Client, Input) ->
    assume_decorated_role_with_saml(Client, Input, []).

-spec assume_decorated_role_with_saml(aws_client:aws_client(), assume_decorated_role_with_saml_request(), proplists:proplist()) ->
    {ok, assume_decorated_role_with_saml_response(), tuple()} |
    {error, any()} |
    {error, assume_decorated_role_with_saml_errors(), tuple()}.
assume_decorated_role_with_saml(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssumeDecoratedRoleWithSAML"],
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

%% @doc Batch operation to grant permissions to the principal.
-spec batch_grant_permissions(aws_client:aws_client(), batch_grant_permissions_request()) ->
    {ok, batch_grant_permissions_response(), tuple()} |
    {error, any()} |
    {error, batch_grant_permissions_errors(), tuple()}.
batch_grant_permissions(Client, Input) ->
    batch_grant_permissions(Client, Input, []).

-spec batch_grant_permissions(aws_client:aws_client(), batch_grant_permissions_request(), proplists:proplist()) ->
    {ok, batch_grant_permissions_response(), tuple()} |
    {error, any()} |
    {error, batch_grant_permissions_errors(), tuple()}.
batch_grant_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGrantPermissions"],
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

%% @doc Batch operation to revoke permissions from the principal.
-spec batch_revoke_permissions(aws_client:aws_client(), batch_revoke_permissions_request()) ->
    {ok, batch_revoke_permissions_response(), tuple()} |
    {error, any()} |
    {error, batch_revoke_permissions_errors(), tuple()}.
batch_revoke_permissions(Client, Input) ->
    batch_revoke_permissions(Client, Input, []).

-spec batch_revoke_permissions(aws_client:aws_client(), batch_revoke_permissions_request(), proplists:proplist()) ->
    {ok, batch_revoke_permissions_response(), tuple()} |
    {error, any()} |
    {error, batch_revoke_permissions_errors(), tuple()}.
batch_revoke_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchRevokePermissions"],
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

%% @doc Attempts to cancel the specified transaction.
%%
%% Returns an exception if the transaction was previously committed.
-spec cancel_transaction(aws_client:aws_client(), cancel_transaction_request()) ->
    {ok, cancel_transaction_response(), tuple()} |
    {error, any()} |
    {error, cancel_transaction_errors(), tuple()}.
cancel_transaction(Client, Input) ->
    cancel_transaction(Client, Input, []).

-spec cancel_transaction(aws_client:aws_client(), cancel_transaction_request(), proplists:proplist()) ->
    {ok, cancel_transaction_response(), tuple()} |
    {error, any()} |
    {error, cancel_transaction_errors(), tuple()}.
cancel_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CancelTransaction"],
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

%% @doc Attempts to commit the specified transaction.
%%
%% Returns an exception if the transaction was previously aborted. This API
%% action is idempotent if called multiple times for the same transaction.
-spec commit_transaction(aws_client:aws_client(), commit_transaction_request()) ->
    {ok, commit_transaction_response(), tuple()} |
    {error, any()} |
    {error, commit_transaction_errors(), tuple()}.
commit_transaction(Client, Input) ->
    commit_transaction(Client, Input, []).

-spec commit_transaction(aws_client:aws_client(), commit_transaction_request(), proplists:proplist()) ->
    {ok, commit_transaction_response(), tuple()} |
    {error, any()} |
    {error, commit_transaction_errors(), tuple()}.
commit_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CommitTransaction"],
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

%% @doc Creates a data cell filter to allow one to grant access to certain
%% columns on certain rows.
-spec create_data_cells_filter(aws_client:aws_client(), create_data_cells_filter_request()) ->
    {ok, create_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, create_data_cells_filter_errors(), tuple()}.
create_data_cells_filter(Client, Input) ->
    create_data_cells_filter(Client, Input, []).

-spec create_data_cells_filter(aws_client:aws_client(), create_data_cells_filter_request(), proplists:proplist()) ->
    {ok, create_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, create_data_cells_filter_errors(), tuple()}.
create_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateDataCellsFilter"],
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

%% @doc Creates an LF-tag with the specified name and values.
-spec create_l_f_tag(aws_client:aws_client(), create_l_f_tag_request()) ->
    {ok, create_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, create_l_f_tag_errors(), tuple()}.
create_l_f_tag(Client, Input) ->
    create_l_f_tag(Client, Input, []).

-spec create_l_f_tag(aws_client:aws_client(), create_l_f_tag_request(), proplists:proplist()) ->
    {ok, create_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, create_l_f_tag_errors(), tuple()}.
create_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLFTag"],
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

%% @doc Creates a new LF-Tag expression with the provided name, description,
%% catalog ID, and
%% expression body.
%%
%% This call fails if a LF-Tag expression with the same name already exists
%% in
%% the caller’s account or if the underlying LF-Tags don't exist. To call
%% this API operation,
%% caller needs the following Lake Formation permissions:
%%
%% `CREATE_LF_TAG_EXPRESSION' on the root catalog resource.
%%
%% `GRANT_WITH_LF_TAG_EXPRESSION' on all underlying LF-Tag key:value
%% pairs
%% included in the expression.
-spec create_l_f_tag_expression(aws_client:aws_client(), create_l_f_tag_expression_request()) ->
    {ok, create_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, create_l_f_tag_expression_errors(), tuple()}.
create_l_f_tag_expression(Client, Input) ->
    create_l_f_tag_expression(Client, Input, []).

-spec create_l_f_tag_expression(aws_client:aws_client(), create_l_f_tag_expression_request(), proplists:proplist()) ->
    {ok, create_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, create_l_f_tag_expression_errors(), tuple()}.
create_l_f_tag_expression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLFTagExpression"],
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

%% @doc Creates an IAM Identity Center connection with Lake Formation to
%% allow IAM Identity Center users and groups to access Data Catalog
%% resources.
-spec create_lake_formation_identity_center_configuration(aws_client:aws_client(), create_lake_formation_identity_center_configuration_request()) ->
    {ok, create_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_lake_formation_identity_center_configuration_errors(), tuple()}.
create_lake_formation_identity_center_configuration(Client, Input) ->
    create_lake_formation_identity_center_configuration(Client, Input, []).

-spec create_lake_formation_identity_center_configuration(aws_client:aws_client(), create_lake_formation_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, create_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_lake_formation_identity_center_configuration_errors(), tuple()}.
create_lake_formation_identity_center_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLakeFormationIdentityCenterConfiguration"],
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

%% @doc Enforce Lake Formation permissions for the given databases, tables,
%% and principals.
-spec create_lake_formation_opt_in(aws_client:aws_client(), create_lake_formation_opt_in_request()) ->
    {ok, create_lake_formation_opt_in_response(), tuple()} |
    {error, any()} |
    {error, create_lake_formation_opt_in_errors(), tuple()}.
create_lake_formation_opt_in(Client, Input) ->
    create_lake_formation_opt_in(Client, Input, []).

-spec create_lake_formation_opt_in(aws_client:aws_client(), create_lake_formation_opt_in_request(), proplists:proplist()) ->
    {ok, create_lake_formation_opt_in_response(), tuple()} |
    {error, any()} |
    {error, create_lake_formation_opt_in_errors(), tuple()}.
create_lake_formation_opt_in(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLakeFormationOptIn"],
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

%% @doc Deletes a data cell filter.
-spec delete_data_cells_filter(aws_client:aws_client(), delete_data_cells_filter_request()) ->
    {ok, delete_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_data_cells_filter_errors(), tuple()}.
delete_data_cells_filter(Client, Input) ->
    delete_data_cells_filter(Client, Input, []).

-spec delete_data_cells_filter(aws_client:aws_client(), delete_data_cells_filter_request(), proplists:proplist()) ->
    {ok, delete_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_data_cells_filter_errors(), tuple()}.
delete_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteDataCellsFilter"],
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

%% @doc Deletes the specified LF-tag given a key name.
%%
%% If the input parameter tag key was not found, then the operation will
%% throw an exception. When you delete an LF-tag, the `LFTagPolicy'
%% attached to the LF-tag becomes invalid. If the deleted LF-tag was still
%% assigned to any resource, the tag policy attach to the deleted LF-tag will
%% no longer be applied to the resource.
-spec delete_l_f_tag(aws_client:aws_client(), delete_l_f_tag_request()) ->
    {ok, delete_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, delete_l_f_tag_errors(), tuple()}.
delete_l_f_tag(Client, Input) ->
    delete_l_f_tag(Client, Input, []).

-spec delete_l_f_tag(aws_client:aws_client(), delete_l_f_tag_request(), proplists:proplist()) ->
    {ok, delete_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, delete_l_f_tag_errors(), tuple()}.
delete_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLFTag"],
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

%% @doc Deletes the LF-Tag expression.
%%
%% The caller must be a data lake admin or have `DROP' permissions on the
%% LF-Tag expression.
%% Deleting a LF-Tag expression will also delete all `LFTagPolicy'
%% permissions referencing the LF-Tag expression.
-spec delete_l_f_tag_expression(aws_client:aws_client(), delete_l_f_tag_expression_request()) ->
    {ok, delete_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, delete_l_f_tag_expression_errors(), tuple()}.
delete_l_f_tag_expression(Client, Input) ->
    delete_l_f_tag_expression(Client, Input, []).

-spec delete_l_f_tag_expression(aws_client:aws_client(), delete_l_f_tag_expression_request(), proplists:proplist()) ->
    {ok, delete_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, delete_l_f_tag_expression_errors(), tuple()}.
delete_l_f_tag_expression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLFTagExpression"],
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

%% @doc Deletes an IAM Identity Center connection with Lake Formation.
-spec delete_lake_formation_identity_center_configuration(aws_client:aws_client(), delete_lake_formation_identity_center_configuration_request()) ->
    {ok, delete_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_lake_formation_identity_center_configuration_errors(), tuple()}.
delete_lake_formation_identity_center_configuration(Client, Input) ->
    delete_lake_formation_identity_center_configuration(Client, Input, []).

-spec delete_lake_formation_identity_center_configuration(aws_client:aws_client(), delete_lake_formation_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, delete_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_lake_formation_identity_center_configuration_errors(), tuple()}.
delete_lake_formation_identity_center_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLakeFormationIdentityCenterConfiguration"],
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

%% @doc Remove the Lake Formation permissions enforcement of the given
%% databases, tables, and principals.
-spec delete_lake_formation_opt_in(aws_client:aws_client(), delete_lake_formation_opt_in_request()) ->
    {ok, delete_lake_formation_opt_in_response(), tuple()} |
    {error, any()} |
    {error, delete_lake_formation_opt_in_errors(), tuple()}.
delete_lake_formation_opt_in(Client, Input) ->
    delete_lake_formation_opt_in(Client, Input, []).

-spec delete_lake_formation_opt_in(aws_client:aws_client(), delete_lake_formation_opt_in_request(), proplists:proplist()) ->
    {ok, delete_lake_formation_opt_in_response(), tuple()} |
    {error, any()} |
    {error, delete_lake_formation_opt_in_errors(), tuple()}.
delete_lake_formation_opt_in(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLakeFormationOptIn"],
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

%% @doc For a specific governed table, provides a list of Amazon S3 objects
%% that will be written during the current transaction and that can be
%% automatically deleted
%% if the transaction is canceled.
%%
%% Without this call, no Amazon S3 objects are automatically deleted when a
%% transaction cancels.
%%
%% The Glue ETL library function includes an option to automatically
%% call `DeleteObjectsOnCancel' before writes. For more information, see
%% Rolling Back Amazon S3 Writes:
%% https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes.
-spec delete_objects_on_cancel(aws_client:aws_client(), delete_objects_on_cancel_request()) ->
    {ok, delete_objects_on_cancel_response(), tuple()} |
    {error, any()} |
    {error, delete_objects_on_cancel_errors(), tuple()}.
delete_objects_on_cancel(Client, Input) ->
    delete_objects_on_cancel(Client, Input, []).

-spec delete_objects_on_cancel(aws_client:aws_client(), delete_objects_on_cancel_request(), proplists:proplist()) ->
    {ok, delete_objects_on_cancel_response(), tuple()} |
    {error, any()} |
    {error, delete_objects_on_cancel_errors(), tuple()}.
delete_objects_on_cancel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteObjectsOnCancel"],
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

%% @doc Deregisters the resource as managed by the Data Catalog.
%%
%% When you deregister a path, Lake Formation removes the path from the
%% inline policy attached to your service-linked role.
-spec deregister_resource(aws_client:aws_client(), deregister_resource_request()) ->
    {ok, deregister_resource_response(), tuple()} |
    {error, any()} |
    {error, deregister_resource_errors(), tuple()}.
deregister_resource(Client, Input) ->
    deregister_resource(Client, Input, []).

-spec deregister_resource(aws_client:aws_client(), deregister_resource_request(), proplists:proplist()) ->
    {ok, deregister_resource_response(), tuple()} |
    {error, any()} |
    {error, deregister_resource_errors(), tuple()}.
deregister_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeregisterResource"],
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

%% @doc Retrieves the instance ARN and application ARN for the connection.
-spec describe_lake_formation_identity_center_configuration(aws_client:aws_client(), describe_lake_formation_identity_center_configuration_request()) ->
    {ok, describe_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_lake_formation_identity_center_configuration_errors(), tuple()}.
describe_lake_formation_identity_center_configuration(Client, Input) ->
    describe_lake_formation_identity_center_configuration(Client, Input, []).

-spec describe_lake_formation_identity_center_configuration(aws_client:aws_client(), describe_lake_formation_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, describe_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_lake_formation_identity_center_configuration_errors(), tuple()}.
describe_lake_formation_identity_center_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeLakeFormationIdentityCenterConfiguration"],
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

%% @doc Retrieves the current data access role for the given resource
%% registered in Lake Formation.
-spec describe_resource(aws_client:aws_client(), describe_resource_request()) ->
    {ok, describe_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_errors(), tuple()}.
describe_resource(Client, Input) ->
    describe_resource(Client, Input, []).

-spec describe_resource(aws_client:aws_client(), describe_resource_request(), proplists:proplist()) ->
    {ok, describe_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_errors(), tuple()}.
describe_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeResource"],
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

%% @doc Returns the details of a single transaction.
-spec describe_transaction(aws_client:aws_client(), describe_transaction_request()) ->
    {ok, describe_transaction_response(), tuple()} |
    {error, any()} |
    {error, describe_transaction_errors(), tuple()}.
describe_transaction(Client, Input) ->
    describe_transaction(Client, Input, []).

-spec describe_transaction(aws_client:aws_client(), describe_transaction_request(), proplists:proplist()) ->
    {ok, describe_transaction_response(), tuple()} |
    {error, any()} |
    {error, describe_transaction_errors(), tuple()}.
describe_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeTransaction"],
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

%% @doc Indicates to the service that the specified transaction is still
%% active and should not be treated as idle and aborted.
%%
%% Write transactions that remain idle for a long period are automatically
%% aborted unless explicitly extended.
-spec extend_transaction(aws_client:aws_client(), extend_transaction_request()) ->
    {ok, extend_transaction_response(), tuple()} |
    {error, any()} |
    {error, extend_transaction_errors(), tuple()}.
extend_transaction(Client, Input) ->
    extend_transaction(Client, Input, []).

-spec extend_transaction(aws_client:aws_client(), extend_transaction_request(), proplists:proplist()) ->
    {ok, extend_transaction_response(), tuple()} |
    {error, any()} |
    {error, extend_transaction_errors(), tuple()}.
extend_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ExtendTransaction"],
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

%% @doc Returns a data cells filter.
-spec get_data_cells_filter(aws_client:aws_client(), get_data_cells_filter_request()) ->
    {ok, get_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, get_data_cells_filter_errors(), tuple()}.
get_data_cells_filter(Client, Input) ->
    get_data_cells_filter(Client, Input, []).

-spec get_data_cells_filter(aws_client:aws_client(), get_data_cells_filter_request(), proplists:proplist()) ->
    {ok, get_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, get_data_cells_filter_errors(), tuple()}.
get_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDataCellsFilter"],
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

%% @doc Returns the identity of the invoking principal.
-spec get_data_lake_principal(aws_client:aws_client(), get_data_lake_principal_request()) ->
    {ok, get_data_lake_principal_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_principal_errors(), tuple()}.
get_data_lake_principal(Client, Input) ->
    get_data_lake_principal(Client, Input, []).

-spec get_data_lake_principal(aws_client:aws_client(), get_data_lake_principal_request(), proplists:proplist()) ->
    {ok, get_data_lake_principal_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_principal_errors(), tuple()}.
get_data_lake_principal(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDataLakePrincipal"],
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

%% @doc Retrieves the list of the data lake administrators of a Lake
%% Formation-managed data lake.
-spec get_data_lake_settings(aws_client:aws_client(), get_data_lake_settings_request()) ->
    {ok, get_data_lake_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_settings_errors(), tuple()}.
get_data_lake_settings(Client, Input) ->
    get_data_lake_settings(Client, Input, []).

-spec get_data_lake_settings(aws_client:aws_client(), get_data_lake_settings_request(), proplists:proplist()) ->
    {ok, get_data_lake_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_settings_errors(), tuple()}.
get_data_lake_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDataLakeSettings"],
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

%% @doc Returns the Lake Formation permissions for a specified table or
%% database resource located
%% at a path in Amazon S3.
%%
%% `GetEffectivePermissionsForPath' will not return databases and tables
%% if the catalog is encrypted.
-spec get_effective_permissions_for_path(aws_client:aws_client(), get_effective_permissions_for_path_request()) ->
    {ok, get_effective_permissions_for_path_response(), tuple()} |
    {error, any()} |
    {error, get_effective_permissions_for_path_errors(), tuple()}.
get_effective_permissions_for_path(Client, Input) ->
    get_effective_permissions_for_path(Client, Input, []).

-spec get_effective_permissions_for_path(aws_client:aws_client(), get_effective_permissions_for_path_request(), proplists:proplist()) ->
    {ok, get_effective_permissions_for_path_response(), tuple()} |
    {error, any()} |
    {error, get_effective_permissions_for_path_errors(), tuple()}.
get_effective_permissions_for_path(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetEffectivePermissionsForPath"],
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

%% @doc Returns an LF-tag definition.
-spec get_l_f_tag(aws_client:aws_client(), get_l_f_tag_request()) ->
    {ok, get_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, get_l_f_tag_errors(), tuple()}.
get_l_f_tag(Client, Input) ->
    get_l_f_tag(Client, Input, []).

-spec get_l_f_tag(aws_client:aws_client(), get_l_f_tag_request(), proplists:proplist()) ->
    {ok, get_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, get_l_f_tag_errors(), tuple()}.
get_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLFTag"],
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

%% @doc Returns the details about the LF-Tag expression.
%%
%% The caller must be a data lake admin or must have `DESCRIBE'
%% permission on the LF-Tag expression resource.
-spec get_l_f_tag_expression(aws_client:aws_client(), get_l_f_tag_expression_request()) ->
    {ok, get_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, get_l_f_tag_expression_errors(), tuple()}.
get_l_f_tag_expression(Client, Input) ->
    get_l_f_tag_expression(Client, Input, []).

-spec get_l_f_tag_expression(aws_client:aws_client(), get_l_f_tag_expression_request(), proplists:proplist()) ->
    {ok, get_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, get_l_f_tag_expression_errors(), tuple()}.
get_l_f_tag_expression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLFTagExpression"],
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

%% @doc Returns the state of a query previously submitted.
%%
%% Clients are expected to poll `GetQueryState' to monitor the current
%% state of the planning before retrieving the work units. A query state is
%% only visible to the principal that made the initial call to
%% `StartQueryPlanning'.
-spec get_query_state(aws_client:aws_client(), get_query_state_request()) ->
    {ok, get_query_state_response(), tuple()} |
    {error, any()} |
    {error, get_query_state_errors(), tuple()}.
get_query_state(Client, Input) ->
    get_query_state(Client, Input, []).

-spec get_query_state(aws_client:aws_client(), get_query_state_request(), proplists:proplist()) ->
    {ok, get_query_state_response(), tuple()} |
    {error, any()} |
    {error, get_query_state_errors(), tuple()}.
get_query_state(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetQueryState"],
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

%% @doc Retrieves statistics on the planning and execution of a query.
-spec get_query_statistics(aws_client:aws_client(), get_query_statistics_request()) ->
    {ok, get_query_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_query_statistics_errors(), tuple()}.
get_query_statistics(Client, Input) ->
    get_query_statistics(Client, Input, []).

-spec get_query_statistics(aws_client:aws_client(), get_query_statistics_request(), proplists:proplist()) ->
    {ok, get_query_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_query_statistics_errors(), tuple()}.
get_query_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetQueryStatistics"],
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

%% @doc Returns the LF-tags applied to a resource.
-spec get_resource_l_f_tags(aws_client:aws_client(), get_resource_l_f_tags_request()) ->
    {ok, get_resource_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, get_resource_l_f_tags_errors(), tuple()}.
get_resource_l_f_tags(Client, Input) ->
    get_resource_l_f_tags(Client, Input, []).

-spec get_resource_l_f_tags(aws_client:aws_client(), get_resource_l_f_tags_request(), proplists:proplist()) ->
    {ok, get_resource_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, get_resource_l_f_tags_errors(), tuple()}.
get_resource_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetResourceLFTags"],
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

%% @doc Returns the set of Amazon S3 objects that make up the specified
%% governed table.
%%
%% A transaction ID or timestamp can be specified for time-travel queries.
-spec get_table_objects(aws_client:aws_client(), get_table_objects_request()) ->
    {ok, get_table_objects_response(), tuple()} |
    {error, any()} |
    {error, get_table_objects_errors(), tuple()}.
get_table_objects(Client, Input) ->
    get_table_objects(Client, Input, []).

-spec get_table_objects(aws_client:aws_client(), get_table_objects_request(), proplists:proplist()) ->
    {ok, get_table_objects_response(), tuple()} |
    {error, any()} |
    {error, get_table_objects_errors(), tuple()}.
get_table_objects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTableObjects"],
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

%% @doc This API is identical to `GetTemporaryTableCredentials' except
%% that this is used when the target Data Catalog resource is of type
%% Partition.
%%
%% Lake Formation restricts the permission of the vended credentials with the
%% same scope down policy which restricts access to a single Amazon S3
%% prefix.
-spec get_temporary_glue_partition_credentials(aws_client:aws_client(), get_temporary_glue_partition_credentials_request()) ->
    {ok, get_temporary_glue_partition_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_temporary_glue_partition_credentials_errors(), tuple()}.
get_temporary_glue_partition_credentials(Client, Input) ->
    get_temporary_glue_partition_credentials(Client, Input, []).

-spec get_temporary_glue_partition_credentials(aws_client:aws_client(), get_temporary_glue_partition_credentials_request(), proplists:proplist()) ->
    {ok, get_temporary_glue_partition_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_temporary_glue_partition_credentials_errors(), tuple()}.
get_temporary_glue_partition_credentials(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTemporaryGluePartitionCredentials"],
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

%% @doc Allows a caller in a secure environment to assume a role with
%% permission to access Amazon S3.
%%
%% In order to vend such credentials, Lake Formation assumes the role
%% associated with a registered location, for example an Amazon S3 bucket,
%% with a scope down policy which restricts the access to a single prefix.
%%
%% To call this API, the role that the service assumes must have
%% `lakeformation:GetDataAccess' permission on the resource.
-spec get_temporary_glue_table_credentials(aws_client:aws_client(), get_temporary_glue_table_credentials_request()) ->
    {ok, get_temporary_glue_table_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_temporary_glue_table_credentials_errors(), tuple()}.
get_temporary_glue_table_credentials(Client, Input) ->
    get_temporary_glue_table_credentials(Client, Input, []).

-spec get_temporary_glue_table_credentials(aws_client:aws_client(), get_temporary_glue_table_credentials_request(), proplists:proplist()) ->
    {ok, get_temporary_glue_table_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_temporary_glue_table_credentials_errors(), tuple()}.
get_temporary_glue_table_credentials(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTemporaryGlueTableCredentials"],
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

%% @doc Returns the work units resulting from the query.
%%
%% Work units can be executed in any order and in parallel.
-spec get_work_unit_results(aws_client:aws_client(), get_work_unit_results_request()) ->
    {ok, get_work_unit_results_response(), tuple()} |
    {error, any()} |
    {error, get_work_unit_results_errors(), tuple()}.
get_work_unit_results(Client, Input) ->
    get_work_unit_results(Client, Input, []).

-spec get_work_unit_results(aws_client:aws_client(), get_work_unit_results_request(), proplists:proplist()) ->
    {ok, get_work_unit_results_response(), tuple()} |
    {error, any()} |
    {error, get_work_unit_results_errors(), tuple()}.
get_work_unit_results(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetWorkUnitResults"],
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

%% @doc Retrieves the work units generated by the `StartQueryPlanning'
%% operation.
-spec get_work_units(aws_client:aws_client(), get_work_units_request()) ->
    {ok, get_work_units_response(), tuple()} |
    {error, any()} |
    {error, get_work_units_errors(), tuple()}.
get_work_units(Client, Input) ->
    get_work_units(Client, Input, []).

-spec get_work_units(aws_client:aws_client(), get_work_units_request(), proplists:proplist()) ->
    {ok, get_work_units_response(), tuple()} |
    {error, any()} |
    {error, get_work_units_errors(), tuple()}.
get_work_units(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetWorkUnits"],
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

%% @doc Grants permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
%%
%% For information about permissions, see Security and Access Control to
%% Metadata and Data:
%% https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html.
-spec grant_permissions(aws_client:aws_client(), grant_permissions_request()) ->
    {ok, grant_permissions_response(), tuple()} |
    {error, any()} |
    {error, grant_permissions_errors(), tuple()}.
grant_permissions(Client, Input) ->
    grant_permissions(Client, Input, []).

-spec grant_permissions(aws_client:aws_client(), grant_permissions_request(), proplists:proplist()) ->
    {ok, grant_permissions_response(), tuple()} |
    {error, any()} |
    {error, grant_permissions_errors(), tuple()}.
grant_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GrantPermissions"],
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

%% @doc Lists all the data cell filters on a table.
-spec list_data_cells_filter(aws_client:aws_client(), list_data_cells_filter_request()) ->
    {ok, list_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, list_data_cells_filter_errors(), tuple()}.
list_data_cells_filter(Client, Input) ->
    list_data_cells_filter(Client, Input, []).

-spec list_data_cells_filter(aws_client:aws_client(), list_data_cells_filter_request(), proplists:proplist()) ->
    {ok, list_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, list_data_cells_filter_errors(), tuple()}.
list_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListDataCellsFilter"],
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

%% @doc Returns the LF-Tag expressions in caller’s account filtered based on
%% caller's permissions.
%%
%% Data Lake and read only admins implicitly can see all tag expressions in
%% their account, else caller needs DESCRIBE permissions on tag expression.
-spec list_l_f_tag_expressions(aws_client:aws_client(), list_l_f_tag_expressions_request()) ->
    {ok, list_l_f_tag_expressions_response(), tuple()} |
    {error, any()} |
    {error, list_l_f_tag_expressions_errors(), tuple()}.
list_l_f_tag_expressions(Client, Input) ->
    list_l_f_tag_expressions(Client, Input, []).

-spec list_l_f_tag_expressions(aws_client:aws_client(), list_l_f_tag_expressions_request(), proplists:proplist()) ->
    {ok, list_l_f_tag_expressions_response(), tuple()} |
    {error, any()} |
    {error, list_l_f_tag_expressions_errors(), tuple()}.
list_l_f_tag_expressions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLFTagExpressions"],
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

%% @doc Lists LF-tags that the requester has permission to view.
-spec list_l_f_tags(aws_client:aws_client(), list_l_f_tags_request()) ->
    {ok, list_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, list_l_f_tags_errors(), tuple()}.
list_l_f_tags(Client, Input) ->
    list_l_f_tags(Client, Input, []).

-spec list_l_f_tags(aws_client:aws_client(), list_l_f_tags_request(), proplists:proplist()) ->
    {ok, list_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, list_l_f_tags_errors(), tuple()}.
list_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLFTags"],
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

%% @doc Retrieve the current list of resources and principals that are opt in
%% to enforce Lake Formation permissions.
-spec list_lake_formation_opt_ins(aws_client:aws_client(), list_lake_formation_opt_ins_request()) ->
    {ok, list_lake_formation_opt_ins_response(), tuple()} |
    {error, any()} |
    {error, list_lake_formation_opt_ins_errors(), tuple()}.
list_lake_formation_opt_ins(Client, Input) ->
    list_lake_formation_opt_ins(Client, Input, []).

-spec list_lake_formation_opt_ins(aws_client:aws_client(), list_lake_formation_opt_ins_request(), proplists:proplist()) ->
    {ok, list_lake_formation_opt_ins_response(), tuple()} |
    {error, any()} |
    {error, list_lake_formation_opt_ins_errors(), tuple()}.
list_lake_formation_opt_ins(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLakeFormationOptIns"],
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

%% @doc Returns a list of the principal permissions on the resource, filtered
%% by the permissions of the caller.
%%
%% For example, if you are granted an ALTER permission, you are able to see
%% only the principal permissions for ALTER.
%%
%% This operation returns only those permissions that have been explicitly
%% granted.
%%
%% For information about permissions, see Security and Access Control to
%% Metadata and Data:
%% https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html.
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
    Path = ["/ListPermissions"],
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

%% @doc Lists the resources registered to be managed by the Data Catalog.
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
    Path = ["/ListResources"],
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

%% @doc Returns the configuration of all storage optimizers associated with a
%% specified table.
-spec list_table_storage_optimizers(aws_client:aws_client(), list_table_storage_optimizers_request()) ->
    {ok, list_table_storage_optimizers_response(), tuple()} |
    {error, any()} |
    {error, list_table_storage_optimizers_errors(), tuple()}.
list_table_storage_optimizers(Client, Input) ->
    list_table_storage_optimizers(Client, Input, []).

-spec list_table_storage_optimizers(aws_client:aws_client(), list_table_storage_optimizers_request(), proplists:proplist()) ->
    {ok, list_table_storage_optimizers_response(), tuple()} |
    {error, any()} |
    {error, list_table_storage_optimizers_errors(), tuple()}.
list_table_storage_optimizers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTableStorageOptimizers"],
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

%% @doc Returns metadata about transactions and their status.
%%
%% To prevent the response from growing indefinitely, only uncommitted
%% transactions and those available for time-travel queries are returned.
%%
%% This operation can help you identify uncommitted transactions or to get
%% information about transactions.
-spec list_transactions(aws_client:aws_client(), list_transactions_request()) ->
    {ok, list_transactions_response(), tuple()} |
    {error, any()} |
    {error, list_transactions_errors(), tuple()}.
list_transactions(Client, Input) ->
    list_transactions(Client, Input, []).

-spec list_transactions(aws_client:aws_client(), list_transactions_request(), proplists:proplist()) ->
    {ok, list_transactions_response(), tuple()} |
    {error, any()} |
    {error, list_transactions_errors(), tuple()}.
list_transactions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTransactions"],
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

%% @doc Sets the list of data lake administrators who have admin privileges
%% on all resources managed by Lake Formation.
%%
%% For more information on admin privileges, see Granting Lake Formation
%% Permissions:
%% https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html.
%%
%% This API replaces the current list of data lake admins with the new list
%% being passed. To add an admin, fetch the current list and add the new
%% admin to that list and pass that list in this API.
-spec put_data_lake_settings(aws_client:aws_client(), put_data_lake_settings_request()) ->
    {ok, put_data_lake_settings_response(), tuple()} |
    {error, any()} |
    {error, put_data_lake_settings_errors(), tuple()}.
put_data_lake_settings(Client, Input) ->
    put_data_lake_settings(Client, Input, []).

-spec put_data_lake_settings(aws_client:aws_client(), put_data_lake_settings_request(), proplists:proplist()) ->
    {ok, put_data_lake_settings_response(), tuple()} |
    {error, any()} |
    {error, put_data_lake_settings_errors(), tuple()}.
put_data_lake_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutDataLakeSettings"],
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

%% @doc Registers the resource as managed by the Data Catalog.
%%
%% To add or update data, Lake Formation needs read/write access to the
%% chosen Amazon S3 path. Choose a role that you know has permission to do
%% this, or choose the AWSServiceRoleForLakeFormationDataAccess
%% service-linked role. When you register the first Amazon S3 path, the
%% service-linked role and a new inline policy are created on your behalf.
%% Lake Formation adds the first path to the inline policy and attaches it to
%% the service-linked role. When you register subsequent paths, Lake
%% Formation adds the path to the existing policy.
%%
%% The following request registers a new location and gives Lake Formation
%% permission to use the service-linked role to access that location.
%%
%% ```
%% ResourceArn = arn:aws:s3:::my-bucket/UseServiceLinkedRole =
%% true'''
%%
%% If `UseServiceLinkedRole' is not set to true, you must provide or set
%% the `RoleArn':
%%
%% `arn:aws:iam::12345:role/my-data-access-role'
-spec register_resource(aws_client:aws_client(), register_resource_request()) ->
    {ok, register_resource_response(), tuple()} |
    {error, any()} |
    {error, register_resource_errors(), tuple()}.
register_resource(Client, Input) ->
    register_resource(Client, Input, []).

-spec register_resource(aws_client:aws_client(), register_resource_request(), proplists:proplist()) ->
    {ok, register_resource_response(), tuple()} |
    {error, any()} |
    {error, register_resource_errors(), tuple()}.
register_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RegisterResource"],
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

%% @doc Removes an LF-tag from the resource.
%%
%% Only database, table, or tableWithColumns resource are allowed. To tag
%% columns, use the column inclusion list in `tableWithColumns' to
%% specify column input.
-spec remove_l_f_tags_from_resource(aws_client:aws_client(), remove_l_f_tags_from_resource_request()) ->
    {ok, remove_l_f_tags_from_resource_response(), tuple()} |
    {error, any()} |
    {error, remove_l_f_tags_from_resource_errors(), tuple()}.
remove_l_f_tags_from_resource(Client, Input) ->
    remove_l_f_tags_from_resource(Client, Input, []).

-spec remove_l_f_tags_from_resource(aws_client:aws_client(), remove_l_f_tags_from_resource_request(), proplists:proplist()) ->
    {ok, remove_l_f_tags_from_resource_response(), tuple()} |
    {error, any()} |
    {error, remove_l_f_tags_from_resource_errors(), tuple()}.
remove_l_f_tags_from_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RemoveLFTagsFromResource"],
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

%% @doc Revokes permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
-spec revoke_permissions(aws_client:aws_client(), revoke_permissions_request()) ->
    {ok, revoke_permissions_response(), tuple()} |
    {error, any()} |
    {error, revoke_permissions_errors(), tuple()}.
revoke_permissions(Client, Input) ->
    revoke_permissions(Client, Input, []).

-spec revoke_permissions(aws_client:aws_client(), revoke_permissions_request(), proplists:proplist()) ->
    {ok, revoke_permissions_response(), tuple()} |
    {error, any()} |
    {error, revoke_permissions_errors(), tuple()}.
revoke_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RevokePermissions"],
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

%% @doc This operation allows a search on `DATABASE' resources by
%% `TagCondition'.
%%
%% This operation is used by admins who want to grant user permissions on
%% certain `TagConditions'. Before making a grant, the admin can use
%% `SearchDatabasesByTags' to find all resources where the given
%% `TagConditions' are valid to verify whether the returned resources can
%% be shared.
-spec search_databases_by_l_f_tags(aws_client:aws_client(), search_databases_by_l_f_tags_request()) ->
    {ok, search_databases_by_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, search_databases_by_l_f_tags_errors(), tuple()}.
search_databases_by_l_f_tags(Client, Input) ->
    search_databases_by_l_f_tags(Client, Input, []).

-spec search_databases_by_l_f_tags(aws_client:aws_client(), search_databases_by_l_f_tags_request(), proplists:proplist()) ->
    {ok, search_databases_by_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, search_databases_by_l_f_tags_errors(), tuple()}.
search_databases_by_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SearchDatabasesByLFTags"],
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

%% @doc This operation allows a search on `TABLE' resources by
%% `LFTag's.
%%
%% This will be used by admins who want to grant user permissions on certain
%% LF-tags. Before making a grant, the admin can use
%% `SearchTablesByLFTags' to find all resources where the given
%% `LFTag's are valid to verify whether the returned resources can be
%% shared.
-spec search_tables_by_l_f_tags(aws_client:aws_client(), search_tables_by_l_f_tags_request()) ->
    {ok, search_tables_by_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, search_tables_by_l_f_tags_errors(), tuple()}.
search_tables_by_l_f_tags(Client, Input) ->
    search_tables_by_l_f_tags(Client, Input, []).

-spec search_tables_by_l_f_tags(aws_client:aws_client(), search_tables_by_l_f_tags_request(), proplists:proplist()) ->
    {ok, search_tables_by_l_f_tags_response(), tuple()} |
    {error, any()} |
    {error, search_tables_by_l_f_tags_errors(), tuple()}.
search_tables_by_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SearchTablesByLFTags"],
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

%% @doc Submits a request to process a query statement.
%%
%% This operation generates work units that can be retrieved with the
%% `GetWorkUnits' operation as soon as the query state is
%% WORKUNITS_AVAILABLE or FINISHED.
-spec start_query_planning(aws_client:aws_client(), start_query_planning_request()) ->
    {ok, start_query_planning_response(), tuple()} |
    {error, any()} |
    {error, start_query_planning_errors(), tuple()}.
start_query_planning(Client, Input) ->
    start_query_planning(Client, Input, []).

-spec start_query_planning(aws_client:aws_client(), start_query_planning_request(), proplists:proplist()) ->
    {ok, start_query_planning_response(), tuple()} |
    {error, any()} |
    {error, start_query_planning_errors(), tuple()}.
start_query_planning(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartQueryPlanning"],
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

%% @doc Starts a new transaction and returns its transaction ID.
%%
%% Transaction IDs are opaque objects that you can use to identify a
%% transaction.
-spec start_transaction(aws_client:aws_client(), start_transaction_request()) ->
    {ok, start_transaction_response(), tuple()} |
    {error, any()} |
    {error, start_transaction_errors(), tuple()}.
start_transaction(Client, Input) ->
    start_transaction(Client, Input, []).

-spec start_transaction(aws_client:aws_client(), start_transaction_request(), proplists:proplist()) ->
    {ok, start_transaction_response(), tuple()} |
    {error, any()} |
    {error, start_transaction_errors(), tuple()}.
start_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTransaction"],
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

%% @doc Updates a data cell filter.
-spec update_data_cells_filter(aws_client:aws_client(), update_data_cells_filter_request()) ->
    {ok, update_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, update_data_cells_filter_errors(), tuple()}.
update_data_cells_filter(Client, Input) ->
    update_data_cells_filter(Client, Input, []).

-spec update_data_cells_filter(aws_client:aws_client(), update_data_cells_filter_request(), proplists:proplist()) ->
    {ok, update_data_cells_filter_response(), tuple()} |
    {error, any()} |
    {error, update_data_cells_filter_errors(), tuple()}.
update_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateDataCellsFilter"],
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

%% @doc Updates the list of possible values for the specified LF-tag key.
%%
%% If the LF-tag does not exist, the operation throws an
%% EntityNotFoundException. The values in the delete key values will be
%% deleted from list of possible values. If any value in the delete key
%% values is attached to a resource, then API errors out with a 400 Exception
%% - &quot;Update not allowed&quot;. Untag the attribute before deleting the
%% LF-tag key's value.
-spec update_l_f_tag(aws_client:aws_client(), update_l_f_tag_request()) ->
    {ok, update_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, update_l_f_tag_errors(), tuple()}.
update_l_f_tag(Client, Input) ->
    update_l_f_tag(Client, Input, []).

-spec update_l_f_tag(aws_client:aws_client(), update_l_f_tag_request(), proplists:proplist()) ->
    {ok, update_l_f_tag_response(), tuple()} |
    {error, any()} |
    {error, update_l_f_tag_errors(), tuple()}.
update_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLFTag"],
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

%% @doc Updates the name of the LF-Tag expression to the new description and
%% expression body provided.
%%
%% Updating a LF-Tag expression immediately changes the permission boundaries
%% of all existing `LFTagPolicy' permission grants that reference the
%% given LF-Tag expression.
-spec update_l_f_tag_expression(aws_client:aws_client(), update_l_f_tag_expression_request()) ->
    {ok, update_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, update_l_f_tag_expression_errors(), tuple()}.
update_l_f_tag_expression(Client, Input) ->
    update_l_f_tag_expression(Client, Input, []).

-spec update_l_f_tag_expression(aws_client:aws_client(), update_l_f_tag_expression_request(), proplists:proplist()) ->
    {ok, update_l_f_tag_expression_response(), tuple()} |
    {error, any()} |
    {error, update_l_f_tag_expression_errors(), tuple()}.
update_l_f_tag_expression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLFTagExpression"],
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

%% @doc Updates the IAM Identity Center connection parameters.
-spec update_lake_formation_identity_center_configuration(aws_client:aws_client(), update_lake_formation_identity_center_configuration_request()) ->
    {ok, update_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_lake_formation_identity_center_configuration_errors(), tuple()}.
update_lake_formation_identity_center_configuration(Client, Input) ->
    update_lake_formation_identity_center_configuration(Client, Input, []).

-spec update_lake_formation_identity_center_configuration(aws_client:aws_client(), update_lake_formation_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, update_lake_formation_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_lake_formation_identity_center_configuration_errors(), tuple()}.
update_lake_formation_identity_center_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLakeFormationIdentityCenterConfiguration"],
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

%% @doc Updates the data access role used for vending access to the given
%% (registered) resource in Lake Formation.
-spec update_resource(aws_client:aws_client(), update_resource_request()) ->
    {ok, update_resource_response(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, Input) ->
    update_resource(Client, Input, []).

-spec update_resource(aws_client:aws_client(), update_resource_request(), proplists:proplist()) ->
    {ok, update_resource_response(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateResource"],
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

%% @doc Updates the manifest of Amazon S3 objects that make up the specified
%% governed table.
-spec update_table_objects(aws_client:aws_client(), update_table_objects_request()) ->
    {ok, update_table_objects_response(), tuple()} |
    {error, any()} |
    {error, update_table_objects_errors(), tuple()}.
update_table_objects(Client, Input) ->
    update_table_objects(Client, Input, []).

-spec update_table_objects(aws_client:aws_client(), update_table_objects_request(), proplists:proplist()) ->
    {ok, update_table_objects_response(), tuple()} |
    {error, any()} |
    {error, update_table_objects_errors(), tuple()}.
update_table_objects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTableObjects"],
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

%% @doc Updates the configuration of the storage optimizers for a table.
-spec update_table_storage_optimizer(aws_client:aws_client(), update_table_storage_optimizer_request()) ->
    {ok, update_table_storage_optimizer_response(), tuple()} |
    {error, any()} |
    {error, update_table_storage_optimizer_errors(), tuple()}.
update_table_storage_optimizer(Client, Input) ->
    update_table_storage_optimizer(Client, Input, []).

-spec update_table_storage_optimizer(aws_client:aws_client(), update_table_storage_optimizer_request(), proplists:proplist()) ->
    {ok, update_table_storage_optimizer_response(), tuple()} |
    {error, any()} |
    {error, update_table_storage_optimizer_errors(), tuple()}.
update_table_storage_optimizer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTableStorageOptimizer"],
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
    Client1 = Client#{service => <<"lakeformation">>},
    Host = build_host(<<"lakeformation">>, Client1),
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
