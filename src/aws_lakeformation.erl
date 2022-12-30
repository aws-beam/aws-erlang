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
         delete_data_cells_filter/2,
         delete_data_cells_filter/3,
         delete_l_f_tag/2,
         delete_l_f_tag/3,
         delete_objects_on_cancel/2,
         delete_objects_on_cancel/3,
         deregister_resource/2,
         deregister_resource/3,
         describe_resource/2,
         describe_resource/3,
         describe_transaction/2,
         describe_transaction/3,
         extend_transaction/2,
         extend_transaction/3,
         get_data_lake_settings/2,
         get_data_lake_settings/3,
         get_effective_permissions_for_path/2,
         get_effective_permissions_for_path/3,
         get_l_f_tag/2,
         get_l_f_tag/3,
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
         list_l_f_tags/2,
         list_l_f_tags/3,
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
         update_l_f_tag/2,
         update_l_f_tag/3,
         update_resource/2,
         update_resource/3,
         update_table_objects/2,
         update_table_objects/3,
         update_table_storage_optimizer/2,
         update_table_storage_optimizer/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches one or more LF-tags to an existing resource.
add_l_f_tags_to_resource(Client, Input) ->
    add_l_f_tags_to_resource(Client, Input, []).
add_l_f_tags_to_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AddLFTagsToResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% assertions. Lake Formation does not scope down the permission of the
%% assumed role. All permissions attached to the role via the SAML federation
%% setup will be included in the role session.
%%
%% This decorated role is expected to access data in Amazon S3 by getting
%% temporary access from Lake Formation which is authorized via the virtual
%% API `GetDataAccess'. Therefore, all SAML roles that can be assumed via
%% `AssumeDecoratedRoleWithSAML' must at a minimum include
%% `lakeformation:GetDataAccess' in their role policies. A typical IAM policy
%% attached to such a role would look as follows:
assume_decorated_role_with_saml(Client, Input) ->
    assume_decorated_role_with_saml(Client, Input, []).
assume_decorated_role_with_saml(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssumeDecoratedRoleWithSAML"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Batch operation to grant permissions to the principal.
batch_grant_permissions(Client, Input) ->
    batch_grant_permissions(Client, Input, []).
batch_grant_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGrantPermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Batch operation to revoke permissions from the principal.
batch_revoke_permissions(Client, Input) ->
    batch_revoke_permissions(Client, Input, []).
batch_revoke_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchRevokePermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
cancel_transaction(Client, Input) ->
    cancel_transaction(Client, Input, []).
cancel_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CancelTransaction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
commit_transaction(Client, Input) ->
    commit_transaction(Client, Input, []).
commit_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CommitTransaction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a data cell filter to allow one to grant access to certain
%% columns on certain rows.
create_data_cells_filter(Client, Input) ->
    create_data_cells_filter(Client, Input, []).
create_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateDataCellsFilter"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an LF-tag with the specified name and values.
create_l_f_tag(Client, Input) ->
    create_l_f_tag(Client, Input, []).
create_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLFTag"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a data cell filter.
delete_data_cells_filter(Client, Input) ->
    delete_data_cells_filter(Client, Input, []).
delete_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteDataCellsFilter"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% throw an exception. When you delete an LF-tag, the `LFTagPolicy' attached
%% to the LF-tag becomes invalid. If the deleted LF-tag was still assigned to
%% any resource, the tag policy attach to the deleted LF-tag will no longer
%% be applied to the resource.
delete_l_f_tag(Client, Input) ->
    delete_l_f_tag(Client, Input, []).
delete_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLFTag"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc For a specific governed table, provides a list of Amazon S3 objects
%% that will be written during the current transaction and that can be
%% automatically deleted if the transaction is canceled.
%%
%% Without this call, no Amazon S3 objects are automatically deleted when a
%% transaction cancels.
%%
%% The Glue ETL library function `write_dynamic_frame.from_catalog()'
%% includes an option to automatically call `DeleteObjectsOnCancel' before
%% writes. For more information, see Rolling Back Amazon S3 Writes.
delete_objects_on_cancel(Client, Input) ->
    delete_objects_on_cancel(Client, Input, []).
delete_objects_on_cancel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteObjectsOnCancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
deregister_resource(Client, Input) ->
    deregister_resource(Client, Input, []).
deregister_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeregisterResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current data access role for the given resource
%% registered in Lake Formation.
describe_resource(Client, Input) ->
    describe_resource(Client, Input, []).
describe_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the details of a single transaction.
describe_transaction(Client, Input) ->
    describe_transaction(Client, Input, []).
describe_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeTransaction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
extend_transaction(Client, Input) ->
    extend_transaction(Client, Input, []).
extend_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ExtendTransaction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the list of the data lake administrators of a Lake
%% Formation-managed data lake.
get_data_lake_settings(Client, Input) ->
    get_data_lake_settings(Client, Input, []).
