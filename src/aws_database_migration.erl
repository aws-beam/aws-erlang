%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Database Migration Service
%%
%% Database Migration Service (DMS) can migrate your data to and from the
%% most widely used commercial and open-source databases such as Oracle,
%% PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora,
%% MySQL, and SAP Adaptive Server Enterprise (ASE).
%%
%% The service supports homogeneous migrations such as Oracle to Oracle, as
%% well as heterogeneous migrations between different database platforms,
%% such as Oracle to MySQL or SQL Server to PostgreSQL.
%%
%% For more information about DMS, see What Is Database Migration Service? in
%% the Database Migration Service User Guide.
-module(aws_database_migration).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         batch_start_recommendations/2,
         batch_start_recommendations/3,
         cancel_replication_task_assessment_run/2,
         cancel_replication_task_assessment_run/3,
         create_data_provider/2,
         create_data_provider/3,
         create_endpoint/2,
         create_endpoint/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_fleet_advisor_collector/2,
         create_fleet_advisor_collector/3,
         create_instance_profile/2,
         create_instance_profile/3,
         create_migration_project/2,
         create_migration_project/3,
         create_replication_config/2,
         create_replication_config/3,
         create_replication_instance/2,
         create_replication_instance/3,
         create_replication_subnet_group/2,
         create_replication_subnet_group/3,
         create_replication_task/2,
         create_replication_task/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_connection/2,
         delete_connection/3,
         delete_data_provider/2,
         delete_data_provider/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_fleet_advisor_collector/2,
         delete_fleet_advisor_collector/3,
         delete_fleet_advisor_databases/2,
         delete_fleet_advisor_databases/3,
         delete_instance_profile/2,
         delete_instance_profile/3,
         delete_migration_project/2,
         delete_migration_project/3,
         delete_replication_config/2,
         delete_replication_config/3,
         delete_replication_instance/2,
         delete_replication_instance/3,
         delete_replication_subnet_group/2,
         delete_replication_subnet_group/3,
         delete_replication_task/2,
         delete_replication_task/3,
         delete_replication_task_assessment_run/2,
         delete_replication_task_assessment_run/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_applicable_individual_assessments/2,
         describe_applicable_individual_assessments/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_connections/2,
         describe_connections/3,
         describe_conversion_configuration/2,
         describe_conversion_configuration/3,
         describe_data_providers/2,
         describe_data_providers/3,
         describe_endpoint_settings/2,
         describe_endpoint_settings/3,
         describe_endpoint_types/2,
         describe_endpoint_types/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_engine_versions/2,
         describe_engine_versions/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_extension_pack_associations/2,
         describe_extension_pack_associations/3,
         describe_fleet_advisor_collectors/2,
         describe_fleet_advisor_collectors/3,
         describe_fleet_advisor_databases/2,
         describe_fleet_advisor_databases/3,
         describe_fleet_advisor_lsa_analysis/2,
         describe_fleet_advisor_lsa_analysis/3,
         describe_fleet_advisor_schema_object_summary/2,
         describe_fleet_advisor_schema_object_summary/3,
         describe_fleet_advisor_schemas/2,
         describe_fleet_advisor_schemas/3,
         describe_instance_profiles/2,
         describe_instance_profiles/3,
         describe_metadata_model_assessments/2,
         describe_metadata_model_assessments/3,
         describe_metadata_model_conversions/2,
         describe_metadata_model_conversions/3,
         describe_metadata_model_exports_as_script/2,
         describe_metadata_model_exports_as_script/3,
         describe_metadata_model_exports_to_target/2,
         describe_metadata_model_exports_to_target/3,
         describe_metadata_model_imports/2,
         describe_metadata_model_imports/3,
         describe_migration_projects/2,
         describe_migration_projects/3,
         describe_orderable_replication_instances/2,
         describe_orderable_replication_instances/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_recommendation_limitations/2,
         describe_recommendation_limitations/3,
         describe_recommendations/2,
         describe_recommendations/3,
         describe_refresh_schemas_status/2,
         describe_refresh_schemas_status/3,
         describe_replication_configs/2,
         describe_replication_configs/3,
         describe_replication_instance_task_logs/2,
         describe_replication_instance_task_logs/3,
         describe_replication_instances/2,
         describe_replication_instances/3,
         describe_replication_subnet_groups/2,
         describe_replication_subnet_groups/3,
         describe_replication_table_statistics/2,
         describe_replication_table_statistics/3,
         describe_replication_task_assessment_results/2,
         describe_replication_task_assessment_results/3,
         describe_replication_task_assessment_runs/2,
         describe_replication_task_assessment_runs/3,
         describe_replication_task_individual_assessments/2,
         describe_replication_task_individual_assessments/3,
         describe_replication_tasks/2,
         describe_replication_tasks/3,
         describe_replications/2,
         describe_replications/3,
         describe_schemas/2,
         describe_schemas/3,
         describe_table_statistics/2,
         describe_table_statistics/3,
         export_metadata_model_assessment/2,
         export_metadata_model_assessment/3,
         import_certificate/2,
         import_certificate/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_conversion_configuration/2,
         modify_conversion_configuration/3,
         modify_data_provider/2,
         modify_data_provider/3,
         modify_endpoint/2,
         modify_endpoint/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_instance_profile/2,
         modify_instance_profile/3,
         modify_migration_project/2,
         modify_migration_project/3,
         modify_replication_config/2,
         modify_replication_config/3,
         modify_replication_instance/2,
         modify_replication_instance/3,
         modify_replication_subnet_group/2,
         modify_replication_subnet_group/3,
         modify_replication_task/2,
         modify_replication_task/3,
         move_replication_task/2,
         move_replication_task/3,
         reboot_replication_instance/2,
         reboot_replication_instance/3,
         refresh_schemas/2,
         refresh_schemas/3,
         reload_replication_tables/2,
         reload_replication_tables/3,
         reload_tables/2,
         reload_tables/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         run_fleet_advisor_lsa_analysis/2,
         run_fleet_advisor_lsa_analysis/3,
         start_extension_pack_association/2,
         start_extension_pack_association/3,
         start_metadata_model_assessment/2,
         start_metadata_model_assessment/3,
         start_metadata_model_conversion/2,
         start_metadata_model_conversion/3,
         start_metadata_model_export_as_script/2,
         start_metadata_model_export_as_script/3,
         start_metadata_model_export_to_target/2,
         start_metadata_model_export_to_target/3,
         start_metadata_model_import/2,
         start_metadata_model_import/3,
         start_recommendations/2,
         start_recommendations/3,
         start_replication/2,
         start_replication/3,
         start_replication_task/2,
         start_replication_task/3,
         start_replication_task_assessment/2,
         start_replication_task_assessment/3,
         start_replication_task_assessment_run/2,
         start_replication_task_assessment_run/3,
         stop_replication/2,
         stop_replication/3,
         stop_replication_task/2,
         stop_replication_task/3,
         test_connection/2,
         test_connection/3,
         update_subscriptions_to_event_bridge/2,
         update_subscriptions_to_event_bridge/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds metadata tags to an DMS resource, including replication
