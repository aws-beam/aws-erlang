%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Data Firehose
%%
%% Amazon Data Firehose was previously known as Amazon Kinesis Data Firehose.
%%
%% Amazon Data Firehose is a fully managed service that delivers real-time
%% streaming
%% data to destinations such as Amazon Simple Storage Service (Amazon S3),
%% Amazon OpenSearch
%% Service, Amazon Redshift, Splunk, and various other supported
%% destinations.
-module(aws_firehose).

-export([create_delivery_stream/2,
         create_delivery_stream/3,
         delete_delivery_stream/2,
         delete_delivery_stream/3,
         describe_delivery_stream/2,
         describe_delivery_stream/3,
         list_delivery_streams/2,
         list_delivery_streams/3,
         list_tags_for_delivery_stream/2,
         list_tags_for_delivery_stream/3,
         put_record/2,
         put_record/3,
         put_record_batch/2,
         put_record_batch/3,
         start_delivery_stream_encryption/2,
         start_delivery_stream_encryption/3,
         stop_delivery_stream_encryption/2,
         stop_delivery_stream_encryption/3,
         tag_delivery_stream/2,
         tag_delivery_stream/3,
         untag_delivery_stream/2,
         untag_delivery_stream/3,
         update_destination/2,
         update_destination/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% http_endpoint_request_configuration() :: #{
%%   <<"CommonAttributes">> => list(http_endpoint_common_attribute()),
%%   <<"ContentEncoding">> => list(any())
%% }
-type http_endpoint_request_configuration() :: #{binary() => any()}.

%% Example:
%% database_source_authentication_configuration() :: #{
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type database_source_authentication_configuration() :: #{binary() => any()}.

%% Example:
%% record() :: #{
%%   <<"Data">> => binary()
%% }
-type record() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"KMSEncryptionConfig">> => kms_encryption_config(),
%%   <<"NoEncryptionConfig">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% http_endpoint_buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type http_endpoint_buffering_hints() :: #{binary() => any()}.

%% Example:
%% invalid_kms_resource_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_kms_resource_exception() :: #{binary() => any()}.

%% Example:
%% failure_description() :: #{
%%   <<"Details">> => string(),
%%   <<"Type">> => list(any())
%% }
-type failure_description() :: #{binary() => any()}.

%% Example:
%% redshift_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type redshift_retry_options() :: #{binary() => any()}.

%% Example:
%% amazon_open_search_serverless_buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type amazon_open_search_serverless_buffering_hints() :: #{binary() => any()}.

%% Example:
%% database_source_configuration() :: #{
%%   <<"Columns">> => database_column_list(),
%%   <<"DatabaseSourceAuthenticationConfiguration">> => database_source_authentication_configuration(),
%%   <<"DatabaseSourceVPCConfiguration">> => database_source_vpc_configuration(),
%%   <<"Databases">> => database_list(),
%%   <<"Endpoint">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SSLMode">> => list(any()),
%%   <<"SnapshotWatermarkTable">> => string(),
%%   <<"SurrogateKeys">> => list(string()),
%%   <<"Tables">> => database_table_list(),
%%   <<"Type">> => list(any())
%% }
-type database_source_configuration() :: #{binary() => any()}.

%% Example:
%% vpc_configuration() :: #{
%%   <<"RoleARN">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type vpc_configuration() :: #{binary() => any()}.

%% Example:
%% snowflake_vpc_configuration() :: #{
%%   <<"PrivateLinkVpceId">> => string()
%% }
-type snowflake_vpc_configuration() :: #{binary() => any()}.

%% Example:
%% database_source_vpc_configuration() :: #{
%%   <<"VpcEndpointServiceName">> => string()
%% }
-type database_source_vpc_configuration() :: #{binary() => any()}.

%% Example:
%% update_destination_output() :: #{

%% }
-type update_destination_output() :: #{binary() => any()}.

%% Example:
%% start_delivery_stream_encryption_output() :: #{

%% }
-type start_delivery_stream_encryption_output() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% direct_put_source_configuration() :: #{
%%   <<"ThroughputHintInMBs">> => integer()
%% }
-type direct_put_source_configuration() :: #{binary() => any()}.

%% Example:
%% extended_s3_destination_description() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CompressionFormat">> => list(any()),
%%   <<"CustomTimeZone">> => string(),
%%   <<"DataFormatConversionConfiguration">> => data_format_conversion_configuration(),
%%   <<"DynamicPartitioningConfiguration">> => dynamic_partitioning_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ErrorOutputPrefix">> => string(),
%%   <<"FileExtension">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupDescription">> => s3_destination_description(),
%%   <<"S3BackupMode">> => list(any())
%% }
-type extended_s3_destination_description() :: #{binary() => any()}.

%% Example:
%% list_tags_for_delivery_stream_output() :: #{
%%   <<"HasMoreTags">> => boolean(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_delivery_stream_output() :: #{binary() => any()}.

%% Example:
%% snowflake_destination_update() :: #{
%%   <<"AccountUrl">> => string(),
%%   <<"BufferingHints">> => snowflake_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ContentColumnName">> => string(),
%%   <<"DataLoadingOption">> => list(any()),
%%   <<"Database">> => string(),
%%   <<"KeyPassphrase">> => string(),
%%   <<"MetaDataColumnName">> => string(),
%%   <<"PrivateKey">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => snowflake_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Update">> => s3_destination_update(),
%%   <<"Schema">> => string(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration(),
%%   <<"SnowflakeRoleConfiguration">> => snowflake_role_configuration(),
%%   <<"Table">> => string(),
%%   <<"User">> => string()
%% }
-type snowflake_destination_update() :: #{binary() => any()}.

%% Example:
%% iceberg_destination_update() :: #{
%%   <<"AppendOnly">> => boolean(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CatalogConfiguration">> => catalog_configuration(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"DestinationTableConfigurationList">> => list(destination_table_configuration()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"SchemaEvolutionConfiguration">> => schema_evolution_configuration(),
%%   <<"TableCreationConfiguration">> => table_creation_configuration()
%% }
-type iceberg_destination_update() :: #{binary() => any()}.

%% Example:
%% start_delivery_stream_encryption_input() :: #{
%%   <<"DeliveryStreamEncryptionConfigurationInput">> => delivery_stream_encryption_configuration_input(),
%%   <<"DeliveryStreamName">> := string()
%% }
-type start_delivery_stream_encryption_input() :: #{binary() => any()}.

%% Example:
%% amazon_open_search_serverless_destination_description() :: #{
%%   <<"BufferingHints">> => amazon_open_search_serverless_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CollectionEndpoint">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => amazon_open_search_serverless_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"VpcConfigurationDescription">> => vpc_configuration_description()
%% }
-type amazon_open_search_serverless_destination_description() :: #{binary() => any()}.

%% Example:
%% s3_destination_update() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CompressionFormat">> => list(any()),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ErrorOutputPrefix">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type s3_destination_update() :: #{binary() => any()}.

%% Example:
%% create_delivery_stream_input() :: #{
%%   <<"AmazonOpenSearchServerlessDestinationConfiguration">> => amazon_open_search_serverless_destination_configuration(),
%%   <<"AmazonopensearchserviceDestinationConfiguration">> => amazonopensearchservice_destination_configuration(),
%%   <<"DatabaseSourceConfiguration">> => database_source_configuration(),
%%   <<"DeliveryStreamEncryptionConfigurationInput">> => delivery_stream_encryption_configuration_input(),
%%   <<"DeliveryStreamName">> := string(),
%%   <<"DeliveryStreamType">> => list(any()),
%%   <<"DirectPutSourceConfiguration">> => direct_put_source_configuration(),
%%   <<"ElasticsearchDestinationConfiguration">> => elasticsearch_destination_configuration(),
%%   <<"ExtendedS3DestinationConfiguration">> => extended_s3_destination_configuration(),
%%   <<"HttpEndpointDestinationConfiguration">> => http_endpoint_destination_configuration(),
%%   <<"IcebergDestinationConfiguration">> => iceberg_destination_configuration(),
%%   <<"KinesisStreamSourceConfiguration">> => kinesis_stream_source_configuration(),
%%   <<"MSKSourceConfiguration">> => m_s_k_source_configuration(),
%%   <<"RedshiftDestinationConfiguration">> => redshift_destination_configuration(),
%%   <<"S3DestinationConfiguration">> => s3_destination_configuration(),
%%   <<"SnowflakeDestinationConfiguration">> => snowflake_destination_configuration(),
%%   <<"SplunkDestinationConfiguration">> => splunk_destination_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_delivery_stream_input() :: #{binary() => any()}.

