%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An Amazon S3 table represents a structured dataset consisting of
%% tabular data in Apache Parquet: https://parquet.apache.org/docs/ format
%% and related metadata.
%%
%% This data is stored inside an S3 table as a subresource. All tables in a
%% table bucket are stored in the Apache Iceberg:
%% https://iceberg.apache.org/docs/latest/ table format. Through integration
%% with the Amazon Web Services Glue Data Catalog:
%% https://docs.aws.amazon.com/https:/docs.aws.amazon.com/glue/latest/dg/catalog-and-crawler.html
%% you can interact with your tables using Amazon Web Services analytics
%% services, such as Amazon Athena:
%% https://docs.aws.amazon.com/https:/docs.aws.amazon.com/athena/ and Amazon
%% Redshift:
%% https://docs.aws.amazon.com/https:/docs.aws.amazon.com/redshift/. Amazon
%% S3 manages maintenance of your tables through automatic file compaction
%% and snapshot management. For more information, see Amazon S3 table
%% buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html.
-module(aws_s3tables).

-export([create_namespace/3,
         create_namespace/4,
         create_table/4,
         create_table/5,
         create_table_bucket/2,
         create_table_bucket/3,
         delete_namespace/4,
         delete_namespace/5,
         delete_table/5,
         delete_table/6,
         delete_table_bucket/3,
         delete_table_bucket/4,
         delete_table_bucket_encryption/3,
         delete_table_bucket_encryption/4,
         delete_table_bucket_policy/3,
         delete_table_bucket_policy/4,
         delete_table_policy/5,
         delete_table_policy/6,
         get_namespace/3,
         get_namespace/5,
         get_namespace/6,
         get_table/1,
         get_table/3,
         get_table/4,
         get_table_bucket/2,
         get_table_bucket/4,
         get_table_bucket/5,
         get_table_bucket_encryption/2,
         get_table_bucket_encryption/4,
         get_table_bucket_encryption/5,
         get_table_bucket_maintenance_configuration/2,
         get_table_bucket_maintenance_configuration/4,
         get_table_bucket_maintenance_configuration/5,
         get_table_bucket_policy/2,
         get_table_bucket_policy/4,
         get_table_bucket_policy/5,
         get_table_encryption/4,
         get_table_encryption/6,
         get_table_encryption/7,
         get_table_maintenance_configuration/4,
         get_table_maintenance_configuration/6,
         get_table_maintenance_configuration/7,
         get_table_maintenance_job_status/4,
         get_table_maintenance_job_status/6,
         get_table_maintenance_job_status/7,
         get_table_metadata_location/4,
         get_table_metadata_location/6,
         get_table_metadata_location/7,
         get_table_policy/4,
         get_table_policy/6,
         get_table_policy/7,
         list_namespaces/2,
         list_namespaces/4,
         list_namespaces/5,
         list_table_buckets/1,
         list_table_buckets/3,
         list_table_buckets/4,
         list_tables/2,
         list_tables/4,
         list_tables/5,
         put_table_bucket_encryption/3,
         put_table_bucket_encryption/4,
         put_table_bucket_maintenance_configuration/4,
         put_table_bucket_maintenance_configuration/5,
         put_table_bucket_policy/3,
         put_table_bucket_policy/4,
         put_table_maintenance_configuration/6,
         put_table_maintenance_configuration/7,
         put_table_policy/5,
         put_table_policy/6,
         rename_table/5,
         rename_table/6,
         update_table_metadata_location/5,
         update_table_metadata_location/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% put_table_maintenance_configuration_request() :: #{
%%   <<"value">> := table_maintenance_configuration_value()
%% }
-type put_table_maintenance_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_policy_request() :: #{}
-type get_table_bucket_policy_request() :: #{}.


%% Example:
%% list_table_buckets_request() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"maxBuckets">> => integer(),
%%   <<"prefix">> => [string()]
%% }
-type list_table_buckets_request() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => [string()],
%%   <<"sseAlgorithm">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% iceberg_snapshot_management_settings() :: #{
%%   <<"maxSnapshotAgeHours">> => integer(),
%%   <<"minSnapshotsToKeep">> => integer()
%% }
-type iceberg_snapshot_management_settings() :: #{binary() => any()}.