%% instance, endpoint, subnet group, and migration task.
%%
%% These tags can also be used with cost allocation reporting to track cost
%% associated with DMS resources, or used in a Condition statement in an IAM
%% policy for DMS. For more information, see `Tag' data type description.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Applies a pending maintenance action to a resource (for example, to a
%% replication instance).
apply_pending_maintenance_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_pending_maintenance_action(Client, Input, []).
apply_pending_maintenance_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyPendingMaintenanceAction">>, Input, Options).

%% @doc Starts the analysis of up to 20 source databases to recommend target
%% engines for each source database.
%%
%% This is a batch version of StartRecommendations.
%%
%% The result of analysis of each source database is reported individually in
%% the response. Because the batch request can result in a combination of
%% successful and unsuccessful actions, you should check for batch errors
%% even when the call returns an HTTP status code of `200'.
batch_start_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_start_recommendations(Client, Input, []).
batch_start_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchStartRecommendations">>, Input, Options).

%% @doc Cancels a single premigration assessment run.
%%
%% This operation prevents any individual assessments from running if they
%% haven't started running. It also attempts to cancel any individual
%% assessments that are currently running.
cancel_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_replication_task_assessment_run(Client, Input, []).
cancel_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelReplicationTaskAssessmentRun">>, Input, Options).

%% @doc Creates a data provider using the provided settings.
%%
%% A data provider stores a data store type and location information about
%% your database.
create_data_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_provider(Client, Input, []).
create_data_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataProvider">>, Input, Options).

