%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Database Migration Service
%%
%% AWS Database Migration Service (AWS DMS) can migrate your data to and from
%% the most widely used commercial and open-source databases such as Oracle,
%% PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora,
%% MySQL, and SAP Adaptive Server Enterprise (ASE).
%%
%% The service supports homogeneous migrations such as Oracle to Oracle, as
%% well as heterogeneous migrations between different database platforms,
%% such as Oracle to MySQL or SQL Server to PostgreSQL.
%%
%% For more information about AWS DMS, see What Is AWS Database Migration
%% Service? in the AWS Database Migration User Guide.
-module(aws_database_migration).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         cancel_replication_task_assessment_run/2,
         cancel_replication_task_assessment_run/3,
         create_endpoint/2,
         create_endpoint/3,
         create_event_subscription/2,
         create_event_subscription/3,
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
         delete_endpoint/2,
         delete_endpoint/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
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
         describe_endpoint_types/2,
         describe_endpoint_types/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_orderable_replication_instances/2,
         describe_orderable_replication_instances/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_refresh_schemas_status/2,
         describe_refresh_schemas_status/3,
         describe_replication_instance_task_logs/2,
         describe_replication_instance_task_logs/3,
         describe_replication_instances/2,
         describe_replication_instances/3,
         describe_replication_subnet_groups/2,
         describe_replication_subnet_groups/3,
         describe_replication_task_assessment_results/2,
         describe_replication_task_assessment_results/3,
         describe_replication_task_assessment_runs/2,
         describe_replication_task_assessment_runs/3,
         describe_replication_task_individual_assessments/2,
         describe_replication_task_individual_assessments/3,
         describe_replication_tasks/2,
         describe_replication_tasks/3,
         describe_schemas/2,
         describe_schemas/3,
         describe_table_statistics/2,
         describe_table_statistics/3,
         import_certificate/2,
         import_certificate/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_endpoint/2,
         modify_endpoint/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_replication_instance/2,
         modify_replication_instance/3,
         modify_replication_subnet_group/2,
         modify_replication_subnet_group/3,
         modify_replication_task/2,
         modify_replication_task/3,
         reboot_replication_instance/2,
         reboot_replication_instance/3,
         refresh_schemas/2,
         refresh_schemas/3,
         reload_tables/2,
         reload_tables/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         start_replication_task/2,
         start_replication_task/3,
         start_replication_task_assessment/2,
         start_replication_task_assessment/3,
         start_replication_task_assessment_run/2,
         start_replication_task_assessment_run/3,
         stop_replication_task/2,
         stop_replication_task/3,
         test_connection/2,
         test_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds metadata tags to an AWS DMS resource, including replication
%% instance, endpoint, security group, and migration task.
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

%% @doc Creates an endpoint using the provided settings.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an AWS DMS event notification subscription.
%%
%% You can specify the type of source (`SourceType') you want to be notified
%% of, provide a list of AWS DMS source IDs (`SourceIds') that triggers the
%% events, and provide a list of event categories (`EventCategories') for
%% events you want to be notified of. If you specify both the `SourceType'
%% and `SourceIds', such as `SourceType = replication-instance' and
%% `SourceIdentifier = my-replinstance', you will be notified of all the
%% replication instance events for the specified source. If you specify a
%% `SourceType' but don't specify a `SourceIdentifier', you receive notice of
%% the events for that source type for all your AWS DMS sources. If you don't
%% specify either `SourceType' nor `SourceIdentifier', you will be notified
%% of events generated from all AWS DMS sources belonging to your customer
%% account.
%%
%% For more information about AWS DMS events, see Working with Events and
%% Notifications in the AWS Database Migration Service User Guide.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates the replication instance using the specified parameters.
%%
%% AWS DMS requires that your account have certain roles with appropriate
%% permissions before you can create a replication instance. For information
%% on the required roles, see Creating the IAM Roles to Use With the AWS CLI
%% and AWS DMS API. For information on the required permissions, see IAM
%% Permissions Needed to Use AWS DMS.
create_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_instance(Client, Input, []).
create_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationInstance">>, Input, Options).

%% @doc Creates a replication subnet group given a list of the subnet IDs in
%% a VPC.
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

%% @doc Deletes an AWS DMS event subscription.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

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
%% This operation removes all metadata that AWS DMS maintains about this
%% assessment run. However, the operation leaves untouched all information
%% about this assessment run that is stored in your Amazon S3 bucket.
delete_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_task_assessment_run(Client, Input, []).
delete_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationTaskAssessmentRun">>, Input, Options).

%% @doc Lists all of the AWS DMS attributes for a customer account.
%%
%% These attributes include AWS DMS quotas for the account and a unique
%% account identifier in a particular DMS region. DMS quotas include a list
%% of resource quotas supported by the account, such as the number of
%% replication instances allowed. The description for each resource quota,
%% includes the quota name, current usage toward that quota, and the quota's
%% maximum value. DMS uses the unique account identifier to name each
%% artifact used by DMS in the given region.
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

%% @doc Lists categories for all event source types, or, if specified, for a
%% specified source type.
%%
%% You can see a list of the event categories and source types in Working
%% with Events and Notifications in the AWS Database Migration Service User
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
%% `SNSTopicARN', `CustomerID', `SourceType', `SourceID', `CreationTime', and
%% `Status'.
%%
%% If you specify `SubscriptionName', this action lists the description for
%% that subscription.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Lists events for a given source identifier and source type.
%%
%% You can also specify a start and end time. For more information on AWS DMS
%% events, see Working with Events and Notifications in the AWS Database
%% Migration User Guide.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

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

%% @doc Returns the status of the RefreshSchemas operation.
describe_refresh_schemas_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_refresh_schemas_status(Client, Input, []).
describe_refresh_schemas_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRefreshSchemasStatus">>, Input, Options).

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

%% @doc Returns the task assessment results from Amazon S3.
%%
%% This action always returns the latest results.
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
%% This operation doesn't return information about individual assessments.
%% For this information, see the
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
%% Note that the "last updated" column the DMS console only indicates the
%% time that AWS DMS last updated the table statistics record for a table. It
%% does not indicate the time of the last update to the table.
describe_table_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_statistics(Client, Input, []).
describe_table_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableStatistics">>, Input, Options).

%% @doc Uploads the specified certificate.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Lists all metadata tags attached to an AWS DMS resource, including
%% replication instance, endpoint, security group, and migration task.
%%
%% For more information, see `Tag' data type description.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies the specified endpoint.
modify_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint(Client, Input, []).
modify_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpoint">>, Input, Options).

%% @doc Modifies an existing AWS DMS event notification subscription.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

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
%% You can't modify the task endpoints. The task must be stopped before you
%% can modify it.
%%
%% For more information about AWS DMS tasks, see Working with Migration Tasks
%% in the AWS Database Migration Service User Guide.
modify_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_task(Client, Input, []).
modify_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationTask">>, Input, Options).

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

%% @doc Reloads the target database table with the source data.
reload_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    reload_tables(Client, Input, []).
reload_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReloadTables">>, Input, Options).

%% @doc Removes metadata tags from an AWS DMS resource, including replication
%% instance, endpoint, security group, and migration task.
%%
%% For more information, see `Tag' data type description.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Starts the replication task.
%%
%% For more information about AWS DMS tasks, see Working with Migration Tasks
%% in the AWS Database Migration Service User Guide.
start_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task(Client, Input, []).
start_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTask">>, Input, Options).

%% @doc Starts the replication task assessment for unsupported data types in
%% the source database.
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

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
