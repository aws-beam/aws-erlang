%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT Analytics allows you to collect large amounts of device data,
%% process messages, and store them.
%%
%% You can then query the data and run sophisticated analytics on it. IoT
%% Analytics enables advanced
%% data exploration through integration with Jupyter Notebooks and data
%% visualization through integration
%% with Amazon QuickSight.
%%
%% Traditional analytics and business intelligence tools are designed to
%% process structured data. IoT data
%% often comes from devices that record noisy processes (such as temperature,
%% motion, or sound). As a result
%% the data from these devices can have significant gaps, corrupted messages,
%% and false readings that must be
%% cleaned up before analysis can occur. Also, IoT data is often only
%% meaningful in the context of other data
%% from external sources.
%%
%% IoT Analytics automates the steps required to analyze data from IoT
%% devices. IoT Analytics
%% filters, transforms, and enriches IoT data before storing it in a
%% time-series data store for analysis. You
%% can set up the service to collect only the data you need from your
%% devices, apply mathematical transforms
%% to process the data, and enrich the data with device-specific metadata
%% such as device type and location
%% before storing it. Then, you can analyze your data by running queries
%% using the built-in SQL query engine,
%% or perform more complex analytics and machine learning inference. IoT
%% Analytics includes pre-built models
%% for common IoT use cases so you can answer questions like which devices
%% are about to fail or which customers
%% are at risk of abandoning their wearable devices.
-module(aws_iotanalytics).

-export([batch_put_message/2,
         batch_put_message/3,
         cancel_pipeline_reprocessing/4,
         cancel_pipeline_reprocessing/5,
         create_channel/2,
         create_channel/3,
         create_dataset/2,
         create_dataset/3,
         create_dataset_content/3,
         create_dataset_content/4,
         create_datastore/2,
         create_datastore/3,
         create_pipeline/2,
         create_pipeline/3,
         delete_channel/3,
         delete_channel/4,
         delete_dataset/3,
         delete_dataset/4,
         delete_dataset_content/3,
         delete_dataset_content/4,
         delete_datastore/3,
         delete_datastore/4,
         delete_pipeline/3,
         delete_pipeline/4,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_dataset/2,
         describe_dataset/4,
         describe_dataset/5,
         describe_datastore/2,
         describe_datastore/4,
         describe_datastore/5,
         describe_logging_options/1,
         describe_logging_options/3,
         describe_logging_options/4,
         describe_pipeline/2,
         describe_pipeline/4,
         describe_pipeline/5,
         get_dataset_content/2,
         get_dataset_content/4,
         get_dataset_content/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_dataset_contents/2,
         list_dataset_contents/4,
         list_dataset_contents/5,
         list_datasets/1,
         list_datasets/3,
         list_datasets/4,
         list_datastores/1,
         list_datastores/3,
         list_datastores/4,
         list_pipelines/1,
         list_pipelines/3,
         list_pipelines/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_logging_options/2,
         put_logging_options/3,
         run_pipeline_activity/2,
         run_pipeline_activity/3,
         sample_channel_data/2,
         sample_channel_data/4,
         sample_channel_data/5,
         start_pipeline_reprocessing/3,
         start_pipeline_reprocessing/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_channel/3,
         update_channel/4,
         update_dataset/3,
         update_dataset/4,
         update_datastore/3,
         update_datastore/4,
         update_pipeline/3,
         update_pipeline/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_channel_request() :: #{}
-type delete_channel_request() :: #{}.


%% Example:
%% sample_channel_data_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxMessages">> => integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type sample_channel_data_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% query_filter() :: #{
%%   <<"deltaTime">> => delta_time()
%% }
-type query_filter() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% datastore_iot_site_wise_multi_layer_storage_summary() :: #{
%%   <<"customerManagedS3Storage">> => iot_site_wise_customer_managed_datastore_s3_storage_summary()
%% }
-type datastore_iot_site_wise_multi_layer_storage_summary() :: #{binary() => any()}.


%% Example:
%% list_pipelines_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pipelineSummaries">> => list(pipeline_summary())
%% }
-type list_pipelines_response() :: #{binary() => any()}.


%% Example:
%% output_file_uri_value() :: #{
%%   <<"fileName">> => string()
%% }
-type output_file_uri_value() :: #{binary() => any()}.


%% Example:
%% sample_channel_data_response() :: #{
%%   <<"payloads">> => list(binary())
%% }
-type sample_channel_data_response() :: #{binary() => any()}.


%% Example:
%% customer_managed_channel_s3_storage_summary() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string(),
%%   <<"roleArn">> => string()
%% }
-type customer_managed_channel_s3_storage_summary() :: #{binary() => any()}.


%% Example:
%% list_pipelines_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_pipelines_request() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"channelArn">> => string(),
%%   <<"channelName">> => string(),
%%   <<"retentionPeriod">> => retention_period()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% late_data_rule() :: #{
%%   <<"ruleConfiguration">> => late_data_rule_configuration(),
%%   <<"ruleName">> => string()
%% }
-type late_data_rule() :: #{binary() => any()}.


%% Example:
%% dataset_entry() :: #{
%%   <<"dataURI">> => string(),
%%   <<"entryName">> => string()
%% }
-type dataset_entry() :: #{binary() => any()}.


%% Example:
%% lambda_activity() :: #{
%%   <<"batchSize">> => integer(),
%%   <<"lambdaName">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type lambda_activity() :: #{binary() => any()}.


%% Example:
%% versioning_configuration() :: #{
%%   <<"maxVersions">> => integer(),
%%   <<"unlimited">> => boolean()
%% }
-type versioning_configuration() :: #{binary() => any()}.