get_data_lake_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDataLakeSettings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the Lake Formation permissions for a specified table or
%% database resource located at a path in Amazon S3.
%%
%% `GetEffectivePermissionsForPath' will not return databases and tables if
%% the catalog is encrypted.
get_effective_permissions_for_path(Client, Input) ->
    get_effective_permissions_for_path(Client, Input, []).
get_effective_permissions_for_path(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetEffectivePermissionsForPath"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns an LF-tag definition.
get_l_f_tag(Client, Input) ->
    get_l_f_tag(Client, Input, []).
get_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLFTag"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the state of a query previously submitted.
%%
%% Clients are expected to poll `GetQueryState' to monitor the current state
%% of the planning before retrieving the work units. A query state is only
%% visible to the principal that made the initial call to
%% `StartQueryPlanning'.
get_query_state(Client, Input) ->
    get_query_state(Client, Input, []).
get_query_state(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetQueryState"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves statistics on the planning and execution of a query.
get_query_statistics(Client, Input) ->
    get_query_statistics(Client, Input, []).
get_query_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetQueryStatistics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the LF-tags applied to a resource.
get_resource_l_f_tags(Client, Input) ->
    get_resource_l_f_tags(Client, Input, []).
get_resource_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetResourceLFTags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
get_table_objects(Client, Input) ->
    get_table_objects(Client, Input, []).
get_table_objects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTableObjects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is identical to `GetTemporaryTableCredentials' except that
%% this is used when the target Data Catalog resource is of type Partition.
%%
%% Lake Formation restricts the permission of the vended credentials with the
%% same scope down policy which restricts access to a single Amazon S3
%% prefix.
get_temporary_glue_partition_credentials(Client, Input) ->
    get_temporary_glue_partition_credentials(Client, Input, []).
get_temporary_glue_partition_credentials(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTemporaryGluePartitionCredentials"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
get_temporary_glue_table_credentials(Client, Input) ->
    get_temporary_glue_table_credentials(Client, Input, []).
get_temporary_glue_table_credentials(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTemporaryGlueTableCredentials"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
get_work_unit_results(Client, Input) ->
    get_work_unit_results(Client, Input, []).
get_work_unit_results(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetWorkUnitResults"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the work units generated by the `StartQueryPlanning'
%% operation.
get_work_units(Client, Input) ->
    get_work_units(Client, Input, []).
get_work_units(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetWorkUnits"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% Metadata and Data.
grant_permissions(Client, Input) ->
    grant_permissions(Client, Input, []).
grant_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GrantPermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all the data cell filters on a table.
list_data_cells_filter(Client, Input) ->
    list_data_cells_filter(Client, Input, []).
list_data_cells_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListDataCellsFilter"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists LF-tags that the requester has permission to view.
list_l_f_tags(Client, Input) ->
    list_l_f_tags(Client, Input, []).
list_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLFTags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% Metadata and Data.
list_permissions(Client, Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources registered to be managed by the Data Catalog.
list_resources(Client, Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the configuration of all storage optimizers associated with a
%% specified table.
list_table_storage_optimizers(Client, Input) ->
    list_table_storage_optimizers(Client, Input, []).
list_table_storage_optimizers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTableStorageOptimizers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
list_transactions(Client, Input) ->
    list_transactions(Client, Input, []).
list_transactions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTransactions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% Permissions.
%%
%% This API replaces the current list of data lake admins with the new list
%% being passed. To add an admin, fetch the current list and add the new
%% admin to that list and pass that list in this API.
put_data_lake_settings(Client, Input) ->
    put_data_lake_settings(Client, Input, []).
put_data_lake_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutDataLakeSettings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% `ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true'
%%
%% If `UseServiceLinkedRole' is not set to true, you must provide or set the
%% `RoleArn':
%%
%% `arn:aws:iam::12345:role/my-data-access-role'
register_resource(Client, Input) ->
    register_resource(Client, Input, []).
register_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RegisterResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% columns, use the column inclusion list in `tableWithColumns' to specify
%% column input.
remove_l_f_tags_from_resource(Client, Input) ->
    remove_l_f_tags_from_resource(Client, Input, []).
remove_l_f_tags_from_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RemoveLFTagsFromResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Revokes permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
revoke_permissions(Client, Input) ->
    revoke_permissions(Client, Input, []).
revoke_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RevokePermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% `TagConditions' are valid to verify whether the returned resources can be
%% shared.
search_databases_by_l_f_tags(Client, Input) ->
    search_databases_by_l_f_tags(Client, Input, []).
search_databases_by_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SearchDatabasesByLFTags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation allows a search on `TABLE' resources by `LFTag's.
%%
%% This will be used by admins who want to grant user permissions on certain
%% LF-tags. Before making a grant, the admin can use `SearchTablesByLFTags'
%% to find all resources where the given `LFTag's are valid to verify whether
%% the returned resources can be shared.
search_tables_by_l_f_tags(Client, Input) ->
    search_tables_by_l_f_tags(Client, Input, []).
search_tables_by_l_f_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SearchTablesByLFTags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% `GetWorkUnits' operation as soon as the query state is WORKUNITS_AVAILABLE
%% or FINISHED.
start_query_planning(Client, Input) ->
    start_query_planning(Client, Input, []).
start_query_planning(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartQueryPlanning"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
start_transaction(Client, Input) ->
    start_transaction(Client, Input, []).
start_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTransaction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% - "Update not allowed". Untag the attribute before deleting the LF-tag
%% key's value.
update_l_f_tag(Client, Input) ->
    update_l_f_tag(Client, Input, []).
update_l_f_tag(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLFTag"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the data access role used for vending access to the given
%% (registered) resource in Lake Formation.
update_resource(Client, Input) ->
    update_resource(Client, Input, []).
update_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the manifest of Amazon S3 objects that make up the specified
%% governed table.
update_table_objects(Client, Input) ->
    update_table_objects(Client, Input, []).
update_table_objects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTableObjects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of the storage optimizers for a table.
update_table_storage_optimizer(Client, Input) ->
    update_table_storage_optimizer(Client, Input, []).
update_table_storage_optimizer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTableStorageOptimizer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