%% Example:
%% vpc_configuration_description() :: #{
%%   <<"RoleARN">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type vpc_configuration_description() :: #{binary() => any()}.

%% Example:
%% source_description() :: #{
%%   <<"DatabaseSourceDescription">> => database_source_description(),
%%   <<"DirectPutSourceDescription">> => direct_put_source_description(),
%%   <<"KinesisStreamSourceDescription">> => kinesis_stream_source_description(),
%%   <<"MSKSourceDescription">> => m_s_k_source_description()
%% }
-type source_description() :: #{binary() => any()}.

%% Example:
%% http_endpoint_configuration() :: #{
%%   <<"AccessKey">> => string(),
%%   <<"Name">> => string(),
%%   <<"Url">> => string()
%% }
-type http_endpoint_configuration() :: #{binary() => any()}.

%% Example:
%% http_endpoint_destination_description() :: #{
%%   <<"BufferingHints">> => http_endpoint_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"EndpointConfiguration">> => http_endpoint_description(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RequestConfiguration">> => http_endpoint_request_configuration(),
%%   <<"RetryOptions">> => http_endpoint_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type http_endpoint_destination_description() :: #{binary() => any()}.

%% Example:
%% put_record_batch_input() :: #{
%%   <<"DeliveryStreamName">> := string(),
%%   <<"Records">> := list(record())
%% }
-type put_record_batch_input() :: #{binary() => any()}.

%% Example:
%% m_s_k_source_description() :: #{
%%   <<"AuthenticationConfiguration">> => authentication_configuration(),
%%   <<"DeliveryStartTimestamp">> => non_neg_integer(),
%%   <<"MSKClusterARN">> => string(),
%%   <<"ReadFromTimestamp">> => non_neg_integer(),
%%   <<"TopicName">> => string()
%% }
-type m_s_k_source_description() :: #{binary() => any()}.

%% Example:
%% processor() :: #{
%%   <<"Parameters">> => list(processor_parameter()),
%%   <<"Type">> => list(any())
%% }
-type processor() :: #{binary() => any()}.

%% Example:
%% m_s_k_source_configuration() :: #{
%%   <<"AuthenticationConfiguration">> => authentication_configuration(),
%%   <<"MSKClusterARN">> => string(),
%%   <<"ReadFromTimestamp">> => non_neg_integer(),
%%   <<"TopicName">> => string()
%% }
-type m_s_k_source_configuration() :: #{binary() => any()}.

%% Example:
%% snowflake_role_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"SnowflakeRole">> => string()
%% }
-type snowflake_role_configuration() :: #{binary() => any()}.

%% Example:
%% list_delivery_streams_output() :: #{
%%   <<"DeliveryStreamNames">> => list(string()),
%%   <<"HasMoreDeliveryStreams">> => boolean()
%% }
-type list_delivery_streams_output() :: #{binary() => any()}.

%% Example:
%% delivery_stream_encryption_configuration_input() :: #{
%%   <<"KeyARN">> => string(),
%%   <<"KeyType">> => list(any())
%% }
-type delivery_stream_encryption_configuration_input() :: #{binary() => any()}.

%% Example:
%% elasticsearch_destination_configuration() :: #{
%%   <<"BufferingHints">> => elasticsearch_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterEndpoint">> => string(),
%%   <<"DocumentIdOptions">> => document_id_options(),
%%   <<"DomainARN">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexRotationPeriod">> => list(any()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => elasticsearch_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"TypeName">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type elasticsearch_destination_configuration() :: #{binary() => any()}.

%% Example:
%% splunk_buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type splunk_buffering_hints() :: #{binary() => any()}.

%% Example:
%% http_endpoint_destination_configuration() :: #{
%%   <<"BufferingHints">> => http_endpoint_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"EndpointConfiguration">> => http_endpoint_configuration(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RequestConfiguration">> => http_endpoint_request_configuration(),
%%   <<"RetryOptions">> => http_endpoint_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type http_endpoint_destination_configuration() :: #{binary() => any()}.

%% Example:
%% destination_description() :: #{
%%   <<"AmazonOpenSearchServerlessDestinationDescription">> => amazon_open_search_serverless_destination_description(),
%%   <<"AmazonopensearchserviceDestinationDescription">> => amazonopensearchservice_destination_description(),
%%   <<"DestinationId">> => string(),
%%   <<"ElasticsearchDestinationDescription">> => elasticsearch_destination_description(),
%%   <<"ExtendedS3DestinationDescription">> => extended_s3_destination_description(),
%%   <<"HttpEndpointDestinationDescription">> => http_endpoint_destination_description(),
%%   <<"IcebergDestinationDescription">> => iceberg_destination_description(),
%%   <<"RedshiftDestinationDescription">> => redshift_destination_description(),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"SnowflakeDestinationDescription">> => snowflake_destination_description(),
%%   <<"SplunkDestinationDescription">> => splunk_destination_description()
%% }
-type destination_description() :: #{binary() => any()}.

%% Example:
%% snowflake_destination_description() :: #{
%%   <<"AccountUrl">> => string(),
%%   <<"BufferingHints">> => snowflake_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ContentColumnName">> => string(),
%%   <<"DataLoadingOption">> => list(any()),
%%   <<"Database">> => string(),
%%   <<"MetaDataColumnName">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => snowflake_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"Schema">> => string(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration(),
%%   <<"SnowflakeRoleConfiguration">> => snowflake_role_configuration(),
%%   <<"SnowflakeVpcConfiguration">> => snowflake_vpc_configuration(),
%%   <<"Table">> => string(),
%%   <<"User">> => string()
%% }
-type snowflake_destination_description() :: #{binary() => any()}.

%% Example:
%% open_x_json_ser_de() :: #{
%%   <<"CaseInsensitive">> => boolean(),
%%   <<"ColumnToJsonKeyMappings">> => map(),
%%   <<"ConvertDotsInJsonKeysToUnderscores">> => boolean()
%% }
-type open_x_json_ser_de() :: #{binary() => any()}.

%% Example:
%% snowflake_buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type snowflake_buffering_hints() :: #{binary() => any()}.

%% Example:
%% update_destination_input() :: #{
%%   <<"AmazonOpenSearchServerlessDestinationUpdate">> => amazon_open_search_serverless_destination_update(),
%%   <<"AmazonopensearchserviceDestinationUpdate">> => amazonopensearchservice_destination_update(),
%%   <<"CurrentDeliveryStreamVersionId">> := string(),
%%   <<"DeliveryStreamName">> := string(),
%%   <<"DestinationId">> := string(),
%%   <<"ElasticsearchDestinationUpdate">> => elasticsearch_destination_update(),
%%   <<"ExtendedS3DestinationUpdate">> => extended_s3_destination_update(),
%%   <<"HttpEndpointDestinationUpdate">> => http_endpoint_destination_update(),
%%   <<"IcebergDestinationUpdate">> => iceberg_destination_update(),
%%   <<"RedshiftDestinationUpdate">> => redshift_destination_update(),
%%   <<"S3DestinationUpdate">> => s3_destination_update(),
%%   <<"SnowflakeDestinationUpdate">> => snowflake_destination_update(),
%%   <<"SplunkDestinationUpdate">> => splunk_destination_update()
%% }
-type update_destination_input() :: #{binary() => any()}.

%% Example:
%% elasticsearch_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type elasticsearch_retry_options() :: #{binary() => any()}.

%% Example:
%% direct_put_source_description() :: #{
%%   <<"ThroughputHintInMBs">> => integer()
%% }
-type direct_put_source_description() :: #{binary() => any()}.

%% Example:
%% database_column_list() :: #{
%%   <<"Exclude">> => list(string()),
%%   <<"Include">> => list(string())
%% }
-type database_column_list() :: #{binary() => any()}.

%% Example:
%% invalid_source_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_source_exception() :: #{binary() => any()}.

%% Example:
%% copy_command() :: #{
%%   <<"CopyOptions">> => string(),
%%   <<"DataTableColumns">> => string(),
%%   <<"DataTableName">> => string()
%% }
-type copy_command() :: #{binary() => any()}.