%% Example:
%% schema_definition() :: #{
%%   <<"columns">> => list(column())
%% }
-type schema_definition() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_dataset_content_response() :: #{
%%   <<"versionId">> => string()
%% }
-type create_dataset_content_response() :: #{binary() => any()}.


%% Example:
%% iot_site_wise_customer_managed_datastore_s3_storage() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string()
%% }
-type iot_site_wise_customer_managed_datastore_s3_storage() :: #{binary() => any()}.

%% Example:
%% json_configuration() :: #{}
-type json_configuration() :: #{}.


%% Example:
%% create_pipeline_response() :: #{
%%   <<"pipelineArn">> => string(),
%%   <<"pipelineName">> => string()
%% }
-type create_pipeline_response() :: #{binary() => any()}.


%% Example:
%% timestamp_partition() :: #{
%%   <<"attributeName">> => string(),
%%   <<"timestampFormat">> => string()
%% }
-type timestamp_partition() :: #{binary() => any()}.


%% Example:
%% reprocessing_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type reprocessing_summary() :: #{binary() => any()}.


%% Example:
%% column() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type column() :: #{binary() => any()}.


%% Example:
%% datastore_storage_summary() :: #{
%%   <<"customerManagedS3">> => customer_managed_datastore_s3_storage_summary(),
%%   <<"iotSiteWiseMultiLayerStorage">> => datastore_iot_site_wise_multi_layer_storage_summary(),
%%   <<"serviceManagedS3">> => service_managed_datastore_s3_storage_summary()
%% }
-type datastore_storage_summary() :: #{binary() => any()}.


%% Example:
%% dataset_trigger() :: #{
%%   <<"dataset">> => triggering_dataset(),
%%   <<"schedule">> => schedule()
%% }
-type dataset_trigger() :: #{binary() => any()}.


%% Example:
%% dataset_content_delivery_destination() :: #{
%%   <<"iotEventsDestinationConfiguration">> => iot_events_destination_configuration(),
%%   <<"s3DestinationConfiguration">> => s3_destination_configuration()
%% }
-type dataset_content_delivery_destination() :: #{binary() => any()}.


%% Example:
%% device_shadow_enrich_activity() :: #{
%%   <<"attribute">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"thingName">> => string()
%% }
-type device_shadow_enrich_activity() :: #{binary() => any()}.


%% Example:
%% filter_activity() :: #{
%%   <<"filter">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type filter_activity() :: #{binary() => any()}.


%% Example:
%% pipeline() :: #{
%%   <<"activities">> => list(pipeline_activity()),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"reprocessingSummaries">> => list(reprocessing_summary())
%% }
-type pipeline() :: #{binary() => any()}.


%% Example:
%% retention_period() :: #{
%%   <<"numberOfDays">> => integer(),
%%   <<"unlimited">> => boolean()
%% }
-type retention_period() :: #{binary() => any()}.


%% Example:
%% datastore_partitions() :: #{
%%   <<"partitions">> => list(datastore_partition())
%% }
-type datastore_partitions() :: #{binary() => any()}.


%% Example:
%% file_format_configuration() :: #{
%%   <<"jsonConfiguration">> => json_configuration(),
%%   <<"parquetConfiguration">> => parquet_configuration()
%% }
-type file_format_configuration() :: #{binary() => any()}.


%% Example:
%% run_pipeline_activity_response() :: #{
%%   <<"logResult">> => string(),
%%   <<"payloads">> => list(binary())
%% }
-type run_pipeline_activity_response() :: #{binary() => any()}.


%% Example:
%% list_datasets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.


%% Example:
%% describe_datastore_response() :: #{
%%   <<"datastore">> => datastore(),
%%   <<"statistics">> => datastore_statistics()
%% }
-type describe_datastore_response() :: #{binary() => any()}.


%% Example:
%% dataset_content_summary() :: #{
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"scheduleTime">> => non_neg_integer(),
%%   <<"status">> => dataset_content_status(),
%%   <<"version">> => string()
%% }
-type dataset_content_summary() :: #{binary() => any()}.


%% Example:
%% partition() :: #{
%%   <<"attributeName">> => string()
%% }
-type partition() :: #{binary() => any()}.


%% Example:
%% describe_logging_options_response() :: #{
%%   <<"loggingOptions">> => logging_options()
%% }
-type describe_logging_options_response() :: #{binary() => any()}.


%% Example:
%% datastore_iot_site_wise_multi_layer_storage() :: #{
%%   <<"customerManagedS3Storage">> => iot_site_wise_customer_managed_datastore_s3_storage()
%% }
-type datastore_iot_site_wise_multi_layer_storage() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% triggering_dataset() :: #{
%%   <<"name">> => string()
%% }
-type triggering_dataset() :: #{binary() => any()}.


%% Example:
%% batch_put_message_request() :: #{
%%   <<"channelName">> := string(),
%%   <<"messages">> := list(message())
%% }
-type batch_put_message_request() :: #{binary() => any()}.


%% Example:
%% start_pipeline_reprocessing_request() :: #{
%%   <<"channelMessages">> => channel_messages(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type start_pipeline_reprocessing_request() :: #{binary() => any()}.


%% Example:
%% run_pipeline_activity_request() :: #{
%%   <<"payloads">> := list(binary()),
%%   <<"pipelineActivity">> := pipeline_activity()
%% }
-type run_pipeline_activity_request() :: #{binary() => any()}.


%% Example:
%% delta_time() :: #{
%%   <<"offsetSeconds">> => integer(),
%%   <<"timeExpression">> => string()
%% }
-type delta_time() :: #{binary() => any()}.


