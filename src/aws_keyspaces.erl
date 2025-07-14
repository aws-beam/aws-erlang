%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Keyspaces (for Apache Cassandra) is a scalable, highly
%% available, and managed Apache Cassandra-compatible database service.
%%
%% Amazon Keyspaces makes it easy to migrate, run, and scale Cassandra
%% workloads in the Amazon Web Services Cloud. With just a few clicks on the
%% Amazon Web Services Management Console or a few lines of code, you can
%% create keyspaces and tables in Amazon Keyspaces, without deploying any
%% infrastructure or installing software.
%%
%% In addition to supporting Cassandra Query Language (CQL) requests via
%% open-source Cassandra drivers, Amazon Keyspaces supports data definition
%% language (DDL) operations to manage keyspaces and tables using the Amazon
%% Web Services SDK and CLI, as well as infrastructure as code (IaC) services
%% and tools such as CloudFormation and Terraform. This API reference
%% describes the supported DDL operations in detail.
%%
%% For the list of all supported CQL APIs, see Supported Cassandra APIs,
%% operations, and data types in Amazon Keyspaces:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html
%% in the Amazon Keyspaces Developer Guide.
%%
%% To learn how Amazon Keyspaces API actions are recorded with CloudTrail,
%% see Amazon Keyspaces information in CloudTrail:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail
%% in the Amazon Keyspaces Developer Guide.
%%
%% For more information about Amazon Web Services APIs, for example how to
%% implement retry logic or how to sign Amazon Web Services API requests, see
%% Amazon Web Services APIs:
%% https://docs.aws.amazon.com/general/latest/gr/aws-apis.html in the General
%% Reference.
-module(aws_keyspaces).

-export([create_keyspace/2,
         create_keyspace/3,
         create_table/2,
         create_table/3,
         create_type/2,
         create_type/3,
         delete_keyspace/2,
         delete_keyspace/3,
         delete_table/2,
         delete_table/3,
         delete_type/2,
         delete_type/3,
         get_keyspace/2,
         get_keyspace/3,
         get_table/2,
         get_table/3,
         get_table_auto_scaling_settings/2,
         get_table_auto_scaling_settings/3,
         get_type/2,
         get_type/3,
         list_keyspaces/2,
         list_keyspaces/3,
         list_tables/2,
         list_tables/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_types/2,
         list_types/3,
         restore_table/2,
         restore_table/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_keyspace/2,
         update_keyspace/3,
         update_table/2,
         update_table/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% partition_key() :: #{
%%   <<"name">> => string()
%% }
-type partition_key() :: #{binary() => any()}.

%% Example:
%% get_type_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"typeName">> := string()
%% }
-type get_type_request() :: #{binary() => any()}.

%% Example:
%% delete_type_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"typeName">> := string()
%% }
-type delete_type_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_type_response() :: #{
%%   <<"keyspaceArn">> => string(),
%%   <<"typeName">> => string()
%% }
-type delete_type_response() :: #{binary() => any()}.

%% Example:
%% update_table_request() :: #{
%%   <<"addColumns">> => list(column_definition()),
%%   <<"autoScalingSpecification">> => auto_scaling_specification(),
%%   <<"capacitySpecification">> => capacity_specification(),
%%   <<"cdcSpecification">> => cdc_specification(),
%%   <<"clientSideTimestamps">> => client_side_timestamps(),
%%   <<"defaultTimeToLive">> => integer(),
%%   <<"encryptionSpecification">> => encryption_specification(),
%%   <<"keyspaceName">> := string(),
%%   <<"pointInTimeRecovery">> => point_in_time_recovery(),
%%   <<"replicaSpecifications">> => list(replica_specification()),
%%   <<"tableName">> := string(),
%%   <<"ttl">> => time_to_live()
%% }
-type update_table_request() :: #{binary() => any()}.

%% Example:
%% update_keyspace_response() :: #{
%%   <<"resourceArn">> => string()
%% }
-type update_keyspace_response() :: #{binary() => any()}.

%% Example:
%% list_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"types">> => list(string())
%% }
-type list_types_response() :: #{binary() => any()}.