%% Example:
%% iceberg_destination_configuration() :: #{
%%   <<"AppendOnly">> => boolean(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CatalogConfiguration">> => catalog_configuration(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"DestinationTableConfigurationList">> => list(destination_table_configuration()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"SchemaEvolutionConfiguration">> => schema_evolution_configuration(),
%%   <<"TableCreationConfiguration">> => table_creation_configuration()
%% }
-type iceberg_destination_configuration() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% amazonopensearchservice_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type amazonopensearchservice_retry_options() :: #{binary() => any()}.

%% Example:
%% destination_table_configuration() :: #{
%%   <<"DestinationDatabaseName">> => string(),
%%   <<"DestinationTableName">> => string(),
%%   <<"PartitionSpec">> => partition_spec(),
%%   <<"S3ErrorOutputPrefix">> => string(),
%%   <<"UniqueKeys">> => list(string())
%% }
-type destination_table_configuration() :: #{binary() => any()}.

%% Example:
%% document_id_options() :: #{
%%   <<"DefaultDocumentIdFormat">> => list(any())
%% }
-type document_id_options() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% list_tags_for_delivery_stream_input() :: #{
%%   <<"DeliveryStreamName">> := string(),
%%   <<"ExclusiveStartTagKey">> => string(),
%%   <<"Limit">> => integer()
%% }
-type list_tags_for_delivery_stream_input() :: #{binary() => any()}.

%% Example:
%% database_snapshot_info() :: #{
%%   <<"FailureDescription">> => failure_description(),
%%   <<"Id">> => string(),
%%   <<"RequestTimestamp">> => non_neg_integer(),
%%   <<"RequestedBy">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Table">> => string()
%% }
-type database_snapshot_info() :: #{binary() => any()}.

%% Example:
%% snowflake_destination_configuration() :: #{
%%   <<"AccountUrl">> => string(),
%%   <<"BufferingHints">> => snowflake_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ContentColumnName">> => string(),
%%   <<"DataLoadingOption">> => list(any()),
%%   <<"Database">> => string(),
%%   <<"KeyPassphrase">> => string(),
%%   <<"MetaDataColumnName">> => string(),
%%   <<"PrivateKey">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => snowflake_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"Schema">> => string(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration(),
%%   <<"SnowflakeRoleConfiguration">> => snowflake_role_configuration(),
%%   <<"SnowflakeVpcConfiguration">> => snowflake_vpc_configuration(),
%%   <<"Table">> => string(),
%%   <<"User">> => string()
%% }
-type snowflake_destination_configuration() :: #{binary() => any()}.

%% Example:
%% amazon_open_search_serverless_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type amazon_open_search_serverless_retry_options() :: #{binary() => any()}.

%% Example:
%% s3_destination_configuration() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CompressionFormat">> => list(any()),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ErrorOutputPrefix">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type s3_destination_configuration() :: #{binary() => any()}.

%% Example:
%% splunk_destination_update() :: #{
%%   <<"BufferingHints">> => splunk_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"HECAcknowledgmentTimeoutInSeconds">> => integer(),
%%   <<"HECEndpoint">> => string(),
%%   <<"HECEndpointType">> => list(any()),
%%   <<"HECToken">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => splunk_retry_options(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Update">> => s3_destination_update(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type splunk_destination_update() :: #{binary() => any()}.

%% Example:
%% delete_delivery_stream_input() :: #{
%%   <<"AllowForceDelete">> => boolean(),
%%   <<"DeliveryStreamName">> := string()
%% }
-type delete_delivery_stream_input() :: #{binary() => any()}.

%% Example:
%% delivery_stream_encryption_configuration() :: #{
%%   <<"FailureDescription">> => failure_description(),
%%   <<"KeyARN">> => string(),
%%   <<"KeyType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type delivery_stream_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% amazon_open_search_serverless_destination_configuration() :: #{
%%   <<"BufferingHints">> => amazon_open_search_serverless_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CollectionEndpoint">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => amazon_open_search_serverless_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type amazon_open_search_serverless_destination_configuration() :: #{binary() => any()}.

%% Example:
%% tag_delivery_stream_input() :: #{
%%   <<"DeliveryStreamName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_delivery_stream_input() :: #{binary() => any()}.

%% Example:
%% put_record_batch_response_entry() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"RecordId">> => string()
%% }
-type put_record_batch_response_entry() :: #{binary() => any()}.

%% Example:
%% processing_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Processors">> => list(processor())
%% }
-type processing_configuration() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% tag_delivery_stream_output() :: #{

%% }
-type tag_delivery_stream_output() :: #{binary() => any()}.

%% Example:
%% redshift_destination_update() :: #{
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterJDBCURL">> => string(),
%%   <<"CopyCommand">> => copy_command(),
%%   <<"Password">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => redshift_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3BackupUpdate">> => s3_destination_update(),
%%   <<"S3Update">> => s3_destination_update(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration(),
%%   <<"Username">> => string()
%% }
-type redshift_destination_update() :: #{binary() => any()}.

%% Example:
%% buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type buffering_hints() :: #{binary() => any()}.

%% Example:
%% hive_json_ser_de() :: #{
%%   <<"TimestampFormats">> => list(string())
%% }
-type hive_json_ser_de() :: #{binary() => any()}.

%% Example:
%% put_record_batch_output() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"FailedPutCount">> => integer(),
%%   <<"RequestResponses">> => list(put_record_batch_response_entry())
%% }
-type put_record_batch_output() :: #{binary() => any()}.

%% Example:
%% kinesis_stream_source_description() :: #{
%%   <<"DeliveryStartTimestamp">> => non_neg_integer(),
%%   <<"KinesisStreamARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_stream_source_description() :: #{binary() => any()}.

%% Example:
%% database_source_description() :: #{
%%   <<"Columns">> => database_column_list(),
%%   <<"DatabaseSourceAuthenticationConfiguration">> => database_source_authentication_configuration(),
%%   <<"DatabaseSourceVPCConfiguration">> => database_source_vpc_configuration(),
%%   <<"Databases">> => database_list(),
%%   <<"Endpoint">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SSLMode">> => list(any()),
%%   <<"SnapshotInfo">> => list(database_snapshot_info()),
%%   <<"SnapshotWatermarkTable">> => string(),
%%   <<"SurrogateKeys">> => list(string()),
%%   <<"Tables">> => database_table_list(),
%%   <<"Type">> => list(any())
%% }
-type database_source_description() :: #{binary() => any()}.

%% Example:
%% http_endpoint_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type http_endpoint_retry_options() :: #{binary() => any()}.

%% Example:
%% elasticsearch_destination_update() :: #{
%%   <<"BufferingHints">> => elasticsearch_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterEndpoint">> => string(),
%%   <<"DocumentIdOptions">> => document_id_options(),
%%   <<"DomainARN">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexRotationPeriod">> => list(any()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => elasticsearch_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3Update">> => s3_destination_update(),
%%   <<"TypeName">> => string()
%% }
-type elasticsearch_destination_update() :: #{binary() => any()}.

%% Example:
%% splunk_destination_configuration() :: #{
%%   <<"BufferingHints">> => splunk_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"HECAcknowledgmentTimeoutInSeconds">> => integer(),
%%   <<"HECEndpoint">> => string(),
%%   <<"HECEndpointType">> => list(any()),
%%   <<"HECToken">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => splunk_retry_options(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type splunk_destination_configuration() :: #{binary() => any()}.

%% Example:
%% amazonopensearchservice_destination_configuration() :: #{
%%   <<"BufferingHints">> => amazonopensearchservice_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterEndpoint">> => string(),
%%   <<"DocumentIdOptions">> => document_id_options(),
%%   <<"DomainARN">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexRotationPeriod">> => list(any()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => amazonopensearchservice_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"TypeName">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type amazonopensearchservice_destination_configuration() :: #{binary() => any()}.

%% Example:
%% partition_spec() :: #{
%%   <<"Identity">> => list(partition_field())
%% }
-type partition_spec() :: #{binary() => any()}.

%% Example:
%% stop_delivery_stream_encryption_input() :: #{
%%   <<"DeliveryStreamName">> := string()
%% }
-type stop_delivery_stream_encryption_input() :: #{binary() => any()}.