%% Example:
%% delete_table_policy_request() :: #{}
-type delete_table_policy_request() :: #{}.


%% Example:
%% update_table_metadata_location_request() :: #{
%%   <<"metadataLocation">> := string(),
%%   <<"versionToken">> := string()
%% }
-type update_table_metadata_location_request() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_policy_request() :: #{
%%   <<"resourcePolicy">> := string()
%% }
-type put_table_bucket_policy_request() :: #{binary() => any()}.


%% Example:
%% get_table_bucket_policy_response() :: #{
%%   <<"resourcePolicy">> => string()
%% }
-type get_table_bucket_policy_response() :: #{binary() => any()}.


%% Example:
%% list_namespaces_request() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"maxNamespaces">> => integer(),
%%   <<"prefix">> => [string()]
%% }
-type list_namespaces_request() :: #{binary() => any()}.


%% Example:
%% get_table_encryption_response() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration()
%% }
-type get_table_encryption_response() :: #{binary() => any()}.


%% Example:
%% delete_table_request() :: #{
%%   <<"versionToken">> => string()
%% }
-type delete_table_request() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% get_table_bucket_encryption_response() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration()
%% }
-type get_table_bucket_encryption_response() :: #{binary() => any()}.


%% Example:
%% namespace_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"namespace">> => list(string()()),
%%   <<"namespaceId">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string()
%% }
-type namespace_summary() :: #{binary() => any()}.


%% Example:
%% table_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"namespace">> => list(string()()),
%%   <<"namespaceId">> => string(),
%%   <<"tableARN">> => string(),
%%   <<"tableBucketId">> => string(),
%%   <<"type">> => list(any())
%% }
-type table_summary() :: #{binary() => any()}.


%% Example:
%% get_table_request() :: #{
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"tableArn">> => string(),
%%   <<"tableBucketARN">> => string()
%% }
-type get_table_request() :: #{binary() => any()}.


%% Example:
%% get_table_maintenance_configuration_response() :: #{
%%   <<"configuration">> => map(),
%%   <<"tableARN">> => string()
%% }
-type get_table_maintenance_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_table_metadata_location_response() :: #{
%%   <<"metadataLocation">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => list(string()()),
%%   <<"tableARN">> => string(),
%%   <<"versionToken">> => string()
%% }
-type update_table_metadata_location_response() :: #{binary() => any()}.


%% Example:
%% create_table_request() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"format">> := list(any()),
%%   <<"metadata">> => list(),
%%   <<"name">> := string()
%% }
-type create_table_request() :: #{binary() => any()}.


%% Example:
%% get_table_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"format">> => list(any()),
%%   <<"managedByService">> => [string()],
%%   <<"metadataLocation">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"modifiedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => list(string()()),
%%   <<"namespaceId">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableARN">> => string(),
%%   <<"tableBucketId">> => string(),
%%   <<"type">> => list(any()),
%%   <<"versionToken">> => string(),
%%   <<"warehouseLocation">> => string()
%% }
-type get_table_response() :: #{binary() => any()}.

%% Example:
%% get_table_policy_request() :: #{}
-type get_table_policy_request() :: #{}.


%% Example:
%% get_table_maintenance_job_status_response() :: #{
%%   <<"status">> => map(),
%%   <<"tableARN">> => string()
%% }
-type get_table_maintenance_job_status_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_encryption_request() :: #{}
-type get_table_bucket_encryption_request() :: #{}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% table_maintenance_configuration_value() :: #{
%%   <<"settings">> => list(),
%%   <<"status">> => list(any())
%% }
-type table_maintenance_configuration_value() :: #{binary() => any()}.