%% Example:
%% dataset() :: #{
%%   <<"actions">> => list(dataset_action()),
%%   <<"arn">> => string(),
%%   <<"contentDeliveryRules">> => list(dataset_content_delivery_rule()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"lateDataRules">> => list(late_data_rule()),
%%   <<"name">> => string(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"status">> => list(any()),
%%   <<"triggers">> => list(dataset_trigger()),
%%   <<"versioningConfiguration">> => versioning_configuration()
%% }
-type dataset() :: #{binary() => any()}.


%% Example:
%% create_dataset_response() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"datasetName">> => string(),
%%   <<"retentionPeriod">> => retention_period()
%% }
-type create_dataset_response() :: #{binary() => any()}.


%% Example:
%% datastore_statistics() :: #{
%%   <<"size">> => estimated_resource_size()
%% }
-type datastore_statistics() :: #{binary() => any()}.


%% Example:
%% glue_configuration() :: #{
%%   <<"databaseName">> => string(),
%%   <<"tableName">> => string()
%% }
-type glue_configuration() :: #{binary() => any()}.


%% Example:
%% math_activity() :: #{
%%   <<"attribute">> => string(),
%%   <<"math">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type math_activity() :: #{binary() => any()}.


%% Example:
%% channel_summary() :: #{
%%   <<"channelName">> => string(),
%%   <<"channelStorage">> => channel_storage_summary(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastMessageArrivalTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type channel_summary() :: #{binary() => any()}.


%% Example:
%% datastore() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"datastorePartitions">> => datastore_partitions(),
%%   <<"fileFormatConfiguration">> => file_format_configuration(),
%%   <<"lastMessageArrivalTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"status">> => list(any()),
%%   <<"storage">> => list()
%% }
-type datastore() :: #{binary() => any()}.


%% Example:
%% dataset_content_version_value() :: #{
%%   <<"datasetName">> => string()
%% }
-type dataset_content_version_value() :: #{binary() => any()}.


%% Example:
%% channel_storage() :: #{
%%   <<"customerManagedS3">> => customer_managed_channel_s3_storage(),
%%   <<"serviceManagedS3">> => service_managed_channel_s3_storage()
%% }
-type channel_storage() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% dataset_summary() :: #{
%%   <<"actions">> => list(dataset_action_summary()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"datasetName">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"triggers">> => list(dataset_trigger())
%% }
-type dataset_summary() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% container_dataset_action() :: #{
%%   <<"executionRoleArn">> => string(),
%%   <<"image">> => string(),
%%   <<"resourceConfiguration">> => resource_configuration(),
%%   <<"variables">> => list(variable())
%% }
-type container_dataset_action() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% create_pipeline_request() :: #{
%%   <<"pipelineActivities">> := list(pipeline_activity()),
%%   <<"pipelineName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_pipeline_request() :: #{binary() => any()}.


%% Example:
%% update_pipeline_request() :: #{
%%   <<"pipelineActivities">> := list(pipeline_activity())
%% }
-type update_pipeline_request() :: #{binary() => any()}.


%% Example:
%% list_dataset_contents_response() :: #{
%%   <<"datasetContentSummaries">> => list(dataset_content_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_contents_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_response() :: #{
%%   <<"channel">> => channel(),
%%   <<"statistics">> => channel_statistics()
%% }
-type describe_channel_response() :: #{binary() => any()}.

%% Example:
%% cancel_pipeline_reprocessing_response() :: #{}
-type cancel_pipeline_reprocessing_response() :: #{}.

%% Example:
%% delete_pipeline_request() :: #{}
-type delete_pipeline_request() :: #{}.


%% Example:
%% dataset_content_delivery_rule() :: #{
%%   <<"destination">> => dataset_content_delivery_destination(),
%%   <<"entryName">> => string()
%% }
-type dataset_content_delivery_rule() :: #{binary() => any()}.

%% Example:
%% service_managed_channel_s3_storage_summary() :: #{}
-type service_managed_channel_s3_storage_summary() :: #{}.


%% Example:
%% s3_destination_configuration() :: #{
%%   <<"bucket">> => string(),
%%   <<"glueConfiguration">> => glue_configuration(),
%%   <<"key">> => string(),
%%   <<"roleArn">> => string()
%% }
-type s3_destination_configuration() :: #{binary() => any()}.


%% Example:
%% describe_channel_request() :: #{
%%   <<"includeStatistics">> => boolean()
%% }
-type describe_channel_request() :: #{binary() => any()}.


%% Example:
%% list_datastores_response() :: #{
%%   <<"datastoreSummaries">> => list(datastore_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_datastores_response() :: #{binary() => any()}.


%% Example:
%% get_dataset_content_response() :: #{
%%   <<"entries">> => list(dataset_entry()),
%%   <<"status">> => dataset_content_status(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type get_dataset_content_response() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"channelName">> := string(),
%%   <<"channelStorage">> => channel_storage(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"tags">> => list(tag())
%% }
-type create_channel_request() :: #{binary() => any()}.


%% Example:
%% pipeline_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"pipelineName">> => string(),
%%   <<"reprocessingSummaries">> => list(reprocessing_summary())
%% }
-type pipeline_summary() :: #{binary() => any()}.


%% Example:
%% describe_pipeline_response() :: #{
%%   <<"pipeline">> => pipeline()
%% }
-type describe_pipeline_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% dataset_action() :: #{
%%   <<"actionName">> => string(),
%%   <<"containerAction">> => container_dataset_action(),
%%   <<"queryAction">> => sql_query_dataset_action()
%% }
-type dataset_action() :: #{binary() => any()}.