%% Example:
%% describe_delivery_stream_input() :: #{
%%   <<"DeliveryStreamName">> := string(),
%%   <<"ExclusiveStartDestinationId">> => string(),
%%   <<"Limit">> => integer()
%% }
-type describe_delivery_stream_input() :: #{binary() => any()}.

%% Example:
%% elasticsearch_destination_description() :: #{
%%   <<"BufferingHints">> => elasticsearch_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterEndpoint">> => string(),
%%   <<"DocumentIdOptions">> => document_id_options(),
%%   <<"DomainARN">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexRotationPeriod">> => list(any()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => elasticsearch_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"TypeName">> => string(),
%%   <<"VpcConfigurationDescription">> => vpc_configuration_description()
%% }
-type elasticsearch_destination_description() :: #{binary() => any()}.

%% Example:
%% extended_s3_destination_configuration() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CompressionFormat">> => list(any()),
%%   <<"CustomTimeZone">> => string(),
%%   <<"DataFormatConversionConfiguration">> => data_format_conversion_configuration(),
%%   <<"DynamicPartitioningConfiguration">> => dynamic_partitioning_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ErrorOutputPrefix">> => string(),
%%   <<"FileExtension">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupConfiguration">> => s3_destination_configuration(),
%%   <<"S3BackupMode">> => list(any())
%% }
-type extended_s3_destination_configuration() :: #{binary() => any()}.

%% Example:
%% put_record_output() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"RecordId">> => string()
%% }
-type put_record_output() :: #{binary() => any()}.

%% Example:
%% iceberg_destination_description() :: #{
%%   <<"AppendOnly">> => boolean(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CatalogConfiguration">> => catalog_configuration(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"DestinationTableConfigurationList">> => list(destination_table_configuration()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"SchemaEvolutionConfiguration">> => schema_evolution_configuration(),
%%   <<"TableCreationConfiguration">> => table_creation_configuration()
%% }
-type iceberg_destination_description() :: #{binary() => any()}.

%% Example:
%% delivery_stream_description() :: #{
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"DeliveryStreamARN">> => string(),
%%   <<"DeliveryStreamEncryptionConfiguration">> => delivery_stream_encryption_configuration(),
%%   <<"DeliveryStreamName">> => string(),
%%   <<"DeliveryStreamStatus">> => list(any()),
%%   <<"DeliveryStreamType">> => list(any()),
%%   <<"Destinations">> => list(destination_description()),
%%   <<"FailureDescription">> => failure_description(),
%%   <<"HasMoreDestinations">> => boolean(),
%%   <<"LastUpdateTimestamp">> => non_neg_integer(),
%%   <<"Source">> => source_description(),
%%   <<"VersionId">> => string()
%% }
-type delivery_stream_description() :: #{binary() => any()}.

%% Example:
%% amazonopensearchservice_destination_description() :: #{
%%   <<"BufferingHints">> => amazonopensearchservice_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterEndpoint">> => string(),
%%   <<"DocumentIdOptions">> => document_id_options(),
%%   <<"DomainARN">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexRotationPeriod">> => list(any()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => amazonopensearchservice_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"TypeName">> => string(),
%%   <<"VpcConfigurationDescription">> => vpc_configuration_description()
%% }
-type amazonopensearchservice_destination_description() :: #{binary() => any()}.

%% Example:
%% output_format_configuration() :: #{
%%   <<"Serializer">> => serializer()
%% }
-type output_format_configuration() :: #{binary() => any()}.

%% Example:
%% snowflake_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type snowflake_retry_options() :: #{binary() => any()}.

%% Example:
%% http_endpoint_description() :: #{
%%   <<"Name">> => string(),
%%   <<"Url">> => string()
%% }
-type http_endpoint_description() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_options() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"LogGroupName">> => string(),
%%   <<"LogStreamName">> => string()
%% }
-type cloud_watch_logging_options() :: #{binary() => any()}.

%% Example:
%% kms_encryption_config() :: #{
%%   <<"AWSKMSKeyARN">> => string()
%% }
-type kms_encryption_config() :: #{binary() => any()}.

%% Example:
%% delete_delivery_stream_output() :: #{

%% }
-type delete_delivery_stream_output() :: #{binary() => any()}.

%% Example:
%% orc_ser_de() :: #{
%%   <<"BlockSizeBytes">> => integer(),
%%   <<"BloomFilterColumns">> => list(string()),
%%   <<"BloomFilterFalsePositiveProbability">> => float(),
%%   <<"Compression">> => list(any()),
%%   <<"DictionaryKeyThreshold">> => float(),
%%   <<"EnablePadding">> => boolean(),
%%   <<"FormatVersion">> => list(any()),
%%   <<"PaddingTolerance">> => float(),
%%   <<"RowIndexStride">> => integer(),
%%   <<"StripeSizeBytes">> => integer()
%% }
-type orc_ser_de() :: #{binary() => any()}.

%% Example:
%% secrets_manager_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"RoleARN">> => string(),
%%   <<"SecretARN">> => string()
%% }
-type secrets_manager_configuration() :: #{binary() => any()}.

%% Example:
%% stop_delivery_stream_encryption_output() :: #{

%% }
-type stop_delivery_stream_encryption_output() :: #{binary() => any()}.

%% Example:
%% amazonopensearchservice_destination_update() :: #{
%%   <<"BufferingHints">> => amazonopensearchservice_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterEndpoint">> => string(),
%%   <<"DocumentIdOptions">> => document_id_options(),
%%   <<"DomainARN">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexRotationPeriod">> => list(any()),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => amazonopensearchservice_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3Update">> => s3_destination_update(),
%%   <<"TypeName">> => string()
%% }
-type amazonopensearchservice_destination_update() :: #{binary() => any()}.

%% Example:
%% catalog_configuration() :: #{
%%   <<"CatalogARN">> => string(),
%%   <<"WarehouseLocation">> => string()
%% }
-type catalog_configuration() :: #{binary() => any()}.

%% Example:
%% retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type retry_options() :: #{binary() => any()}.

%% Example:
%% invalid_argument_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% parquet_ser_de() :: #{
%%   <<"BlockSizeBytes">> => integer(),
%%   <<"Compression">> => list(any()),
%%   <<"EnableDictionaryCompression">> => boolean(),
%%   <<"MaxPaddingBytes">> => integer(),
%%   <<"PageSizeBytes">> => integer(),
%%   <<"WriterVersion">> => list(any())
%% }
-type parquet_ser_de() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% http_endpoint_common_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValue">> => string()
%% }
-type http_endpoint_common_attribute() :: #{binary() => any()}.

%% Example:
%% redshift_destination_description() :: #{
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterJDBCURL">> => string(),
%%   <<"CopyCommand">> => copy_command(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => redshift_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupDescription">> => s3_destination_description(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration(),
%%   <<"Username">> => string()
%% }
-type redshift_destination_description() :: #{binary() => any()}.

%% Example:
%% redshift_destination_configuration() :: #{
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"ClusterJDBCURL">> => string(),
%%   <<"CopyCommand">> => copy_command(),
%%   <<"Password">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => redshift_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupConfiguration">> => s3_destination_configuration(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Configuration">> => s3_destination_configuration(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration(),
%%   <<"Username">> => string()
%% }
-type redshift_destination_configuration() :: #{binary() => any()}.

%% Example:
%% input_format_configuration() :: #{
%%   <<"Deserializer">> => deserializer()
%% }
-type input_format_configuration() :: #{binary() => any()}.

%% Example:
%% list_delivery_streams_input() :: #{
%%   <<"DeliveryStreamType">> => list(any()),
%%   <<"ExclusiveStartDeliveryStreamName">> => string(),
%%   <<"Limit">> => integer()
%% }
-type list_delivery_streams_input() :: #{binary() => any()}.

%% Example:
%% schema_configuration() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Region">> => string(),
%%   <<"RoleARN">> => string(),
%%   <<"TableName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type schema_configuration() :: #{binary() => any()}.

%% Example:
%% data_format_conversion_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"InputFormatConfiguration">> => input_format_configuration(),
%%   <<"OutputFormatConfiguration">> => output_format_configuration(),
%%   <<"SchemaConfiguration">> => schema_configuration()
%% }
-type data_format_conversion_configuration() :: #{binary() => any()}.

%% Example:
%% database_list() :: #{
%%   <<"Exclude">> => list(string()),
%%   <<"Include">> => list(string())
%% }
-type database_list() :: #{binary() => any()}.