%% Example:
%% keyspace_summary() :: #{
%%   <<"keyspaceName">> => string(),
%%   <<"replicationRegions">> => list(string()),
%%   <<"replicationStrategy">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type keyspace_summary() :: #{binary() => any()}.

%% Example:
%% replica_specification() :: #{
%%   <<"readCapacityAutoScaling">> => auto_scaling_settings(),
%%   <<"readCapacityUnits">> => float(),
%%   <<"region">> => string()
%% }
-type replica_specification() :: #{binary() => any()}.

%% Example:
%% replication_specification() :: #{
%%   <<"regionList">> => list(string()),
%%   <<"replicationStrategy">> => string()
%% }
-type replication_specification() :: #{binary() => any()}.

%% Example:
%% list_keyspaces_response() :: #{
%%   <<"keyspaces">> := list(keyspace_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_keyspaces_response() :: #{binary() => any()}.

%% Example:
%% schema_definition() :: #{
%%   <<"allColumns">> => list(column_definition()),
%%   <<"clusteringKeys">> => list(clustering_key()),
%%   <<"partitionKeys">> => list(partition_key()),
%%   <<"staticColumns">> => list(static_column())
%% }
-type schema_definition() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% cdc_specification() :: #{
%%   <<"propagateTags">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"viewType">> => string()
%% }
-type cdc_specification() :: #{binary() => any()}.

%% Example:
%% delete_table_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"tableName">> := string()
%% }
-type delete_table_request() :: #{binary() => any()}.

%% Example:
%% table_summary() :: #{
%%   <<"keyspaceName">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"tableName">> => string()
%% }
-type table_summary() :: #{binary() => any()}.

%% Example:
%% target_tracking_scaling_policy_configuration() :: #{
%%   <<"disableScaleIn">> => boolean(),
%%   <<"scaleInCooldown">> => integer(),
%%   <<"scaleOutCooldown">> => integer(),
%%   <<"targetValue">> => float()
%% }
-type target_tracking_scaling_policy_configuration() :: #{binary() => any()}.

%% Example:
%% get_table_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"tableName">> := string()
%% }
-type get_table_request() :: #{binary() => any()}.

%% Example:
%% create_table_request() :: #{
%%   <<"autoScalingSpecification">> => auto_scaling_specification(),
%%   <<"capacitySpecification">> => capacity_specification(),
%%   <<"cdcSpecification">> => cdc_specification(),
%%   <<"clientSideTimestamps">> => client_side_timestamps(),
%%   <<"comment">> => comment(),
%%   <<"defaultTimeToLive">> => integer(),
%%   <<"encryptionSpecification">> => encryption_specification(),
%%   <<"keyspaceName">> := string(),
%%   <<"pointInTimeRecovery">> => point_in_time_recovery(),
%%   <<"replicaSpecifications">> => list(replica_specification()),
%%   <<"schemaDefinition">> := schema_definition(),
%%   <<"tableName">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"ttl">> => time_to_live()
%% }
-type create_table_request() :: #{binary() => any()}.

%% Example:
%% get_table_response() :: #{
%%   <<"capacitySpecification">> => capacity_specification_summary(),
%%   <<"cdcSpecification">> => cdc_specification_summary(),
%%   <<"clientSideTimestamps">> => client_side_timestamps(),
%%   <<"comment">> => comment(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"defaultTimeToLive">> => integer(),
%%   <<"encryptionSpecification">> => encryption_specification(),
%%   <<"keyspaceName">> := string(),
%%   <<"latestStreamArn">> => string(),
%%   <<"pointInTimeRecovery">> => point_in_time_recovery_summary(),
%%   <<"replicaSpecifications">> => list(replica_specification_summary()),
%%   <<"resourceArn">> := string(),
%%   <<"schemaDefinition">> => schema_definition(),
%%   <<"status">> => string(),
%%   <<"tableName">> := string(),
%%   <<"ttl">> => time_to_live()
%% }
-type get_table_response() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy() :: #{
%%   <<"targetTrackingScalingPolicyConfiguration">> => target_tracking_scaling_policy_configuration()
%% }
-type auto_scaling_policy() :: #{binary() => any()}.