%% Example:
%% get_table_maintenance_configuration_request() :: #{}
-type get_table_maintenance_configuration_request() :: #{}.


%% Example:
%% get_namespace_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"namespace">> => list(string()()),
%%   <<"namespaceId">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string()
%% }
-type get_namespace_response() :: #{binary() => any()}.


%% Example:
%% create_namespace_request() :: #{
%%   <<"namespace">> := list(string()())
%% }
-type create_namespace_request() :: #{binary() => any()}.


%% Example:
%% iceberg_metadata() :: #{
%%   <<"schema">> => iceberg_schema()
%% }
-type iceberg_metadata() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_tables_response() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"tables">> => list(table_summary()())
%% }
-type list_tables_response() :: #{binary() => any()}.


%% Example:
%% create_table_response() :: #{
%%   <<"tableARN">> => string(),
%%   <<"versionToken">> => string()
%% }
-type create_table_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_maintenance_configuration_request() :: #{}
-type get_table_bucket_maintenance_configuration_request() :: #{}.

%% Example:
%% delete_table_bucket_policy_request() :: #{}
-type delete_table_bucket_policy_request() :: #{}.

%% Example:
%% get_table_encryption_request() :: #{}
-type get_table_encryption_request() :: #{}.

%% Example:
%% delete_table_bucket_encryption_request() :: #{}
-type delete_table_bucket_encryption_request() :: #{}.


%% Example:
%% put_table_bucket_maintenance_configuration_request() :: #{
%%   <<"value">> := table_bucket_maintenance_configuration_value()
%% }
-type put_table_bucket_maintenance_configuration_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_table_bucket_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_table_bucket_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_request() :: #{}
-type get_table_bucket_request() :: #{}.

%% Example:
%% get_table_metadata_location_request() :: #{}
-type get_table_metadata_location_request() :: #{}.


%% Example:
%% create_table_bucket_request() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> := string()
%% }
-type create_table_bucket_request() :: #{binary() => any()}.

%% Example:
%% get_table_maintenance_job_status_request() :: #{}
-type get_table_maintenance_job_status_request() :: #{}.


%% Example:
%% iceberg_unreferenced_file_removal_settings() :: #{
%%   <<"nonCurrentDays">> => integer(),
%%   <<"unreferencedDays">> => integer()
%% }
-type iceberg_unreferenced_file_removal_settings() :: #{binary() => any()}.


%% Example:
%% table_maintenance_job_status_value() :: #{
%%   <<"failureMessage">> => [string()],
%%   <<"lastRunTimestamp">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type table_maintenance_job_status_value() :: #{binary() => any()}.


%% Example:
%% get_table_policy_response() :: #{
%%   <<"resourcePolicy">> => string()
%% }
-type get_table_policy_response() :: #{binary() => any()}.


%% Example:
%% list_table_buckets_response() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"tableBuckets">> => list(table_bucket_summary()())
%% }
-type list_table_buckets_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% schema_field() :: #{
%%   <<"name">> => [string()],
%%   <<"required">> => [boolean()],
%%   <<"type">> => [string()]
%% }
-type schema_field() :: #{binary() => any()}.


%% Example:
%% create_namespace_response() :: #{
%%   <<"namespace">> => list(string()()),
%%   <<"tableBucketARN">> => string()
%% }
-type create_namespace_response() :: #{binary() => any()}.


%% Example:
%% get_table_bucket_maintenance_configuration_response() :: #{
%%   <<"configuration">> => map(),
%%   <<"tableBucketARN">> => string()
%% }
-type get_table_bucket_maintenance_configuration_response() :: #{binary() => any()}.


%% Example:
%% iceberg_compaction_settings() :: #{
%%   <<"strategy">> => list(any()),
%%   <<"targetFileSizeMB">> => integer()
%% }
-type iceberg_compaction_settings() :: #{binary() => any()}.