%% Example:
%% untag_delivery_stream_input() :: #{
%%   <<"DeliveryStreamName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_delivery_stream_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% amazon_open_search_serverless_destination_update() :: #{
%%   <<"BufferingHints">> => amazon_open_search_serverless_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CollectionEndpoint">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => amazon_open_search_serverless_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3Update">> => s3_destination_update()
%% }
-type amazon_open_search_serverless_destination_update() :: #{binary() => any()}.

%% Example:
%% s3_destination_description() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CompressionFormat">> => list(any()),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ErrorOutputPrefix">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type s3_destination_description() :: #{binary() => any()}.

%% Example:
%% untag_delivery_stream_output() :: #{

%% }
-type untag_delivery_stream_output() :: #{binary() => any()}.

%% Example:
%% create_delivery_stream_output() :: #{
%%   <<"DeliveryStreamARN">> => string()
%% }
-type create_delivery_stream_output() :: #{binary() => any()}.

%% Example:
%% kinesis_stream_source_configuration() :: #{
%%   <<"KinesisStreamARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_stream_source_configuration() :: #{binary() => any()}.

%% Example:
%% authentication_configuration() :: #{
%%   <<"Connectivity">> => list(any()),
%%   <<"RoleARN">> => string()
%% }
-type authentication_configuration() :: #{binary() => any()}.

%% Example:
%% elasticsearch_buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type elasticsearch_buffering_hints() :: #{binary() => any()}.

%% Example:
%% extended_s3_destination_update() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"BufferingHints">> => buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"CompressionFormat">> => list(any()),
%%   <<"CustomTimeZone">> => string(),
%%   <<"DataFormatConversionConfiguration">> => data_format_conversion_configuration(),
%%   <<"DynamicPartitioningConfiguration">> => dynamic_partitioning_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ErrorOutputPrefix">> => string(),
%%   <<"FileExtension">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3BackupUpdate">> => s3_destination_update()
%% }
-type extended_s3_destination_update() :: #{binary() => any()}.

%% Example:
%% put_record_input() :: #{
%%   <<"DeliveryStreamName">> := string(),
%%   <<"Record">> := record()
%% }
-type put_record_input() :: #{binary() => any()}.

%% Example:
%% database_table_list() :: #{
%%   <<"Exclude">> => list(string()),
%%   <<"Include">> => list(string())
%% }
-type database_table_list() :: #{binary() => any()}.

%% Example:
%% deserializer() :: #{
%%   <<"HiveJsonSerDe">> => hive_json_ser_de(),
%%   <<"OpenXJsonSerDe">> => open_x_json_ser_de()
%% }
-type deserializer() :: #{binary() => any()}.

%% Example:
%% amazonopensearchservice_buffering_hints() :: #{
%%   <<"IntervalInSeconds">> => integer(),
%%   <<"SizeInMBs">> => integer()
%% }
-type amazonopensearchservice_buffering_hints() :: #{binary() => any()}.

%% Example:
%% partition_field() :: #{
%%   <<"SourceName">> => string()
%% }
-type partition_field() :: #{binary() => any()}.

%% Example:
%% splunk_retry_options() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type splunk_retry_options() :: #{binary() => any()}.

%% Example:
%% dynamic_partitioning_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"RetryOptions">> => retry_options()
%% }
-type dynamic_partitioning_configuration() :: #{binary() => any()}.

%% Example:
%% processor_parameter() :: #{
%%   <<"ParameterName">> => list(any()),
%%   <<"ParameterValue">> => string()
%% }
-type processor_parameter() :: #{binary() => any()}.

%% Example:
%% schema_evolution_configuration() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type schema_evolution_configuration() :: #{binary() => any()}.

%% Example:
%% describe_delivery_stream_output() :: #{
%%   <<"DeliveryStreamDescription">> => delivery_stream_description()
%% }
-type describe_delivery_stream_output() :: #{binary() => any()}.

%% Example:
%% splunk_destination_description() :: #{
%%   <<"BufferingHints">> => splunk_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"HECAcknowledgmentTimeoutInSeconds">> => integer(),
%%   <<"HECEndpoint">> => string(),
%%   <<"HECEndpointType">> => list(any()),
%%   <<"HECToken">> => string(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RetryOptions">> => splunk_retry_options(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3DestinationDescription">> => s3_destination_description(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type splunk_destination_description() :: #{binary() => any()}.

%% Example:
%% serializer() :: #{
%%   <<"OrcSerDe">> => orc_ser_de(),
%%   <<"ParquetSerDe">> => parquet_ser_de()
%% }
-type serializer() :: #{binary() => any()}.

%% Example:
%% http_endpoint_destination_update() :: #{
%%   <<"BufferingHints">> => http_endpoint_buffering_hints(),
%%   <<"CloudWatchLoggingOptions">> => cloud_watch_logging_options(),
%%   <<"EndpointConfiguration">> => http_endpoint_configuration(),
%%   <<"ProcessingConfiguration">> => processing_configuration(),
%%   <<"RequestConfiguration">> => http_endpoint_request_configuration(),
%%   <<"RetryOptions">> => http_endpoint_retry_options(),
%%   <<"RoleARN">> => string(),
%%   <<"S3BackupMode">> => list(any()),
%%   <<"S3Update">> => s3_destination_update(),
%%   <<"SecretsManagerConfiguration">> => secrets_manager_configuration()
%% }
-type http_endpoint_destination_update() :: #{binary() => any()}.

%% Example:
%% table_creation_configuration() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type table_creation_configuration() :: #{binary() => any()}.

-type create_delivery_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_in_use_exception() | 
    invalid_kms_resource_exception().

-type delete_delivery_stream_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception().

-type describe_delivery_stream_errors() ::
    resource_not_found_exception().

-type list_tags_for_delivery_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception().

-type put_record_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_source_exception() | 
    invalid_kms_resource_exception().

-type put_record_batch_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_source_exception() | 
    invalid_kms_resource_exception().

-type start_delivery_stream_encryption_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    invalid_kms_resource_exception().