%% Example:
%% client_side_timestamps() :: #{
%%   <<"status">> => string()
%% }
-type client_side_timestamps() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_type_request() :: #{
%%   <<"fieldDefinitions">> := list(field_definition()),
%%   <<"keyspaceName">> := string(),
%%   <<"typeName">> := string()
%% }
-type create_type_request() :: #{binary() => any()}.

%% Example:
%% capacity_specification() :: #{
%%   <<"readCapacityUnits">> => float(),
%%   <<"throughputMode">> => string(),
%%   <<"writeCapacityUnits">> => float()
%% }
-type capacity_specification() :: #{binary() => any()}.

%% Example:
%% create_keyspace_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"replicationSpecification">> => replication_specification(),
%%   <<"tags">> => list(tag())
%% }
-type create_keyspace_request() :: #{binary() => any()}.

%% Example:
%% delete_keyspace_request() :: #{
%%   <<"keyspaceName">> := string()
%% }
-type delete_keyspace_request() :: #{binary() => any()}.

%% Example:
%% auto_scaling_settings() :: #{
%%   <<"autoScalingDisabled">> => boolean(),
%%   <<"maximumUnits">> => float(),
%%   <<"minimumUnits">> => float(),
%%   <<"scalingPolicy">> => auto_scaling_policy()
%% }
-type auto_scaling_settings() :: #{binary() => any()}.

%% Example:
%% get_type_response() :: #{
%%   <<"directParentTypes">> => list(string()),
%%   <<"directReferringTables">> => list(string()),
%%   <<"fieldDefinitions">> => list(field_definition()),
%%   <<"keyspaceArn">> => string(),
%%   <<"keyspaceName">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"maxNestingDepth">> => integer(),
%%   <<"status">> => string(),
%%   <<"typeName">> => string()
%% }
-type get_type_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceArn">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_tables_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tables">> => list(table_summary())
%% }
-type list_tables_response() :: #{binary() => any()}.

%% Example:
%% auto_scaling_specification() :: #{
%%   <<"readCapacityAutoScaling">> => auto_scaling_settings(),
%%   <<"writeCapacityAutoScaling">> => auto_scaling_settings()
%% }
-type auto_scaling_specification() :: #{binary() => any()}.

%% Example:
%% comment() :: #{
%%   <<"message">> => [string()]
%% }
-type comment() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_table_response() :: #{
%%   <<"resourceArn">> := string()
%% }
-type create_table_response() :: #{binary() => any()}.

%% Example:
%% point_in_time_recovery() :: #{
%%   <<"status">> => string()
%% }
-type point_in_time_recovery() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% field_definition() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type field_definition() :: #{binary() => any()}.

%% Example:
%% create_type_response() :: #{
%%   <<"keyspaceArn">> => string(),
%%   <<"typeName">> => string()
%% }
-type create_type_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_keyspace_response() :: #{

%% }
-type delete_keyspace_response() :: #{binary() => any()}.

%% Example:
%% replica_specification_summary() :: #{
%%   <<"capacitySpecification">> => capacity_specification_summary(),
%%   <<"region">> => string(),
%%   <<"status">> => string()
%% }
-type replica_specification_summary() :: #{binary() => any()}.

%% Example:
%% get_table_auto_scaling_settings_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"tableName">> := string()
%% }
-type get_table_auto_scaling_settings_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_keyspaces_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_keyspaces_request() :: #{binary() => any()}.

%% Example:
%% point_in_time_recovery_summary() :: #{
%%   <<"earliestRestorableTimestamp">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type point_in_time_recovery_summary() :: #{binary() => any()}.

%% Example:
%% delete_table_response() :: #{

%% }
-type delete_table_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% capacity_specification_summary() :: #{
%%   <<"lastUpdateToPayPerRequestTimestamp">> => non_neg_integer(),
%%   <<"readCapacityUnits">> => float(),
%%   <<"throughputMode">> => string(),
%%   <<"writeCapacityUnits">> => float()
%% }
-type capacity_specification_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% clustering_key() :: #{
%%   <<"name">> => string(),
%%   <<"orderBy">> => string()
%% }
-type clustering_key() :: #{binary() => any()}.