%% Example:
%% rename_table_request() :: #{
%%   <<"newName">> => string(),
%%   <<"newNamespaceName">> => string(),
%%   <<"versionToken">> => string()
%% }
-type rename_table_request() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% list_namespaces_response() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"namespaces">> => list(namespace_summary()())
%% }
-type list_namespaces_response() :: #{binary() => any()}.

%% Example:
%% delete_namespace_request() :: #{}
-type delete_namespace_request() :: #{}.


%% Example:
%% get_table_metadata_location_response() :: #{
%%   <<"metadataLocation">> => string(),
%%   <<"versionToken">> => string(),
%%   <<"warehouseLocation">> => string()
%% }
-type get_table_metadata_location_response() :: #{binary() => any()}.


%% Example:
%% iceberg_schema() :: #{
%%   <<"fields">> => list(schema_field()())
%% }
-type iceberg_schema() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% get_table_bucket_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string()
%% }
-type get_table_bucket_response() :: #{binary() => any()}.


%% Example:
%% table_bucket_maintenance_configuration_value() :: #{
%%   <<"settings">> => list(),
%%   <<"status">> => list(any())
%% }
-type table_bucket_maintenance_configuration_value() :: #{binary() => any()}.


%% Example:
%% put_table_policy_request() :: #{
%%   <<"resourcePolicy">> := string()
%% }
-type put_table_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_table_bucket_request() :: #{}
-type delete_table_bucket_request() :: #{}.


%% Example:
%% put_table_bucket_encryption_request() :: #{
%%   <<"encryptionConfiguration">> := encryption_configuration()
%% }
-type put_table_bucket_encryption_request() :: #{binary() => any()}.


%% Example:
%% table_bucket_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string()
%% }
-type table_bucket_summary() :: #{binary() => any()}.

%% Example:
%% get_namespace_request() :: #{}
-type get_namespace_request() :: #{}.


%% Example:
%% list_tables_request() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"maxTables">> => integer(),
%%   <<"namespace">> => string(),
%%   <<"prefix">> => [string()]
%% }
-type list_tables_request() :: #{binary() => any()}.

-type create_namespace_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_table_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_table_bucket_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_namespace_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_table_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_table_bucket_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_table_bucket_encryption_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_table_bucket_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_table_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_namespace_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_bucket_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_bucket_encryption_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_bucket_maintenance_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_bucket_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_encryption_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_maintenance_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_maintenance_job_status_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_metadata_location_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_table_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_namespaces_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_table_buckets_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_tables_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type put_table_bucket_encryption_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type put_table_bucket_maintenance_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type put_table_bucket_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type put_table_maintenance_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type put_table_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type rename_table_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_table_metadata_location_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a namespace.
%%
%% A namespace is a logical grouping of tables within your table bucket,
%% which you can use to organize tables. For more information, see Create a
%% namespace:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-create.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:CreateNamespace' permission to
%% use this operation.
-spec create_namespace(aws_client:aws_client(), binary() | list(), create_namespace_request()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, TableBucketARN, Input) ->
    create_namespace(Client, TableBucketARN, Input, []).

-spec create_namespace(aws_client:aws_client(), binary() | list(), create_namespace_request(), proplists:proplist()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), ""],
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

%% @doc Creates a new table associated with the given namespace in a table
%% bucket.
%%
%% For more information, see Creating an Amazon S3 table:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-create.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:CreateTable' permission to use
%% this operation.
%%
%% If you use this operation with the optional `metadata' request
%% parameter you must have the `s3tables:PutTableData' permission.
%%
%% If you use this operation with the optional `encryptionConfiguration'
%% request parameter you must have the `s3tables:PutTableEncryption'
%% permission.
%%
%% Additionally, If you choose SSE-KMS encryption you must grant the S3
%% Tables maintenance principal access to your KMS key. For more information,
%% see Permissions requirements for S3 Tables SSE-KMS encryption:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html.
-spec create_table(aws_client:aws_client(), binary() | list(), binary() | list(), create_table_request()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Namespace, TableBucketARN, Input) ->
    create_table(Client, Namespace, TableBucketARN, Input, []).