-type stop_delivery_stream_encryption_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type tag_delivery_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type untag_delivery_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_destination_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Firehose stream.
%%
%% By default, you can create up to 5,000 Firehose streams per Amazon Web
%% Services
%% Region.
%%
%% This is an asynchronous operation that immediately returns. The initial
%% status of the
%% Firehose stream is `CREATING'. After the Firehose stream is created,
%% its status
%% is `ACTIVE' and it now accepts data. If the Firehose stream creation
%% fails, the
%% status transitions to `CREATING_FAILED'. Attempts to send data to a
%% delivery
%% stream that is not in the `ACTIVE' state cause an exception. To check
%% the state
%% of a Firehose stream, use `DescribeDeliveryStream'.
%%
%% If the status of a Firehose stream is `CREATING_FAILED', this status
%% doesn't change, and you can't invoke `CreateDeliveryStream'
%% again on it.
%% However, you can invoke the `DeleteDeliveryStream' operation to delete
%% it.
%%
%% A Firehose stream can be configured to receive records directly
%% from providers using `PutRecord' or `PutRecordBatch', or it
%% can be configured to use an existing Kinesis stream as its source. To
%% specify a Kinesis
%% data stream as input, set the `DeliveryStreamType' parameter to
%% `KinesisStreamAsSource', and provide the Kinesis stream Amazon
%% Resource Name
%% (ARN) and role ARN in the `KinesisStreamSourceConfiguration'
%% parameter.
%%
%% To create a Firehose stream with server-side encryption (SSE) enabled,
%% include `DeliveryStreamEncryptionConfigurationInput' in your request.
%% This is
%% optional. You can also invoke `StartDeliveryStreamEncryption' to turn
%% on
%% SSE for an existing Firehose stream that doesn't have SSE enabled.
%%
%% A Firehose stream is configured with a single destination, such as Amazon
%% Simple
%% Storage Service (Amazon S3), Amazon Redshift, Amazon OpenSearch Service,
%% Amazon OpenSearch
%% Serverless, Splunk, and any custom HTTP endpoint or HTTP endpoints owned
%% by or supported by
%% third-party service providers, including Datadog, Dynatrace, LogicMonitor,
%% MongoDB, New
%% Relic, and Sumo Logic. You must specify only one of the following
%% destination configuration
%% parameters: `ExtendedS3DestinationConfiguration',
%% `S3DestinationConfiguration',
%% `ElasticsearchDestinationConfiguration',
%% `RedshiftDestinationConfiguration', or
%% `SplunkDestinationConfiguration'.
%%
%% When you specify `S3DestinationConfiguration', you can also provide
%% the
%% following optional values: BufferingHints, `EncryptionConfiguration',
%% and
%% `CompressionFormat'. By default, if no `BufferingHints' value is
%% provided, Firehose buffers data up to 5 MB or for 5 minutes, whichever
%% condition is satisfied first. `BufferingHints' is a hint, so there are
%% some
%% cases where the service cannot adhere to these conditions strictly. For
%% example, record
%% boundaries might be such that the size is a little over or under the
%% configured buffering
%% size. By default, no encryption is performed. We strongly recommend that
%% you enable
%% encryption to ensure secure data storage in Amazon S3.
%%
%% A few notes about Amazon Redshift as a destination:
%%
%% An Amazon Redshift destination requires an S3 bucket as intermediate
%% location.
%% Firehose first delivers data to Amazon S3 and then uses
%% `COPY' syntax to load data into an Amazon Redshift table. This is
%% specified in the `RedshiftDestinationConfiguration.S3Configuration'
%% parameter.
%%
%% The compression formats `SNAPPY' or `ZIP' cannot be
%% specified in `RedshiftDestinationConfiguration.S3Configuration'
%% because
%% the Amazon Redshift `COPY' operation that reads from the S3 bucket
%% doesn't
%% support these compression formats.
%%
%% We strongly recommend that you use the user name and password you provide
%% exclusively with Firehose, and that the permissions for the account are
%% restricted for Amazon Redshift `INSERT' permissions.
%%
%% Firehose assumes the IAM role that is configured as part of the
%% destination. The role should allow the Firehose principal to assume the
%% role,
%% and the role should have permissions that allow the service to deliver the
%% data. For more
%% information, see Grant Firehose Access to an Amazon S3 Destination:
%% https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
%% in the Amazon Firehose Developer Guide.
-spec create_delivery_stream(aws_client:aws_client(), create_delivery_stream_input()) ->
    {ok, create_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, create_delivery_stream_errors(), tuple()}.
create_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_delivery_stream(Client, Input, []).

-spec create_delivery_stream(aws_client:aws_client(), create_delivery_stream_input(), proplists:proplist()) ->
    {ok, create_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, create_delivery_stream_errors(), tuple()}.
create_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeliveryStream">>, Input, Options).

%% @doc Deletes a Firehose stream and its data.
%%
%% You can delete a Firehose stream only if it is in one of the following
%% states:
%% `ACTIVE', `DELETING', `CREATING_FAILED', or
%% `DELETING_FAILED'. You can't delete a Firehose stream that is in
%% the
%% `CREATING' state. To check the state of a Firehose stream, use
%% `DescribeDeliveryStream'.
%%
%% DeleteDeliveryStream is an asynchronous API. When an API request to
%% DeleteDeliveryStream succeeds, the Firehose stream is marked for deletion,
%% and it goes into the
%% `DELETING' state.While the Firehose stream is in the `DELETING'
%% state, the service might
%% continue to accept records, but it doesn't make any guarantees with
%% respect to delivering
%% the data. Therefore, as a best practice, first stop any applications that
%% are sending
%% records before you delete a Firehose stream.
%%
%% Removal of a Firehose stream that is in the `DELETING' state is a low
%% priority operation for the service. A stream may remain in the
%% `DELETING' state for several minutes. Therefore, as a best practice,
%% applications should not wait for streams in the `DELETING' state
%% to be removed.
-spec delete_delivery_stream(aws_client:aws_client(), delete_delivery_stream_input()) ->
    {ok, delete_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, delete_delivery_stream_errors(), tuple()}.
delete_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_stream(Client, Input, []).

-spec delete_delivery_stream(aws_client:aws_client(), delete_delivery_stream_input(), proplists:proplist()) ->
    {ok, delete_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, delete_delivery_stream_errors(), tuple()}.
delete_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryStream">>, Input, Options).

%% @doc Describes the specified Firehose stream and its status.
%%
%% For example, after your
%% Firehose stream is created, call `DescribeDeliveryStream' to see
%% whether the
%% Firehose stream is `ACTIVE' and therefore ready for data to be sent to
%% it.
%%
%% If the status of a Firehose stream is `CREATING_FAILED', this status
%% doesn't change, and you can't invoke `CreateDeliveryStream'
%% again on it.
%% However, you can invoke the `DeleteDeliveryStream' operation to delete
%% it.
%% If the status is `DELETING_FAILED', you can force deletion by invoking
%% `DeleteDeliveryStream' again but with
%% `DeleteDeliveryStreamInput$AllowForceDelete' set to true.
-spec describe_delivery_stream(aws_client:aws_client(), describe_delivery_stream_input()) ->
    {ok, describe_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_delivery_stream_errors(), tuple()}.
describe_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_stream(Client, Input, []).

-spec describe_delivery_stream(aws_client:aws_client(), describe_delivery_stream_input(), proplists:proplist()) ->
    {ok, describe_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_delivery_stream_errors(), tuple()}.
describe_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryStream">>, Input, Options).

%% @doc Lists your Firehose streams in alphabetical order of their names.
%%
%% The number of Firehose streams might be too large to return using a single
%% call to
%% `ListDeliveryStreams'. You can limit the number of Firehose streams
%% returned,
%% using the `Limit' parameter. To determine whether there are more
%% delivery
%% streams to list, check the value of `HasMoreDeliveryStreams' in the
%% output. If
%% there are more Firehose streams to list, you can request them by calling
%% this operation
%% again and setting the `ExclusiveStartDeliveryStreamName' parameter to
%% the name
%% of the last Firehose stream returned in the last call.
-spec list_delivery_streams(aws_client:aws_client(), list_delivery_streams_input()) ->
    {ok, list_delivery_streams_output(), tuple()} |
    {error, any()}.
list_delivery_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delivery_streams(Client, Input, []).

-spec list_delivery_streams(aws_client:aws_client(), list_delivery_streams_input(), proplists:proplist()) ->
    {ok, list_delivery_streams_output(), tuple()} |
    {error, any()}.
list_delivery_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeliveryStreams">>, Input, Options).

%% @doc Lists the tags for the specified Firehose stream.
%%
%% This operation has a limit of five
%% transactions per second per account.
-spec list_tags_for_delivery_stream(aws_client:aws_client(), list_tags_for_delivery_stream_input()) ->
    {ok, list_tags_for_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_delivery_stream_errors(), tuple()}.
list_tags_for_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_delivery_stream(Client, Input, []).

-spec list_tags_for_delivery_stream(aws_client:aws_client(), list_tags_for_delivery_stream_input(), proplists:proplist()) ->
    {ok, list_tags_for_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_delivery_stream_errors(), tuple()}.
list_tags_for_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForDeliveryStream">>, Input, Options).

%% @doc Writes a single data record into an Firehose stream.
%%
%% To
%% write multiple data records into a Firehose stream, use
%% `PutRecordBatch'.
%% Applications using these operations are referred to as producers.
%%
%% By default, each Firehose stream can take in up to 2,000 transactions per
%% second,
%% 5,000 records per second, or 5 MB per second. If you use `PutRecord'
%% and
%% `PutRecordBatch', the limits are an aggregate across these two
%% operations for each Firehose stream. For more information about limits and
%% how to request
%% an increase, see Amazon
%% Firehose Limits:
%% https://docs.aws.amazon.com/firehose/latest/dev/limits.html.
%%
%% Firehose accumulates and publishes a particular metric for a customer
%% account in one minute intervals. It is possible that the bursts of
%% incoming bytes/records ingested to a Firehose stream last only for a few
%% seconds. Due to this, the actual spikes in the traffic might not be fully
%% visible in the customer's 1 minute CloudWatch metrics.
%%
%% You must specify the name of the Firehose stream and the data record when
%% using `PutRecord'. The data record consists of a data blob that can be
%% up to 1,000
%% KiB in size, and any kind of data. For example, it can be a segment from a
%% log file,
%% geographic location data, website clickstream data, and so on.
%%
%% For multi record de-aggregation, you can not put more than 500 records
%% even if the
%% data blob length is less than 1000 KiB. If you include more than 500
%% records, the request
%% succeeds but the record de-aggregation doesn't work as expected and
%% transformation lambda
%% is invoked with the complete base64 encoded data blob instead of
%% de-aggregated base64
%% decoded records.
%%
%% Firehose buffers records before delivering them to the destination. To
%% disambiguate the data blobs at the destination, a common solution is to
%% use delimiters in
%% the data, such as a newline (`\n') or some other character unique
%% within the
%% data. This allows the consumer application to parse individual data items
%% when reading the
%% data from the destination.
%%
%% The `PutRecord' operation returns a `RecordId', which is a
%% unique string assigned to each record. Producer applications can use this
%% ID for purposes
%% such as auditability and investigation.
%%
%% If the `PutRecord' operation throws a
%% `ServiceUnavailableException', the API is automatically reinvoked
%% (retried) 3
%% times. If the exception persists, it is possible that the throughput
%% limits have been
%% exceeded for the Firehose stream.
%%
%% Re-invoking the Put API operations (for example, PutRecord and
%% PutRecordBatch) can
%% result in data duplicates. For larger data assets, allow for a longer time
%% out before
%% retrying Put API operations.
%%
%% Data records sent to Firehose are stored for 24 hours from the time they
%% are added to a Firehose stream as it tries to send the records to the
%% destination. If the
%% destination is unreachable for more than 24 hours, the data is no longer
%% available.
%%
%% Don't concatenate two or more base64 strings to form the data fields
%% of your records.
%% Instead, concatenate the raw data, then perform base64 encoding.
-spec put_record(aws_client:aws_client(), put_record_input()) ->
    {ok, put_record_output(), tuple()} |
    {error, any()} |
    {error, put_record_errors(), tuple()}.