%% Example:
%% restore_table_request() :: #{
%%   <<"autoScalingSpecification">> => auto_scaling_specification(),
%%   <<"capacitySpecificationOverride">> => capacity_specification(),
%%   <<"encryptionSpecificationOverride">> => encryption_specification(),
%%   <<"pointInTimeRecoveryOverride">> => point_in_time_recovery(),
%%   <<"replicaSpecifications">> => list(replica_specification()),
%%   <<"restoreTimestamp">> => non_neg_integer(),
%%   <<"sourceKeyspaceName">> := string(),
%%   <<"sourceTableName">> := string(),
%%   <<"tagsOverride">> => list(tag()),
%%   <<"targetKeyspaceName">> := string(),
%%   <<"targetTableName">> := string()
%% }
-type restore_table_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_keyspace_request() :: #{
%%   <<"keyspaceName">> := string()
%% }
-type get_keyspace_request() :: #{binary() => any()}.

%% Example:
%% update_keyspace_request() :: #{
%%   <<"clientSideTimestamps">> => client_side_timestamps(),
%%   <<"keyspaceName">> := string(),
%%   <<"replicationSpecification">> := replication_specification()
%% }
-type update_keyspace_request() :: #{binary() => any()}.

%% Example:
%% get_keyspace_response() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"replicationGroupStatuses">> => list(replication_group_status()),
%%   <<"replicationRegions">> => list(string()),
%%   <<"replicationStrategy">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type get_keyspace_response() :: #{binary() => any()}.

%% Example:
%% replica_auto_scaling_specification() :: #{
%%   <<"autoScalingSpecification">> => auto_scaling_specification(),
%%   <<"region">> => string()
%% }
-type replica_auto_scaling_specification() :: #{binary() => any()}.

%% Example:
%% replication_group_status() :: #{
%%   <<"keyspaceStatus">> => string(),
%%   <<"region">> => string(),
%%   <<"tablesReplicationProgress">> => string()
%% }
-type replication_group_status() :: #{binary() => any()}.

%% Example:
%% restore_table_response() :: #{
%%   <<"restoredTableARN">> := string()
%% }
-type restore_table_response() :: #{binary() => any()}.

%% Example:
%% get_table_auto_scaling_settings_response() :: #{
%%   <<"autoScalingSpecification">> => auto_scaling_specification(),
%%   <<"keyspaceName">> => string(),
%%   <<"replicaSpecifications">> => list(replica_auto_scaling_specification()),
%%   <<"resourceArn">> => string(),
%%   <<"tableName">> => string()
%% }
-type get_table_auto_scaling_settings_response() :: #{binary() => any()}.

%% Example:
%% time_to_live() :: #{
%%   <<"status">> => string()
%% }
-type time_to_live() :: #{binary() => any()}.

%% Example:
%% encryption_specification() :: #{
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"type">> => string()
%% }
-type encryption_specification() :: #{binary() => any()}.

%% Example:
%% update_table_response() :: #{
%%   <<"resourceArn">> := string()
%% }
-type update_table_response() :: #{binary() => any()}.

%% Example:
%% list_types_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_types_request() :: #{binary() => any()}.

%% Example:
%% static_column() :: #{
%%   <<"name">> => string()
%% }
-type static_column() :: #{binary() => any()}.

%% Example:
%% cdc_specification_summary() :: #{
%%   <<"status">> => string(),
%%   <<"viewType">> => string()
%% }
-type cdc_specification_summary() :: #{binary() => any()}.

%% Example:
%% create_keyspace_response() :: #{
%%   <<"resourceArn">> := string()
%% }
-type create_keyspace_response() :: #{binary() => any()}.

%% Example:
%% list_tables_request() :: #{
%%   <<"keyspaceName">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_tables_request() :: #{binary() => any()}.

%% Example:
%% column_definition() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type column_definition() :: #{binary() => any()}.