%% Example:
%% datastore_activity() :: #{
%%   <<"datastoreName">> => string(),
%%   <<"name">> => string()
%% }
-type datastore_activity() :: #{binary() => any()}.


%% Example:
%% update_datastore_request() :: #{
%%   <<"datastoreStorage">> => list(),
%%   <<"fileFormatConfiguration">> => file_format_configuration(),
%%   <<"retentionPeriod">> => retention_period()
%% }
-type update_datastore_request() :: #{binary() => any()}.


%% Example:
%% list_datastores_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_datastores_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% variable() :: #{
%%   <<"datasetContentVersionValue">> => dataset_content_version_value(),
%%   <<"doubleValue">> => float(),
%%   <<"name">> => string(),
%%   <<"outputFileUriValue">> => output_file_uri_value(),
%%   <<"stringValue">> => string()
%% }
-type variable() :: #{binary() => any()}.


%% Example:
%% update_dataset_request() :: #{
%%   <<"actions">> := list(dataset_action()),
%%   <<"contentDeliveryRules">> => list(dataset_content_delivery_rule()),
%%   <<"lateDataRules">> => list(late_data_rule()),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"triggers">> => list(dataset_trigger()),
%%   <<"versioningConfiguration">> => versioning_configuration()
%% }
-type update_dataset_request() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"channelSummaries">> => list(channel_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% customer_managed_datastore_s3_storage() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string(),
%%   <<"roleArn">> => string()
%% }
-type customer_managed_datastore_s3_storage() :: #{binary() => any()}.


%% Example:
%% datastore_partition() :: #{
%%   <<"attributePartition">> => partition(),
%%   <<"timestampPartition">> => timestamp_partition()
%% }
-type datastore_partition() :: #{binary() => any()}.


%% Example:
%% customer_managed_channel_s3_storage() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string(),
%%   <<"roleArn">> => string()
%% }
-type customer_managed_channel_s3_storage() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"channelStorage">> => channel_storage(),
%%   <<"retentionPeriod">> => retention_period()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% delta_time_session_window_configuration() :: #{
%%   <<"timeoutInMinutes">> => integer()
%% }
-type delta_time_session_window_configuration() :: #{binary() => any()}.

%% Example:
%% describe_logging_options_request() :: #{}
-type describe_logging_options_request() :: #{}.


%% Example:
%% sql_query_dataset_action() :: #{
%%   <<"filters">> => list(query_filter()),
%%   <<"sqlQuery">> => string()
%% }
-type sql_query_dataset_action() :: #{binary() => any()}.


%% Example:
%% list_dataset_contents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"scheduledBefore">> => non_neg_integer(),
%%   <<"scheduledOnOrAfter">> => non_neg_integer()
%% }
-type list_dataset_contents_request() :: #{binary() => any()}.


%% Example:
%% remove_attributes_activity() :: #{
%%   <<"attributes">> => list(string()),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type remove_attributes_activity() :: #{binary() => any()}.


%% Example:
%% add_attributes_activity() :: #{
%%   <<"attributes">> => map(),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type add_attributes_activity() :: #{binary() => any()}.

%% Example:
%% service_managed_channel_s3_storage() :: #{}
-type service_managed_channel_s3_storage() :: #{}.


%% Example:
%% customer_managed_datastore_s3_storage_summary() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string(),
%%   <<"roleArn">> => string()
%% }
-type customer_managed_datastore_s3_storage_summary() :: #{binary() => any()}.


%% Example:
%% datastore_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"datastoreName">> => string(),
%%   <<"datastorePartitions">> => datastore_partitions(),
%%   <<"datastoreStorage">> => datastore_storage_summary(),
%%   <<"fileFormatType">> => list(any()),
%%   <<"lastMessageArrivalTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type datastore_summary() :: #{binary() => any()}.


%% Example:
%% iot_events_destination_configuration() :: #{
%%   <<"inputName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type iot_events_destination_configuration() :: #{binary() => any()}.


%% Example:
%% device_registry_enrich_activity() :: #{
%%   <<"attribute">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"thingName">> => string()
%% }
-type device_registry_enrich_activity() :: #{binary() => any()}.


%% Example:
%% schedule() :: #{
%%   <<"expression">> => string()
%% }
-type schedule() :: #{binary() => any()}.


%% Example:
%% pipeline_activity() :: #{
%%   <<"addAttributes">> => add_attributes_activity(),
%%   <<"channel">> => channel_activity(),
%%   <<"datastore">> => datastore_activity(),
%%   <<"deviceRegistryEnrich">> => device_registry_enrich_activity(),
%%   <<"deviceShadowEnrich">> => device_shadow_enrich_activity(),
%%   <<"filter">> => filter_activity(),
%%   <<"lambda">> => lambda_activity(),
%%   <<"math">> => math_activity(),
%%   <<"removeAttributes">> => remove_attributes_activity(),
%%   <<"selectAttributes">> => select_attributes_activity()
%% }
-type pipeline_activity() :: #{binary() => any()}.


%% Example:
%% dataset_action_summary() :: #{
%%   <<"actionName">> => string(),
%%   <<"actionType">> => list(any())
%% }
-type dataset_action_summary() :: #{binary() => any()}.

%% Example:
%% service_managed_datastore_s3_storage_summary() :: #{}
-type service_managed_datastore_s3_storage_summary() :: #{}.


%% Example:
%% resource_configuration() :: #{
%%   <<"computeType">> => list(any()),
%%   <<"volumeSizeInGB">> => integer()
%% }
-type resource_configuration() :: #{binary() => any()}.