put_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_record(Client, Input, []).

-spec put_record(aws_client:aws_client(), put_record_input(), proplists:proplist()) ->
    {ok, put_record_output(), tuple()} |
    {error, any()} |
    {error, put_record_errors(), tuple()}.
put_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecord">>, Input, Options).

%% @doc Writes multiple data records into a Firehose stream in a single call,
%% which can
%% achieve higher throughput per producer than when writing single records.
%%
%% To write single
%% data records into a Firehose stream, use `PutRecord'. Applications
%% using
%% these operations are referred to as producers.
%%
%% Firehose accumulates and publishes a particular metric for a customer
%% account in one minute intervals. It is possible that the bursts of
%% incoming bytes/records ingested to a Firehose stream last only for a few
%% seconds. Due to this, the actual spikes in the traffic might not be fully
%% visible in the customer's 1 minute CloudWatch metrics.
%%
%% For information about service quota, see Amazon Firehose
%% Quota: https://docs.aws.amazon.com/firehose/latest/dev/limits.html.
%%
%% Each `PutRecordBatch' request supports up to 500 records. Each record
%% in the request can be as large as 1,000 KB (before base64 encoding), up to
%% a limit of 4 MB
%% for the entire request. These limits cannot be changed.
%%
%% You must specify the name of the Firehose stream and the data record when
%% using `PutRecord'. The data record consists of a data blob that can be
%% up to 1,000
%% KB in size, and any kind of data. For example, it could be a segment from
%% a log file,
%% geographic location data, website clickstream data, and so on.
%%
%% For multi record de-aggregation, you can not put more than 500 records
%% even if the
%% data blob length is less than 1000 KiB. If you include more than 500
%% records, the request
%% succeeds but the record de-aggregation doesn't work as expected and
%% transformation lambda
%% is invoked with the complete base64 encoded data blob instead of
%% de-aggregated base64
%% decoded records.
%%
%% Firehose buffers records before delivering them to the destination. To
%% disambiguate the data blobs at the destination, a common solution is to
%% use delimiters in
%% the data, such as a newline (`\n') or some other character unique
%% within the
%% data. This allows the consumer application to parse individual data items
%% when reading the
%% data from the destination.
%%
%% The `PutRecordBatch' response includes a count of failed records,
%% `FailedPutCount', and an array of responses, `RequestResponses'.
%% Even if the `PutRecordBatch' call succeeds, the value of
%% `FailedPutCount' may be greater than 0, indicating that there are
%% records for
%% which the operation didn't succeed. Each entry in the
%% `RequestResponses' array
%% provides additional information about the processed record. It directly
%% correlates with a
%% record in the request array using the same ordering, from the top to the
%% bottom. The
%% response array always includes the same number of records as the request
%% array.
%% `RequestResponses' includes both successfully and unsuccessfully
%% processed
%% records. Firehose tries to process all records in each
%% `PutRecordBatch' request. A single record failure does not stop the
%% processing
%% of subsequent records.
%%
%% A successfully processed record includes a `RecordId' value, which is
%% unique for the record. An unsuccessfully processed record includes
%% `ErrorCode'
%% and `ErrorMessage' values. `ErrorCode' reflects the type of error,
%% and is one of the following values: `ServiceUnavailableException' or
%% `InternalFailure'. `ErrorMessage' provides more detailed
%% information about the error.
%%
%% If there is an internal server error or a timeout, the write might have
%% completed or
%% it might have failed. If `FailedPutCount' is greater than 0, retry the
%% request,
%% resending only those records that might have failed processing. This
%% minimizes the possible
%% duplicate records and also reduces the total bytes sent (and corresponding
%% charges). We
%% recommend that you handle any duplicates at the destination.
%%
%% If `PutRecordBatch' throws `ServiceUnavailableException',
%% the API is automatically reinvoked (retried) 3 times. If the exception
%% persists, it is
%% possible that the throughput limits have been exceeded for the Firehose
%% stream.
%%
%% Re-invoking the Put API operations (for example, PutRecord and
%% PutRecordBatch) can
%% result in data duplicates. For larger data assets, allow for a longer time
%% out before
%% retrying Put API operations.
%%
%% Data records sent to Firehose are stored for 24 hours from the time they
%% are added to a Firehose stream as it attempts to send the records to the
%% destination. If
%% the destination is unreachable for more than 24 hours, the data is no
%% longer
%% available.
%%
%% Don't concatenate two or more base64 strings to form the data fields
%% of your records.
%% Instead, concatenate the raw data, then perform base64 encoding.
-spec put_record_batch(aws_client:aws_client(), put_record_batch_input()) ->
    {ok, put_record_batch_output(), tuple()} |
    {error, any()} |
    {error, put_record_batch_errors(), tuple()}.
put_record_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_record_batch(Client, Input, []).

-spec put_record_batch(aws_client:aws_client(), put_record_batch_input(), proplists:proplist()) ->
    {ok, put_record_batch_output(), tuple()} |
    {error, any()} |
    {error, put_record_batch_errors(), tuple()}.
put_record_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecordBatch">>, Input, Options).