-type create_keyspace_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_table_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_type_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_keyspace_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_table_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_type_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_keyspace_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_table_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_table_auto_scaling_settings_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_type_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_keyspaces_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_tables_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_types_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type restore_table_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_keyspace_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_table_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc The `CreateKeyspace' operation adds a new keyspace to your
%% account.
%%
%% In an Amazon Web Services account, keyspace names must be unique within
%% each Region.
%%
%% `CreateKeyspace' is an asynchronous operation. You can monitor the
%% creation status of the new keyspace by using the `GetKeyspace'
%% operation.
%%
%% For more information, see Create a keyspace:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.keyspaces.html
%% in the Amazon Keyspaces Developer Guide.
-spec create_keyspace(aws_client:aws_client(), create_keyspace_request()) ->
    {ok, create_keyspace_response(), tuple()} |
    {error, any()} |
    {error, create_keyspace_errors(), tuple()}.
create_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_keyspace(Client, Input, []).

-spec create_keyspace(aws_client:aws_client(), create_keyspace_request(), proplists:proplist()) ->
    {ok, create_keyspace_response(), tuple()} |
    {error, any()} |
    {error, create_keyspace_errors(), tuple()}.
create_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKeyspace">>, Input, Options).

%% @doc The `CreateTable' operation adds a new table to the specified
%% keyspace.
%%
%% Within a keyspace, table names must be unique.
%%
%% `CreateTable' is an asynchronous operation. When the request is
%% received, the status of the table is set to `CREATING'. You can
%% monitor the creation status of the new table by using the `GetTable'
%% operation, which returns the current `status' of the table. You can
%% start using a table when the status is `ACTIVE'.
%%
%% For more information, see Create a table:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.tables.html
%% in the Amazon Keyspaces Developer Guide.
-spec create_table(aws_client:aws_client(), create_table_request()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).

-spec create_table(aws_client:aws_client(), create_table_request(), proplists:proplist()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc The `CreateType' operation creates a new user-defined type in the
%% specified keyspace.
%%
%% To configure the required permissions, see Permissions to create a UDT:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-create
%% in the Amazon Keyspaces Developer Guide.
%%
%% For more information, see User-defined types (UDTs):
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/udts.html in the
%% Amazon Keyspaces Developer Guide.
-spec create_type(aws_client:aws_client(), create_type_request()) ->
    {ok, create_type_response(), tuple()} |
    {error, any()} |
    {error, create_type_errors(), tuple()}.
create_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_type(Client, Input, []).

-spec create_type(aws_client:aws_client(), create_type_request(), proplists:proplist()) ->
    {ok, create_type_response(), tuple()} |
    {error, any()} |
    {error, create_type_errors(), tuple()}.
create_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateType">>, Input, Options).

%% @doc The `DeleteKeyspace' operation deletes a keyspace and all of its
%% tables.
-spec delete_keyspace(aws_client:aws_client(), delete_keyspace_request()) ->
    {ok, delete_keyspace_response(), tuple()} |
    {error, any()} |
    {error, delete_keyspace_errors(), tuple()}.
delete_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_keyspace(Client, Input, []).

-spec delete_keyspace(aws_client:aws_client(), delete_keyspace_request(), proplists:proplist()) ->
    {ok, delete_keyspace_response(), tuple()} |
    {error, any()} |
    {error, delete_keyspace_errors(), tuple()}.
delete_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyspace">>, Input, Options).

%% @doc The `DeleteTable' operation deletes a table and all of its data.
%%
%% After a `DeleteTable' request is received, the specified table is in
%% the `DELETING' state until Amazon Keyspaces completes the deletion. If
%% the table is in the `ACTIVE' state, you can delete it. If a table is
%% either in the `CREATING' or `UPDATING' states, then Amazon
%% Keyspaces returns a `ResourceInUseException'. If the specified table
%% does not exist, Amazon Keyspaces returns a
%% `ResourceNotFoundException'. If the table is already in the
%% `DELETING' state, no error is returned.
-spec delete_table(aws_client:aws_client(), delete_table_request()) ->
    {ok, delete_table_response(), tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).

-spec delete_table(aws_client:aws_client(), delete_table_request(), proplists:proplist()) ->
    {ok, delete_table_response(), tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc The `DeleteType' operation deletes a user-defined type (UDT).