-spec create_table(aws_client:aws_client(), binary() | list(), binary() | list(), create_table_request(), proplists:proplist()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), ""],
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

%% @doc Creates a table bucket.
%%
%% For more information, see Creating a table bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-create.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:CreateTableBucket' permission
%% to use this operation.
%%
%% If you use this operation with the optional `encryptionConfiguration'
%% parameter you must have the `s3tables:PutTableBucketEncryption'
%% permission.
-spec create_table_bucket(aws_client:aws_client(), create_table_bucket_request()) ->
    {ok, create_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, create_table_bucket_errors(), tuple()}.
create_table_bucket(Client, Input) ->
    create_table_bucket(Client, Input, []).

-spec create_table_bucket(aws_client:aws_client(), create_table_bucket_request(), proplists:proplist()) ->
    {ok, create_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, create_table_bucket_errors(), tuple()}.
create_table_bucket(Client, Input0, Options0) ->
    Method = put,
    Path = ["/buckets"],
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

%% @doc Deletes a namespace.
%%
%% For more information, see Delete a namespace:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-delete.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteNamespace' permission to
%% use this operation.
-spec delete_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_namespace_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Namespace, TableBucketARN, Input) ->
    delete_namespace(Client, Namespace, TableBucketARN, Input, []).

-spec delete_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_namespace_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Namespace, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a table.
%%
%% For more information, see Deleting an Amazon S3 table:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-delete.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTable' permission to use
%% this operation.
-spec delete_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Name, Namespace, TableBucketARN, Input) ->
    delete_table(Client, Name, Namespace, TableBucketARN, Input, []).