%% Example:
%% channel_activity() :: #{
%%   <<"channelName">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type channel_activity() :: #{binary() => any()}.

%% Example:
%% service_managed_datastore_s3_storage() :: #{}
-type service_managed_datastore_s3_storage() :: #{}.


%% Example:
%% late_data_rule_configuration() :: #{
%%   <<"deltaTimeSessionWindowConfiguration">> => delta_time_session_window_configuration()
%% }
-type late_data_rule_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_dataset_content_request() :: #{
%%   <<"versionId">> => string()
%% }
-type create_dataset_content_request() :: #{binary() => any()}.


%% Example:
%% put_logging_options_request() :: #{
%%   <<"loggingOptions">> := logging_options()
%% }
-type put_logging_options_request() :: #{binary() => any()}.


%% Example:
%% describe_dataset_response() :: #{
%%   <<"dataset">> => dataset()
%% }
-type describe_dataset_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% create_dataset_request() :: #{
%%   <<"actions">> := list(dataset_action()),
%%   <<"contentDeliveryRules">> => list(dataset_content_delivery_rule()),
%%   <<"datasetName">> := string(),
%%   <<"lateDataRules">> => list(late_data_rule()),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"tags">> => list(tag()),
%%   <<"triggers">> => list(dataset_trigger()),
%%   <<"versioningConfiguration">> => versioning_configuration()
%% }
-type create_dataset_request() :: #{binary() => any()}.


%% Example:
%% iot_site_wise_customer_managed_datastore_s3_storage_summary() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string()
%% }
-type iot_site_wise_customer_managed_datastore_s3_storage_summary() :: #{binary() => any()}.


%% Example:
%% select_attributes_activity() :: #{
%%   <<"attributes">> => list(string()),
%%   <<"name">> => string(),
%%   <<"next">> => string()
%% }
-type select_attributes_activity() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastMessageArrivalTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"status">> => list(any()),
%%   <<"storage">> => channel_storage()
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% create_datastore_request() :: #{
%%   <<"datastoreName">> := string(),
%%   <<"datastorePartitions">> => datastore_partitions(),
%%   <<"datastoreStorage">> => list(),
%%   <<"fileFormatConfiguration">> => file_format_configuration(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"tags">> => list(tag())
%% }
-type create_datastore_request() :: #{binary() => any()}.


%% Example:
%% batch_put_message_error_entry() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"messageId">> => string()
%% }
-type batch_put_message_error_entry() :: #{binary() => any()}.


%% Example:
%% dataset_content_status() :: #{
%%   <<"reason">> => string(),
%%   <<"state">> => list(any())
%% }
-type dataset_content_status() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% channel_storage_summary() :: #{
%%   <<"customerManagedS3">> => customer_managed_channel_s3_storage_summary(),
%%   <<"serviceManagedS3">> => service_managed_channel_s3_storage_summary()
%% }
-type channel_storage_summary() :: #{binary() => any()}.


%% Example:
%% logging_options() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"level">> => list(any()),
%%   <<"roleArn">> => string()
%% }
-type logging_options() :: #{binary() => any()}.


%% Example:
%% channel_messages() :: #{
%%   <<"s3Paths">> => list(string())
%% }
-type channel_messages() :: #{binary() => any()}.


%% Example:
%% create_datastore_response() :: #{
%%   <<"datastoreArn">> => string(),
%%   <<"datastoreName">> => string(),
%%   <<"retentionPeriod">> => retention_period()
%% }
-type create_datastore_response() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{}
-type describe_dataset_request() :: #{}.

%% Example:
%% delete_dataset_request() :: #{}
-type delete_dataset_request() :: #{}.


%% Example:
%% list_datasets_response() :: #{
%%   <<"datasetSummaries">> => list(dataset_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_request() :: #{}
-type describe_pipeline_request() :: #{}.


%% Example:
%% delete_dataset_content_request() :: #{
%%   <<"versionId">> => string()
%% }
-type delete_dataset_content_request() :: #{binary() => any()}.


%% Example:
%% get_dataset_content_request() :: #{
%%   <<"versionId">> => string()
%% }
-type get_dataset_content_request() :: #{binary() => any()}.


%% Example:
%% start_pipeline_reprocessing_response() :: #{
%%   <<"reprocessingId">> => string()
%% }
-type start_pipeline_reprocessing_response() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% batch_put_message_response() :: #{
%%   <<"batchPutMessageErrorEntries">> => list(batch_put_message_error_entry())
%% }
-type batch_put_message_response() :: #{binary() => any()}.


%% Example:
%% parquet_configuration() :: #{
%%   <<"schemaDefinition">> => schema_definition()
%% }
-type parquet_configuration() :: #{binary() => any()}.

%% Example:
%% cancel_pipeline_reprocessing_request() :: #{}
-type cancel_pipeline_reprocessing_request() :: #{}.


%% Example:
%% describe_datastore_request() :: #{
%%   <<"includeStatistics">> => boolean()
%% }
-type describe_datastore_request() :: #{binary() => any()}.


%% Example:
%% channel_statistics() :: #{
%%   <<"size">> => estimated_resource_size()
%% }
-type channel_statistics() :: #{binary() => any()}.

%% Example:
%% delete_datastore_request() :: #{}
-type delete_datastore_request() :: #{}.


%% Example:
%% message() :: #{
%%   <<"messageId">> => string(),
%%   <<"payload">> => binary()
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% estimated_resource_size() :: #{
%%   <<"estimatedOn">> => non_neg_integer(),
%%   <<"estimatedSizeInBytes">> => float()
%% }
-type estimated_resource_size() :: #{binary() => any()}.