%%
%% You can only delete a type that is not used in a table or another UDT.
%%
%% To configure the required permissions, see Permissions to delete a UDT:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-drop
%% in the Amazon Keyspaces Developer Guide.
-spec delete_type(aws_client:aws_client(), delete_type_request()) ->
    {ok, delete_type_response(), tuple()} |
    {error, any()} |
    {error, delete_type_errors(), tuple()}.
delete_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_type(Client, Input, []).

-spec delete_type(aws_client:aws_client(), delete_type_request(), proplists:proplist()) ->
    {ok, delete_type_response(), tuple()} |
    {error, any()} |
    {error, delete_type_errors(), tuple()}.
delete_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteType">>, Input, Options).

%% @doc Returns the name of the specified keyspace, the Amazon Resource Name
%% (ARN), the replication strategy, the Amazon Web Services Regions of a
%% multi-Region keyspace, and the status of newly added Regions after an
%% `UpdateKeyspace' operation.
-spec get_keyspace(aws_client:aws_client(), get_keyspace_request()) ->
    {ok, get_keyspace_response(), tuple()} |
    {error, any()} |
    {error, get_keyspace_errors(), tuple()}.
get_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_keyspace(Client, Input, []).

-spec get_keyspace(aws_client:aws_client(), get_keyspace_request(), proplists:proplist()) ->
    {ok, get_keyspace_response(), tuple()} |
    {error, any()} |
    {error, get_keyspace_errors(), tuple()}.
get_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyspace">>, Input, Options).

%% @doc Returns information about the table, including the table's name
%% and current status, the keyspace name, configuration settings, and
%% metadata.
%%
%% To read table metadata using `GetTable', the IAM principal needs
%% `Select' action permissions for the table and the system keyspace.
-spec get_table(aws_client:aws_client(), get_table_request()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table(Client, Input, []).

-spec get_table(aws_client:aws_client(), get_table_request(), proplists:proplist()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTable">>, Input, Options).

%% @doc Returns auto scaling related settings of the specified table in JSON
%% format.
%%
%% If the table is a multi-Region table, the Amazon Web Services Region
%% specific auto scaling settings of the table are included.
%%
%% Amazon Keyspaces auto scaling helps you provision throughput capacity for
%% variable workloads efficiently by increasing and decreasing your
%% table's read and write capacity automatically in response to
%% application traffic. For more information, see Managing throughput
%% capacity automatically with Amazon Keyspaces auto scaling:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html in
%% the Amazon Keyspaces Developer Guide.
%%
%% `GetTableAutoScalingSettings' can't be used as an action in an IAM
%% policy.
%%
%% To define permissions for `GetTableAutoScalingSettings', you must
%% allow the following two actions in the IAM policy statement's
%% `Action' element:
%%
%% `application-autoscaling:DescribeScalableTargets'
%%
%% `application-autoscaling:DescribeScalingPolicies'
-spec get_table_auto_scaling_settings(aws_client:aws_client(), get_table_auto_scaling_settings_request()) ->
    {ok, get_table_auto_scaling_settings_response(), tuple()} |
    {error, any()} |
    {error, get_table_auto_scaling_settings_errors(), tuple()}.
get_table_auto_scaling_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_auto_scaling_settings(Client, Input, []).

-spec get_table_auto_scaling_settings(aws_client:aws_client(), get_table_auto_scaling_settings_request(), proplists:proplist()) ->
    {ok, get_table_auto_scaling_settings_response(), tuple()} |
    {error, any()} |
    {error, get_table_auto_scaling_settings_errors(), tuple()}.
get_table_auto_scaling_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableAutoScalingSettings">>, Input, Options).

%% @doc The `GetType' operation returns information about the type, for
%% example the field definitions, the timestamp when the type was last
%% modified, the level of nesting, the status, and details about if the type
%% is used in other types and tables.
%%
%% To read keyspace metadata using `GetType', the IAM principal needs
%% `Select' action permissions for the system keyspace. To configure the
%% required permissions, see Permissions to view a UDT:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view
%% in the Amazon Keyspaces Developer Guide.
-spec get_type(aws_client:aws_client(), get_type_request()) ->
    {ok, get_type_response(), tuple()} |
    {error, any()} |
    {error, get_type_errors(), tuple()}.
get_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_type(Client, Input, []).

-spec get_type(aws_client:aws_client(), get_type_request(), proplists:proplist()) ->
    {ok, get_type_response(), tuple()} |
    {error, any()} |
    {error, get_type_errors(), tuple()}.
get_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetType">>, Input, Options).

%% @doc The `ListKeyspaces' operation returns a list of keyspaces.
-spec list_keyspaces(aws_client:aws_client(), list_keyspaces_request()) ->
    {ok, list_keyspaces_response(), tuple()} |
    {error, any()} |
    {error, list_keyspaces_errors(), tuple()}.