-spec delete_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
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
                     {<<"versionToken">>, <<"versionToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a table bucket.
%%
%% For more information, see Deleting a table bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-delete.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTableBucket' permission
%% to use this operation.
-spec delete_table_bucket(aws_client:aws_client(), binary() | list(), delete_table_bucket_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_errors(), tuple()}.
delete_table_bucket(Client, TableBucketARN, Input) ->
    delete_table_bucket(Client, TableBucketARN, Input, []).

-spec delete_table_bucket(aws_client:aws_client(), binary() | list(), delete_table_bucket_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_errors(), tuple()}.
delete_table_bucket(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the encryption configuration for a table bucket.
%%
%% Permissions You must have the `s3tables:DeleteTableBucketEncryption'
%% permission to use this operation.
-spec delete_table_bucket_encryption(aws_client:aws_client(), binary() | list(), delete_table_bucket_encryption_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_encryption_errors(), tuple()}.
delete_table_bucket_encryption(Client, TableBucketARN, Input) ->
    delete_table_bucket_encryption(Client, TableBucketARN, Input, []).

-spec delete_table_bucket_encryption(aws_client:aws_client(), binary() | list(), delete_table_bucket_encryption_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_encryption_errors(), tuple()}.
delete_table_bucket_encryption(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/encryption"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a table bucket policy.
%%
%% For more information, see Deleting a table bucket policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-delete
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTableBucketPolicy'
%% permission to use this operation.
-spec delete_table_bucket_policy(aws_client:aws_client(), binary() | list(), delete_table_bucket_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_policy_errors(), tuple()}.
delete_table_bucket_policy(Client, TableBucketARN, Input) ->
    delete_table_bucket_policy(Client, TableBucketARN, Input, []).

-spec delete_table_bucket_policy(aws_client:aws_client(), binary() | list(), delete_table_bucket_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_policy_errors(), tuple()}.
delete_table_bucket_policy(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/policy"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a table policy.
%%
%% For more information, see Deleting a table policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-delete
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTablePolicy' permission
%% to use this operation.
-spec delete_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_policy_errors(), tuple()}.
delete_table_policy(Client, Name, Namespace, TableBucketARN, Input) ->
    delete_table_policy(Client, Name, Namespace, TableBucketARN, Input, []).

-spec delete_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_policy_errors(), tuple()}.
delete_table_policy(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 204,
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

%% @doc Gets details about a namespace.
%%
%% For more information, see Table namespaces:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetNamespace' permission to
%% use this operation.
-spec get_namespace(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_namespace(Client, Namespace, TableBucketARN, #{}, #{}).

-spec get_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_namespace(Client, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a table.
%%
%% For more information, see S3 Tables:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTable' permission to use
%% this operation.
-spec get_table(aws_client:aws_client()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client)
  when is_map(Client) ->
    get_table(Client, #{}, #{}).

-spec get_table(aws_client:aws_client(), map(), map()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table(Client, QueryMap, HeadersMap, []).

-spec get_table(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-table"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"tableArn">>, maps:get(<<"tableArn">>, QueryMap, undefined)},
        {<<"tableBucketARN">>, maps:get(<<"tableBucketARN">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details on a table bucket.
%%
%% For more information, see Viewing details about an Amazon S3 table bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-details.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableBucket' permission to
%% use this operation.
-spec get_table_bucket(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_errors(), tuple()}.
get_table_bucket(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_errors(), tuple()}.
get_table_bucket(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_errors(), tuple()}.
get_table_bucket(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the encryption configuration for a table bucket.
%%
%% Permissions You must have the `s3tables:GetTableBucketEncryption'
%% permission to use this operation.
-spec get_table_bucket_encryption(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_encryption_errors(), tuple()}.
get_table_bucket_encryption(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_encryption(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_encryption(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_encryption_errors(), tuple()}.
get_table_bucket_encryption(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_encryption(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_encryption(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_encryption_errors(), tuple()}.
get_table_bucket_encryption(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a maintenance configuration for a given table
%% bucket.
%%
%% For more information, see Amazon S3 table bucket maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:GetTableBucketMaintenanceConfiguration' permission to use
%% this operation.
-spec get_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_maintenance_configuration_errors(), tuple()}.
get_table_bucket_maintenance_configuration(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_maintenance_configuration(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_maintenance_configuration_errors(), tuple()}.
get_table_bucket_maintenance_configuration(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_maintenance_configuration(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_maintenance_configuration_errors(), tuple()}.
get_table_bucket_maintenance_configuration(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/maintenance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a table bucket policy.
%%
%% For more information, see Viewing a table bucket policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-get
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableBucketPolicy'
%% permission to use this operation.
-spec get_table_bucket_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_policy_errors(), tuple()}.
get_table_bucket_policy(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_policy(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_policy_errors(), tuple()}.
get_table_bucket_policy(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_policy(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_policy_errors(), tuple()}.
get_table_bucket_policy(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the encryption configuration for a table.
%%
%% Permissions You must have the `s3tables:GetTableEncryption' permission
%% to use this operation.
-spec get_table_encryption(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_encryption_errors(), tuple()}.
get_table_encryption(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_encryption(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_encryption(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_encryption_errors(), tuple()}.
get_table_encryption(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_encryption(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_encryption(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_encryption_errors(), tuple()}.
get_table_encryption(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about the maintenance configuration of a table.
%%
%% For more information, see S3 Tables maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:GetTableMaintenanceConfiguration' permission to use this
%% operation.
%%
%% You must have the `s3tables:GetTableData' permission to use set the
%% compaction strategy to `sort' or `zorder'.
-spec get_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_configuration_errors(), tuple()}.
get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_configuration_errors(), tuple()}.
get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_configuration_errors(), tuple()}.
get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/maintenance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a maintenance job for a table.
%%
%% For more information, see S3 Tables maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableMaintenanceJobStatus'
%% permission to use this operation.
-spec get_table_maintenance_job_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_maintenance_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_job_status_errors(), tuple()}.
get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_maintenance_job_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_maintenance_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_job_status_errors(), tuple()}.
get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_maintenance_job_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_maintenance_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_job_status_errors(), tuple()}.
get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/maintenance-job-status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the location of the table metadata.
%%
%% Permissions You must have the `s3tables:GetTableMetadataLocation'
%% permission to use this operation.
-spec get_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_location_errors(), tuple()}.
get_table_metadata_location(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_metadata_location(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_location_errors(), tuple()}.
get_table_metadata_location(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_metadata_location(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_location_errors(), tuple()}.
get_table_metadata_location(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/metadata-location"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a table policy.
%%
%% For more information, see Viewing a table policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-get
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTablePolicy' permission to
%% use this operation.
-spec get_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_policy_errors(), tuple()}.
get_table_policy(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_policy(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_policy_errors(), tuple()}.
get_table_policy(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_policy(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_policy_errors(), tuple()}.
get_table_policy(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the namespaces within a table bucket.
%%
%% For more information, see Table namespaces:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:ListNamespaces' permission to
%% use this operation.
-spec list_namespaces(aws_client:aws_client(), binary() | list()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, TableBucketARN)
  when is_map(Client) ->
    list_namespaces(Client, TableBucketARN, #{}, #{}).

-spec list_namespaces(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_namespaces(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec list_namespaces(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continuationToken">>, maps:get(<<"continuationToken">>, QueryMap, undefined)},
        {<<"maxNamespaces">>, maps:get(<<"maxNamespaces">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists table buckets for your account.
%%
%% For more information, see S3 Table buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:ListTableBuckets' permission
%% to use this operation.
-spec list_table_buckets(aws_client:aws_client()) ->
    {ok, list_table_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_table_buckets_errors(), tuple()}.
list_table_buckets(Client)
  when is_map(Client) ->
    list_table_buckets(Client, #{}, #{}).

-spec list_table_buckets(aws_client:aws_client(), map(), map()) ->
    {ok, list_table_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_table_buckets_errors(), tuple()}.
list_table_buckets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_table_buckets(Client, QueryMap, HeadersMap, []).

-spec list_table_buckets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_table_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_table_buckets_errors(), tuple()}.
list_table_buckets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continuationToken">>, maps:get(<<"continuationToken">>, QueryMap, undefined)},
        {<<"maxBuckets">>, maps:get(<<"maxBuckets">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List tables in the given table bucket.
%%
%% For more information, see S3 Tables:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:ListTables' permission to use
%% this operation.
-spec list_tables(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, TableBucketARN)
  when is_map(Client) ->
    list_tables(Client, TableBucketARN, #{}, #{}).

-spec list_tables(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tables(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec list_tables(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continuationToken">>, maps:get(<<"continuationToken">>, QueryMap, undefined)},
        {<<"maxTables">>, maps:get(<<"maxTables">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the encryption configuration for a table bucket.
%%
%% Permissions You must have the `s3tables:PutTableBucketEncryption'
%% permission to use this operation.
%%
%% If you choose SSE-KMS encryption you must grant the S3 Tables maintenance
%% principal access to your KMS key. For more information, see Permissions
%% requirements for S3 Tables SSE-KMS encryption:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
%% in the Amazon Simple Storage Service User Guide.
-spec put_table_bucket_encryption(aws_client:aws_client(), binary() | list(), put_table_bucket_encryption_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_encryption_errors(), tuple()}.
put_table_bucket_encryption(Client, TableBucketARN, Input) ->
    put_table_bucket_encryption(Client, TableBucketARN, Input, []).

-spec put_table_bucket_encryption(aws_client:aws_client(), binary() | list(), put_table_bucket_encryption_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_encryption_errors(), tuple()}.
put_table_bucket_encryption(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/encryption"],
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

%% @doc Creates a new maintenance configuration or replaces an existing
%% maintenance configuration for a table bucket.
%%
%% For more information, see Amazon S3 table bucket maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:PutTableBucketMaintenanceConfiguration' permission to use
%% this operation.
-spec put_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_table_bucket_maintenance_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_maintenance_configuration_errors(), tuple()}.
put_table_bucket_maintenance_configuration(Client, TableBucketARN, Type, Input) ->
    put_table_bucket_maintenance_configuration(Client, TableBucketARN, Type, Input, []).

-spec put_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_table_bucket_maintenance_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_maintenance_configuration_errors(), tuple()}.
put_table_bucket_maintenance_configuration(Client, TableBucketARN, Type, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/maintenance/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 204,
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

%% @doc Creates a new maintenance configuration or replaces an existing table
%% bucket policy for a table bucket.
%%
%% For more information, see Adding a table bucket policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-add
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:PutTableBucketPolicy'
%% permission to use this operation.
-spec put_table_bucket_policy(aws_client:aws_client(), binary() | list(), put_table_bucket_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_policy_errors(), tuple()}.
put_table_bucket_policy(Client, TableBucketARN, Input) ->
    put_table_bucket_policy(Client, TableBucketARN, Input, []).

-spec put_table_bucket_policy(aws_client:aws_client(), binary() | list(), put_table_bucket_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_policy_errors(), tuple()}.
put_table_bucket_policy(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/policy"],
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

%% @doc Creates a new maintenance configuration or replaces an existing
%% maintenance configuration for a table.
%%
%% For more information, see S3 Tables maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:PutTableMaintenanceConfiguration' permission to use this
%% operation.
-spec put_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_table_maintenance_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_maintenance_configuration_errors(), tuple()}.
put_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, Type, Input) ->
    put_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, Type, Input, []).

-spec put_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_table_maintenance_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_maintenance_configuration_errors(), tuple()}.
put_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, Type, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/maintenance/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 204,
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

%% @doc Creates a new maintenance configuration or replaces an existing table
%% policy for a table.
%%
%% For more information, see Adding a table policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:PutTablePolicy' permission to
%% use this operation.
-spec put_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_table_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_policy_errors(), tuple()}.
put_table_policy(Client, Name, Namespace, TableBucketARN, Input) ->
    put_table_policy(Client, Name, Namespace, TableBucketARN, Input, []).

-spec put_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_table_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_policy_errors(), tuple()}.
put_table_policy(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/policy"],
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

%% @doc Renames a table or a namespace.
%%
%% For more information, see S3 Tables:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:RenameTable' permission to use
%% this operation.
-spec rename_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), rename_table_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, rename_table_errors(), tuple()}.
rename_table(Client, Name, Namespace, TableBucketARN, Input) ->
    rename_table(Client, Name, Namespace, TableBucketARN, Input, []).

-spec rename_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), rename_table_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, rename_table_errors(), tuple()}.
rename_table(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/rename"],
    SuccessStatusCode = 204,
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

%% @doc Updates the metadata location for a table.
%%
%% The metadata location of a table must be an S3 URI that begins with the
%% table's warehouse location. The metadata location for an Apache
%% Iceberg table must end with `.metadata.json', or if the metadata file
%% is Gzip-compressed, `.metadata.json.gz'.
%%
%% Permissions You must have the `s3tables:UpdateTableMetadataLocation'
%% permission to use this operation.
-spec update_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_table_metadata_location_request()) ->
    {ok, update_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, update_table_metadata_location_errors(), tuple()}.
update_table_metadata_location(Client, Name, Namespace, TableBucketARN, Input) ->
    update_table_metadata_location(Client, Name, Namespace, TableBucketARN, Input, []).

-spec update_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_table_metadata_location_request(), proplists:proplist()) ->
    {ok, update_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, update_table_metadata_location_errors(), tuple()}.
update_table_metadata_location(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/metadata-location"],
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
    Client1 = Client#{service => <<"s3tables">>},
    Host = build_host(<<"s3tables">>, Client1),
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