%% @doc Enables server-side encryption (SSE) for the Firehose stream.
%%
%% This operation is asynchronous. It returns immediately. When you invoke
%% it, Firehose first sets the encryption status of the stream to
%% `ENABLING', and then
%% to `ENABLED'. The encryption status of a Firehose stream is the
%% `Status' property in `DeliveryStreamEncryptionConfiguration'.
%% If the operation fails, the encryption status changes to
%% `ENABLING_FAILED'. You
%% can continue to read and write data to your Firehose stream while the
%% encryption status is
%% `ENABLING', but the data is not encrypted. It can take up to 5 seconds
%% after
%% the encryption status changes to `ENABLED' before all records written
%% to the
%% Firehose stream are encrypted. To find out whether a record or a batch of
%% records was
%% encrypted, check the response elements `PutRecordOutput$Encrypted' and
%% `PutRecordBatchOutput$Encrypted', respectively.
%%
%% To check the encryption status of a Firehose stream, use
%% `DescribeDeliveryStream'.
%%
%% Even if encryption is currently enabled for a Firehose stream, you can
%% still invoke this
%% operation on it to change the ARN of the CMK or both its type and ARN. If
%% you invoke this
%% method to change the CMK, and the old CMK is of type
%% `CUSTOMER_MANAGED_CMK',
%% Firehose schedules the grant it had on the old CMK for retirement. If the
%% new
%% CMK is of type `CUSTOMER_MANAGED_CMK', Firehose creates a grant
%% that enables it to use the new CMK to encrypt and decrypt data and to
%% manage the
%% grant.
%%
%% For the KMS grant creation to be successful, the Firehose API operations
%% `StartDeliveryStreamEncryption' and `CreateDeliveryStream' should
%% not be called with session credentials that are more than 6 hours old.
%%
%% If a Firehose stream already has encryption enabled and then you invoke
%% this operation
%% to change the ARN of the CMK or both its type and ARN and you get
%% `ENABLING_FAILED', this only means that the attempt to change the CMK
%% failed.
%% In this case, encryption remains enabled with the old CMK.
%%
%% If the encryption status of your Firehose stream is `ENABLING_FAILED',
%% you
%% can invoke this operation again with a valid CMK. The CMK must be enabled
%% and the key
%% policy mustn't explicitly deny the permission for Firehose to invoke
%% KMS
%% encrypt and decrypt operations.
%%
%% You can enable SSE for a Firehose stream only if it's a Firehose
%% stream that uses
%% `DirectPut' as its source.
%%
%% The `StartDeliveryStreamEncryption' and
%% `StopDeliveryStreamEncryption' operations have a combined limit of 25
%% calls
%% per Firehose stream per 24 hours. For example, you reach the limit if you
%% call
%% `StartDeliveryStreamEncryption' 13 times and
%% `StopDeliveryStreamEncryption' 12 times for the same Firehose stream
%% in a
%% 24-hour period.
-spec start_delivery_stream_encryption(aws_client:aws_client(), start_delivery_stream_encryption_input()) ->
    {ok, start_delivery_stream_encryption_output(), tuple()} |
    {error, any()} |
    {error, start_delivery_stream_encryption_errors(), tuple()}.
start_delivery_stream_encryption(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_delivery_stream_encryption(Client, Input, []).

-spec start_delivery_stream_encryption(aws_client:aws_client(), start_delivery_stream_encryption_input(), proplists:proplist()) ->
    {ok, start_delivery_stream_encryption_output(), tuple()} |
    {error, any()} |
    {error, start_delivery_stream_encryption_errors(), tuple()}.
start_delivery_stream_encryption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDeliveryStreamEncryption">>, Input, Options).

%% @doc Disables server-side encryption (SSE) for the Firehose stream.
%%
%% This operation is asynchronous. It returns immediately. When you invoke
%% it, Firehose first sets the encryption status of the stream to
%% `DISABLING', and then
%% to `DISABLED'. You can continue to read and write data to your stream
%% while its
%% status is `DISABLING'. It can take up to 5 seconds after the
%% encryption status
%% changes to `DISABLED' before all records written to the Firehose
%% stream are no
%% longer subject to encryption. To find out whether a record or a batch of
%% records was
%% encrypted, check the response elements `PutRecordOutput$Encrypted' and
%% `PutRecordBatchOutput$Encrypted', respectively.
%%
%% To check the encryption state of a Firehose stream, use
%% `DescribeDeliveryStream'.
%%
%% If SSE is enabled using a customer managed CMK and then you invoke
%% `StopDeliveryStreamEncryption', Firehose schedules the related
%% KMS grant for retirement and then retires it after it ensures that it is
%% finished
%% delivering records to the destination.
%%
%% The `StartDeliveryStreamEncryption' and
%% `StopDeliveryStreamEncryption' operations have a combined limit of 25
%% calls
%% per Firehose stream per 24 hours. For example, you reach the limit if you
%% call
%% `StartDeliveryStreamEncryption' 13 times and
%% `StopDeliveryStreamEncryption' 12 times for the same Firehose stream
%% in a
%% 24-hour period.
-spec stop_delivery_stream_encryption(aws_client:aws_client(), stop_delivery_stream_encryption_input()) ->
    {ok, stop_delivery_stream_encryption_output(), tuple()} |
    {error, any()} |
    {error, stop_delivery_stream_encryption_errors(), tuple()}.
stop_delivery_stream_encryption(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_delivery_stream_encryption(Client, Input, []).

-spec stop_delivery_stream_encryption(aws_client:aws_client(), stop_delivery_stream_encryption_input(), proplists:proplist()) ->
    {ok, stop_delivery_stream_encryption_output(), tuple()} |
    {error, any()} |
    {error, stop_delivery_stream_encryption_errors(), tuple()}.
stop_delivery_stream_encryption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDeliveryStreamEncryption">>, Input, Options).

%% @doc Adds or updates tags for the specified Firehose stream.
%%
%% A tag is a key-value pair
%% that you can define and assign to Amazon Web Services resources. If you
%% specify a tag that
%% already exists, the tag value is replaced with the value that you specify
%% in the request.
%% Tags are metadata. For example, you can add friendly names and
%% descriptions or other types
%% of information that can help you distinguish the Firehose stream. For more
%% information
%% about tags, see Using Cost Allocation
%% Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Amazon Web Services Billing and Cost Management User
%% Guide.
%%
%% Each Firehose stream can have up to 50 tags.
%%
%% This operation has a limit of five transactions per second per account.
-spec tag_delivery_stream(aws_client:aws_client(), tag_delivery_stream_input()) ->
    {ok, tag_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, tag_delivery_stream_errors(), tuple()}.
tag_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_delivery_stream(Client, Input, []).

-spec tag_delivery_stream(aws_client:aws_client(), tag_delivery_stream_input(), proplists:proplist()) ->
    {ok, tag_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, tag_delivery_stream_errors(), tuple()}.
tag_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagDeliveryStream">>, Input, Options).

%% @doc Removes tags from the specified Firehose stream.
%%
%% Removed tags are deleted, and you
%% can't recover them after this operation successfully completes.
%%
%% If you specify a tag that doesn't exist, the operation ignores it.
%%
%% This operation has a limit of five transactions per second per account.
-spec untag_delivery_stream(aws_client:aws_client(), untag_delivery_stream_input()) ->
    {ok, untag_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, untag_delivery_stream_errors(), tuple()}.
untag_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_delivery_stream(Client, Input, []).

-spec untag_delivery_stream(aws_client:aws_client(), untag_delivery_stream_input(), proplists:proplist()) ->
    {ok, untag_delivery_stream_output(), tuple()} |
    {error, any()} |
    {error, untag_delivery_stream_errors(), tuple()}.
untag_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagDeliveryStream">>, Input, Options).

%% @doc Updates the specified destination of the specified Firehose stream.
%%
%% Use this operation to change the destination type (for example, to replace
%% the Amazon
%% S3 destination with Amazon Redshift) or change the parameters associated
%% with a destination
%% (for example, to change the bucket name of the Amazon S3 destination). The
%% update might not
%% occur immediately. The target Firehose stream remains active while the
%% configurations are
%% updated, so data writes to the Firehose stream can continue during this
%% process. The
%% updated configurations are usually effective within a few minutes.
%%
%% Switching between Amazon OpenSearch Service and other services is not
%% supported. For
%% an Amazon OpenSearch Service destination, you can only update to another
%% Amazon OpenSearch
%% Service destination.
%%
%% If the destination type is the same, Firehose merges the configuration
%% parameters specified with the destination configuration that already
%% exists on the delivery
%% stream. If any of the parameters are not specified in the call, the
%% existing values are
%% retained. For example, in the Amazon S3 destination, if
%% `EncryptionConfiguration' is not specified, then the existing
%% `EncryptionConfiguration' is maintained on the destination.
%%
%% If the destination type is not the same, for example, changing the
%% destination from
%% Amazon S3 to Amazon Redshift, Firehose does not merge any parameters. In
%% this
%% case, all parameters must be specified.
%%
%% Firehose uses `CurrentDeliveryStreamVersionId' to avoid race
%% conditions and conflicting merges. This is a required field, and the
%% service updates the
%% configuration only if the existing configuration has a version ID that
%% matches. After the
%% update is applied successfully, the version ID is updated, and can be
%% retrieved using `DescribeDeliveryStream'. Use the new version ID to
%% set
%% `CurrentDeliveryStreamVersionId' in the next call.
-spec update_destination(aws_client:aws_client(), update_destination_input()) ->
    {ok, update_destination_output(), tuple()} |
    {error, any()} |
    {error, update_destination_errors(), tuple()}.
update_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_destination(Client, Input, []).

-spec update_destination(aws_client:aws_client(), update_destination_input(), proplists:proplist()) ->
    {ok, update_destination_output(), tuple()} |
    {error, any()} |
    {error, update_destination_errors(), tuple()}.
update_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDestination">>, Input, Options).

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
    Client1 = Client#{service => <<"firehose">>},
    Host = build_host(<<"firehose">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Firehose_20150804.", Action/binary>>}
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