list_keyspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_keyspaces(Client, Input, []).

-spec list_keyspaces(aws_client:aws_client(), list_keyspaces_request(), proplists:proplist()) ->
    {ok, list_keyspaces_response(), tuple()} |
    {error, any()} |
    {error, list_keyspaces_errors(), tuple()}.
list_keyspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeyspaces">>, Input, Options).

%% @doc The `ListTables' operation returns a list of tables for a
%% specified keyspace.
%%
%% To read keyspace metadata using `ListTables', the IAM principal needs
%% `Select' action permissions for the system keyspace.
-spec list_tables(aws_client:aws_client(), list_tables_request()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).

-spec list_tables(aws_client:aws_client(), list_tables_request(), proplists:proplist()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc Returns a list of all tags associated with the specified Amazon
%% Keyspaces resource.
%%
%% To read keyspace metadata using `ListTagsForResource', the IAM
%% principal needs `Select' action permissions for the specified resource
%% and the system keyspace.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc The `ListTypes' operation returns a list of types for a specified
%% keyspace.
%%
%% To read keyspace metadata using `ListTypes', the IAM principal needs
%% `Select' action permissions for the system keyspace. To configure the
%% required permissions, see Permissions to view a UDT:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view
%% in the Amazon Keyspaces Developer Guide.
-spec list_types(aws_client:aws_client(), list_types_request()) ->
    {ok, list_types_response(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_types(Client, Input, []).

-spec list_types(aws_client:aws_client(), list_types_request(), proplists:proplist()) ->
    {ok, list_types_response(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypes">>, Input, Options).

%% @doc Restores the table to the specified point in time within the
%% `earliest_restorable_timestamp' and the current time.
%%
%% For more information about restore points, see Time window for PITR
%% continuous backups:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window
%% in the Amazon Keyspaces Developer Guide.
%%
%% Any number of users can execute up to 4 concurrent restores (any type of
%% restore) in a given account.
%%
%% When you restore using point in time recovery, Amazon Keyspaces restores
%% your source table's schema and data to the state based on the selected
%% timestamp `(day:hour:minute:second)' to a new table. The Time to Live
%% (TTL) settings are also restored to the state based on the selected
%% timestamp.
%%
%% In addition to the table's schema, data, and TTL settings,
%% `RestoreTable' restores the capacity mode, auto scaling settings,
%% encryption settings, and point-in-time recovery settings from the source
%% table. Unlike the table's schema data and TTL settings, which are
%% restored based on the selected timestamp, these settings are always
%% restored based on the table's settings as of the current time or when
%% the table was deleted.
%%
%% You can also overwrite these settings during restore:
%%
%% Read/write capacity mode
%%
%% Provisioned throughput capacity units
%%
%% Auto scaling settings
%%
%% Point-in-time (PITR) settings
%%
%% Tags
%%
%% For more information, see PITR restore settings:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings
%% in the Amazon Keyspaces Developer Guide.
%%
%% Note that the following settings are not restored, and you must configure
%% them manually for the new table:
%%
%% Identity and Access Management (IAM) policies
%%
%% Amazon CloudWatch metrics and alarms
-spec restore_table(aws_client:aws_client(), restore_table_request()) ->
    {ok, restore_table_response(), tuple()} |
    {error, any()} |
    {error, restore_table_errors(), tuple()}.
restore_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table(Client, Input, []).

-spec restore_table(aws_client:aws_client(), restore_table_request(), proplists:proplist()) ->
    {ok, restore_table_response(), tuple()} |
    {error, any()} |
    {error, restore_table_errors(), tuple()}.
restore_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTable">>, Input, Options).

%% @doc Associates a set of tags with a Amazon Keyspaces resource.
%%
%% You can then activate these user-defined tags so that they appear on the
%% Cost Management Console for cost allocation tracking. For more
%% information, see Adding tags and labels to Amazon Keyspaces resources:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
%% in the Amazon Keyspaces Developer Guide.
%%
%% For IAM policy examples that show how to control access to Amazon
%% Keyspaces resources based on tags, see Amazon Keyspaces resource access
%% based on tags:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags
%% in the Amazon Keyspaces Developer Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of tags from a Amazon Keyspaces resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Adds a new Amazon Web Services Region to the keyspace.
%%
%% You can add a new Region to a keyspace that is either a single or a
%% multi-Region keyspace. Amazon Keyspaces is going to replicate all tables
%% in the keyspace to the new Region. To successfully replicate all tables to
%% the new Region, they must use client-side timestamps for conflict
%% resolution. To enable client-side timestamps, specify
%% `clientSideTimestamps.status = enabled' when invoking the API. For
%% more information about client-side timestamps, see Client-side timestamps
%% in Amazon Keyspaces:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps.html
%% in the Amazon Keyspaces Developer Guide.
%%
%% To add a Region to a keyspace using the `UpdateKeyspace' API, the IAM
%% principal needs permissions for the following IAM actions:
%%
%% `cassandra:Alter'
%%
%% `cassandra:AlterMultiRegionResource'
%%
%% `cassandra:Create'
%%
%% `cassandra:CreateMultiRegionResource'
%%
%% `cassandra:Select'
%%
%% `cassandra:SelectMultiRegionResource'
%%
%% `cassandra:Modify'
%%
%% `cassandra:ModifyMultiRegionResource'
%%
%% If the keyspace contains a table that is configured in provisioned mode
%% with auto scaling enabled, the following additional IAM actions need to be
%% allowed.
%%
%% `application-autoscaling:RegisterScalableTarget'
%%
%% `application-autoscaling:DeregisterScalableTarget'
%%
%% `application-autoscaling:DescribeScalableTargets'
%%
%% `application-autoscaling:PutScalingPolicy'
%%
%% `application-autoscaling:DescribeScalingPolicies'
%%
%% To use the `UpdateKeyspace' API, the IAM principal also needs
%% permissions to create a service-linked role with the following elements:
%%
%% `iam:CreateServiceLinkedRole' - The action the principal can perform.
%%
%% `arn:aws:iam::*:role/aws-service-role/replication.cassandra.amazonaws.com/AWSServiceRoleForKeyspacesReplication'
%% - The resource that the action can be performed on.
%%
%% `iam:AWSServiceName: replication.cassandra.amazonaws.com' - The only
%% Amazon Web Services service that this role can be attached to is Amazon
%% Keyspaces.
%%
%% For more information, see Configure the IAM permissions required to add an
%% Amazon Web Services Region to a keyspace:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/howitworks_replication_permissions_addReplica.html
%% in the Amazon Keyspaces Developer Guide.
-spec update_keyspace(aws_client:aws_client(), update_keyspace_request()) ->
    {ok, update_keyspace_response(), tuple()} |
    {error, any()} |
    {error, update_keyspace_errors(), tuple()}.
update_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_keyspace(Client, Input, []).

-spec update_keyspace(aws_client:aws_client(), update_keyspace_request(), proplists:proplist()) ->
    {ok, update_keyspace_response(), tuple()} |
    {error, any()} |
    {error, update_keyspace_errors(), tuple()}.
update_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateKeyspace">>, Input, Options).

%% @doc Adds new columns to the table or updates one of the table's
%% settings, for example capacity mode, auto scaling, encryption,
%% point-in-time recovery, or ttl settings.
%%
%% Note that you can only update one specific table setting per update
%% operation.
-spec update_table(aws_client:aws_client(), update_table_request()) ->
    {ok, update_table_response(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).

-spec update_table(aws_client:aws_client(), update_table_request(), proplists:proplist()) ->
    {ok, update_table_response(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

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
    Client1 = Client#{service => <<"cassandra">>},
    Host = build_host(<<"cassandra">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"KeyspacesService.", Action/binary>>}
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