-type batch_put_message_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type cancel_pipeline_reprocessing_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_channel_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_dataset_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_dataset_content_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_datastore_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_pipeline_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_channel_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_dataset_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_dataset_content_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_datastore_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_pipeline_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_channel_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_dataset_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_datastore_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_logging_options_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_pipeline_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_dataset_content_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_channels_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_dataset_contents_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_datasets_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_datastores_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_pipelines_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type put_logging_options_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type run_pipeline_activity_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type sample_channel_data_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type start_pipeline_reprocessing_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_channel_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_dataset_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_datastore_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_pipeline_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sends messages to a channel.
-spec batch_put_message(aws_client:aws_client(), batch_put_message_request()) ->
    {ok, batch_put_message_response(), tuple()} |
    {error, any()} |
    {error, batch_put_message_errors(), tuple()}.
batch_put_message(Client, Input) ->
    batch_put_message(Client, Input, []).

-spec batch_put_message(aws_client:aws_client(), batch_put_message_request(), proplists:proplist()) ->
    {ok, batch_put_message_response(), tuple()} |
    {error, any()} |
    {error, batch_put_message_errors(), tuple()}.
batch_put_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/messages/batch"],
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

%% @doc Cancels the reprocessing of data through the pipeline.
-spec cancel_pipeline_reprocessing(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_pipeline_reprocessing_request()) ->
    {ok, cancel_pipeline_reprocessing_response(), tuple()} |
    {error, any()} |
    {error, cancel_pipeline_reprocessing_errors(), tuple()}.
cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input) ->
    cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input, []).

-spec cancel_pipeline_reprocessing(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_pipeline_reprocessing_request(), proplists:proplist()) ->
    {ok, cancel_pipeline_reprocessing_response(), tuple()} |
    {error, any()} |
    {error, cancel_pipeline_reprocessing_errors(), tuple()}.
cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input0, Options0) ->
    Method = delete,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), "/reprocessing/", aws_util:encode_uri(ReprocessingId), ""],
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

%% @doc Used to create a channel.
%%
%% A channel collects data from an MQTT topic and archives the raw,
%% unprocessed messages before publishing the data to a pipeline.
-spec create_channel(aws_client:aws_client(), create_channel_request()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).

-spec create_channel(aws_client:aws_client(), create_channel_request(), proplists:proplist()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels"],
    SuccessStatusCode = 201,
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

%% @doc Used to create a dataset.
%%
%% A dataset stores data retrieved from a data store by applying a
%% `queryAction' (a SQL query) or a `containerAction' (executing a
%% containerized application). This operation creates the skeleton of a
%% dataset. The dataset can
%% be populated manually by calling `CreateDatasetContent' or
%% automatically according
%% to a trigger you specify.
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
    Path = ["/datasets"],
    SuccessStatusCode = 201,
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

%% @doc Creates the content of a dataset by applying a `queryAction' (a
%% SQL query) or a
%% `containerAction' (executing a containerized application).
-spec create_dataset_content(aws_client:aws_client(), binary() | list(), create_dataset_content_request()) ->
    {ok, create_dataset_content_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_content_errors(), tuple()}.
create_dataset_content(Client, DatasetName, Input) ->
    create_dataset_content(Client, DatasetName, Input, []).

-spec create_dataset_content(aws_client:aws_client(), binary() | list(), create_dataset_content_request(), proplists:proplist()) ->
    {ok, create_dataset_content_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_content_errors(), tuple()}.
create_dataset_content(Client, DatasetName, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/content"],
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

%% @doc Creates a data store, which is a repository for messages.
-spec create_datastore(aws_client:aws_client(), create_datastore_request()) ->
    {ok, create_datastore_response(), tuple()} |
    {error, any()} |
    {error, create_datastore_errors(), tuple()}.
create_datastore(Client, Input) ->
    create_datastore(Client, Input, []).

-spec create_datastore(aws_client:aws_client(), create_datastore_request(), proplists:proplist()) ->
    {ok, create_datastore_response(), tuple()} |
    {error, any()} |
    {error, create_datastore_errors(), tuple()}.
create_datastore(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datastores"],
    SuccessStatusCode = 201,
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

%% @doc Creates a pipeline.
%%
%% A pipeline consumes messages from a channel and allows you to process
%% the messages before storing them in a data store. You must specify both a
%% `channel'
%% and a `datastore' activity and, optionally, as many as 23 additional
%% activities in
%% the `pipelineActivities' array.
-spec create_pipeline(aws_client:aws_client(), create_pipeline_request()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).

-spec create_pipeline(aws_client:aws_client(), create_pipeline_request(), proplists:proplist()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pipelines"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the specified channel.
-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelName, Input) ->
    delete_channel(Client, ChannelName, Input, []).

-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc Deletes the specified dataset.
%%
%% You do not have to delete the content of the dataset before you perform
%% this
%% operation.
-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetName, Input) ->
    delete_dataset(Client, DatasetName, Input, []).

-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetName, Input0, Options0) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), ""],
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

%% @doc Deletes the content of the specified dataset.
-spec delete_dataset_content(aws_client:aws_client(), binary() | list(), delete_dataset_content_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_content_errors(), tuple()}.
delete_dataset_content(Client, DatasetName, Input) ->
    delete_dataset_content(Client, DatasetName, Input, []).