%% @doc Creates an endpoint using the provided settings.
%%
%% For a MySQL source or target endpoint, don't explicitly specify the
%% database using the `DatabaseName' request parameter on the
%% `CreateEndpoint' API call. Specifying `DatabaseName' when you
%% create a MySQL endpoint replicates all the task tables to this single
%% database. For MySQL endpoints, you specify the database only when you
%% specify the schema in the table-mapping rules of the DMS task.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an DMS event notification subscription.
%%
%% You can specify the type of source (`SourceType') you want to be
%% notified of, provide a list of DMS source IDs (`SourceIds') that
%% triggers the events, and provide a list of event categories
%% (`EventCategories') for events you want to be notified of. If you
%% specify both the `SourceType' and `SourceIds', such as `SourceType
%% = replication-instance' and `SourceIdentifier = my-replinstance',
%% you will be notified of all the replication instance events for the
%% specified source. If you specify a `SourceType' but don't specify
%% a `SourceIdentifier', you receive notice of the events for that source
%% type for all your DMS sources. If you don't specify either
%% `SourceType' nor `SourceIdentifier', you will be notified of
%% events generated from all DMS sources belonging to your customer account.
%%
%% For more information about DMS events, see Working with Events and
%% Notifications in the Database Migration Service User Guide.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates a Fleet Advisor collector using the specified parameters.
create_fleet_advisor_collector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet_advisor_collector(Client, Input, []).
create_fleet_advisor_collector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleetAdvisorCollector">>, Input, Options).

%% @doc Creates the instance profile using the specified parameters.
create_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_profile(Client, Input, []).
create_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceProfile">>, Input, Options).

%% @doc Creates the migration project using the specified parameters.
%%
%% You can run this action only after you create an instance profile and data
%% providers using CreateInstanceProfile and CreateDataProvider.
create_migration_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_migration_project(Client, Input, []).
create_migration_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMigrationProject">>, Input, Options).

%% @doc Creates a configuration that you can later provide to configure and
%% start an DMS Serverless replication.
%%
%% You can also provide options to validate the configuration inputs before
%% you start the replication.
create_replication_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_config(Client, Input, []).
create_replication_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationConfig">>, Input, Options).

%% @doc Creates the replication instance using the specified parameters.
%%
%% DMS requires that your account have certain roles with appropriate
%% permissions before you can create a replication instance. For information
%% on the required roles, see Creating the IAM Roles to Use With the CLI and
%% DMS API. For information on the required permissions, see IAM Permissions
%% Needed to Use DMS.
%%
%% If you don't specify a version when creating a replication instance,
%% DMS will create the instance using the default engine version. For
%% information about the default engine version, see Release Notes.
create_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_instance(Client, Input, []).
create_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationInstance">>, Input, Options).

%% @doc Creates a replication subnet group given a list of the subnet IDs in
%% a VPC.
%%
%% The VPC needs to have at least one subnet in at least two availability
%% zones in the Amazon Web Services Region, otherwise the service will throw
%% a `ReplicationSubnetGroupDoesNotCoverEnoughAZs' exception.
%%
%% If a replication subnet group exists in your Amazon Web Services account,
%% the CreateReplicationSubnetGroup action returns the following error
%% message: The Replication Subnet Group already exists. In this case, delete
%% the existing replication subnet group. To do so, use the
%% DeleteReplicationSubnetGroup action. Optionally, choose Subnet groups in
%% the DMS console, then choose your subnet group. Next, choose Delete from
%% Actions.
create_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_subnet_group(Client, Input, []).
create_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationSubnetGroup">>, Input, Options).

%% @doc Creates a replication task using the specified parameters.
create_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_task(Client, Input, []).
create_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationTask">>, Input, Options).

%% @doc Deletes the specified certificate.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes the connection between a replication instance and an
%% endpoint.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes the specified data provider.
%%
%% All migration projects associated with the data provider must be deleted
%% or modified before you can delete the data provider.
delete_data_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_provider(Client, Input, []).
delete_data_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataProvider">>, Input, Options).

%% @doc Deletes the specified endpoint.
%%
%% All tasks associated with the endpoint must be deleted before you can
%% delete the endpoint.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes an DMS event subscription.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Deletes the specified Fleet Advisor collector.
delete_fleet_advisor_collector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet_advisor_collector(Client, Input, []).
delete_fleet_advisor_collector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleetAdvisorCollector">>, Input, Options).

%% @doc Deletes the specified Fleet Advisor collector databases.
delete_fleet_advisor_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet_advisor_databases(Client, Input, []).
delete_fleet_advisor_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleetAdvisorDatabases">>, Input, Options).

%% @doc Deletes the specified instance profile.
%%
%% All migration projects associated with the instance profile must be
%% deleted or modified before you can delete the instance profile.
delete_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_profile(Client, Input, []).
delete_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceProfile">>, Input, Options).

%% @doc Deletes the specified migration project.
%%
%% The migration project must be closed before you can delete it.
delete_migration_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_migration_project(Client, Input, []).
delete_migration_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMigrationProject">>, Input, Options).

%% @doc Deletes an DMS Serverless replication configuration.
%%
%% This effectively deprovisions any and all replications that use this
%% configuration. You can't delete the configuration for an DMS
%% Serverless replication that is ongoing. You can delete the configuration
%% when the replication is in a non-RUNNING and non-STARTING state.
delete_replication_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_config(Client, Input, []).
delete_replication_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationConfig">>, Input, Options).

%% @doc Deletes the specified replication instance.
%%
%% You must delete any migration tasks that are associated with the
%% replication instance before you can delete it.
delete_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_instance(Client, Input, []).
delete_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationInstance">>, Input, Options).

%% @doc Deletes a subnet group.
delete_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_subnet_group(Client, Input, []).
delete_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationSubnetGroup">>, Input, Options).

%% @doc Deletes the specified replication task.
delete_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_task(Client, Input, []).
delete_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationTask">>, Input, Options).

%% @doc Deletes the record of a single premigration assessment run.
%%
%% This operation removes all metadata that DMS maintains about this
%% assessment run. However, the operation leaves untouched all information
%% about this assessment run that is stored in your Amazon S3 bucket.
delete_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_task_assessment_run(Client, Input, []).
delete_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationTaskAssessmentRun">>, Input, Options).

%% @doc Lists all of the DMS attributes for a customer account.
%%
%% These attributes include DMS quotas for the account and a unique account
%% identifier in a particular DMS region. DMS quotas include a list of
%% resource quotas supported by the account, such as the number of
%% replication instances allowed. The description for each resource quota,
%% includes the quota name, current usage toward that quota, and the
%% quota's maximum value. DMS uses the unique account identifier to name
%% each artifact used by DMS in the given region.
%%
%% This command does not take any parameters.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Provides a list of individual assessments that you can specify for a
%% new premigration assessment run, given one or more parameters.
%%
%% If you specify an existing migration task, this operation provides the
%% default individual assessments you can specify for that task. Otherwise,
%% the specified parameters model elements of a possible migration task on
%% which to base a premigration assessment run.
%%
%% To use these migration task modeling parameters, you must specify an
%% existing replication instance, a source database engine, a target database
%% engine, and a migration type. This combination of parameters potentially
%% limits the default individual assessments available for an assessment run
%% created for a corresponding migration task.
%%
%% If you specify no parameters, this operation provides a list of all
%% possible individual assessments that you can specify for an assessment
%% run. If you specify any one of the task modeling parameters, you must
%% specify all of them or the operation cannot provide a list of individual
%% assessments. The only parameter that you can specify alone is for an
%% existing migration task. The specified task definition then determines the
%% default list of individual assessments that you can specify in an
%% assessment run for the task.
describe_applicable_individual_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applicable_individual_assessments(Client, Input, []).
describe_applicable_individual_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicableIndividualAssessments">>, Input, Options).

%% @doc Provides a description of the certificate.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Describes the status of the connections that have been made between
%% the replication instance and an endpoint.
%%
%% Connections are created when you test an endpoint.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc Returns configuration parameters for a schema conversion project.
describe_conversion_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conversion_configuration(Client, Input, []).
describe_conversion_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConversionConfiguration">>, Input, Options).

%% @doc Returns a paginated list of data providers for your account in the
%% current region.
describe_data_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_providers(Client, Input, []).
describe_data_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataProviders">>, Input, Options).

%% @doc Returns information about the possible endpoint settings available
%% when you create an endpoint for a specific database engine.
describe_endpoint_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_settings(Client, Input, []).
describe_endpoint_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointSettings">>, Input, Options).

%% @doc Returns information about the type of endpoints available.
describe_endpoint_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_types(Client, Input, []).
describe_endpoint_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointTypes">>, Input, Options).

%% @doc Returns information about the endpoints for your account in the
%% current region.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Returns information about the replication instance versions used in
%% the project.
describe_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_versions(Client, Input, []).
describe_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineVersions">>, Input, Options).

%% @doc Lists categories for all event source types, or, if specified, for a
%% specified source type.
%%
%% You can see a list of the event categories and source types in Working
%% with Events and Notifications in the Database Migration Service User
%% Guide.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists all the event subscriptions for a customer account.
%%
%% The description of a subscription includes `SubscriptionName',
%% `SNSTopicARN', `CustomerID', `SourceType', `SourceID',
%% `CreationTime', and `Status'.
%%
%% If you specify `SubscriptionName', this action lists the description
%% for that subscription.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Lists events for a given source identifier and source type.
%%
%% You can also specify a start and end time. For more information on DMS
%% events, see Working with Events and Notifications in the Database
%% Migration Service User Guide.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a paginated list of extension pack associations for the
%% specified migration project.
%%
%% An extension pack is an add-on module that emulates functions present in a
%% source database that are required when converting objects to the target
%% database.
describe_extension_pack_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_extension_pack_associations(Client, Input, []).
describe_extension_pack_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExtensionPackAssociations">>, Input, Options).

%% @doc Returns a list of the Fleet Advisor collectors in your account.
describe_fleet_advisor_collectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_collectors(Client, Input, []).
describe_fleet_advisor_collectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorCollectors">>, Input, Options).

%% @doc Returns a list of Fleet Advisor databases in your account.
describe_fleet_advisor_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_databases(Client, Input, []).
describe_fleet_advisor_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorDatabases">>, Input, Options).

%% @doc Provides descriptions of large-scale assessment (LSA) analyses
%% produced by your Fleet Advisor collectors.
describe_fleet_advisor_lsa_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_lsa_analysis(Client, Input, []).
describe_fleet_advisor_lsa_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorLsaAnalysis">>, Input, Options).

%% @doc Provides descriptions of the schemas discovered by your Fleet Advisor
%% collectors.
describe_fleet_advisor_schema_object_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_schema_object_summary(Client, Input, []).
describe_fleet_advisor_schema_object_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorSchemaObjectSummary">>, Input, Options).

%% @doc Returns a list of schemas detected by Fleet Advisor Collectors in
%% your account.
describe_fleet_advisor_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_schemas(Client, Input, []).
describe_fleet_advisor_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorSchemas">>, Input, Options).

%% @doc Returns a paginated list of instance profiles for your account in the
%% current region.
describe_instance_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_profiles(Client, Input, []).
describe_instance_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceProfiles">>, Input, Options).

%% @doc Returns a paginated list of metadata model assessments for your
%% account in the current region.
describe_metadata_model_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_assessments(Client, Input, []).
describe_metadata_model_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelAssessments">>, Input, Options).

%% @doc Returns a paginated list of metadata model conversions for a
%% migration project.
describe_metadata_model_conversions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_conversions(Client, Input, []).
describe_metadata_model_conversions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelConversions">>, Input, Options).

%% @doc Returns a paginated list of metadata model exports.
describe_metadata_model_exports_as_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_exports_as_script(Client, Input, []).
describe_metadata_model_exports_as_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelExportsAsScript">>, Input, Options).

%% @doc Returns a paginated list of metadata model exports.
describe_metadata_model_exports_to_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_exports_to_target(Client, Input, []).
describe_metadata_model_exports_to_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelExportsToTarget">>, Input, Options).

%% @doc Returns a paginated list of metadata model imports.
describe_metadata_model_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_imports(Client, Input, []).
describe_metadata_model_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelImports">>, Input, Options).

%% @doc Returns a paginated list of migration projects for your account in
%% the current region.
describe_migration_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_migration_projects(Client, Input, []).
describe_migration_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMigrationProjects">>, Input, Options).

%% @doc Returns information about the replication instance types that can be
%% created in the specified region.
describe_orderable_replication_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_replication_instances(Client, Input, []).
describe_orderable_replication_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableReplicationInstances">>, Input, Options).

%% @doc For internal use only
describe_pending_maintenance_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_maintenance_actions(Client, Input, []).
describe_pending_maintenance_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingMaintenanceActions">>, Input, Options).

%% @doc Returns a paginated list of limitations for recommendations of target
%% Amazon Web Services engines.
describe_recommendation_limitations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendation_limitations(Client, Input, []).
describe_recommendation_limitations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendationLimitations">>, Input, Options).

%% @doc Returns a paginated list of target engine recommendations for your
%% source databases.
describe_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendations(Client, Input, []).
describe_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendations">>, Input, Options).

%% @doc Returns the status of the RefreshSchemas operation.
describe_refresh_schemas_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_refresh_schemas_status(Client, Input, []).
describe_refresh_schemas_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRefreshSchemasStatus">>, Input, Options).

%% @doc Returns one or more existing DMS Serverless replication
%% configurations as a list of structures.
describe_replication_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_configs(Client, Input, []).
describe_replication_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationConfigs">>, Input, Options).

%% @doc Returns information about the task logs for the specified task.
describe_replication_instance_task_logs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_instance_task_logs(Client, Input, []).
describe_replication_instance_task_logs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationInstanceTaskLogs">>, Input, Options).

%% @doc Returns information about replication instances for your account in
%% the current region.
describe_replication_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_instances(Client, Input, []).
describe_replication_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationInstances">>, Input, Options).

%% @doc Returns information about the replication subnet groups.
describe_replication_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_subnet_groups(Client, Input, []).
describe_replication_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationSubnetGroups">>, Input, Options).

%% @doc Returns table and schema statistics for one or more provisioned
%% replications that use a given DMS Serverless replication configuration.
describe_replication_table_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_table_statistics(Client, Input, []).
describe_replication_table_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTableStatistics">>, Input, Options).

%% @doc Returns the task assessment results from the Amazon S3 bucket that
%% DMS creates in your Amazon Web Services account.
%%
%% This action always returns the latest results.
%%
%% For more information about DMS task assessments, see Creating a task
%% assessment report in the Database Migration Service User Guide.
describe_replication_task_assessment_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_task_assessment_results(Client, Input, []).
describe_replication_task_assessment_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTaskAssessmentResults">>, Input, Options).

%% @doc Returns a paginated list of premigration assessment runs based on
%% filter settings.
%%
%% These filter settings can specify a combination of premigration assessment
%% runs, migration tasks, replication instances, and assessment run status
%% values.
%%
%% This operation doesn't return information about individual
%% assessments. For this information, see the
%% `DescribeReplicationTaskIndividualAssessments' operation.
describe_replication_task_assessment_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_task_assessment_runs(Client, Input, []).
describe_replication_task_assessment_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTaskAssessmentRuns">>, Input, Options).

%% @doc Returns a paginated list of individual assessments based on filter
%% settings.
%%
%% These filter settings can specify a combination of premigration assessment
%% runs, migration tasks, and assessment status values.
describe_replication_task_individual_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_task_individual_assessments(Client, Input, []).
describe_replication_task_individual_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTaskIndividualAssessments">>, Input, Options).

%% @doc Returns information about replication tasks for your account in the
%% current region.
describe_replication_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_tasks(Client, Input, []).
describe_replication_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTasks">>, Input, Options).

%% @doc Provides details on replication progress by returning status
%% information for one or more provisioned DMS Serverless replications.
describe_replications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replications(Client, Input, []).
describe_replications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplications">>, Input, Options).

%% @doc Returns information about the schema for the specified endpoint.
describe_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_schemas(Client, Input, []).
describe_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSchemas">>, Input, Options).

%% @doc Returns table statistics on the database migration task, including
%% table name, rows inserted, rows updated, and rows deleted.
%%
%% Note that the &quot;last updated&quot; column the DMS console only
%% indicates the time that DMS last updated the table statistics record for a
%% table. It does not indicate the time of the last update to the table.
describe_table_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_statistics(Client, Input, []).
describe_table_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableStatistics">>, Input, Options).

%% @doc Saves a copy of a database migration assessment report to your Amazon
%% S3 bucket.
%%
%% DMS can save your assessment report as a comma-separated value (CSV) or a
%% PDF file.
export_metadata_model_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_metadata_model_assessment(Client, Input, []).
export_metadata_model_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportMetadataModelAssessment">>, Input, Options).

%% @doc Uploads the specified certificate.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Lists all metadata tags attached to an DMS resource, including
%% replication instance, endpoint, subnet group, and migration task.
%%
%% For more information, see `Tag' data type description.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies the specified schema conversion configuration using the
%% provided parameters.
modify_conversion_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_conversion_configuration(Client, Input, []).
modify_conversion_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyConversionConfiguration">>, Input, Options).

%% @doc Modifies the specified data provider using the provided settings.
%%
%% You must remove the data provider from all migration projects before you
%% can modify it.
modify_data_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_data_provider(Client, Input, []).
modify_data_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDataProvider">>, Input, Options).

%% @doc Modifies the specified endpoint.
%%
%% For a MySQL source or target endpoint, don't explicitly specify the
%% database using the `DatabaseName' request parameter on the
%% `ModifyEndpoint' API call. Specifying `DatabaseName' when you
%% modify a MySQL endpoint replicates all the task tables to this single
%% database. For MySQL endpoints, you specify the database only when you
%% specify the schema in the table-mapping rules of the DMS task.
modify_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint(Client, Input, []).
modify_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpoint">>, Input, Options).

%% @doc Modifies an existing DMS event notification subscription.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modifies the specified instance profile using the provided
%% parameters.
%%
%% All migration projects associated with the instance profile must be
%% deleted or modified before you can modify the instance profile.
modify_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_profile(Client, Input, []).
modify_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceProfile">>, Input, Options).

%% @doc Modifies the specified migration project using the provided
%% parameters.
%%
%% The migration project must be closed before you can modify it.
modify_migration_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_migration_project(Client, Input, []).
modify_migration_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyMigrationProject">>, Input, Options).

%% @doc Modifies an existing DMS Serverless replication configuration that
%% you can use to start a replication.
%%
%% This command includes input validation and logic to check the state of any
%% replication that uses this configuration. You can only modify a
%% replication configuration before any replication that uses it has started.
%% As soon as you have initially started a replication with a given
%% configuiration, you can't modify that configuration, even if you stop
%% it.
%%
%% Other run statuses that allow you to run this command include FAILED and
%% CREATED. A provisioning state that allows you to run this command is
%% FAILED_PROVISION.
modify_replication_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_config(Client, Input, []).
modify_replication_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationConfig">>, Input, Options).

%% @doc Modifies the replication instance to apply new settings.
%%
%% You can change one or more parameters by specifying these parameters and
%% the new values in the request.
%%
%% Some settings are applied during the maintenance window.
modify_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_instance(Client, Input, []).
modify_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationInstance">>, Input, Options).

%% @doc Modifies the settings for the specified replication subnet group.
modify_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_subnet_group(Client, Input, []).
modify_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationSubnetGroup">>, Input, Options).

%% @doc Modifies the specified replication task.
%%
%% You can't modify the task endpoints. The task must be stopped before
%% you can modify it.
%%
%% For more information about DMS tasks, see Working with Migration Tasks in
%% the Database Migration Service User Guide.
modify_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_task(Client, Input, []).
modify_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationTask">>, Input, Options).

%% @doc Moves a replication task from its current replication instance to a
%% different target replication instance using the specified parameters.
%%
%% The target replication instance must be created with the same or later DMS
%% version as the current replication instance.
move_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    move_replication_task(Client, Input, []).
move_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MoveReplicationTask">>, Input, Options).

%% @doc Reboots a replication instance.
%%
%% Rebooting results in a momentary outage, until the replication instance
%% becomes available again.
reboot_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_replication_instance(Client, Input, []).
reboot_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootReplicationInstance">>, Input, Options).

%% @doc Populates the schema for the specified endpoint.
%%
%% This is an asynchronous operation and can take several minutes. You can
%% check the status of this operation by calling the
%% DescribeRefreshSchemasStatus operation.
refresh_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_schemas(Client, Input, []).
refresh_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshSchemas">>, Input, Options).

%% @doc Reloads the target database table with the source data for a given
%% DMS Serverless replication configuration.
%%
%% You can only use this operation with a task in the RUNNING state,
%% otherwise the service will throw an `InvalidResourceStateFault'
%% exception.
reload_replication_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    reload_replication_tables(Client, Input, []).
reload_replication_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReloadReplicationTables">>, Input, Options).

%% @doc Reloads the target database table with the source data.
%%
%% You can only use this operation with a task in the `RUNNING' state,
%% otherwise the service will throw an `InvalidResourceStateFault'
%% exception.
reload_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    reload_tables(Client, Input, []).
reload_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReloadTables">>, Input, Options).

%% @doc Removes metadata tags from an DMS resource, including replication
%% instance, endpoint, subnet group, and migration task.
%%
%% For more information, see `Tag' data type description.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Runs large-scale assessment (LSA) analysis on every Fleet Advisor
%% collector in your account.
run_fleet_advisor_lsa_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_fleet_advisor_lsa_analysis(Client, Input, []).
run_fleet_advisor_lsa_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunFleetAdvisorLsaAnalysis">>, Input, Options).

%% @doc Applies the extension pack to your target database.
%%
%% An extension pack is an add-on module that emulates functions present in a
%% source database that are required when converting objects to the target
%% database.
start_extension_pack_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_extension_pack_association(Client, Input, []).
start_extension_pack_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExtensionPackAssociation">>, Input, Options).

%% @doc Creates a database migration assessment report by assessing the
%% migration complexity for your source database.
%%
%% A database migration assessment report summarizes all of the schema
%% conversion tasks. It also details the action items for database objects
%% that can't be converted to the database engine of your target database
%% instance.
start_metadata_model_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_assessment(Client, Input, []).
start_metadata_model_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelAssessment">>, Input, Options).

%% @doc Converts your source database objects to a format compatible with the
%% target database.
start_metadata_model_conversion(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_conversion(Client, Input, []).
start_metadata_model_conversion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelConversion">>, Input, Options).

%% @doc Saves your converted code to a file as a SQL script, and stores this
%% file on your Amazon S3 bucket.
start_metadata_model_export_as_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_export_as_script(Client, Input, []).
start_metadata_model_export_as_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelExportAsScript">>, Input, Options).

%% @doc Applies converted database objects to your target database.
start_metadata_model_export_to_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_export_to_target(Client, Input, []).
start_metadata_model_export_to_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelExportToTarget">>, Input, Options).

%% @doc Loads the metadata for all the dependent database objects of the
%% parent object.
%%
%% This operation uses your project's Amazon S3 bucket as a metadata
%% cache to improve performance.
start_metadata_model_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_import(Client, Input, []).
start_metadata_model_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelImport">>, Input, Options).

%% @doc Starts the analysis of your source database to provide
%% recommendations of target engines.
%%
%% You can create recommendations for multiple source databases using
%% BatchStartRecommendations.
start_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_recommendations(Client, Input, []).
start_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRecommendations">>, Input, Options).

%% @doc For a given DMS Serverless replication configuration, DMS connects to
%% the source endpoint and collects the metadata to analyze the replication
%% workload.
%%
%% Using this metadata, DMS then computes and provisions the required
%% capacity and starts replicating to the target endpoint using the server
%% resources that DMS has provisioned for the DMS Serverless replication.
start_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication(Client, Input, []).
start_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplication">>, Input, Options).

%% @doc Starts the replication task.
%%
%% For more information about DMS tasks, see Working with Migration Tasks in
%% the Database Migration Service User Guide.
start_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task(Client, Input, []).
start_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTask">>, Input, Options).

%% @doc Starts the replication task assessment for unsupported data types in
%% the source database.
%%
%% You can only use this operation for a task if the following conditions are
%% true:
%%
%% <ul> <li> The task must be in the `stopped' state.
%%
%% </li> <li> The task must have successful connections to the source and
%% target.
%%
%% </li> </ul> If either of these conditions are not met, an
%% `InvalidResourceStateFault' error will result.
%%
%% For information about DMS task assessments, see Creating a task assessment
%% report in the Database Migration Service User Guide.
start_replication_task_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task_assessment(Client, Input, []).
start_replication_task_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTaskAssessment">>, Input, Options).

%% @doc Starts a new premigration assessment run for one or more individual
%% assessments of a migration task.
%%
%% The assessments that you can specify depend on the source and target
%% database engine and the migration type defined for the given task. To run
%% this operation, your migration task must already be created. After you run
%% this operation, you can review the status of each individual assessment.
%% You can also run the migration task manually after the assessment run and
%% its individual assessments complete.
start_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task_assessment_run(Client, Input, []).
start_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTaskAssessmentRun">>, Input, Options).

%% @doc For a given DMS Serverless replication configuration, DMS stops any
%% and all ongoing DMS Serverless replications.
%%
%% This command doesn't deprovision the stopped replications.
stop_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication(Client, Input, []).
stop_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplication">>, Input, Options).

%% @doc Stops the replication task.
stop_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication_task(Client, Input, []).
stop_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplicationTask">>, Input, Options).

%% @doc Tests the connection between the replication instance and the
%% endpoint.
test_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_connection(Client, Input, []).
test_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestConnection">>, Input, Options).

%% @doc Migrates 10 active and enabled Amazon SNS subscriptions at a time and
%% converts them to corresponding Amazon EventBridge rules.
%%
%% By default, this operation migrates subscriptions only when all your
%% replication instance versions are 3.4.5 or higher. If any replication
%% instances are from versions earlier than 3.4.5, the operation raises an
%% error and tells you to upgrade these instances to version 3.4.5 or higher.
%% To enable migration regardless of version, set the `Force' option to
%% true. However, if you don't upgrade instances earlier than version
%% 3.4.5, some types of events might not be available when you use Amazon
%% EventBridge.
%%
%% To call this operation, make sure that you have certain permissions added
%% to your user account. For more information, see Migrating event
%% subscriptions to Amazon EventBridge in the Amazon Web Services Database
%% Migration Service User Guide.
update_subscriptions_to_event_bridge(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subscriptions_to_event_bridge(Client, Input, []).
update_subscriptions_to_event_bridge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubscriptionsToEventBridge">>, Input, Options).

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
    Client1 = Client#{service => <<"dms">>},
    Host = build_host(<<"dms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonDMSv20160101.", Action/binary>>}
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