-spec delete_dataset_content(aws_client:aws_client(), binary() | list(), delete_dataset_content_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_content_errors(), tuple()}.
delete_dataset_content(Client, DatasetName, Input0, Options0) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/content"],
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
                     {<<"versionId">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified data store.
-spec delete_datastore(aws_client:aws_client(), binary() | list(), delete_datastore_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_datastore_errors(), tuple()}.
delete_datastore(Client, DatastoreName, Input) ->
    delete_datastore(Client, DatastoreName, Input, []).

-spec delete_datastore(aws_client:aws_client(), binary() | list(), delete_datastore_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_datastore_errors(), tuple()}.
delete_datastore(Client, DatastoreName, Input0, Options0) ->
    Method = delete,
    Path = ["/datastores/", aws_util:encode_uri(DatastoreName), ""],
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

%% @doc Deletes the specified pipeline.
-spec delete_pipeline(aws_client:aws_client(), binary() | list(), delete_pipeline_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, PipelineName, Input) ->
    delete_pipeline(Client, PipelineName, Input, []).

-spec delete_pipeline(aws_client:aws_client(), binary() | list(), delete_pipeline_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = delete,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Retrieves information about a channel.
-spec describe_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelName)
  when is_map(Client) ->
    describe_channel(Client, ChannelName, #{}, #{}).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelName, QueryMap, HeadersMap, []).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeStatistics">>, maps:get(<<"includeStatistics">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dataset.
-spec describe_dataset(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetName)
  when is_map(Client) ->
    describe_dataset(Client, DatasetName, #{}, #{}).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, DatasetName, QueryMap, HeadersMap, []).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a data store.
-spec describe_datastore(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_datastore_response(), tuple()} |
    {error, any()} |
    {error, describe_datastore_errors(), tuple()}.
describe_datastore(Client, DatastoreName)
  when is_map(Client) ->
    describe_datastore(Client, DatastoreName, #{}, #{}).

-spec describe_datastore(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_datastore_response(), tuple()} |
    {error, any()} |
    {error, describe_datastore_errors(), tuple()}.
describe_datastore(Client, DatastoreName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_datastore(Client, DatastoreName, QueryMap, HeadersMap, []).

-spec describe_datastore(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_datastore_response(), tuple()} |
    {error, any()} |
    {error, describe_datastore_errors(), tuple()}.
describe_datastore(Client, DatastoreName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastores/", aws_util:encode_uri(DatastoreName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeStatistics">>, maps:get(<<"includeStatistics">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current settings of the IoT Analytics logging options.
-spec describe_logging_options(aws_client:aws_client()) ->
    {ok, describe_logging_options_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_options_errors(), tuple()}.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, #{}, #{}).

-spec describe_logging_options(aws_client:aws_client(), map(), map()) ->
    {ok, describe_logging_options_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_options_errors(), tuple()}.
describe_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_options(Client, QueryMap, HeadersMap, []).

-spec describe_logging_options(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_logging_options_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_options_errors(), tuple()}.
describe_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a pipeline.
-spec describe_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_pipeline_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_errors(), tuple()}.
describe_pipeline(Client, PipelineName)
  when is_map(Client) ->
    describe_pipeline(Client, PipelineName, #{}, #{}).

-spec describe_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_pipeline_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_errors(), tuple()}.
describe_pipeline(Client, PipelineName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_pipeline(Client, PipelineName, QueryMap, HeadersMap, []).

-spec describe_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_pipeline_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_errors(), tuple()}.
describe_pipeline(Client, PipelineName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the contents of a dataset as presigned URIs.
-spec get_dataset_content(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dataset_content_response(), tuple()} |
    {error, any()} |
    {error, get_dataset_content_errors(), tuple()}.
get_dataset_content(Client, DatasetName)
  when is_map(Client) ->
    get_dataset_content(Client, DatasetName, #{}, #{}).

-spec get_dataset_content(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dataset_content_response(), tuple()} |
    {error, any()} |
    {error, get_dataset_content_errors(), tuple()}.
get_dataset_content(Client, DatasetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataset_content(Client, DatasetName, QueryMap, HeadersMap, []).

-spec get_dataset_content(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dataset_content_response(), tuple()} |
    {error, any()} |
    {error, get_dataset_content_errors(), tuple()}.
get_dataset_content(Client, DatasetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of channels.
-spec list_channels(aws_client:aws_client()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

-spec list_channels(aws_client:aws_client(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
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

%% @doc Lists information about dataset contents that have been created.
-spec list_dataset_contents(aws_client:aws_client(), binary() | list()) ->
    {ok, list_dataset_contents_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_contents_errors(), tuple()}.
list_dataset_contents(Client, DatasetName)
  when is_map(Client) ->
    list_dataset_contents(Client, DatasetName, #{}, #{}).

-spec list_dataset_contents(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_dataset_contents_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_contents_errors(), tuple()}.
list_dataset_contents(Client, DatasetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dataset_contents(Client, DatasetName, QueryMap, HeadersMap, []).

-spec list_dataset_contents(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_dataset_contents_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_contents_errors(), tuple()}.
list_dataset_contents(Client, DatasetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/contents"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"scheduledBefore">>, maps:get(<<"scheduledBefore">>, QueryMap, undefined)},
        {<<"scheduledOnOrAfter">>, maps:get(<<"scheduledOnOrAfter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about datasets.
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
    Path = ["/datasets"],
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

%% @doc Retrieves a list of data stores.
-spec list_datastores(aws_client:aws_client()) ->
    {ok, list_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_datastores_errors(), tuple()}.
list_datastores(Client)
  when is_map(Client) ->
    list_datastores(Client, #{}, #{}).

-spec list_datastores(aws_client:aws_client(), map(), map()) ->
    {ok, list_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_datastores_errors(), tuple()}.
list_datastores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datastores(Client, QueryMap, HeadersMap, []).

-spec list_datastores(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_datastores_errors(), tuple()}.
list_datastores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastores"],
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

%% @doc Retrieves a list of pipelines.
-spec list_pipelines(aws_client:aws_client()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client)
  when is_map(Client) ->
    list_pipelines(Client, #{}, #{}).

-spec list_pipelines(aws_client:aws_client(), map(), map()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pipelines(Client, QueryMap, HeadersMap, []).

-spec list_pipelines(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pipelines"],
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

%% @doc Lists the tags (metadata) that you have assigned to the resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets or updates the IoT Analytics logging options.
%%
%% If you update the value of any `loggingOptions' field, it takes up to
%% one
%% minute for the change to take effect. Also, if you change the policy
%% attached to the role you
%% specified in the `roleArn' field (for example, to correct an invalid
%% policy), it
%% takes up to five minutes for that change to take effect.
-spec put_logging_options(aws_client:aws_client(), put_logging_options_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_logging_options_errors(), tuple()}.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).

-spec put_logging_options(aws_client:aws_client(), put_logging_options_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_logging_options_errors(), tuple()}.
put_logging_options(Client, Input0, Options0) ->
    Method = put,
    Path = ["/logging"],
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

%% @doc Simulates the results of running a pipeline activity on a message
%% payload.
-spec run_pipeline_activity(aws_client:aws_client(), run_pipeline_activity_request()) ->
    {ok, run_pipeline_activity_response(), tuple()} |
    {error, any()} |
    {error, run_pipeline_activity_errors(), tuple()}.
run_pipeline_activity(Client, Input) ->
    run_pipeline_activity(Client, Input, []).

-spec run_pipeline_activity(aws_client:aws_client(), run_pipeline_activity_request(), proplists:proplist()) ->
    {ok, run_pipeline_activity_response(), tuple()} |
    {error, any()} |
    {error, run_pipeline_activity_errors(), tuple()}.
run_pipeline_activity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pipelineactivities/run"],
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

%% @doc Retrieves a sample of messages from the specified channel ingested
%% during the specified
%% timeframe.
%%
%% Up to 10 messages can be retrieved.
-spec sample_channel_data(aws_client:aws_client(), binary() | list()) ->
    {ok, sample_channel_data_response(), tuple()} |
    {error, any()} |
    {error, sample_channel_data_errors(), tuple()}.
sample_channel_data(Client, ChannelName)
  when is_map(Client) ->
    sample_channel_data(Client, ChannelName, #{}, #{}).

-spec sample_channel_data(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, sample_channel_data_response(), tuple()} |
    {error, any()} |
    {error, sample_channel_data_errors(), tuple()}.
sample_channel_data(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    sample_channel_data(Client, ChannelName, QueryMap, HeadersMap, []).

-spec sample_channel_data(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, sample_channel_data_response(), tuple()} |
    {error, any()} |
    {error, sample_channel_data_errors(), tuple()}.
sample_channel_data(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelName), "/sample"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"maxMessages">>, maps:get(<<"maxMessages">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the reprocessing of raw message data through the pipeline.
-spec start_pipeline_reprocessing(aws_client:aws_client(), binary() | list(), start_pipeline_reprocessing_request()) ->
    {ok, start_pipeline_reprocessing_response(), tuple()} |
    {error, any()} |
    {error, start_pipeline_reprocessing_errors(), tuple()}.
start_pipeline_reprocessing(Client, PipelineName, Input) ->
    start_pipeline_reprocessing(Client, PipelineName, Input, []).

-spec start_pipeline_reprocessing(aws_client:aws_client(), binary() | list(), start_pipeline_reprocessing_request(), proplists:proplist()) ->
    {ok, start_pipeline_reprocessing_response(), tuple()} |
    {error, any()} |
    {error, start_pipeline_reprocessing_errors(), tuple()}.
start_pipeline_reprocessing(Client, PipelineName, Input0, Options0) ->
    Method = post,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), "/reprocessing"],
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

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used to
%% manage a resource.
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
    Path = ["/tags"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given tags (metadata) from the resource.
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
    Method = delete,
    Path = ["/tags"],
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
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to update the settings of a channel.
-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelName, Input) ->
    update_channel(Client, ChannelName, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc Updates the settings of a dataset.
-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, DatasetName, Input) ->
    update_dataset(Client, DatasetName, Input, []).

-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, DatasetName, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), ""],
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

%% @doc Used to update the settings of a data store.
-spec update_datastore(aws_client:aws_client(), binary() | list(), update_datastore_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_datastore_errors(), tuple()}.
update_datastore(Client, DatastoreName, Input) ->
    update_datastore(Client, DatastoreName, Input, []).

-spec update_datastore(aws_client:aws_client(), binary() | list(), update_datastore_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_datastore_errors(), tuple()}.
update_datastore(Client, DatastoreName, Input0, Options0) ->
    Method = put,
    Path = ["/datastores/", aws_util:encode_uri(DatastoreName), ""],
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

%% @doc Updates the settings of a pipeline.
%%
%% You must specify both a `channel' and a
%% `datastore' activity and, optionally, as many as 23 additional
%% activities in the
%% `pipelineActivities' array.
-spec update_pipeline(aws_client:aws_client(), binary() | list(), update_pipeline_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, PipelineName, Input) ->
    update_pipeline(Client, PipelineName, Input, []).

-spec update_pipeline(aws_client:aws_client(), binary() | list(), update_pipeline_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), ""],
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
    Client1 = Client#{service => <<"iotanalytics">>},
    Host = build_host(<<"iotanalytics">>, Client1),
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
