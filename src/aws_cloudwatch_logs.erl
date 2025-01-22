%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use Amazon CloudWatch Logs to monitor, store, and access your
%% log files from
%% EC2 instances, CloudTrail, and other sources.
%%
%% You can then retrieve the associated
%% log data from CloudWatch Logs using the CloudWatch console. Alternatively,
%% you can use
%% CloudWatch Logs commands in the Amazon Web Services CLI, CloudWatch Logs
%% API, or CloudWatch
%% Logs SDK.
%%
%% You can use CloudWatch Logs to:
%%
%% Monitor logs from EC2 instances in real time: You
%% can use CloudWatch Logs to monitor applications and systems using log
%% data. For example,
%% CloudWatch Logs can track the number of errors that occur in your
%% application logs. Then,
%% it can send you a notification whenever the rate of errors exceeds a
%% threshold that you
%% specify. CloudWatch Logs uses your log data for monitoring so no code
%% changes are
%% required. For example, you can monitor application logs for specific
%% literal terms (such
%% as &quot;NullReferenceException&quot;). You can also count the number of
%% occurrences of a literal
%% term at a particular position in log data (such as &quot;404&quot; status
%% codes in an Apache access
%% log). When the term you are searching for is found, CloudWatch Logs
%% reports the data to a
%% CloudWatch metric that you specify.
%%
%% Monitor CloudTrail logged events: You can
%% create alarms in CloudWatch and receive notifications of particular API
%% activity as
%% captured by CloudTrail. You can use the notification to perform
%% troubleshooting.
%%
%% Archive log data: You can use CloudWatch Logs to
%% store your log data in highly durable storage. You can change the log
%% retention setting so
%% that any log events earlier than this setting are automatically deleted.
%% The CloudWatch
%% Logs agent helps to quickly send both rotated and non-rotated log data off
%% of a host and
%% into the log service. You can then access the raw log data when you need
%% it.
-module(aws_cloudwatch_logs).

-export([associate_kms_key/2,
         associate_kms_key/3,
         cancel_export_task/2,
         cancel_export_task/3,
         create_delivery/2,
         create_delivery/3,
         create_export_task/2,
         create_export_task/3,
         create_log_anomaly_detector/2,
         create_log_anomaly_detector/3,
         create_log_group/2,
         create_log_group/3,
         create_log_stream/2,
         create_log_stream/3,
         delete_account_policy/2,
         delete_account_policy/3,
         delete_data_protection_policy/2,
         delete_data_protection_policy/3,
         delete_delivery/2,
         delete_delivery/3,
         delete_delivery_destination/2,
         delete_delivery_destination/3,
         delete_delivery_destination_policy/2,
         delete_delivery_destination_policy/3,
         delete_delivery_source/2,
         delete_delivery_source/3,
         delete_destination/2,
         delete_destination/3,
         delete_index_policy/2,
         delete_index_policy/3,
         delete_integration/2,
         delete_integration/3,
         delete_log_anomaly_detector/2,
         delete_log_anomaly_detector/3,
         delete_log_group/2,
         delete_log_group/3,
         delete_log_stream/2,
         delete_log_stream/3,
         delete_metric_filter/2,
         delete_metric_filter/3,
         delete_query_definition/2,
         delete_query_definition/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_retention_policy/2,
         delete_retention_policy/3,
         delete_subscription_filter/2,
         delete_subscription_filter/3,
         delete_transformer/2,
         delete_transformer/3,
         describe_account_policies/2,
         describe_account_policies/3,
         describe_configuration_templates/2,
         describe_configuration_templates/3,
         describe_deliveries/2,
         describe_deliveries/3,
         describe_delivery_destinations/2,
         describe_delivery_destinations/3,
         describe_delivery_sources/2,
         describe_delivery_sources/3,
         describe_destinations/2,
         describe_destinations/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_field_indexes/2,
         describe_field_indexes/3,
         describe_index_policies/2,
         describe_index_policies/3,
         describe_log_groups/2,
         describe_log_groups/3,
         describe_log_streams/2,
         describe_log_streams/3,
         describe_metric_filters/2,
         describe_metric_filters/3,
         describe_queries/2,
         describe_queries/3,
         describe_query_definitions/2,
         describe_query_definitions/3,
         describe_resource_policies/2,
         describe_resource_policies/3,
         describe_subscription_filters/2,
         describe_subscription_filters/3,
         disassociate_kms_key/2,
         disassociate_kms_key/3,
         filter_log_events/2,
         filter_log_events/3,
         get_data_protection_policy/2,
         get_data_protection_policy/3,
         get_delivery/2,
         get_delivery/3,
         get_delivery_destination/2,
         get_delivery_destination/3,
         get_delivery_destination_policy/2,
         get_delivery_destination_policy/3,
         get_delivery_source/2,
         get_delivery_source/3,
         get_integration/2,
         get_integration/3,
         get_log_anomaly_detector/2,
         get_log_anomaly_detector/3,
         get_log_events/2,
         get_log_events/3,
         get_log_group_fields/2,
         get_log_group_fields/3,
         get_log_record/2,
         get_log_record/3,
         get_query_results/2,
         get_query_results/3,
         get_transformer/2,
         get_transformer/3,
         list_anomalies/2,
         list_anomalies/3,
         list_integrations/2,
         list_integrations/3,
         list_log_anomaly_detectors/2,
         list_log_anomaly_detectors/3,
         list_log_groups_for_query/2,
         list_log_groups_for_query/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tags_log_group/2,
         list_tags_log_group/3,
         put_account_policy/2,
         put_account_policy/3,
         put_data_protection_policy/2,
         put_data_protection_policy/3,
         put_delivery_destination/2,
         put_delivery_destination/3,
         put_delivery_destination_policy/2,
         put_delivery_destination_policy/3,
         put_delivery_source/2,
         put_delivery_source/3,
         put_destination/2,
         put_destination/3,
         put_destination_policy/2,
         put_destination_policy/3,
         put_index_policy/2,
         put_index_policy/3,
         put_integration/2,
         put_integration/3,
         put_log_events/2,
         put_log_events/3,
         put_metric_filter/2,
         put_metric_filter/3,
         put_query_definition/2,
         put_query_definition/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_retention_policy/2,
         put_retention_policy/3,
         put_subscription_filter/2,
         put_subscription_filter/3,
         put_transformer/2,
         put_transformer/3,
         start_live_tail/2,
         start_live_tail/3,
         start_query/2,
         start_query/3,
         stop_query/2,
         stop_query/3,
         tag_log_group/2,
         tag_log_group/3,
         tag_resource/2,
         tag_resource/3,
         test_metric_filter/2,
         test_metric_filter/3,
         test_transformer/2,
         test_transformer/3,
         untag_log_group/2,
         untag_log_group/3,
         untag_resource/2,
         untag_resource/3,
         update_anomaly/2,
         update_anomaly/3,
         update_delivery_configuration/2,
         update_delivery_configuration/3,
         update_log_anomaly_detector/2,
         update_log_anomaly_detector/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% invalid_sequence_token_exception() :: #{
%%   <<"expectedSequenceToken">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_sequence_token_exception() :: #{binary() => any()}.

%% Example:
%% list_anomalies_response() :: #{
%%   <<"anomalies">> => list(anomaly()()),
%%   <<"nextToken">> => string()
%% }
-type list_anomalies_response() :: #{binary() => any()}.

%% Example:
%% add_key_entry() :: #{
%%   <<"key">> => string(),
%%   <<"overwriteIfExists">> => boolean(),
%%   <<"value">> => string()
%% }
-type add_key_entry() :: #{binary() => any()}.

%% Example:
%% trim_string() :: #{
%%   <<"withKeys">> => list(string()())
%% }
-type trim_string() :: #{binary() => any()}.

%% Example:
%% describe_resource_policies_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_resource_policies_request() :: #{binary() => any()}.

%% Example:
%% delivery() :: #{
%%   <<"arn">> => string(),
%%   <<"deliveryDestinationArn">> => string(),
%%   <<"deliveryDestinationType">> => list(any()),
%%   <<"deliverySourceName">> => string(),
%%   <<"fieldDelimiter">> => string(),
%%   <<"id">> => string(),
%%   <<"recordFields">> => list(string()()),
%%   <<"s3DeliveryConfiguration">> => s3_delivery_configuration(),
%%   <<"tags">> => map()
%% }
-type delivery() :: #{binary() => any()}.

%% Example:
%% rejected_entity_info() :: #{
%%   <<"errorType">> => list(any())
%% }
-type rejected_entity_info() :: #{binary() => any()}.

%% Example:
%% delete_integration_response() :: #{

%% }
-type delete_integration_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_log_groups_request() :: #{
%%   <<"accountIdentifiers">> => list(string()()),
%%   <<"includeLinkedAccounts">> => boolean(),
%%   <<"limit">> => integer(),
%%   <<"logGroupClass">> => list(any()),
%%   <<"logGroupNamePattern">> => string(),
%%   <<"logGroupNamePrefix">> => string(),
%%   <<"nextToken">> => string()
%% }
-type describe_log_groups_request() :: #{binary() => any()}.

%% Example:
%% parse_cloudfront() :: #{
%%   <<"source">> => string()
%% }
-type parse_cloudfront() :: #{binary() => any()}.

%% Example:
%% copy_value() :: #{
%%   <<"entries">> => list(copy_value_entry()())
%% }
-type copy_value() :: #{binary() => any()}.

%% Example:
%% delete_query_definition_request() :: #{
%%   <<"queryDefinitionId">> := string()
%% }
-type delete_query_definition_request() :: #{binary() => any()}.

%% Example:
%% get_log_anomaly_detector_request() :: #{
%%   <<"anomalyDetectorArn">> := string()
%% }
-type get_log_anomaly_detector_request() :: #{binary() => any()}.

%% Example:
%% put_delivery_destination_policy_request() :: #{
%%   <<"deliveryDestinationName">> := string(),
%%   <<"deliveryDestinationPolicy">> := string()
%% }
-type put_delivery_destination_policy_request() :: #{binary() => any()}.

%% Example:
%% account_policy() :: #{
%%   <<"accountId">> => string(),
%%   <<"lastUpdatedTime">> => float(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string(),
%%   <<"policyType">> => list(any()),
%%   <<"scope">> => list(any()),
%%   <<"selectionCriteria">> => string()
%% }
-type account_policy() :: #{binary() => any()}.

%% Example:
%% open_search_data_source() :: #{
%%   <<"dataSourceName">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_data_source() :: #{binary() => any()}.

%% Example:
%% delete_index_policy_response() :: #{

%% }
-type delete_index_policy_response() :: #{binary() => any()}.

%% Example:
%% create_export_task_request() :: #{
%%   <<"destination">> := string(),
%%   <<"destinationPrefix">> => string(),
%%   <<"from">> := float(),
%%   <<"logGroupName">> := string(),
%%   <<"logStreamNamePrefix">> => string(),
%%   <<"taskName">> => string(),
%%   <<"to">> := float()
%% }
-type create_export_task_request() :: #{binary() => any()}.

%% Example:
%% tag_log_group_request() :: #{
%%   <<"logGroupName">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_log_group_request() :: #{binary() => any()}.

%% Example:
%% list_log_groups_for_query_response() :: #{
%%   <<"logGroupIdentifiers">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_log_groups_for_query_response() :: #{binary() => any()}.

%% Example:
%% type_converter() :: #{
%%   <<"entries">> => list(type_converter_entry()())
%% }
-type type_converter() :: #{binary() => any()}.

%% Example:
%% describe_query_definitions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryDefinitionNamePrefix">> => string(),
%%   <<"queryLanguage">> => list(any())
%% }
-type describe_query_definitions_request() :: #{binary() => any()}.

%% Example:
%% list_tags_log_group_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_log_group_response() :: #{binary() => any()}.

%% Example:
%% put_destination_response() :: #{
%%   <<"destination">> => destination()
%% }
-type put_destination_response() :: #{binary() => any()}.

%% Example:
%% filter_log_events_response() :: #{
%%   <<"events">> => list(filtered_log_event()()),
%%   <<"nextToken">> => string(),
%%   <<"searchedLogStreams">> => list(searched_log_stream()())
%% }
-type filter_log_events_response() :: #{binary() => any()}.

%% Example:
%% open_search_resource_config() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"dashboardViewerPrincipals">> => list(string()()),
%%   <<"dataSourceRoleArn">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"retentionDays">> => integer()
%% }
-type open_search_resource_config() :: #{binary() => any()}.

%% Example:
%% put_destination_request() :: #{
%%   <<"destinationName">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"targetArn">> := string()
%% }
-type put_destination_request() :: #{binary() => any()}.

%% Example:
%% get_query_results_response() :: #{
%%   <<"encryptionKey">> => string(),
%%   <<"queryLanguage">> => list(any()),
%%   <<"results">> => list(list(result_field()())()),
%%   <<"statistics">> => query_statistics(),
%%   <<"status">> => list(any())
%% }
-type get_query_results_response() :: #{binary() => any()}.

%% Example:
%% describe_queries_request() :: #{
%%   <<"logGroupName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryLanguage">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type describe_queries_request() :: #{binary() => any()}.

%% Example:
%% put_account_policy_response() :: #{
%%   <<"accountPolicy">> => account_policy()
%% }
-type put_account_policy_response() :: #{binary() => any()}.

%% Example:
%% get_transformer_request() :: #{
%%   <<"logGroupIdentifier">> := string()
%% }
-type get_transformer_request() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"attributes">> => map(),
%%   <<"keyAttributes">> => map()
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% substitute_string_entry() :: #{
%%   <<"from">> => string(),
%%   <<"source">> => string(),
%%   <<"to">> => string()
%% }
-type substitute_string_entry() :: #{binary() => any()}.

%% Example:
%% type_converter_entry() :: #{
%%   <<"key">> => string(),
%%   <<"type">> => list(any())
%% }
-type type_converter_entry() :: #{binary() => any()}.

%% Example:
%% split_string_entry() :: #{
%%   <<"delimiter">> => string(),
%%   <<"source">> => string()
%% }
-type split_string_entry() :: #{binary() => any()}.

%% Example:
%% copy_value_entry() :: #{
%%   <<"overwriteIfExists">> => boolean(),
%%   <<"source">> => string(),
%%   <<"target">> => string()
%% }
-type copy_value_entry() :: #{binary() => any()}.

%% Example:
%% describe_queries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queries">> => list(query_info()())
%% }
-type describe_queries_response() :: #{binary() => any()}.

%% Example:
%% put_log_events_request() :: #{
%%   <<"entity">> => entity(),
%%   <<"logEvents">> := list(input_log_event()()),
%%   <<"logGroupName">> := string(),
%%   <<"logStreamName">> := string(),
%%   <<"sequenceToken">> => string()
%% }
-type put_log_events_request() :: #{binary() => any()}.

%% Example:
%% put_account_policy_request() :: #{
%%   <<"policyDocument">> := string(),
%%   <<"policyName">> := string(),
%%   <<"policyType">> := list(any()),
%%   <<"scope">> => list(any()),
%%   <<"selectionCriteria">> => string()
%% }
-type put_account_policy_request() :: #{binary() => any()}.

%% Example:
%% data_already_accepted_exception() :: #{
%%   <<"expectedSequenceToken">> => string(),
%%   <<"message">> => string()
%% }
-type data_already_accepted_exception() :: #{binary() => any()}.

%% Example:
%% export_task_execution_info() :: #{
%%   <<"completionTime">> => float(),
%%   <<"creationTime">> => float()
%% }
-type export_task_execution_info() :: #{binary() => any()}.

%% Example:
%% put_data_protection_policy_request() :: #{
%%   <<"logGroupIdentifier">> := string(),
%%   <<"policyDocument">> := string()
%% }
-type put_data_protection_policy_request() :: #{binary() => any()}.

%% Example:
%% get_query_results_request() :: #{
%%   <<"queryId">> := string()
%% }
-type get_query_results_request() :: #{binary() => any()}.

%% Example:
%% substitute_string() :: #{
%%   <<"entries">> => list(substitute_string_entry()())
%% }
-type substitute_string() :: #{binary() => any()}.

%% Example:
%% get_delivery_request() :: #{
%%   <<"id">> := string()
%% }
-type get_delivery_request() :: #{binary() => any()}.

%% Example:
%% live_tail_session_metadata() :: #{
%%   <<"sampled">> => boolean()
%% }
-type live_tail_session_metadata() :: #{binary() => any()}.

%% Example:
%% create_log_group_request() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"logGroupClass">> => list(any()),
%%   <<"logGroupName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_log_group_request() :: #{binary() => any()}.

%% Example:
%% open_search_encryption_policy() :: #{
%%   <<"policyName">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_encryption_policy() :: #{binary() => any()}.

%% Example:
%% put_delivery_destination_request() :: #{
%%   <<"deliveryDestinationConfiguration">> := delivery_destination_configuration(),
%%   <<"name">> := string(),
%%   <<"outputFormat">> => list(any()),
%%   <<"tags">> => map()
%% }
-type put_delivery_destination_request() :: #{binary() => any()}.

%% Example:
%% get_delivery_source_response() :: #{
%%   <<"deliverySource">> => delivery_source()
%% }
-type get_delivery_source_response() :: #{binary() => any()}.

%% Example:
%% subscription_filter() :: #{
%%   <<"applyOnTransformedLogs">> => boolean(),
%%   <<"creationTime">> => float(),
%%   <<"destinationArn">> => string(),
%%   <<"distribution">> => list(any()),
%%   <<"filterName">> => string(),
%%   <<"filterPattern">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type subscription_filter() :: #{binary() => any()}.

%% Example:
%% describe_export_tasks_response() :: #{
%%   <<"exportTasks">> => list(export_task()()),
%%   <<"nextToken">> => string()
%% }
-type describe_export_tasks_response() :: #{binary() => any()}.

%% Example:
%% live_tail_session_start() :: #{
%%   <<"logEventFilterPattern">> => string(),
%%   <<"logGroupIdentifiers">> => list(string()()),
%%   <<"logStreamNamePrefixes">> => list(string()()),
%%   <<"logStreamNames">> => list(string()()),
%%   <<"requestId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type live_tail_session_start() :: #{binary() => any()}.

%% Example:
%% create_log_stream_request() :: #{
%%   <<"logGroupName">> := string(),
%%   <<"logStreamName">> := string()
%% }
-type create_log_stream_request() :: #{binary() => any()}.

%% Example:
%% get_log_record_response() :: #{
%%   <<"logRecord">> => map()
%% }
-type get_log_record_response() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% put_integration_request() :: #{
%%   <<"integrationName">> := string(),
%%   <<"integrationType">> := list(any()),
%%   <<"resourceConfig">> := list()
%% }
-type put_integration_request() :: #{binary() => any()}.

%% Example:
%% create_delivery_response() :: #{
%%   <<"delivery">> => delivery()
%% }
-type create_delivery_response() :: #{binary() => any()}.

%% Example:
%% describe_account_policies_response() :: #{
%%   <<"accountPolicies">> => list(account_policy()()),
%%   <<"nextToken">> => string()
%% }
-type describe_account_policies_response() :: #{binary() => any()}.

%% Example:
%% update_delivery_configuration_response() :: #{

%% }
-type update_delivery_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_anomaly_request() :: #{
%%   <<"anomalyDetectorArn">> := string(),
%%   <<"anomalyId">> => string(),
%%   <<"baseline">> => boolean(),
%%   <<"patternId">> => string(),
%%   <<"suppressionPeriod">> => suppression_period(),
%%   <<"suppressionType">> => list(any())
%% }
-type update_anomaly_request() :: #{binary() => any()}.

%% Example:
%% parse_w_a_f() :: #{
%%   <<"source">> => string()
%% }
-type parse_w_a_f() :: #{binary() => any()}.

%% Example:
%% put_retention_policy_request() :: #{
%%   <<"logGroupName">> := string(),
%%   <<"retentionInDays">> := integer()
%% }
-type put_retention_policy_request() :: #{binary() => any()}.

%% Example:
%% start_query_request() :: #{
%%   <<"endTime">> := float(),
%%   <<"limit">> => integer(),
%%   <<"logGroupIdentifiers">> => list(string()()),
%%   <<"logGroupName">> => string(),
%%   <<"logGroupNames">> => list(string()()),
%%   <<"queryLanguage">> => list(any()),
%%   <<"queryString">> := string(),
%%   <<"startTime">> := float()
%% }
-type start_query_request() :: #{binary() => any()}.

%% Example:
%% describe_deliveries_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_deliveries_request() :: #{binary() => any()}.

%% Example:
%% session_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type session_timeout_exception() :: #{binary() => any()}.

%% Example:
%% get_log_group_fields_response() :: #{
%%   <<"logGroupFields">> => list(log_group_field()())
%% }
-type get_log_group_fields_response() :: #{binary() => any()}.

%% Example:
%% update_log_anomaly_detector_request() :: #{
%%   <<"anomalyDetectorArn">> := string(),
%%   <<"anomalyVisibilityTime">> => float(),
%%   <<"enabled">> := boolean(),
%%   <<"evaluationFrequency">> => list(any()),
%%   <<"filterPattern">> => string()
%% }
-type update_log_anomaly_detector_request() :: #{binary() => any()}.

%% Example:
%% describe_metric_filters_request() :: #{
%%   <<"filterNamePrefix">> => string(),
%%   <<"limit">> => integer(),
%%   <<"logGroupName">> => string(),
%%   <<"metricName">> => string(),
%%   <<"metricNamespace">> => string(),
%%   <<"nextToken">> => string()
%% }
-type describe_metric_filters_request() :: #{binary() => any()}.

%% Example:
%% session_streaming_exception() :: #{
%%   <<"message">> => string()
%% }
-type session_streaming_exception() :: #{binary() => any()}.

%% Example:
%% put_data_protection_policy_response() :: #{
%%   <<"lastUpdatedTime">> => float(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"policyDocument">> => string()
%% }
-type put_data_protection_policy_response() :: #{binary() => any()}.

%% Example:
%% integration_summary() :: #{
%%   <<"integrationName">> => string(),
%%   <<"integrationStatus">> => list(any()),
%%   <<"integrationType">> => list(any())
%% }
-type integration_summary() :: #{binary() => any()}.

%% Example:
%% field_index() :: #{
%%   <<"fieldIndexName">> => string(),
%%   <<"firstEventTime">> => float(),
%%   <<"lastEventTime">> => float(),
%%   <<"lastScanTime">> => float(),
%%   <<"logGroupIdentifier">> => string()
%% }
-type field_index() :: #{binary() => any()}.

%% Example:
%% processor() :: #{
%%   <<"addKeys">> => add_keys(),
%%   <<"copyValue">> => copy_value(),
%%   <<"csv">> => csv(),
%%   <<"dateTimeConverter">> => date_time_converter(),
%%   <<"deleteKeys">> => delete_keys(),
%%   <<"grok">> => grok(),
%%   <<"listToMap">> => list_to_map(),
%%   <<"lowerCaseString">> => lower_case_string(),
%%   <<"moveKeys">> => move_keys(),
%%   <<"parseCloudfront">> => parse_cloudfront(),
%%   <<"parseJSON">> => parse_json(),
%%   <<"parseKeyValue">> => parse_key_value(),
%%   <<"parsePostgres">> => parse_postgres(),
%%   <<"parseRoute53">> => parse_route53(),
%%   <<"parseVPC">> => parse_vpc(),
%%   <<"parseWAF">> => parse_w_a_f(),
%%   <<"renameKeys">> => rename_keys(),
%%   <<"splitString">> => split_string(),
%%   <<"substituteString">> => substitute_string(),
%%   <<"trimString">> => trim_string(),
%%   <<"typeConverter">> => type_converter(),
%%   <<"upperCaseString">> => upper_case_string()
%% }
-type processor() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% put_index_policy_response() :: #{
%%   <<"indexPolicy">> => index_policy()
%% }
-type put_index_policy_response() :: #{binary() => any()}.

%% Example:
%% configuration_template() :: #{
%%   <<"allowedActionForAllowVendedLogsDeliveryForResource">> => string(),
%%   <<"allowedFieldDelimiters">> => list(string()()),
%%   <<"allowedFields">> => list(record_field()()),
%%   <<"allowedOutputFormats">> => list(list(any())()),
%%   <<"allowedSuffixPathFields">> => list(string()()),
%%   <<"defaultDeliveryConfigValues">> => configuration_template_delivery_config_values(),
%%   <<"deliveryDestinationType">> => list(any()),
%%   <<"logType">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"service">> => string()
%% }
-type configuration_template() :: #{binary() => any()}.

%% Example:
%% put_integration_response() :: #{
%%   <<"integrationName">> => string(),
%%   <<"integrationStatus">> => list(any())
%% }
-type put_integration_response() :: #{binary() => any()}.

%% Example:
%% describe_destinations_response() :: #{
%%   <<"destinations">> => list(destination()()),
%%   <<"nextToken">> => string()
%% }
-type describe_destinations_response() :: #{binary() => any()}.

%% Example:
%% live_tail_session_update() :: #{
%%   <<"sessionMetadata">> => live_tail_session_metadata(),
%%   <<"sessionResults">> => list(live_tail_session_log_event()())
%% }
-type live_tail_session_update() :: #{binary() => any()}.

%% Example:
%% get_transformer_response() :: #{
%%   <<"creationTime">> => float(),
%%   <<"lastModifiedTime">> => float(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"transformerConfig">> => list(processor()())
%% }
-type get_transformer_response() :: #{binary() => any()}.

%% Example:
%% transformed_log_record() :: #{
%%   <<"eventMessage">> => string(),
%%   <<"eventNumber">> => float(),
%%   <<"transformedEventMessage">> => string()
%% }
-type transformed_log_record() :: #{binary() => any()}.

%% Example:
%% query_compile_error_location() :: #{
%%   <<"endCharOffset">> => integer(),
%%   <<"startCharOffset">> => integer()
%% }
-type query_compile_error_location() :: #{binary() => any()}.

%% Example:
%% operation_aborted_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_aborted_exception() :: #{binary() => any()}.

%% Example:
%% list_integrations_request() :: #{
%%   <<"integrationNamePrefix">> => string(),
%%   <<"integrationStatus">> => list(any()),
%%   <<"integrationType">> => list(any())
%% }
-type list_integrations_request() :: #{binary() => any()}.

%% Example:
%% describe_query_definitions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queryDefinitions">> => list(query_definition()())
%% }
-type describe_query_definitions_response() :: #{binary() => any()}.

%% Example:
%% get_delivery_response() :: #{
%%   <<"delivery">> => delivery()
%% }
-type get_delivery_response() :: #{binary() => any()}.

%% Example:
%% describe_subscription_filters_request() :: #{
%%   <<"filterNamePrefix">> => string(),
%%   <<"limit">> => integer(),
%%   <<"logGroupName">> := string(),
%%   <<"nextToken">> => string()
%% }
-type describe_subscription_filters_request() :: #{binary() => any()}.

%% Example:
%% put_destination_policy_request() :: #{
%%   <<"accessPolicy">> := string(),
%%   <<"destinationName">> := string(),
%%   <<"forceUpdate">> => boolean()
%% }
-type put_destination_policy_request() :: #{binary() => any()}.

%% Example:
%% get_integration_response() :: #{
%%   <<"integrationDetails">> => list(),
%%   <<"integrationName">> => string(),
%%   <<"integrationStatus">> => list(any()),
%%   <<"integrationType">> => list(any())
%% }
-type get_integration_response() :: #{binary() => any()}.

%% Example:
%% lower_case_string() :: #{
%%   <<"withKeys">> => list(string()())
%% }
-type lower_case_string() :: #{binary() => any()}.

%% Example:
%% input_log_event() :: #{
%%   <<"message">> => string(),
%%   <<"timestamp">> => float()
%% }
-type input_log_event() :: #{binary() => any()}.

%% Example:
%% delete_retention_policy_request() :: #{
%%   <<"logGroupName">> := string()
%% }
-type delete_retention_policy_request() :: #{binary() => any()}.

%% Example:
%% malformed_query_exception() :: #{
%%   <<"message">> => string(),
%%   <<"queryCompileError">> => query_compile_error()
%% }
-type malformed_query_exception() :: #{binary() => any()}.

%% Example:
%% live_tail_session_log_event() :: #{
%%   <<"ingestionTime">> => float(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"logStreamName">> => string(),
%%   <<"message">> => string(),
%%   <<"timestamp">> => float()
%% }
-type live_tail_session_log_event() :: #{binary() => any()}.

%% Example:
%% s3_delivery_configuration() :: #{
%%   <<"enableHiveCompatiblePath">> => boolean(),
%%   <<"suffixPath">> => string()
%% }
-type s3_delivery_configuration() :: #{binary() => any()}.

%% Example:
%% get_delivery_destination_request() :: #{
%%   <<"name">> := string()
%% }
-type get_delivery_destination_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_integration_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"integrationName">> := string()
%% }
-type delete_integration_request() :: #{binary() => any()}.

%% Example:
%% describe_index_policies_request() :: #{
%%   <<"logGroupIdentifiers">> := list(string()()),
%%   <<"nextToken">> => string()
%% }
-type describe_index_policies_request() :: #{binary() => any()}.

%% Example:
%% describe_field_indexes_request() :: #{
%%   <<"logGroupIdentifiers">> := list(string()()),
%%   <<"nextToken">> => string()
%% }
-type describe_field_indexes_request() :: #{binary() => any()}.

%% Example:
%% delete_log_anomaly_detector_request() :: #{
%%   <<"anomalyDetectorArn">> := string()
%% }
-type delete_log_anomaly_detector_request() :: #{binary() => any()}.

%% Example:
%% disassociate_kms_key_request() :: #{
%%   <<"logGroupName">> => string(),
%%   <<"resourceIdentifier">> => string()
%% }
-type disassociate_kms_key_request() :: #{binary() => any()}.

%% Example:
%% delete_transformer_request() :: #{
%%   <<"logGroupIdentifier">> := string()
%% }
-type delete_transformer_request() :: #{binary() => any()}.

%% Example:
%% describe_export_tasks_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"statusCode">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type describe_export_tasks_request() :: #{binary() => any()}.

%% Example:
%% open_search_collection() :: #{
%%   <<"collectionArn">> => string(),
%%   <<"collectionEndpoint">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_collection() :: #{binary() => any()}.

%% Example:
%% get_log_anomaly_detector_response() :: #{
%%   <<"anomalyDetectorStatus">> => list(any()),
%%   <<"anomalyVisibilityTime">> => float(),
%%   <<"creationTimeStamp">> => float(),
%%   <<"detectorName">> => string(),
%%   <<"evaluationFrequency">> => list(any()),
%%   <<"filterPattern">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"lastModifiedTimeStamp">> => float(),
%%   <<"logGroupArnList">> => list(string()())
%% }
-type get_log_anomaly_detector_response() :: #{binary() => any()}.

%% Example:
%% delete_query_definition_response() :: #{
%%   <<"success">> => boolean()
%% }
-type delete_query_definition_response() :: #{binary() => any()}.

%% Example:
%% describe_log_streams_response() :: #{
%%   <<"logStreams">> => list(log_stream()()),
%%   <<"nextToken">> => string()
%% }
-type describe_log_streams_response() :: #{binary() => any()}.

%% Example:
%% put_delivery_destination_policy_response() :: #{
%%   <<"policy">> => policy()
%% }
-type put_delivery_destination_policy_response() :: #{binary() => any()}.

%% Example:
%% export_task_status() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type export_task_status() :: #{binary() => any()}.

%% Example:
%% delivery_destination_configuration() :: #{
%%   <<"destinationResourceArn">> => string()
%% }
-type delivery_destination_configuration() :: #{binary() => any()}.

%% Example:
%% suppression_period() :: #{
%%   <<"suppressionUnit">> => list(any()),
%%   <<"value">> => integer()
%% }
-type suppression_period() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% pattern_token() :: #{
%%   <<"dynamicTokenPosition">> => integer(),
%%   <<"enumerations">> => map(),
%%   <<"inferredTokenName">> => string(),
%%   <<"isDynamic">> => boolean(),
%%   <<"tokenString">> => string()
%% }
-type pattern_token() :: #{binary() => any()}.

%% Example:
%% delete_log_stream_request() :: #{
%%   <<"logGroupName">> := string(),
%%   <<"logStreamName">> := string()
%% }
-type delete_log_stream_request() :: #{binary() => any()}.

%% Example:
%% delete_index_policy_request() :: #{
%%   <<"logGroupIdentifier">> := string()
%% }
-type delete_index_policy_request() :: #{binary() => any()}.

%% Example:
%% test_transformer_response() :: #{
%%   <<"transformedLogs">> => list(transformed_log_record()())
%% }
-type test_transformer_response() :: #{binary() => any()}.

%% Example:
%% open_search_data_access_policy() :: #{
%%   <<"policyName">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_data_access_policy() :: #{binary() => any()}.

%% Example:
%% create_export_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type create_export_task_response() :: #{binary() => any()}.

%% Example:
%% describe_delivery_destinations_response() :: #{
%%   <<"deliveryDestinations">> => list(delivery_destination()()),
%%   <<"nextToken">> => string()
%% }
-type describe_delivery_destinations_response() :: #{binary() => any()}.

%% Example:
%% csv() :: #{
%%   <<"columns">> => list(string()()),
%%   <<"delimiter">> => string(),
%%   <<"quoteCharacter">> => string(),
%%   <<"source">> => string()
%% }
-type csv() :: #{binary() => any()}.

%% Example:
%% rename_key_entry() :: #{
%%   <<"key">> => string(),
%%   <<"overwriteIfExists">> => boolean(),
%%   <<"renameTo">> => string()
%% }
-type rename_key_entry() :: #{binary() => any()}.

%% Example:
%% associate_kms_key_request() :: #{
%%   <<"kmsKeyId">> := string(),
%%   <<"logGroupName">> => string(),
%%   <<"resourceIdentifier">> => string()
%% }
-type associate_kms_key_request() :: #{binary() => any()}.

%% Example:
%% get_log_record_request() :: #{
%%   <<"logRecordPointer">> := string(),
%%   <<"unmask">> => boolean()
%% }
-type get_log_record_request() :: #{binary() => any()}.

%% Example:
%% delete_delivery_destination_policy_request() :: #{
%%   <<"deliveryDestinationName">> := string()
%% }
-type delete_delivery_destination_policy_request() :: #{binary() => any()}.

%% Example:
%% metric_filter_match_record() :: #{
%%   <<"eventMessage">> => string(),
%%   <<"eventNumber">> => float(),
%%   <<"extractedValues">> => map()
%% }
-type metric_filter_match_record() :: #{binary() => any()}.

%% Example:
%% stop_query_request() :: #{
%%   <<"queryId">> := string()
%% }
-type stop_query_request() :: #{binary() => any()}.

%% Example:
%% open_search_workspace() :: #{
%%   <<"status">> => open_search_resource_status(),
%%   <<"workspaceId">> => string()
%% }
-type open_search_workspace() :: #{binary() => any()}.

%% Example:
%% stop_query_response() :: #{
%%   <<"success">> => boolean()
%% }
-type stop_query_response() :: #{binary() => any()}.

%% Example:
%% create_log_anomaly_detector_response() :: #{
%%   <<"anomalyDetectorArn">> => string()
%% }
-type create_log_anomaly_detector_response() :: #{binary() => any()}.

%% Example:
%% put_delivery_source_request() :: #{
%%   <<"logType">> := string(),
%%   <<"name">> := string(),
%%   <<"resourceArn">> := string(),
%%   <<"tags">> => map()
%% }
-type put_delivery_source_request() :: #{binary() => any()}.

%% Example:
%% describe_field_indexes_response() :: #{
%%   <<"fieldIndexes">> => list(field_index()()),
%%   <<"nextToken">> => string()
%% }
-type describe_field_indexes_response() :: #{binary() => any()}.

%% Example:
%% log_group_field() :: #{
%%   <<"name">> => string(),
%%   <<"percent">> => integer()
%% }
-type log_group_field() :: #{binary() => any()}.

%% Example:
%% open_search_network_policy() :: #{
%%   <<"policyName">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_network_policy() :: #{binary() => any()}.

%% Example:
%% put_transformer_request() :: #{
%%   <<"logGroupIdentifier">> := string(),
%%   <<"transformerConfig">> := list(processor()())
%% }
-type put_transformer_request() :: #{binary() => any()}.

%% Example:
%% log_stream() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => float(),
%%   <<"firstEventTimestamp">> => float(),
%%   <<"lastEventTimestamp">> => float(),
%%   <<"lastIngestionTime">> => float(),
%%   <<"logStreamName">> => string(),
%%   <<"storedBytes">> => float(),
%%   <<"uploadSequenceToken">> => string()
%% }
-type log_stream() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% put_metric_filter_request() :: #{
%%   <<"applyOnTransformedLogs">> => boolean(),
%%   <<"filterName">> := string(),
%%   <<"filterPattern">> := string(),
%%   <<"logGroupName">> := string(),
%%   <<"metricTransformations">> := list(metric_transformation()())
%% }
-type put_metric_filter_request() :: #{binary() => any()}.

%% Example:
%% get_integration_request() :: #{
%%   <<"integrationName">> := string()
%% }
-type get_integration_request() :: #{binary() => any()}.

%% Example:
%% describe_index_policies_response() :: #{
%%   <<"indexPolicies">> => list(index_policy()()),
%%   <<"nextToken">> => string()
%% }
-type describe_index_policies_response() :: #{binary() => any()}.

%% Example:
%% filter_log_events_request() :: #{
%%   <<"endTime">> => float(),
%%   <<"filterPattern">> => string(),
%%   <<"interleaved">> => boolean(),
%%   <<"limit">> => integer(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logStreamNamePrefix">> => string(),
%%   <<"logStreamNames">> => list(string()()),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => float(),
%%   <<"unmask">> => boolean()
%% }
-type filter_log_events_request() :: #{binary() => any()}.

%% Example:
%% describe_deliveries_response() :: #{
%%   <<"deliveries">> => list(delivery()()),
%%   <<"nextToken">> => string()
%% }
-type describe_deliveries_response() :: #{binary() => any()}.

%% Example:
%% grok() :: #{
%%   <<"match">> => string(),
%%   <<"source">> => string()
%% }
-type grok() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% delete_destination_request() :: #{
%%   <<"destinationName">> := string()
%% }
-type delete_destination_request() :: #{binary() => any()}.

%% Example:
%% parse_key_value() :: #{
%%   <<"destination">> => string(),
%%   <<"fieldDelimiter">> => string(),
%%   <<"keyPrefix">> => string(),
%%   <<"keyValueDelimiter">> => string(),
%%   <<"nonMatchValue">> => string(),
%%   <<"overwriteIfExists">> => boolean(),
%%   <<"source">> => string()
%% }
-type parse_key_value() :: #{binary() => any()}.

%% Example:
%% delete_account_policy_request() :: #{
%%   <<"policyName">> := string(),
%%   <<"policyType">> := list(any())
%% }
-type delete_account_policy_request() :: #{binary() => any()}.

%% Example:
%% describe_log_groups_response() :: #{
%%   <<"logGroups">> => list(log_group()()),
%%   <<"nextToken">> => string()
%% }
-type describe_log_groups_response() :: #{binary() => any()}.

%% Example:
%% upper_case_string() :: #{
%%   <<"withKeys">> => list(string()())
%% }
-type upper_case_string() :: #{binary() => any()}.

%% Example:
%% untag_log_group_request() :: #{
%%   <<"logGroupName">> := string(),
%%   <<"tags">> := list(string()())
%% }
-type untag_log_group_request() :: #{binary() => any()}.

%% Example:
%% put_subscription_filter_request() :: #{
%%   <<"applyOnTransformedLogs">> => boolean(),
%%   <<"destinationArn">> := string(),
%%   <<"distribution">> => list(any()),
%%   <<"filterName">> := string(),
%%   <<"filterPattern">> := string(),
%%   <<"logGroupName">> := string(),
%%   <<"roleArn">> => string()
%% }
-type put_subscription_filter_request() :: #{binary() => any()}.

%% Example:
%% describe_delivery_sources_response() :: #{
%%   <<"deliverySources">> => list(delivery_source()()),
%%   <<"nextToken">> => string()
%% }
-type describe_delivery_sources_response() :: #{binary() => any()}.

%% Example:
%% start_live_tail_response() :: #{
%%   <<"responseStream">> => list()
%% }
-type start_live_tail_response() :: #{binary() => any()}.

%% Example:
%% list_log_groups_for_query_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryId">> := string()
%% }
-type list_log_groups_for_query_request() :: #{binary() => any()}.

%% Example:
%% open_search_lifecycle_policy() :: #{
%%   <<"policyName">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_lifecycle_policy() :: #{binary() => any()}.

%% Example:
%% delivery_destination() :: #{
%%   <<"arn">> => string(),
%%   <<"deliveryDestinationConfiguration">> => delivery_destination_configuration(),
%%   <<"deliveryDestinationType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"outputFormat">> => list(any()),
%%   <<"tags">> => map()
%% }
-type delivery_destination() :: #{binary() => any()}.

%% Example:
%% list_to_map() :: #{
%%   <<"flatten">> => boolean(),
%%   <<"flattenedElement">> => list(any()),
%%   <<"key">> => string(),
%%   <<"source">> => string(),
%%   <<"target">> => string(),
%%   <<"valueKey">> => string()
%% }
-type list_to_map() :: #{binary() => any()}.

%% Example:
%% query_compile_error() :: #{
%%   <<"location">> => query_compile_error_location(),
%%   <<"message">> => string()
%% }
-type query_compile_error() :: #{binary() => any()}.

%% Example:
%% get_delivery_destination_response() :: #{
%%   <<"deliveryDestination">> => delivery_destination()
%% }
-type get_delivery_destination_response() :: #{binary() => any()}.

%% Example:
%% create_log_anomaly_detector_request() :: #{
%%   <<"anomalyVisibilityTime">> => float(),
%%   <<"detectorName">> => string(),
%%   <<"evaluationFrequency">> => list(any()),
%%   <<"filterPattern">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"logGroupArnList">> := list(string()()),
%%   <<"tags">> => map()
%% }
-type create_log_anomaly_detector_request() :: #{binary() => any()}.

%% Example:
%% get_delivery_destination_policy_response() :: #{
%%   <<"policy">> => policy()
%% }
-type get_delivery_destination_policy_response() :: #{binary() => any()}.

%% Example:
%% update_delivery_configuration_request() :: #{
%%   <<"fieldDelimiter">> => string(),
%%   <<"id">> := string(),
%%   <<"recordFields">> => list(string()()),
%%   <<"s3DeliveryConfiguration">> => s3_delivery_configuration()
%% }
-type update_delivery_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_log_group_fields_request() :: #{
%%   <<"logGroupIdentifier">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"time">> => float()
%% }
-type get_log_group_fields_request() :: #{binary() => any()}.

%% Example:
%% put_query_definition_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"logGroupNames">> => list(string()()),
%%   <<"name">> := string(),
%%   <<"queryDefinitionId">> => string(),
%%   <<"queryLanguage">> => list(any()),
%%   <<"queryString">> := string()
%% }
-type put_query_definition_request() :: #{binary() => any()}.

%% Example:
%% export_task() :: #{
%%   <<"destination">> => string(),
%%   <<"destinationPrefix">> => string(),
%%   <<"executionInfo">> => export_task_execution_info(),
%%   <<"from">> => float(),
%%   <<"logGroupName">> => string(),
%%   <<"status">> => export_task_status(),
%%   <<"taskId">> => string(),
%%   <<"taskName">> => string(),
%%   <<"to">> => float()
%% }
-type export_task() :: #{binary() => any()}.

%% Example:
%% metric_transformation() :: #{
%%   <<"defaultValue">> => float(),
%%   <<"dimensions">> => map(),
%%   <<"metricName">> => string(),
%%   <<"metricNamespace">> => string(),
%%   <<"metricValue">> => string(),
%%   <<"unit">> => list(any())
%% }
-type metric_transformation() :: #{binary() => any()}.

%% Example:
%% list_tags_log_group_request() :: #{
%%   <<"logGroupName">> := string()
%% }
-type list_tags_log_group_request() :: #{binary() => any()}.

%% Example:
%% resource_policy() :: #{
%%   <<"lastUpdatedTime">> => float(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string()
%% }
-type resource_policy() :: #{binary() => any()}.

%% Example:
%% anomaly() :: #{
%%   <<"active">> => boolean(),
%%   <<"anomalyDetectorArn">> => string(),
%%   <<"anomalyId">> => string(),
%%   <<"description">> => string(),
%%   <<"firstSeen">> => float(),
%%   <<"histogram">> => map(),
%%   <<"isPatternLevelSuppression">> => boolean(),
%%   <<"lastSeen">> => float(),
%%   <<"logGroupArnList">> => list(string()()),
%%   <<"logSamples">> => list(log_event()()),
%%   <<"patternId">> => string(),
%%   <<"patternRegex">> => string(),
%%   <<"patternString">> => string(),
%%   <<"patternTokens">> => list(pattern_token()()),
%%   <<"priority">> => string(),
%%   <<"state">> => list(any()),
%%   <<"suppressed">> => boolean(),
%%   <<"suppressedDate">> => float(),
%%   <<"suppressedUntil">> => float()
%% }
-type anomaly() :: #{binary() => any()}.

%% Example:
%% list_anomalies_request() :: #{
%%   <<"anomalyDetectorArn">> => string(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"suppressionState">> => list(any())
%% }
-type list_anomalies_request() :: #{binary() => any()}.

%% Example:
%% put_delivery_destination_response() :: #{
%%   <<"deliveryDestination">> => delivery_destination()
%% }
-type put_delivery_destination_response() :: #{binary() => any()}.

%% Example:
%% describe_delivery_sources_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_delivery_sources_request() :: #{binary() => any()}.

%% Example:
%% rename_keys() :: #{
%%   <<"entries">> => list(rename_key_entry()())
%% }
-type rename_keys() :: #{binary() => any()}.

%% Example:
%% start_query_response() :: #{
%%   <<"queryId">> => string()
%% }
-type start_query_response() :: #{binary() => any()}.

%% Example:
%% start_live_tail_request() :: #{
%%   <<"logEventFilterPattern">> => string(),
%%   <<"logGroupIdentifiers">> := list(string()()),
%%   <<"logStreamNamePrefixes">> => list(string()()),
%%   <<"logStreamNames">> => list(string()())
%% }
-type start_live_tail_request() :: #{binary() => any()}.

%% Example:
%% filtered_log_event() :: #{
%%   <<"eventId">> => string(),
%%   <<"ingestionTime">> => float(),
%%   <<"logStreamName">> => string(),
%%   <<"message">> => string(),
%%   <<"timestamp">> => float()
%% }
-type filtered_log_event() :: #{binary() => any()}.

%% Example:
%% delete_data_protection_policy_request() :: #{
%%   <<"logGroupIdentifier">> := string()
%% }
-type delete_data_protection_policy_request() :: #{binary() => any()}.

%% Example:
%% policy() :: #{
%%   <<"deliveryDestinationPolicy">> => string()
%% }
-type policy() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_delivery_source_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_delivery_source_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% open_search_integration_details() :: #{
%%   <<"accessPolicy">> => open_search_data_access_policy(),
%%   <<"application">> => open_search_application(),
%%   <<"collection">> => open_search_collection(),
%%   <<"dataSource">> => open_search_data_source(),
%%   <<"encryptionPolicy">> => open_search_encryption_policy(),
%%   <<"lifecyclePolicy">> => open_search_lifecycle_policy(),
%%   <<"networkPolicy">> => open_search_network_policy(),
%%   <<"workspace">> => open_search_workspace()
%% }
-type open_search_integration_details() :: #{binary() => any()}.

%% Example:
%% move_key_entry() :: #{
%%   <<"overwriteIfExists">> => boolean(),
%%   <<"source">> => string(),
%%   <<"target">> => string()
%% }
-type move_key_entry() :: #{binary() => any()}.

%% Example:
%% get_log_events_request() :: #{
%%   <<"endTime">> => float(),
%%   <<"limit">> => integer(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logStreamName">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"startFromHead">> => boolean(),
%%   <<"startTime">> => float(),
%%   <<"unmask">> => boolean()
%% }
-type get_log_events_request() :: #{binary() => any()}.

%% Example:
%% add_keys() :: #{
%%   <<"entries">> => list(add_key_entry()())
%% }
-type add_keys() :: #{binary() => any()}.

%% Example:
%% rejected_log_events_info() :: #{
%%   <<"expiredLogEventEndIndex">> => integer(),
%%   <<"tooNewLogEventStartIndex">> => integer(),
%%   <<"tooOldLogEventEndIndex">> => integer()
%% }
-type rejected_log_events_info() :: #{binary() => any()}.

%% Example:
%% get_data_protection_policy_request() :: #{
%%   <<"logGroupIdentifier">> := string()
%% }
-type get_data_protection_policy_request() :: #{binary() => any()}.

%% Example:
%% get_log_events_response() :: #{
%%   <<"events">> => list(output_log_event()()),
%%   <<"nextBackwardToken">> => string(),
%%   <<"nextForwardToken">> => string()
%% }
-type get_log_events_response() :: #{binary() => any()}.

%% Example:
%% output_log_event() :: #{
%%   <<"ingestionTime">> => float(),
%%   <<"message">> => string(),
%%   <<"timestamp">> => float()
%% }
-type output_log_event() :: #{binary() => any()}.

%% Example:
%% searched_log_stream() :: #{
%%   <<"logStreamName">> => string(),
%%   <<"searchedCompletely">> => boolean()
%% }
-type searched_log_stream() :: #{binary() => any()}.

%% Example:
%% describe_account_policies_request() :: #{
%%   <<"accountIdentifiers">> => list(string()()),
%%   <<"nextToken">> => string(),
%%   <<"policyName">> => string(),
%%   <<"policyType">> := list(any())
%% }
-type describe_account_policies_request() :: #{binary() => any()}.

%% Example:
%% metric_filter() :: #{
%%   <<"applyOnTransformedLogs">> => boolean(),
%%   <<"creationTime">> => float(),
%%   <<"filterName">> => string(),
%%   <<"filterPattern">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"metricTransformations">> => list(metric_transformation()())
%% }
-type metric_filter() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% destination() :: #{
%%   <<"accessPolicy">> => string(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => float(),
%%   <<"destinationName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"targetArn">> => string()
%% }
-type destination() :: #{binary() => any()}.

%% Example:
%% put_log_events_response() :: #{
%%   <<"nextSequenceToken">> => string(),
%%   <<"rejectedEntityInfo">> => rejected_entity_info(),
%%   <<"rejectedLogEventsInfo">> => rejected_log_events_info()
%% }
-type put_log_events_response() :: #{binary() => any()}.

%% Example:
%% put_delivery_source_response() :: #{
%%   <<"deliverySource">> => delivery_source()
%% }
-type put_delivery_source_response() :: #{binary() => any()}.

%% Example:
%% delete_delivery_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_delivery_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% log_group() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => float(),
%%   <<"dataProtectionStatus">> => list(any()),
%%   <<"inheritedProperties">> => list(list(any())()),
%%   <<"kmsKeyId">> => string(),
%%   <<"logGroupArn">> => string(),
%%   <<"logGroupClass">> => list(any()),
%%   <<"logGroupName">> => string(),
%%   <<"metricFilterCount">> => integer(),
%%   <<"retentionInDays">> => integer(),
%%   <<"storedBytes">> => float()
%% }
-type log_group() :: #{binary() => any()}.

%% Example:
%% list_log_anomaly_detectors_request() :: #{
%%   <<"filterLogGroupArn">> => string(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_log_anomaly_detectors_request() :: #{binary() => any()}.

%% Example:
%% describe_log_streams_request() :: #{
%%   <<"descending">> => boolean(),
%%   <<"limit">> => integer(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logStreamNamePrefix">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"orderBy">> => list(any())
%% }
-type describe_log_streams_request() :: #{binary() => any()}.

%% Example:
%% result_field() :: #{
%%   <<"field">> => string(),
%%   <<"value">> => string()
%% }
-type result_field() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"resourcePolicy">> => resource_policy()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% get_delivery_source_request() :: #{
%%   <<"name">> := string()
%% }
-type get_delivery_source_request() :: #{binary() => any()}.

%% Example:
%% date_time_converter() :: #{
%%   <<"locale">> => string(),
%%   <<"matchPatterns">> => list(string()()),
%%   <<"source">> => string(),
%%   <<"sourceTimezone">> => string(),
%%   <<"target">> => string(),
%%   <<"targetFormat">> => string(),
%%   <<"targetTimezone">> => string()
%% }
-type date_time_converter() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_metric_filter_request() :: #{
%%   <<"filterName">> := string(),
%%   <<"logGroupName">> := string()
%% }
-type delete_metric_filter_request() :: #{binary() => any()}.

%% Example:
%% describe_resource_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourcePolicies">> => list(resource_policy()())
%% }
-type describe_resource_policies_response() :: #{binary() => any()}.

%% Example:
%% describe_subscription_filters_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"subscriptionFilters">> => list(subscription_filter()())
%% }
-type describe_subscription_filters_response() :: #{binary() => any()}.

%% Example:
%% query_statistics() :: #{
%%   <<"bytesScanned">> => float(),
%%   <<"estimatedBytesSkipped">> => float(),
%%   <<"estimatedRecordsSkipped">> => float(),
%%   <<"logGroupsScanned">> => float(),
%%   <<"recordsMatched">> => float(),
%%   <<"recordsScanned">> => float()
%% }
-type query_statistics() :: #{binary() => any()}.

%% Example:
%% get_data_protection_policy_response() :: #{
%%   <<"lastUpdatedTime">> => float(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"policyDocument">> => string()
%% }
-type get_data_protection_policy_response() :: #{binary() => any()}.

%% Example:
%% open_search_resource_status() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type open_search_resource_status() :: #{binary() => any()}.

%% Example:
%% delivery_source() :: #{
%%   <<"arn">> => string(),
%%   <<"logType">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceArns">> => list(string()()),
%%   <<"service">> => string(),
%%   <<"tags">> => map()
%% }
-type delivery_source() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"policyName">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% anomaly_detector() :: #{
%%   <<"anomalyDetectorArn">> => string(),
%%   <<"anomalyDetectorStatus">> => list(any()),
%%   <<"anomalyVisibilityTime">> => float(),
%%   <<"creationTimeStamp">> => float(),
%%   <<"detectorName">> => string(),
%%   <<"evaluationFrequency">> => list(any()),
%%   <<"filterPattern">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"lastModifiedTimeStamp">> => float(),
%%   <<"logGroupArnList">> => list(string()())
%% }
-type anomaly_detector() :: #{binary() => any()}.

%% Example:
%% test_transformer_request() :: #{
%%   <<"logEventMessages">> := list(string()()),
%%   <<"transformerConfig">> := list(processor()())
%% }
-type test_transformer_request() :: #{binary() => any()}.

%% Example:
%% list_log_anomaly_detectors_response() :: #{
%%   <<"anomalyDetectors">> => list(anomaly_detector()()),
%%   <<"nextToken">> => string()
%% }
-type list_log_anomaly_detectors_response() :: #{binary() => any()}.

%% Example:
%% parse_route53() :: #{
%%   <<"source">> => string()
%% }
-type parse_route53() :: #{binary() => any()}.

%% Example:
%% delete_delivery_destination_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_delivery_destination_request() :: #{binary() => any()}.

%% Example:
%% cancel_export_task_request() :: #{
%%   <<"taskId">> := string()
%% }
-type cancel_export_task_request() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_configuration_templates_response() :: #{
%%   <<"configurationTemplates">> => list(configuration_template()()),
%%   <<"nextToken">> => string()
%% }
-type describe_configuration_templates_response() :: #{binary() => any()}.

%% Example:
%% delete_subscription_filter_request() :: #{
%%   <<"filterName">> := string(),
%%   <<"logGroupName">> := string()
%% }
-type delete_subscription_filter_request() :: #{binary() => any()}.

%% Example:
%% describe_destinations_request() :: #{
%%   <<"DestinationNamePrefix">> => string(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_destinations_request() :: #{binary() => any()}.

%% Example:
%% test_metric_filter_response() :: #{
%%   <<"matches">> => list(metric_filter_match_record()())
%% }
-type test_metric_filter_response() :: #{binary() => any()}.

%% Example:
%% move_keys() :: #{
%%   <<"entries">> => list(move_key_entry()())
%% }
-type move_keys() :: #{binary() => any()}.

%% Example:
%% parse_json() :: #{
%%   <<"destination">> => string(),
%%   <<"source">> => string()
%% }
-type parse_json() :: #{binary() => any()}.

%% Example:
%% open_search_application() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationEndpoint">> => string(),
%%   <<"applicationId">> => string(),
%%   <<"status">> => open_search_resource_status()
%% }
-type open_search_application() :: #{binary() => any()}.

%% Example:
%% query_definition() :: #{
%%   <<"lastModified">> => float(),
%%   <<"logGroupNames">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"queryDefinitionId">> => string(),
%%   <<"queryLanguage">> => list(any()),
%%   <<"queryString">> => string()
%% }
-type query_definition() :: #{binary() => any()}.

%% Example:
%% delete_keys() :: #{
%%   <<"withKeys">> => list(string()())
%% }
-type delete_keys() :: #{binary() => any()}.

%% Example:
%% get_delivery_destination_policy_request() :: #{
%%   <<"deliveryDestinationName">> := string()
%% }
-type get_delivery_destination_policy_request() :: #{binary() => any()}.

%% Example:
%% describe_delivery_destinations_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_delivery_destinations_request() :: #{binary() => any()}.

%% Example:
%% create_delivery_request() :: #{
%%   <<"deliveryDestinationArn">> := string(),
%%   <<"deliverySourceName">> := string(),
%%   <<"fieldDelimiter">> => string(),
%%   <<"recordFields">> => list(string()()),
%%   <<"s3DeliveryConfiguration">> => s3_delivery_configuration(),
%%   <<"tags">> => map()
%% }
-type create_delivery_request() :: #{binary() => any()}.

%% Example:
%% record_field() :: #{
%%   <<"mandatory">> => boolean(),
%%   <<"name">> => string()
%% }
-type record_field() :: #{binary() => any()}.

%% Example:
%% delete_log_group_request() :: #{
%%   <<"logGroupName">> := string()
%% }
-type delete_log_group_request() :: #{binary() => any()}.

%% Example:
%% test_metric_filter_request() :: #{
%%   <<"filterPattern">> := string(),
%%   <<"logEventMessages">> := list(string()())
%% }
-type test_metric_filter_request() :: #{binary() => any()}.

%% Example:
%% parse_postgres() :: #{
%%   <<"source">> => string()
%% }
-type parse_postgres() :: #{binary() => any()}.

%% Example:
%% query_info() :: #{
%%   <<"createTime">> => float(),
%%   <<"logGroupName">> => string(),
%%   <<"queryId">> => string(),
%%   <<"queryLanguage">> => list(any()),
%%   <<"queryString">> => string(),
%%   <<"status">> => list(any())
%% }
-type query_info() :: #{binary() => any()}.

%% Example:
%% configuration_template_delivery_config_values() :: #{
%%   <<"fieldDelimiter">> => string(),
%%   <<"recordFields">> => list(string()()),
%%   <<"s3DeliveryConfiguration">> => s3_delivery_configuration()
%% }
-type configuration_template_delivery_config_values() :: #{binary() => any()}.

%% Example:
%% parse_vpc() :: #{
%%   <<"source">> => string()
%% }
-type parse_vpc() :: #{binary() => any()}.

%% Example:
%% put_index_policy_request() :: #{
%%   <<"logGroupIdentifier">> := string(),
%%   <<"policyDocument">> := string()
%% }
-type put_index_policy_request() :: #{binary() => any()}.

%% Example:
%% split_string() :: #{
%%   <<"entries">> => list(split_string_entry()())
%% }
-type split_string() :: #{binary() => any()}.

%% Example:
%% unrecognized_client_exception() :: #{
%%   <<"message">> => string()
%% }
-type unrecognized_client_exception() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% describe_configuration_templates_request() :: #{
%%   <<"deliveryDestinationTypes">> => list(list(any())()),
%%   <<"limit">> => integer(),
%%   <<"logTypes">> => list(string()()),
%%   <<"nextToken">> => string(),
%%   <<"resourceTypes">> => list(string()()),
%%   <<"service">> => string()
%% }
-type describe_configuration_templates_request() :: #{binary() => any()}.

%% Example:
%% describe_metric_filters_response() :: #{
%%   <<"metricFilters">> => list(metric_filter()()),
%%   <<"nextToken">> => string()
%% }
-type describe_metric_filters_response() :: #{binary() => any()}.

%% Example:
%% index_policy() :: #{
%%   <<"lastUpdateTime">> => float(),
%%   <<"logGroupIdentifier">> => string(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string(),
%%   <<"source">> => list(any())
%% }
-type index_policy() :: #{binary() => any()}.

%% Example:
%% log_event() :: #{
%%   <<"message">> => string(),
%%   <<"timestamp">> => float()
%% }
-type log_event() :: #{binary() => any()}.

%% Example:
%% list_integrations_response() :: #{
%%   <<"integrationSummaries">> => list(integration_summary()())
%% }
-type list_integrations_response() :: #{binary() => any()}.

%% Example:
%% put_query_definition_response() :: #{
%%   <<"queryDefinitionId">> => string()
%% }
-type put_query_definition_response() :: #{binary() => any()}.

-type associate_kms_key_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type cancel_export_task_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type create_delivery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_export_task_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type create_log_anomaly_detector_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type create_log_group_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    operation_aborted_exception().

-type create_log_stream_errors() ::
    resource_already_exists_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type delete_account_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_data_protection_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_delivery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_delivery_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_delivery_destination_policy_errors() ::
    validation_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_delivery_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_destination_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_index_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_integration_errors() ::
    validation_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type delete_log_anomaly_detector_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_log_group_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_log_stream_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_metric_filter_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_query_definition_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type delete_resource_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type delete_retention_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_subscription_filter_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type delete_transformer_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception() | 
    invalid_operation_exception().

-type describe_account_policies_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type describe_configuration_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type describe_deliveries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception().

-type describe_delivery_destinations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception().

-type describe_delivery_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception().

-type describe_destinations_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type describe_export_tasks_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type describe_field_indexes_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type describe_index_policies_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type describe_log_groups_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type describe_log_streams_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type describe_metric_filters_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type describe_queries_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type describe_query_definitions_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type describe_resource_policies_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type describe_subscription_filters_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type disassociate_kms_key_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type filter_log_events_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_data_protection_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type get_delivery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_delivery_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_delivery_destination_policy_errors() ::
    validation_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_delivery_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_integration_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_log_anomaly_detector_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type get_log_events_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_log_group_fields_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_log_record_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_query_results_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_transformer_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_anomalies_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type list_integrations_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type list_log_anomaly_detectors_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type list_log_groups_for_query_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type list_tags_log_group_errors() ::
    service_unavailable_exception() | 
    resource_not_found_exception().

-type put_account_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    operation_aborted_exception().

-type put_data_protection_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type put_delivery_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_delivery_destination_policy_errors() ::
    validation_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_delivery_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_destination_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    operation_aborted_exception().

-type put_destination_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    operation_aborted_exception().

-type put_index_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type put_integration_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type put_log_events_errors() ::
    unrecognized_client_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    data_already_accepted_exception() | 
    invalid_sequence_token_exception().

-type put_metric_filter_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception() | 
    invalid_operation_exception().

-type put_query_definition_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type put_resource_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type put_retention_policy_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type put_subscription_filter_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception() | 
    invalid_operation_exception().

-type put_transformer_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception() | 
    invalid_operation_exception().

-type start_live_tail_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type start_query_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    malformed_query_exception().

-type stop_query_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type tag_log_group_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type test_metric_filter_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception().

-type test_transformer_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    invalid_operation_exception().

-type untag_log_group_errors() ::
    resource_not_found_exception().

-type untag_resource_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type update_anomaly_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

-type update_delivery_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_log_anomaly_detector_errors() ::
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    operation_aborted_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified KMS key with either one log group in the
%% account, or with all stored
%% CloudWatch Logs query insights results in the account.
%%
%% When you use `AssociateKmsKey', you specify either the
%% `logGroupName' parameter
%% or the `resourceIdentifier' parameter. You can't specify both of
%% those parameters in the same operation.
%%
%% Specify the `logGroupName' parameter to cause log events ingested into
%% that log group to
%% be encrypted with that key. Only the log events ingested after the key is
%% associated are encrypted with that key.
%%
%% Associating a KMS key with a log group overrides any existing
%% associations between the log group and a KMS key. After a KMS key is
%% associated with a log group, all newly ingested data for the log group is
%% encrypted
%% using the KMS key. This association is stored as long as the data
%% encrypted
%% with the KMS key is still within CloudWatch Logs. This enables CloudWatch
%% Logs to decrypt this data whenever it is requested.
%%
%% Associating
%% a key with a log group does not cause the results of queries of that log
%% group to be encrypted with that key. To have query
%% results encrypted with a KMS key, you must use an `AssociateKmsKey'
%% operation with the `resourceIdentifier'
%% parameter that specifies a `query-result' resource.
%%
%% Specify the `resourceIdentifier' parameter with a `query-result'
%% resource,
%% to use that key to encrypt the stored results of all future
%% StartQuery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
%% operations in the account. The response from a
%% GetQueryResults:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
%% operation will still return
%% the query results in plain text.
%%
%% Even if you have not associated a key with your query results, the query
%% results are encrypted when stored,
%% using the default CloudWatch Logs method.
%%
%% If you run a query from a monitoring account that queries logs in a source
%% account, the
%% query results key from the monitoring account, if any, is used.
%%
%% If you delete the key that is used to encrypt log events or log group
%% query results,
%% then all the associated stored log events or query results that were
%% encrypted with that key
%% will be unencryptable and unusable.
%%
%% CloudWatch Logs supports only symmetric KMS keys. Do not use an associate
%% an asymmetric KMS key with your log group or query results. For more
%% information, see Using
%% Symmetric and Asymmetric Keys:
%% https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html.
%%
%% It can take up to 5 minutes for this operation to take effect.
%%
%% If you attempt to associate a KMS key with a log group but the KMS key
%% does not exist or the KMS key is disabled, you receive an
%% `InvalidParameterException' error.
-spec associate_kms_key(aws_client:aws_client(), associate_kms_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_kms_key_errors(), tuple()}.
associate_kms_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_kms_key(Client, Input, []).

-spec associate_kms_key(aws_client:aws_client(), associate_kms_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_kms_key_errors(), tuple()}.
associate_kms_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateKmsKey">>, Input, Options).

%% @doc Cancels the specified export task.
%%
%% The task must be in the `PENDING' or `RUNNING' state.
-spec cancel_export_task(aws_client:aws_client(), cancel_export_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_export_task_errors(), tuple()}.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).

-spec cancel_export_task(aws_client:aws_client(), cancel_export_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_export_task_errors(), tuple()}.
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Creates a delivery.
%%
%% A delivery is a connection between a logical delivery source and a logical
%% delivery destination
%% that you have already created.
%%
%% Only some Amazon Web Services services support being configured as a
%% delivery source using this operation. These services are listed
%% as Supported [V2 Permissions] in the table at
%% Enabling
%% logging from Amazon Web Services services.:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
%%
%% A delivery destination can represent a log group in CloudWatch Logs, an
%% Amazon S3 bucket, or a delivery stream in Firehose.
%%
%% To configure logs delivery between a supported Amazon Web Services service
%% and a destination, you must do the following:
%%
%% Create a delivery source, which is a logical object that represents the
%% resource that is actually
%% sending the logs. For more
%% information, see PutDeliverySource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html.
%%
%% Create a delivery destination, which is a logical object that represents
%% the actual
%% delivery destination. For more
%% information, see PutDeliveryDestination:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html.
%%
%% If you are delivering logs cross-account, you must use
%% PutDeliveryDestinationPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
%% in the destination account to assign an IAM policy to the
%% destination. This policy allows delivery to that destination.
%%
%% Use `CreateDelivery' to create a delivery by pairing exactly one
%% delivery source and one delivery destination.
%%
%% You can configure a single delivery source to send logs to multiple
%% destinations by creating multiple deliveries. You
%% can also create multiple deliveries to configure multiple delivery sources
%% to send logs to the same delivery destination.
%%
%% To update an existing delivery configuration, use
%% UpdateDeliveryConfiguration:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html.
-spec create_delivery(aws_client:aws_client(), create_delivery_request()) ->
    {ok, create_delivery_response(), tuple()} |
    {error, any()} |
    {error, create_delivery_errors(), tuple()}.
create_delivery(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_delivery(Client, Input, []).

-spec create_delivery(aws_client:aws_client(), create_delivery_request(), proplists:proplist()) ->
    {ok, create_delivery_response(), tuple()} |
    {error, any()} |
    {error, create_delivery_errors(), tuple()}.
create_delivery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDelivery">>, Input, Options).

%% @doc Creates an export task so that you can efficiently export data from a
%% log group to an
%% Amazon S3 bucket.
%%
%% When you perform a `CreateExportTask' operation, you must use
%% credentials that have permission to write to the S3 bucket that you
%% specify as the
%% destination.
%%
%% Exporting log data to S3 buckets that are encrypted by KMS is supported.
%% Exporting log data to Amazon S3 buckets that have S3 Object Lock enabled
%% with a
%% retention period is also supported.
%%
%% Exporting to S3 buckets that are encrypted with AES-256 is supported.
%%
%% This is an asynchronous call. If all the required information is provided,
%% this
%% operation initiates an export task and responds with the ID of the task.
%% After the task has started,
%% you can use DescribeExportTasks:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html
%% to get the status of the export task. Each account can
%% only have one active (`RUNNING' or `PENDING') export task at a
%% time.
%% To cancel an export task, use CancelExportTask:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html.
%%
%% You can export logs from multiple log groups or multiple time ranges to
%% the same S3
%% bucket. To separate log data for each export task, specify a prefix to be
%% used as the Amazon
%% S3 key prefix for all exported objects.
%%
%% We recommend that you don't regularly export to Amazon S3 as a way to
%% continuously archive your logs. For that use case, we instaed recommend
%% that
%% you use subscriptions. For more information about subscriptions, see
%% Real-time processing of log data with subscriptions:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions.html.
%%
%% Time-based sorting on chunks of log data inside an exported file is not
%% guaranteed. You can
%% sort the exported log field data by using Linux utilities.
-spec create_export_task(aws_client:aws_client(), create_export_task_request()) ->
    {ok, create_export_task_response(), tuple()} |
    {error, any()} |
    {error, create_export_task_errors(), tuple()}.
create_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_export_task(Client, Input, []).

-spec create_export_task(aws_client:aws_client(), create_export_task_request(), proplists:proplist()) ->
    {ok, create_export_task_response(), tuple()} |
    {error, any()} |
    {error, create_export_task_errors(), tuple()}.
create_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExportTask">>, Input, Options).

%% @doc Creates an anomaly detector that regularly scans one or more
%% log groups and look for patterns
%% and anomalies in the logs.
%%
%% An anomaly detector can help surface issues by automatically discovering
%% anomalies in your log event traffic.
%% An anomaly detector uses machine learning algorithms to scan log events
%% and find patterns.
%%
%% A pattern is a shared text structure that recurs among your log fields.
%% Patterns provide a useful tool for
%% analyzing large sets of logs because a large number of log events can
%% often be
%% compressed into a few patterns.
%%
%% The anomaly detector uses pattern recognition to find `anomalies',
%% which are unusual log
%% events. It uses the `evaluationFrequency' to compare current log
%% events and patterns
%% with trained baselines.
%%
%% Fields within a pattern are called tokens.
%% Fields that vary within a pattern, such as a
%% request ID or timestamp, are referred to as dynamic tokens and
%% represented by `&lt;*&gt;'.
%%
%% The following is an example of a pattern:
%%
%% `[INFO] Request time: &lt;*&gt; ms'
%%
%% This pattern
%% represents log events like `[INFO] Request time: 327 ms' and other
%% similar log events
%% that differ only by the number, in this csse 327. When the pattern is
%% displayed, the different numbers are replaced
%% by `&lt;*&gt;'
%%
%% Any parts of log events that are masked as sensitive data are not scanned
%% for anomalies. For more information
%% about masking sensitive data, see
%% Help protect sensitive log data with
%% masking:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html.
-spec create_log_anomaly_detector(aws_client:aws_client(), create_log_anomaly_detector_request()) ->
    {ok, create_log_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, create_log_anomaly_detector_errors(), tuple()}.
create_log_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_anomaly_detector(Client, Input, []).

-spec create_log_anomaly_detector(aws_client:aws_client(), create_log_anomaly_detector_request(), proplists:proplist()) ->
    {ok, create_log_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, create_log_anomaly_detector_errors(), tuple()}.
create_log_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogAnomalyDetector">>, Input, Options).

%% @doc Creates a log group with the specified name.
%%
%% You can create up to 1,000,000 log groups per Region per account.
%%
%% You must use the following guidelines when naming a log group:
%%
%% Log group names must be unique within a Region for an Amazon Web Services
%% account.
%%
%% Log group names can be between 1 and 512 characters long.
%%
%% Log group names consist of the following characters: a-z, A-Z, 0-9,
%% '_' (underscore), '-' (hyphen),
%% '/' (forward slash), '.' (period), and '#' (number
%% sign)
%%
%% Log group names can't start with the string `aws/'
%%
%% When you create a log group, by default the log events in the log group do
%% not expire.
%% To set a retention policy so that events expire and are deleted after a
%% specified time, use
%% PutRetentionPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html.
%%
%% If you associate an KMS key with the log group, ingested data is
%% encrypted using the KMS key. This association is stored as long as the
%% data
%% encrypted with the KMS key is still within CloudWatch Logs. This enables
%% CloudWatch Logs to decrypt this data whenever it is requested.
%%
%% If you attempt to associate a KMS key with the log group but the KMS key
%% does not exist or the KMS key is disabled, you receive an
%% `InvalidParameterException' error.
%%
%% CloudWatch Logs supports only symmetric KMS keys. Do not associate an
%% asymmetric KMS key with your log group. For more information, see Using
%% Symmetric and Asymmetric Keys:
%% https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html.
-spec create_log_group(aws_client:aws_client(), create_log_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_log_group_errors(), tuple()}.
create_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_group(Client, Input, []).

-spec create_log_group(aws_client:aws_client(), create_log_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_log_group_errors(), tuple()}.
create_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogGroup">>, Input, Options).

%% @doc Creates a log stream for the specified log group.
%%
%% A log stream is a sequence of log events
%% that originate from a single source, such as an application instance or a
%% resource that is
%% being monitored.
%%
%% There is no limit on the number of log streams that you can create for a
%% log group. There is a limit
%% of 50 TPS on `CreateLogStream' operations, after which transactions
%% are throttled.
%%
%% You must use the following guidelines when naming a log stream:
%%
%% Log stream names must be unique within the log group.
%%
%% Log stream names can be between 1 and 512 characters long.
%%
%% Don't use ':' (colon) or '*' (asterisk) characters.
-spec create_log_stream(aws_client:aws_client(), create_log_stream_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_log_stream_errors(), tuple()}.
create_log_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_stream(Client, Input, []).

-spec create_log_stream(aws_client:aws_client(), create_log_stream_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_log_stream_errors(), tuple()}.
create_log_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogStream">>, Input, Options).

%% @doc Deletes a CloudWatch Logs account policy.
%%
%% This stops the account-wide policy from applying to log groups in the
%% account. If you delete a data protection
%% policy or subscription filter policy, any log-group level policies of
%% those types remain in effect.
%%
%% To use this operation, you must be signed on with the correct permissions
%% depending on the type of policy
%% that you are deleting.
%%
%% To delete a data protection policy, you must have the
%% `logs:DeleteDataProtectionPolicy' and
%% `logs:DeleteAccountPolicy' permissions.
%%
%% To delete a subscription filter policy, you must have the
%% `logs:DeleteSubscriptionFilter' and
%% `logs:DeleteAccountPolicy' permissions.
%%
%% To delete a transformer policy, you must have the
%% `logs:DeleteTransformer' and `logs:DeleteAccountPolicy'
%% permissions.
%%
%% To delete a field index policy, you must have the
%% `logs:DeleteIndexPolicy' and
%% `logs:DeleteAccountPolicy' permissions.
%%
%% If you delete a field index policy, the indexing of the log events that
%% happened before
%% you deleted the policy will still be used for up to 30 days to improve
%% CloudWatch Logs Insights queries.
-spec delete_account_policy(aws_client:aws_client(), delete_account_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_account_policy_errors(), tuple()}.
delete_account_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_policy(Client, Input, []).

-spec delete_account_policy(aws_client:aws_client(), delete_account_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_account_policy_errors(), tuple()}.
delete_account_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountPolicy">>, Input, Options).

%% @doc Deletes the data protection policy from the specified log group.
%%
%% For more information about data protection policies, see
%% PutDataProtectionPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html.
-spec delete_data_protection_policy(aws_client:aws_client(), delete_data_protection_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_protection_policy_errors(), tuple()}.
delete_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_protection_policy(Client, Input, []).

-spec delete_data_protection_policy(aws_client:aws_client(), delete_data_protection_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_protection_policy_errors(), tuple()}.
delete_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataProtectionPolicy">>, Input, Options).

%% @doc Deletes a delivery.
%%
%% A delivery is a connection between a logical delivery source and a logical
%% delivery destination. Deleting a delivery only deletes the connection
%% between the delivery source and delivery destination. It does
%% not delete the delivery destination or the delivery source.
-spec delete_delivery(aws_client:aws_client(), delete_delivery_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_errors(), tuple()}.
delete_delivery(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery(Client, Input, []).

-spec delete_delivery(aws_client:aws_client(), delete_delivery_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_errors(), tuple()}.
delete_delivery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDelivery">>, Input, Options).

%% @doc Deletes a delivery destination.
%%
%% A delivery is a connection between a logical delivery source and a logical
%% delivery destination.
%%
%% You can't delete a delivery destination if any current deliveries are
%% associated with it. To find whether any deliveries are associated with
%% this delivery destination, use the DescribeDeliveries:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
%% operation and check the `deliveryDestinationArn' field in the results.
-spec delete_delivery_destination(aws_client:aws_client(), delete_delivery_destination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_destination_errors(), tuple()}.
delete_delivery_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_destination(Client, Input, []).

-spec delete_delivery_destination(aws_client:aws_client(), delete_delivery_destination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_destination_errors(), tuple()}.
delete_delivery_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryDestination">>, Input, Options).

%% @doc Deletes a delivery destination policy.
%%
%% For more information about these policies,
%% see PutDeliveryDestinationPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html.
-spec delete_delivery_destination_policy(aws_client:aws_client(), delete_delivery_destination_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_destination_policy_errors(), tuple()}.
delete_delivery_destination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_destination_policy(Client, Input, []).

-spec delete_delivery_destination_policy(aws_client:aws_client(), delete_delivery_destination_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_destination_policy_errors(), tuple()}.
delete_delivery_destination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryDestinationPolicy">>, Input, Options).

%% @doc Deletes a delivery source.
%%
%% A delivery is a connection between a logical delivery source and a logical
%% delivery destination.
%%
%% You can't delete a delivery source if any current deliveries are
%% associated with it. To find whether any deliveries are associated with
%% this delivery source, use the DescribeDeliveries:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
%% operation and check the `deliverySourceName' field in the results.
-spec delete_delivery_source(aws_client:aws_client(), delete_delivery_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_source_errors(), tuple()}.
delete_delivery_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_source(Client, Input, []).

-spec delete_delivery_source(aws_client:aws_client(), delete_delivery_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_source_errors(), tuple()}.
delete_delivery_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliverySource">>, Input, Options).

%% @doc Deletes the specified destination, and eventually disables all the
%% subscription filters that publish to it.
%%
%% This operation does not delete the
%% physical resource encapsulated by the destination.
-spec delete_destination(aws_client:aws_client(), delete_destination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_destination_errors(), tuple()}.
delete_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_destination(Client, Input, []).

-spec delete_destination(aws_client:aws_client(), delete_destination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_destination_errors(), tuple()}.
delete_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDestination">>, Input, Options).

%% @doc Deletes a log-group level field index policy that was applied to a
%% single log group.
%%
%% The indexing of the log events that happened before
%% you delete the policy will still be used for as many as 30 days to improve
%% CloudWatch Logs Insights queries.
%%
%% You can't use this operation to delete an account-level index policy.
%% Instead, use
%% DeletAccountPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteAccountPolicy.html.
%%
%% If you delete a log-group level field index policy and there is an
%% account-level field index policy, in a few minutes the log group begins
%% using that account-wide policy to index new
%% incoming log events.
-spec delete_index_policy(aws_client:aws_client(), delete_index_policy_request()) ->
    {ok, delete_index_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_index_policy_errors(), tuple()}.
delete_index_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_index_policy(Client, Input, []).

-spec delete_index_policy(aws_client:aws_client(), delete_index_policy_request(), proplists:proplist()) ->
    {ok, delete_index_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_index_policy_errors(), tuple()}.
delete_index_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIndexPolicy">>, Input, Options).

%% @doc Deletes the integration between CloudWatch Logs and OpenSearch
%% Service.
%%
%% If your integration has active vended logs dashboards,
%% you must specify `true' for the `force' parameter, otherwise the
%% operation will fail. If you delete the integration by
%% setting `force' to `true',
%% all your vended logs dashboards powered by OpenSearch Service will be
%% deleted and the data that was on them
%% will no longer be accessible.
-spec delete_integration(aws_client:aws_client(), delete_integration_request()) ->
    {ok, delete_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_integration(Client, Input, []).

-spec delete_integration(aws_client:aws_client(), delete_integration_request(), proplists:proplist()) ->
    {ok, delete_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIntegration">>, Input, Options).

%% @doc Deletes the specified CloudWatch Logs anomaly detector.
-spec delete_log_anomaly_detector(aws_client:aws_client(), delete_log_anomaly_detector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_log_anomaly_detector_errors(), tuple()}.
delete_log_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_anomaly_detector(Client, Input, []).

-spec delete_log_anomaly_detector(aws_client:aws_client(), delete_log_anomaly_detector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_log_anomaly_detector_errors(), tuple()}.
delete_log_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogAnomalyDetector">>, Input, Options).

%% @doc Deletes the specified log group and permanently deletes all the
%% archived
%% log events associated with the log group.
-spec delete_log_group(aws_client:aws_client(), delete_log_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_log_group_errors(), tuple()}.
delete_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_group(Client, Input, []).

-spec delete_log_group(aws_client:aws_client(), delete_log_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_log_group_errors(), tuple()}.
delete_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogGroup">>, Input, Options).

%% @doc Deletes the specified log stream and permanently deletes all the
%% archived log events associated
%% with the log stream.
-spec delete_log_stream(aws_client:aws_client(), delete_log_stream_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_log_stream_errors(), tuple()}.
delete_log_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_stream(Client, Input, []).

-spec delete_log_stream(aws_client:aws_client(), delete_log_stream_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_log_stream_errors(), tuple()}.
delete_log_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogStream">>, Input, Options).

%% @doc Deletes the specified metric filter.
-spec delete_metric_filter(aws_client:aws_client(), delete_metric_filter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_metric_filter_errors(), tuple()}.
delete_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_filter(Client, Input, []).

-spec delete_metric_filter(aws_client:aws_client(), delete_metric_filter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_metric_filter_errors(), tuple()}.
delete_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricFilter">>, Input, Options).

%% @doc Deletes a saved CloudWatch Logs Insights query definition.
%%
%% A query definition contains details about a saved CloudWatch Logs Insights
%% query.
%%
%% Each `DeleteQueryDefinition' operation can delete one query
%% definition.
%%
%% You must have the `logs:DeleteQueryDefinition' permission to be able
%% to perform
%% this operation.
-spec delete_query_definition(aws_client:aws_client(), delete_query_definition_request()) ->
    {ok, delete_query_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_query_definition_errors(), tuple()}.
delete_query_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_query_definition(Client, Input, []).

-spec delete_query_definition(aws_client:aws_client(), delete_query_definition_request(), proplists:proplist()) ->
    {ok, delete_query_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_query_definition_errors(), tuple()}.
delete_query_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQueryDefinition">>, Input, Options).

%% @doc Deletes a resource policy from this account.
%%
%% This revokes
%% the access of the identities in that policy to put log events to this
%% account.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes the specified retention policy.
%%
%% Log events do not expire if they belong to log groups without a retention
%% policy.
-spec delete_retention_policy(aws_client:aws_client(), delete_retention_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_retention_policy_errors(), tuple()}.
delete_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_policy(Client, Input, []).

-spec delete_retention_policy(aws_client:aws_client(), delete_retention_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_retention_policy_errors(), tuple()}.
delete_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionPolicy">>, Input, Options).

%% @doc Deletes the specified subscription filter.
-spec delete_subscription_filter(aws_client:aws_client(), delete_subscription_filter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_subscription_filter_errors(), tuple()}.
delete_subscription_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscription_filter(Client, Input, []).

-spec delete_subscription_filter(aws_client:aws_client(), delete_subscription_filter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_subscription_filter_errors(), tuple()}.
delete_subscription_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscriptionFilter">>, Input, Options).

%% @doc Deletes the log transformer for the specified log group.
%%
%% As soon as you do this,
%% the transformation of incoming log events according to that transformer
%% stops. If this account has an
%% account-level transformer that applies to this log group, the log group
%% begins
%% using that account-level transformer when this log-group level transformer
%% is deleted.
%%
%% After you delete a transformer, be sure to edit any metric filters or
%% subscription filters that relied
%% on the transformed versions of the log events.
-spec delete_transformer(aws_client:aws_client(), delete_transformer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_transformer_errors(), tuple()}.
delete_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transformer(Client, Input, []).

-spec delete_transformer(aws_client:aws_client(), delete_transformer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_transformer_errors(), tuple()}.
delete_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransformer">>, Input, Options).

%% @doc Returns a list of all CloudWatch Logs account policies in the
%% account.
%%
%% To use this operation, you must be signed on with the correct permissions
%% depending on the type of policy that you are retrieving information for.
%%
%% To see data protection policies, you must have the
%% `logs:GetDataProtectionPolicy' and
%% `logs:DescribeAccountPolicies' permissions.
%%
%% To see subscription filter policies, you must have the
%% `logs:DescrubeSubscriptionFilters' and
%% `logs:DescribeAccountPolicies' permissions.
%%
%% To see transformer policies, you must have the `logs:GetTransformer'
%% and `logs:DescribeAccountPolicies' permissions.
%%
%% To see field index policies, you must have the
%% `logs:DescribeIndexPolicies' and
%% `logs:DescribeAccountPolicies' permissions.
-spec describe_account_policies(aws_client:aws_client(), describe_account_policies_request()) ->
    {ok, describe_account_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_account_policies_errors(), tuple()}.
describe_account_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_policies(Client, Input, []).

-spec describe_account_policies(aws_client:aws_client(), describe_account_policies_request(), proplists:proplist()) ->
    {ok, describe_account_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_account_policies_errors(), tuple()}.
describe_account_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountPolicies">>, Input, Options).

%% @doc Use this operation to return the valid and default values that are
%% used when creating delivery sources, delivery destinations, and
%% deliveries.
%%
%% For more information about deliveries, see CreateDelivery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html.
-spec describe_configuration_templates(aws_client:aws_client(), describe_configuration_templates_request()) ->
    {ok, describe_configuration_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_templates_errors(), tuple()}.
describe_configuration_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_templates(Client, Input, []).

-spec describe_configuration_templates(aws_client:aws_client(), describe_configuration_templates_request(), proplists:proplist()) ->
    {ok, describe_configuration_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_templates_errors(), tuple()}.
describe_configuration_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationTemplates">>, Input, Options).

%% @doc Retrieves a list of the deliveries that have been created in the
%% account.
%%
%% A delivery is a
%% connection between a
%% delivery source
%% :
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
%% and a
%%
%% delivery destination
%% :
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html.
%%
%% A delivery source represents an Amazon Web Services resource that sends
%% logs to an logs delivery destination.
%% The destination can be CloudWatch Logs, Amazon S3, or Firehose.
%% Only some Amazon Web Services services support being configured as a
%% delivery source. These services are listed
%% in Enable logging from Amazon Web Services
%% services.:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
-spec describe_deliveries(aws_client:aws_client(), describe_deliveries_request()) ->
    {ok, describe_deliveries_response(), tuple()} |
    {error, any()} |
    {error, describe_deliveries_errors(), tuple()}.
describe_deliveries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_deliveries(Client, Input, []).

-spec describe_deliveries(aws_client:aws_client(), describe_deliveries_request(), proplists:proplist()) ->
    {ok, describe_deliveries_response(), tuple()} |
    {error, any()} |
    {error, describe_deliveries_errors(), tuple()}.
describe_deliveries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveries">>, Input, Options).

%% @doc Retrieves a list of the delivery destinations that have been created
%% in the account.
-spec describe_delivery_destinations(aws_client:aws_client(), describe_delivery_destinations_request()) ->
    {ok, describe_delivery_destinations_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_destinations_errors(), tuple()}.
describe_delivery_destinations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_destinations(Client, Input, []).

-spec describe_delivery_destinations(aws_client:aws_client(), describe_delivery_destinations_request(), proplists:proplist()) ->
    {ok, describe_delivery_destinations_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_destinations_errors(), tuple()}.
describe_delivery_destinations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryDestinations">>, Input, Options).

%% @doc Retrieves a list of the delivery sources that have been created in
%% the account.
-spec describe_delivery_sources(aws_client:aws_client(), describe_delivery_sources_request()) ->
    {ok, describe_delivery_sources_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_sources_errors(), tuple()}.
describe_delivery_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_sources(Client, Input, []).

-spec describe_delivery_sources(aws_client:aws_client(), describe_delivery_sources_request(), proplists:proplist()) ->
    {ok, describe_delivery_sources_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_sources_errors(), tuple()}.
describe_delivery_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliverySources">>, Input, Options).

%% @doc Lists all your destinations.
%%
%% The results are ASCII-sorted by destination name.
-spec describe_destinations(aws_client:aws_client(), describe_destinations_request()) ->
    {ok, describe_destinations_response(), tuple()} |
    {error, any()} |
    {error, describe_destinations_errors(), tuple()}.
describe_destinations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_destinations(Client, Input, []).

-spec describe_destinations(aws_client:aws_client(), describe_destinations_request(), proplists:proplist()) ->
    {ok, describe_destinations_response(), tuple()} |
    {error, any()} |
    {error, describe_destinations_errors(), tuple()}.
describe_destinations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDestinations">>, Input, Options).

%% @doc Lists the specified export tasks.
%%
%% You can list all your export tasks or filter
%% the results based on task ID or task status.
-spec describe_export_tasks(aws_client:aws_client(), describe_export_tasks_request()) ->
    {ok, describe_export_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_export_tasks_errors(), tuple()}.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).

-spec describe_export_tasks(aws_client:aws_client(), describe_export_tasks_request(), proplists:proplist()) ->
    {ok, describe_export_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_export_tasks_errors(), tuple()}.
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Returns a list of field indexes listed in the field index policies of
%% one or more log groups.
%%
%% For more information about field index policies, see
%% PutIndexPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html.
-spec describe_field_indexes(aws_client:aws_client(), describe_field_indexes_request()) ->
    {ok, describe_field_indexes_response(), tuple()} |
    {error, any()} |
    {error, describe_field_indexes_errors(), tuple()}.
describe_field_indexes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_field_indexes(Client, Input, []).

-spec describe_field_indexes(aws_client:aws_client(), describe_field_indexes_request(), proplists:proplist()) ->
    {ok, describe_field_indexes_response(), tuple()} |
    {error, any()} |
    {error, describe_field_indexes_errors(), tuple()}.
describe_field_indexes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFieldIndexes">>, Input, Options).

%% @doc Returns the field index policies of
%% one or more log groups.
%%
%% For more information about field index policies, see
%% PutIndexPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html.
%%
%% If a specified log group has a log-group level index policy, that policy
%% is returned by this operation.
%%
%% If a specified log group doesn't have a log-group level index policy,
%% but an account-wide index policy applies to it,
%% that account-wide policy is returned by this operation.
%%
%% To find information about only account-level policies, use
%% DescribeAccountPolicies:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html
%% instead.
-spec describe_index_policies(aws_client:aws_client(), describe_index_policies_request()) ->
    {ok, describe_index_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_index_policies_errors(), tuple()}.
describe_index_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_index_policies(Client, Input, []).

-spec describe_index_policies(aws_client:aws_client(), describe_index_policies_request(), proplists:proplist()) ->
    {ok, describe_index_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_index_policies_errors(), tuple()}.
describe_index_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIndexPolicies">>, Input, Options).

%% @doc Lists the specified log groups.
%%
%% You can list all your log groups or filter the results by prefix.
%% The results are ASCII-sorted by log group name.
%%
%% CloudWatch Logs doesn't support IAM policies that control access to
%% the `DescribeLogGroups' action by using the
%%
%% ```
%% aws:ResourceTag/key-name ''' condition key. Other CloudWatch
%% Logs actions
%% do support the use of the
%% ```
%% aws:ResourceTag/key-name ''' condition key to control access.
%% For more information about using tags to control access, see
%% Controlling access to Amazon Web Services resources using tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and
%% view data from the linked source accounts. For more information, see
%% CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
-spec describe_log_groups(aws_client:aws_client(), describe_log_groups_request()) ->
    {ok, describe_log_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_log_groups_errors(), tuple()}.
describe_log_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_groups(Client, Input, []).

-spec describe_log_groups(aws_client:aws_client(), describe_log_groups_request(), proplists:proplist()) ->
    {ok, describe_log_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_log_groups_errors(), tuple()}.
describe_log_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogGroups">>, Input, Options).

%% @doc Lists the log streams for the specified log group.
%%
%% You can list all the log streams or filter the results by prefix.
%% You can also control how the results are ordered.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'.
%% You must include one of these two parameters, but you can't include
%% both.
%%
%% This operation has a limit of 25 transactions per second, after which
%% transactions are throttled.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and
%% view data from the linked source accounts. For more information, see
%% CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
-spec describe_log_streams(aws_client:aws_client(), describe_log_streams_request()) ->
    {ok, describe_log_streams_response(), tuple()} |
    {error, any()} |
    {error, describe_log_streams_errors(), tuple()}.
describe_log_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_streams(Client, Input, []).

-spec describe_log_streams(aws_client:aws_client(), describe_log_streams_request(), proplists:proplist()) ->
    {ok, describe_log_streams_response(), tuple()} |
    {error, any()} |
    {error, describe_log_streams_errors(), tuple()}.
describe_log_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogStreams">>, Input, Options).

%% @doc Lists the specified metric filters.
%%
%% You can list all of the metric filters or filter
%% the results by log name, prefix, metric name, or metric namespace. The
%% results are
%% ASCII-sorted by filter name.
-spec describe_metric_filters(aws_client:aws_client(), describe_metric_filters_request()) ->
    {ok, describe_metric_filters_response(), tuple()} |
    {error, any()} |
    {error, describe_metric_filters_errors(), tuple()}.
describe_metric_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_filters(Client, Input, []).

-spec describe_metric_filters(aws_client:aws_client(), describe_metric_filters_request(), proplists:proplist()) ->
    {ok, describe_metric_filters_response(), tuple()} |
    {error, any()} |
    {error, describe_metric_filters_errors(), tuple()}.
describe_metric_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricFilters">>, Input, Options).

%% @doc Returns a list of CloudWatch Logs Insights queries that are
%% scheduled, running, or have
%% been run recently in this account.
%%
%% You can request all queries or limit it to queries of a
%% specific log group or queries with a certain status.
-spec describe_queries(aws_client:aws_client(), describe_queries_request()) ->
    {ok, describe_queries_response(), tuple()} |
    {error, any()} |
    {error, describe_queries_errors(), tuple()}.
describe_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_queries(Client, Input, []).

-spec describe_queries(aws_client:aws_client(), describe_queries_request(), proplists:proplist()) ->
    {ok, describe_queries_response(), tuple()} |
    {error, any()} |
    {error, describe_queries_errors(), tuple()}.
describe_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQueries">>, Input, Options).

%% @doc This operation returns a paginated list of your saved CloudWatch Logs
%% Insights query definitions.
%%
%% You can
%% retrieve query definitions from the current account or from a source
%% account that is linked to the current account.
%%
%% You can use the `queryDefinitionNamePrefix' parameter to limit the
%% results to only the
%% query definitions that have names that start with a certain string.
-spec describe_query_definitions(aws_client:aws_client(), describe_query_definitions_request()) ->
    {ok, describe_query_definitions_response(), tuple()} |
    {error, any()} |
    {error, describe_query_definitions_errors(), tuple()}.
describe_query_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_definitions(Client, Input, []).

-spec describe_query_definitions(aws_client:aws_client(), describe_query_definitions_request(), proplists:proplist()) ->
    {ok, describe_query_definitions_response(), tuple()} |
    {error, any()} |
    {error, describe_query_definitions_errors(), tuple()}.
describe_query_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQueryDefinitions">>, Input, Options).

%% @doc Lists the resource policies in this account.
-spec describe_resource_policies(aws_client:aws_client(), describe_resource_policies_request()) ->
    {ok, describe_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policies_errors(), tuple()}.
describe_resource_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policies(Client, Input, []).

-spec describe_resource_policies(aws_client:aws_client(), describe_resource_policies_request(), proplists:proplist()) ->
    {ok, describe_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policies_errors(), tuple()}.
describe_resource_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicies">>, Input, Options).

%% @doc Lists the subscription filters for the specified log group.
%%
%% You can list all the subscription filters or filter the results by prefix.
%% The results are ASCII-sorted by filter name.
-spec describe_subscription_filters(aws_client:aws_client(), describe_subscription_filters_request()) ->
    {ok, describe_subscription_filters_response(), tuple()} |
    {error, any()} |
    {error, describe_subscription_filters_errors(), tuple()}.
describe_subscription_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscription_filters(Client, Input, []).

-spec describe_subscription_filters(aws_client:aws_client(), describe_subscription_filters_request(), proplists:proplist()) ->
    {ok, describe_subscription_filters_response(), tuple()} |
    {error, any()} |
    {error, describe_subscription_filters_errors(), tuple()}.
describe_subscription_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscriptionFilters">>, Input, Options).

%% @doc Disassociates the specified KMS key from the specified log
%% group or from all CloudWatch Logs Insights query results in the account.
%%
%% When you use `DisassociateKmsKey', you specify either the
%% `logGroupName' parameter
%% or the `resourceIdentifier' parameter. You can't specify both of
%% those parameters in the same operation.
%%
%% Specify the `logGroupName' parameter to stop using the KMS key
%% to encrypt future log events ingested and stored in the log group.
%% Instead, they will be
%% encrypted with the default CloudWatch Logs method. The log events that
%% were ingested
%% while the key was associated with the log group are still encrypted with
%% that key.
%% Therefore, CloudWatch Logs will need permissions for the key whenever that
%% data is
%% accessed.
%%
%% Specify the `resourceIdentifier' parameter with the `query-result'
%% resource to stop using the KMS key to encrypt the results of all
%% future StartQuery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
%% operations in the account. They will instead be encrypted with the default
%% CloudWatch Logs method. The results from queries that ran while the key
%% was associated with
%% the account are still encrypted with that key. Therefore, CloudWatch Logs
%% will need
%% permissions for the key whenever that data is accessed.
%%
%% It can take up to 5 minutes for this operation to take effect.
-spec disassociate_kms_key(aws_client:aws_client(), disassociate_kms_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_kms_key_errors(), tuple()}.
disassociate_kms_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_kms_key(Client, Input, []).

-spec disassociate_kms_key(aws_client:aws_client(), disassociate_kms_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_kms_key_errors(), tuple()}.
disassociate_kms_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateKmsKey">>, Input, Options).

%% @doc Lists log events from the specified log group.
%%
%% You can list all the log events or filter the results
%% using a filter pattern, a time range, and the name of the log stream.
%%
%% You must have the `logs:FilterLogEvents' permission to perform this
%% operation.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'.
%% You must include one of these two parameters, but you can't include
%% both.
%%
%% By default, this operation returns as many log events as can fit in 1 MB
%% (up to 10,000
%% log events) or all the events found within the specified time range. If
%% the results include a
%% token, that means there are more log events available. You can get
%% additional results by
%% specifying the token in a subsequent call. This operation can return empty
%% results while there
%% are more log events available through the token.
%%
%% The returned log events are sorted by event timestamp, the timestamp when
%% the event was ingested
%% by CloudWatch Logs, and the ID of the `PutLogEvents' request.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and
%% view data from the linked source accounts. For more information, see
%% CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
-spec filter_log_events(aws_client:aws_client(), filter_log_events_request()) ->
    {ok, filter_log_events_response(), tuple()} |
    {error, any()} |
    {error, filter_log_events_errors(), tuple()}.
filter_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    filter_log_events(Client, Input, []).

-spec filter_log_events(aws_client:aws_client(), filter_log_events_request(), proplists:proplist()) ->
    {ok, filter_log_events_response(), tuple()} |
    {error, any()} |
    {error, filter_log_events_errors(), tuple()}.
filter_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FilterLogEvents">>, Input, Options).

%% @doc Returns information about a log group data protection policy.
-spec get_data_protection_policy(aws_client:aws_client(), get_data_protection_policy_request()) ->
    {ok, get_data_protection_policy_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_policy_errors(), tuple()}.
get_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_protection_policy(Client, Input, []).

-spec get_data_protection_policy(aws_client:aws_client(), get_data_protection_policy_request(), proplists:proplist()) ->
    {ok, get_data_protection_policy_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_policy_errors(), tuple()}.
get_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataProtectionPolicy">>, Input, Options).

%% @doc Returns complete information about one logical delivery.
%%
%% A delivery is a
%% connection between a
%% delivery source
%% :
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
%% and a
%%
%% delivery destination
%% :
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html.
%%
%% A delivery source represents an Amazon Web Services resource that sends
%% logs to an logs delivery destination.
%% The destination can be CloudWatch Logs, Amazon S3, or Firehose.
%% Only some Amazon Web Services services support being configured as a
%% delivery source. These services are listed
%% in Enable logging from Amazon Web Services
%% services.:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
%%
%% You need to specify the delivery `id' in this operation. You can find
%% the IDs of the deliveries in your account with the
%% DescribeDeliveries:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
%% operation.
-spec get_delivery(aws_client:aws_client(), get_delivery_request()) ->
    {ok, get_delivery_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_errors(), tuple()}.
get_delivery(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_delivery(Client, Input, []).

-spec get_delivery(aws_client:aws_client(), get_delivery_request(), proplists:proplist()) ->
    {ok, get_delivery_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_errors(), tuple()}.
get_delivery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDelivery">>, Input, Options).

%% @doc Retrieves complete information about one delivery destination.
-spec get_delivery_destination(aws_client:aws_client(), get_delivery_destination_request()) ->
    {ok, get_delivery_destination_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_destination_errors(), tuple()}.
get_delivery_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_delivery_destination(Client, Input, []).

-spec get_delivery_destination(aws_client:aws_client(), get_delivery_destination_request(), proplists:proplist()) ->
    {ok, get_delivery_destination_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_destination_errors(), tuple()}.
get_delivery_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeliveryDestination">>, Input, Options).

%% @doc Retrieves the delivery destination policy assigned to the delivery
%% destination that you specify.
%%
%% For more information about delivery destinations and their policies, see
%% PutDeliveryDestinationPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html.
-spec get_delivery_destination_policy(aws_client:aws_client(), get_delivery_destination_policy_request()) ->
    {ok, get_delivery_destination_policy_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_destination_policy_errors(), tuple()}.
get_delivery_destination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_delivery_destination_policy(Client, Input, []).

-spec get_delivery_destination_policy(aws_client:aws_client(), get_delivery_destination_policy_request(), proplists:proplist()) ->
    {ok, get_delivery_destination_policy_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_destination_policy_errors(), tuple()}.
get_delivery_destination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeliveryDestinationPolicy">>, Input, Options).

%% @doc Retrieves complete information about one delivery source.
-spec get_delivery_source(aws_client:aws_client(), get_delivery_source_request()) ->
    {ok, get_delivery_source_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_source_errors(), tuple()}.
get_delivery_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_delivery_source(Client, Input, []).

-spec get_delivery_source(aws_client:aws_client(), get_delivery_source_request(), proplists:proplist()) ->
    {ok, get_delivery_source_response(), tuple()} |
    {error, any()} |
    {error, get_delivery_source_errors(), tuple()}.
get_delivery_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeliverySource">>, Input, Options).

%% @doc Returns information about one integration between CloudWatch Logs and
%% OpenSearch Service.
-spec get_integration(aws_client:aws_client(), get_integration_request()) ->
    {ok, get_integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_integration(Client, Input, []).

-spec get_integration(aws_client:aws_client(), get_integration_request(), proplists:proplist()) ->
    {ok, get_integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIntegration">>, Input, Options).

%% @doc Retrieves information about the log anomaly detector that you
%% specify.
-spec get_log_anomaly_detector(aws_client:aws_client(), get_log_anomaly_detector_request()) ->
    {ok, get_log_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, get_log_anomaly_detector_errors(), tuple()}.
get_log_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_anomaly_detector(Client, Input, []).

-spec get_log_anomaly_detector(aws_client:aws_client(), get_log_anomaly_detector_request(), proplists:proplist()) ->
    {ok, get_log_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, get_log_anomaly_detector_errors(), tuple()}.
get_log_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogAnomalyDetector">>, Input, Options).

%% @doc Lists log events from the specified log stream.
%%
%% You can list all of the log events or
%% filter using a time range.
%%
%% By default, this operation returns as many log events as can fit in a
%% response size of 1MB (up to 10,000 log events).
%% You can get additional log events by specifying one of the tokens in a
%% subsequent call.
%% This operation can return empty results while there are more log events
%% available through the token.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and
%% view data from the linked source accounts. For more information, see
%% CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'.
%% You must include one of these two parameters, but you can't include
%% both.
-spec get_log_events(aws_client:aws_client(), get_log_events_request()) ->
    {ok, get_log_events_response(), tuple()} |
    {error, any()} |
    {error, get_log_events_errors(), tuple()}.
get_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_events(Client, Input, []).

-spec get_log_events(aws_client:aws_client(), get_log_events_request(), proplists:proplist()) ->
    {ok, get_log_events_response(), tuple()} |
    {error, any()} |
    {error, get_log_events_errors(), tuple()}.
get_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogEvents">>, Input, Options).

%% @doc Returns a list of the fields that are included in log events in the
%% specified log group.
%%
%% Includes the percentage of log events that contain each field. The search
%% is limited to a time
%% period that you specify.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'.
%% You must specify one of these parameters, but you can't specify both.
%%
%% In the results, fields that start with `@' are fields generated by
%% CloudWatch
%% Logs. For example, `@timestamp' is the timestamp of each log event.
%% For more
%% information about the fields that are generated by CloudWatch logs, see
%% Supported
%% Logs and Discovered Fields:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html.
%%
%% The response results are sorted by the frequency percentage, starting
%% with the highest percentage.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and
%% view data from the linked source accounts. For more information, see
%% CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
-spec get_log_group_fields(aws_client:aws_client(), get_log_group_fields_request()) ->
    {ok, get_log_group_fields_response(), tuple()} |
    {error, any()} |
    {error, get_log_group_fields_errors(), tuple()}.
get_log_group_fields(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_group_fields(Client, Input, []).

-spec get_log_group_fields(aws_client:aws_client(), get_log_group_fields_request(), proplists:proplist()) ->
    {ok, get_log_group_fields_response(), tuple()} |
    {error, any()} |
    {error, get_log_group_fields_errors(), tuple()}.
get_log_group_fields(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogGroupFields">>, Input, Options).

%% @doc Retrieves all of the fields and values of a single log event.
%%
%% All fields are retrieved,
%% even if the original query that produced the `logRecordPointer'
%% retrieved only a
%% subset of fields. Fields are returned as field name/field value pairs.
%%
%% The full unparsed log event is returned within `@message'.
-spec get_log_record(aws_client:aws_client(), get_log_record_request()) ->
    {ok, get_log_record_response(), tuple()} |
    {error, any()} |
    {error, get_log_record_errors(), tuple()}.
get_log_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_record(Client, Input, []).

-spec get_log_record(aws_client:aws_client(), get_log_record_request(), proplists:proplist()) ->
    {ok, get_log_record_response(), tuple()} |
    {error, any()} |
    {error, get_log_record_errors(), tuple()}.
get_log_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogRecord">>, Input, Options).

%% @doc Returns the results from the specified query.
%%
%% Only the fields requested in the query are returned, along with a
%% `@ptr'
%% field, which is the identifier for the log record. You can use the value
%% of `@ptr'
%% in a GetLogRecord:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html
%% operation to get the full log record.
%%
%% `GetQueryResults' does not start running a query. To run a query, use
%% StartQuery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html.
%% For more information about how long results of previous queries
%% are available, see CloudWatch Logs quotas:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/cloudwatch_limits_cwl.html.
%%
%% If the value of the `Status' field in the output is `Running',
%% this operation
%% returns only partial results. If you see a value of `Scheduled' or
%% `Running' for the status,
%% you can retry the operation later to see the final results.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account to start
%% queries in linked source accounts. For more information, see
%% CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
-spec get_query_results(aws_client:aws_client(), get_query_results_request()) ->
    {ok, get_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_results(Client, Input, []).

-spec get_query_results(aws_client:aws_client(), get_query_results_request(), proplists:proplist()) ->
    {ok, get_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryResults">>, Input, Options).

%% @doc Returns the information about the log transformer associated with
%% this log group.
%%
%% This operation returns data only for transformers created at the log group
%% level. To get information
%% for an account-level transformer, use DescribeAccountPolicies:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html.
-spec get_transformer(aws_client:aws_client(), get_transformer_request()) ->
    {ok, get_transformer_response(), tuple()} |
    {error, any()} |
    {error, get_transformer_errors(), tuple()}.
get_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transformer(Client, Input, []).

-spec get_transformer(aws_client:aws_client(), get_transformer_request(), proplists:proplist()) ->
    {ok, get_transformer_response(), tuple()} |
    {error, any()} |
    {error, get_transformer_errors(), tuple()}.
get_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransformer">>, Input, Options).

%% @doc Returns a list of anomalies that log anomaly detectors have found.
%%
%% For details about the structure format of
%% each anomaly object that is returned, see the example in this section.
-spec list_anomalies(aws_client:aws_client(), list_anomalies_request()) ->
    {ok, list_anomalies_response(), tuple()} |
    {error, any()} |
    {error, list_anomalies_errors(), tuple()}.
list_anomalies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_anomalies(Client, Input, []).

-spec list_anomalies(aws_client:aws_client(), list_anomalies_request(), proplists:proplist()) ->
    {ok, list_anomalies_response(), tuple()} |
    {error, any()} |
    {error, list_anomalies_errors(), tuple()}.
list_anomalies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAnomalies">>, Input, Options).

%% @doc Returns a list of integrations between CloudWatch Logs and other
%% services in this account.
%%
%% Currently, only one
%% integration can be created in an account, and this integration must be
%% with OpenSearch Service.
-spec list_integrations(aws_client:aws_client(), list_integrations_request()) ->
    {ok, list_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_integrations(Client, Input, []).

-spec list_integrations(aws_client:aws_client(), list_integrations_request(), proplists:proplist()) ->
    {ok, list_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIntegrations">>, Input, Options).

%% @doc Retrieves a list of the log anomaly detectors in the account.
-spec list_log_anomaly_detectors(aws_client:aws_client(), list_log_anomaly_detectors_request()) ->
    {ok, list_log_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_log_anomaly_detectors_errors(), tuple()}.
list_log_anomaly_detectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_anomaly_detectors(Client, Input, []).

-spec list_log_anomaly_detectors(aws_client:aws_client(), list_log_anomaly_detectors_request(), proplists:proplist()) ->
    {ok, list_log_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_log_anomaly_detectors_errors(), tuple()}.
list_log_anomaly_detectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogAnomalyDetectors">>, Input, Options).

%% @doc Returns a list of the log groups that were analyzed during a single
%% CloudWatch Logs Insights query.
%%
%% This can be useful for queries
%% that use
%% log group name prefixes or the `filterIndex' command, because the log
%% groups are dynamically selected in these cases.
%%
%% For more information about field indexes, see
%% Create field indexes to improve query performance and reduce costs:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html.
-spec list_log_groups_for_query(aws_client:aws_client(), list_log_groups_for_query_request()) ->
    {ok, list_log_groups_for_query_response(), tuple()} |
    {error, any()} |
    {error, list_log_groups_for_query_errors(), tuple()}.
list_log_groups_for_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_groups_for_query(Client, Input, []).

-spec list_log_groups_for_query(aws_client:aws_client(), list_log_groups_for_query_request(), proplists:proplist()) ->
    {ok, list_log_groups_for_query_response(), tuple()} |
    {error, any()} |
    {error, list_log_groups_for_query_errors(), tuple()}.
list_log_groups_for_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogGroupsForQuery">>, Input, Options).

%% @doc Displays the tags associated with a CloudWatch Logs resource.
%%
%% Currently, log groups
%% and destinations support tagging.
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

%% @doc
%% The ListTagsLogGroup operation is on the path to deprecation.
%%
%% We recommend that you use
%% ListTagsForResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
%% instead.
%%
%% Lists the tags for the specified log group.
-spec list_tags_log_group(aws_client:aws_client(), list_tags_log_group_request()) ->
    {ok, list_tags_log_group_response(), tuple()} |
    {error, any()} |
    {error, list_tags_log_group_errors(), tuple()}.
list_tags_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_log_group(Client, Input, []).

-spec list_tags_log_group(aws_client:aws_client(), list_tags_log_group_request(), proplists:proplist()) ->
    {ok, list_tags_log_group_response(), tuple()} |
    {error, any()} |
    {error, list_tags_log_group_errors(), tuple()}.
list_tags_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsLogGroup">>, Input, Options).

%% @doc Creates an account-level data protection policy, subscription filter
%% policy, or field index policy
%% that applies to all log groups
%% or a subset of log groups in the account.
%%
%% To use this operation, you must be signed on with the correct permissions
%% depending on the type of policy that you are creating.
%%
%% To create a data protection policy, you must have the
%% `logs:PutDataProtectionPolicy' and
%% `logs:PutAccountPolicy' permissions.
%%
%% To create a subscription filter policy, you must have the
%% `logs:PutSubscriptionFilter' and
%% `logs:PutccountPolicy' permissions.
%%
%% To create a transformer policy, you must have the
%% `logs:PutTransformer' and `logs:PutAccountPolicy' permissions.
%%
%% To create a field index policy, you must have the
%% `logs:PutIndexPolicy' and
%% `logs:PutAccountPolicy' permissions.
%%
%% Data protection policy
%%
%% A data protection policy can help safeguard sensitive
%% data that's ingested by your log groups by auditing and masking the
%% sensitive log data. Each account can have only
%% one account-level data protection policy.
%%
%% Sensitive data is detected and masked when it is ingested into a log
%% group. When you set a
%% data protection policy, log events ingested into the log groups before
%% that time are not masked.
%%
%% If you use `PutAccountPolicy' to create a data protection policy for
%% your whole account, it applies to both existing log groups
%% and all log groups that are created later in this account. The
%% account-level policy is applied to existing log groups
%% with eventual consistency. It might take up to 5 minutes before sensitive
%% data in existing log groups begins to be masked.
%%
%% By default, when a user views a log event that includes masked data, the
%% sensitive data is replaced by asterisks.
%% A user who has the `logs:Unmask' permission can use a
%% GetLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html
%% or
%% FilterLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html
%% operation with the `unmask' parameter set to `true' to view the
%% unmasked
%% log events. Users with the `logs:Unmask' can also view unmasked data
%% in the CloudWatch Logs
%% console by running a CloudWatch Logs Insights query with the `unmask'
%% query command.
%%
%% For more information, including a list of types of data that can be
%% audited and masked, see
%% Protect sensitive log data with masking:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html.
%%
%% To use the `PutAccountPolicy' operation for a data protection policy,
%% you must be signed on with
%% the `logs:PutDataProtectionPolicy'
%% and `logs:PutAccountPolicy' permissions.
%%
%% The `PutAccountPolicy' operation applies to all log groups in the
%% account. You can use
%% PutDataProtectionPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html
%% to create a data protection policy that applies to just one log group.
%% If a log group has its own data protection policy and
%% the account also has an account-level data protection policy, then the two
%% policies are cumulative. Any sensitive term
%% specified in either policy is masked.
%%
%% Subscription filter policy
%%
%% A subscription filter policy sets up a real-time feed of log events from
%% CloudWatch Logs to other Amazon Web Services services.
%% Account-level subscription filter policies apply to both existing log
%% groups and log groups that are created later in
%% this account. Supported destinations are Kinesis Data Streams, Firehose,
%% and
%% Lambda. When log events are sent to the receiving service, they are Base64
%% encoded and
%% compressed with the GZIP format.
%%
%% The following destinations are supported for subscription filters:
%%
%% An Kinesis Data Streams data stream in the same account as the
%% subscription policy, for same-account delivery.
%%
%% An Firehose data stream in the same account as the subscription policy,
%% for same-account delivery.
%%
%% A Lambda function in the same account as the subscription policy, for
%% same-account delivery.
%%
%% A logical destination in a different account created with PutDestination:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html,
%% for cross-account
%% delivery. Kinesis Data Streams and Firehose are supported as logical
%% destinations.
%%
%% Each account can have one account-level subscription filter policy per
%% Region.
%% If you are updating an existing filter, you must specify the correct name
%% in `PolicyName'.
%% To perform a `PutAccountPolicy' subscription filter operation for any
%% destination except a Lambda
%% function, you must also have the `iam:PassRole' permission.
%%
%% Transformer policy
%%
%% Creates or updates a log transformer policy for your account. You use log
%% transformers to transform log events into
%% a different format, making them easier for you to process and analyze. You
%% can also transform logs from different sources into standardized formats
%% that
%% contain
%% relevant, source-specific information. After you have created a
%% transformer,
%% CloudWatch Logs performs this transformation at the time of log ingestion.
%% You can then refer to the transformed versions of the logs during
%% operations such as querying with CloudWatch Logs Insights or creating
%% metric filters or subscription filters.
%%
%% You can also use a transformer to copy metadata from metadata keys into
%% the log events themselves. This metadata can include log group name,
%% log stream name, account ID and Region.
%%
%% A transformer for a log group is a series of processors, where each
%% processor applies one type of transformation to the log events
%% ingested into this log group. For more information about the available
%% processors to use in a transformer, see
%% Processors that you can use:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors.
%%
%% Having log events in standardized format enables visibility across your
%% applications for your log analysis, reporting, and alarming needs.
%% CloudWatch Logs provides transformation for common log types with
%% out-of-the-box transformation templates for major Amazon Web Services log
%% sources such
%% as VPC flow logs, Lambda, and Amazon RDS. You can use pre-built
%% transformation templates or create custom transformation policies.
%%
%% You can create transformers only for the log groups in the Standard log
%% class.
%%
%% You can have one account-level transformer policy that applies to all log
%% groups in the account.
%% Or you can create as many as 20 account-level transformer policies that
%% are each scoped to a subset of log groups with
%% the `selectionCriteria' parameter. If you have multiple
%% account-level transformer policies with selection criteria, no two of them
%% can use the same or overlapping log group name prefixes.
%% For example, if you have one policy filtered to log groups that start with
%% `my-log', you can't have another field index
%% policy filtered to `my-logpprod' or `my-logging'.
%%
%% You can also set up a transformer at the log-group level. For more
%% information, see
%% PutTransformer:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html.
%% If there is both a
%% log-group level transformer created with `PutTransformer' and an
%% account-level transformer that could apply to the same log
%% group, the log group uses only the log-group level transformer. It ignores
%% the account-level transformer.
%%
%% Field index policy
%%
%% You can use field index policies to create indexes on fields found in
%% log events in the log group. Creating field indexes can help lower the
%% scan volume for CloudWatch Logs Insights queries that reference
%% those fields, because these queries attempt to skip the processing of log
%% events that are known to not match the indexed field.
%% Good fields to index are fields that you often need to query for and
%% fields or values that match only a small fraction of the total log events.
%% Common examples of indexes
%% include request ID, session ID, user IDs, or instance IDs. For more
%% information, see
%% Create field indexes to improve query performance and reduce costs:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html
%%
%% To find the fields that are in your log group events, use the
%% GetLogGroupFields:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html
%% operation.
%%
%% For example, suppose you have created a field index for `requestId'.
%% Then, any
%% CloudWatch Logs Insights query on that log group that includes
%% ```
%% requestId = value '''
%% or `requestId in [value, value, ...]' will attempt to process only the
%% log events where
%% the indexed field matches the specified value.
%%
%% Matches of log events to the names of indexed fields are case-sensitive.
%% For example, an indexed field
%% of `RequestId' won't match a log event containing `requestId'.
%%
%% You can have one account-level field index policy that applies to all log
%% groups in the account.
%% Or you can create as many as 20 account-level field index policies that
%% are each scoped to a subset of log groups with
%% the `selectionCriteria' parameter. If you have multiple
%% account-level index policies with selection criteria, no two of them can
%% use the same or overlapping log group name prefixes.
%% For example, if you have one policy filtered to log groups that start with
%% `my-log', you can't have another field index
%% policy filtered to `my-logpprod' or `my-logging'.
%%
%% If you create an account-level field index policy in a monitoring account
%% in cross-account observability, the policy is applied only
%% to the monitoring account and not to any source accounts.
%%
%% If you want to create a field index policy for a single log group, you can
%% use PutIndexPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html
%% instead of
%% `PutAccountPolicy'. If you do so, that log group will use only that
%% log-group level policy, and will ignore the account-level policy
%% that you create with PutAccountPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html.
-spec put_account_policy(aws_client:aws_client(), put_account_policy_request()) ->
    {ok, put_account_policy_response(), tuple()} |
    {error, any()} |
    {error, put_account_policy_errors(), tuple()}.
put_account_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_policy(Client, Input, []).

-spec put_account_policy(aws_client:aws_client(), put_account_policy_request(), proplists:proplist()) ->
    {ok, put_account_policy_response(), tuple()} |
    {error, any()} |
    {error, put_account_policy_errors(), tuple()}.
put_account_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountPolicy">>, Input, Options).

%% @doc Creates a data protection policy for the specified log group.
%%
%% A data protection policy can help safeguard sensitive
%% data that's ingested by the log group by auditing and masking the
%% sensitive log data.
%%
%% Sensitive data is detected and masked when it is ingested into the log
%% group. When you set a
%% data protection policy, log events ingested into the log group before that
%% time are not masked.
%%
%% By default, when a user views a log event that includes masked data, the
%% sensitive data is replaced by asterisks.
%% A user who has the `logs:Unmask' permission can use a
%% GetLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html
%% or
%% FilterLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html
%% operation with the `unmask' parameter set to `true' to view the
%% unmasked
%% log events. Users with the `logs:Unmask' can also view unmasked data
%% in the CloudWatch Logs
%% console by running a CloudWatch Logs Insights query with the `unmask'
%% query command.
%%
%% For more information, including a list of types of data that can be
%% audited and masked, see
%% Protect sensitive log data with masking:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html.
%%
%% The `PutDataProtectionPolicy' operation applies to only the specified
%% log group. You can also use
%% PutAccountPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html
%% to create an account-level data protection policy that applies to all log
%% groups in the account,
%% including both existing log groups and log groups that are created level.
%% If a log group has its own data protection policy and
%% the account also has an account-level data protection policy, then the two
%% policies are cumulative. Any sensitive term
%% specified in either policy is masked.
-spec put_data_protection_policy(aws_client:aws_client(), put_data_protection_policy_request()) ->
    {ok, put_data_protection_policy_response(), tuple()} |
    {error, any()} |
    {error, put_data_protection_policy_errors(), tuple()}.
put_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_protection_policy(Client, Input, []).

-spec put_data_protection_policy(aws_client:aws_client(), put_data_protection_policy_request(), proplists:proplist()) ->
    {ok, put_data_protection_policy_response(), tuple()} |
    {error, any()} |
    {error, put_data_protection_policy_errors(), tuple()}.
put_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataProtectionPolicy">>, Input, Options).

%% @doc Creates or updates a logical delivery destination.
%%
%% A delivery destination is an Amazon Web Services resource that represents
%% an
%% Amazon Web Services service that logs can be sent to. CloudWatch Logs,
%% Amazon S3, and
%% Firehose are supported as logs delivery destinations.
%%
%% To configure logs delivery between a supported Amazon Web Services service
%% and a destination, you must do the following:
%%
%% Create a delivery source, which is a logical object that represents the
%% resource that is actually
%% sending the logs. For more
%% information, see PutDeliverySource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html.
%%
%% Use `PutDeliveryDestination' to create a delivery destination in the
%% same account of the actual delivery destination.
%% The delivery destination that you create is a logical object that
%% represents the actual
%% delivery destination.
%%
%% If you are delivering logs cross-account, you must use
%% PutDeliveryDestinationPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
%% in the destination account to assign an IAM policy to the
%% destination. This policy allows delivery to that destination.
%%
%% Use `CreateDelivery' to create a delivery by pairing exactly
%% one delivery source and one delivery destination. For more
%% information, see CreateDelivery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html.
%%
%% You can configure a single delivery source to send logs to multiple
%% destinations by creating multiple deliveries. You
%% can also create multiple deliveries to configure multiple delivery sources
%% to send logs to the same delivery destination.
%%
%% Only some Amazon Web Services services support being configured as a
%% delivery source. These services are listed
%% as Supported [V2 Permissions] in the table at
%% Enabling
%% logging from Amazon Web Services services.:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
%%
%% If you use this operation to update an existing delivery destination, all
%% the current delivery destination parameters are overwritten
%% with the new parameter values that you specify.
-spec put_delivery_destination(aws_client:aws_client(), put_delivery_destination_request()) ->
    {ok, put_delivery_destination_response(), tuple()} |
    {error, any()} |
    {error, put_delivery_destination_errors(), tuple()}.
put_delivery_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_delivery_destination(Client, Input, []).

-spec put_delivery_destination(aws_client:aws_client(), put_delivery_destination_request(), proplists:proplist()) ->
    {ok, put_delivery_destination_response(), tuple()} |
    {error, any()} |
    {error, put_delivery_destination_errors(), tuple()}.
put_delivery_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDeliveryDestination">>, Input, Options).

%% @doc Creates and assigns an IAM policy that grants permissions to
%% CloudWatch Logs to deliver
%% logs cross-account to a specified destination in this account.
%%
%% To configure the delivery of logs from an
%% Amazon Web Services service in another account to a logs delivery
%% destination in the current account, you must do the following:
%%
%% Create a delivery source, which is a logical object that represents the
%% resource that is actually
%% sending the logs. For more
%% information, see PutDeliverySource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html.
%%
%% Create a delivery destination, which is a logical object that represents
%% the actual
%% delivery destination. For more
%% information, see PutDeliveryDestination:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html.
%%
%% Use this operation in the destination account to assign an IAM policy to
%% the
%% destination. This policy allows delivery to that destination.
%%
%% Create a delivery by pairing exactly one delivery source and one delivery
%% destination.
%% For more information, see CreateDelivery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html.
%%
%% Only some Amazon Web Services services support being configured as a
%% delivery source. These services are listed
%% as Supported [V2 Permissions] in the table at
%% Enabling
%% logging from Amazon Web Services services.:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
%%
%% The contents of the policy must include two statements. One statement
%% enables general logs delivery, and the other
%% allows delivery to the chosen destination. See the examples for the needed
%% policies.
-spec put_delivery_destination_policy(aws_client:aws_client(), put_delivery_destination_policy_request()) ->
    {ok, put_delivery_destination_policy_response(), tuple()} |
    {error, any()} |
    {error, put_delivery_destination_policy_errors(), tuple()}.
put_delivery_destination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_delivery_destination_policy(Client, Input, []).

-spec put_delivery_destination_policy(aws_client:aws_client(), put_delivery_destination_policy_request(), proplists:proplist()) ->
    {ok, put_delivery_destination_policy_response(), tuple()} |
    {error, any()} |
    {error, put_delivery_destination_policy_errors(), tuple()}.
put_delivery_destination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDeliveryDestinationPolicy">>, Input, Options).

%% @doc Creates or updates a logical delivery source.
%%
%% A delivery source represents an Amazon Web Services resource that sends
%% logs to an
%% logs delivery destination. The destination can be CloudWatch Logs, Amazon
%% S3, or Firehose.
%%
%% To configure logs delivery between a delivery destination and an Amazon
%% Web Services service that is supported as a delivery source, you must do
%% the following:
%%
%% Use `PutDeliverySource' to create a delivery source, which is a
%% logical object that represents the resource that is actually
%% sending the logs.
%%
%% Use `PutDeliveryDestination' to create a delivery destination, which
%% is a logical object that represents the actual
%% delivery destination. For more
%% information, see PutDeliveryDestination:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html.
%%
%% If you are delivering logs cross-account, you must use
%% PutDeliveryDestinationPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
%% in the destination account to assign an IAM policy to the
%% destination. This policy allows delivery to that destination.
%%
%% Use `CreateDelivery' to create a delivery by pairing exactly
%% one delivery source and one delivery destination. For more
%% information, see CreateDelivery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html.
%%
%% You can configure a single delivery source to send logs to multiple
%% destinations by creating multiple deliveries. You
%% can also create multiple deliveries to configure multiple delivery sources
%% to send logs to the same delivery destination.
%%
%% Only some Amazon Web Services services support being configured as a
%% delivery source. These services are listed
%% as Supported [V2 Permissions] in the table at
%% Enabling
%% logging from Amazon Web Services services.:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
%%
%% If you use this operation to update an existing delivery source, all the
%% current delivery source parameters are overwritten
%% with the new parameter values that you specify.
-spec put_delivery_source(aws_client:aws_client(), put_delivery_source_request()) ->
    {ok, put_delivery_source_response(), tuple()} |
    {error, any()} |
    {error, put_delivery_source_errors(), tuple()}.
put_delivery_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_delivery_source(Client, Input, []).

-spec put_delivery_source(aws_client:aws_client(), put_delivery_source_request(), proplists:proplist()) ->
    {ok, put_delivery_source_response(), tuple()} |
    {error, any()} |
    {error, put_delivery_source_errors(), tuple()}.
put_delivery_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDeliverySource">>, Input, Options).

%% @doc Creates or updates a destination.
%%
%% This operation is used only to create destinations for cross-account
%% subscriptions.
%%
%% A destination encapsulates a physical resource (such as an Amazon Kinesis
%% stream). With
%% a destination, you can subscribe to a real-time stream of log events for a
%% different account,
%% ingested using PutLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html.
%%
%% Through an access policy, a destination controls what is written to it.
%% By default, `PutDestination' does not set any access policy with the
%% destination,
%% which means a cross-account user cannot call PutSubscriptionFilter:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html
%% against
%% this destination. To enable this, the destination owner must call
%% PutDestinationPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html
%% after `PutDestination'.
%%
%% To perform a `PutDestination' operation, you must also have the
%% `iam:PassRole' permission.
-spec put_destination(aws_client:aws_client(), put_destination_request()) ->
    {ok, put_destination_response(), tuple()} |
    {error, any()} |
    {error, put_destination_errors(), tuple()}.
put_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_destination(Client, Input, []).

-spec put_destination(aws_client:aws_client(), put_destination_request(), proplists:proplist()) ->
    {ok, put_destination_response(), tuple()} |
    {error, any()} |
    {error, put_destination_errors(), tuple()}.
put_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDestination">>, Input, Options).

%% @doc Creates or updates an access policy associated with an existing
%% destination.
%%
%% An access policy is an IAM policy document:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html
%% that is used
%% to authorize claims to register a subscription filter against a given
%% destination.
-spec put_destination_policy(aws_client:aws_client(), put_destination_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_destination_policy_errors(), tuple()}.
put_destination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_destination_policy(Client, Input, []).

-spec put_destination_policy(aws_client:aws_client(), put_destination_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_destination_policy_errors(), tuple()}.
put_destination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDestinationPolicy">>, Input, Options).

%% @doc Creates or updates a field index policy for the specified log group.
%%
%% Only log groups
%% in the Standard log class support field index policies. For more
%% information about log classes, see
%% Log classes:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html.
%%
%% You can use field index policies to create field indexes on fields found
%% in
%% log events in the log group. Creating field indexes speeds up and lowers
%% the costs for CloudWatch Logs Insights queries that reference
%% those field indexes, because these queries attempt to skip the processing
%% of log events that are known to not match the indexed field.
%% Good fields to index are fields that you often need to query for and
%% fields or values that match only a small fraction of the total log events.
%% Common examples of indexes
%% include request ID, session ID, userID, and instance IDs. For more
%% information, see Create field indexes to improve query performance and
%% reduce costs:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html.
%%
%% To find the fields that are in your log group events, use the
%% GetLogGroupFields:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html
%% operation.
%%
%% For example, suppose you have created a field index for `requestId'.
%% Then, any
%% CloudWatch Logs Insights query on that log group that includes
%% ```
%% requestId = value '''
%% or `requestId IN [value, value, ...]' will process fewer log events
%% to reduce costs, and have improved performance.
%%
%% Each index policy has the following quotas and restrictions:
%%
%% As many as 20 fields can be included in the policy.
%%
%% Each field name can include as many as 100 characters.
%%
%% Matches of log events to the names of indexed fields are case-sensitive.
%% For example, a field index
%% of `RequestId' won't match a log event containing `requestId'.
%%
%% Log group-level field index policies created with `PutIndexPolicy'
%% override account-level field
%% index policies created with PutAccountPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html.
%% If you use
%% `PutIndexPolicy' to create a field
%% index policy for a log group, that log group uses only that policy. The
%% log group ignores any account-wide
%% field index policy that you might have created.
-spec put_index_policy(aws_client:aws_client(), put_index_policy_request()) ->
    {ok, put_index_policy_response(), tuple()} |
    {error, any()} |
    {error, put_index_policy_errors(), tuple()}.
put_index_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_index_policy(Client, Input, []).

-spec put_index_policy(aws_client:aws_client(), put_index_policy_request(), proplists:proplist()) ->
    {ok, put_index_policy_response(), tuple()} |
    {error, any()} |
    {error, put_index_policy_errors(), tuple()}.
put_index_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutIndexPolicy">>, Input, Options).

%% @doc Creates an integration between CloudWatch Logs and another service in
%% this account.
%%
%% Currently, only integrations with
%% OpenSearch Service are supported, and currently you can have only one
%% integration in your account.
%%
%% Integrating with OpenSearch Service makes it possible for you to create
%% curated vended logs dashboards, powered
%% by OpenSearch Service analytics. For more information, see
%% Vended log dashboards powered by Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-OpenSearch-Dashboards.html.
%%
%% You can use this operation only to create a new integration. You can't
%% modify an existing integration.
-spec put_integration(aws_client:aws_client(), put_integration_request()) ->
    {ok, put_integration_response(), tuple()} |
    {error, any()} |
    {error, put_integration_errors(), tuple()}.
put_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_integration(Client, Input, []).

-spec put_integration(aws_client:aws_client(), put_integration_request(), proplists:proplist()) ->
    {ok, put_integration_response(), tuple()} |
    {error, any()} |
    {error, put_integration_errors(), tuple()}.
put_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutIntegration">>, Input, Options).

%% @doc Uploads a batch of log events to the specified log stream.
%%
%% The sequence token is now ignored in `PutLogEvents'
%% actions. `PutLogEvents'
%% actions are always accepted and never return
%% `InvalidSequenceTokenException' or
%% `DataAlreadyAcceptedException' even if the sequence token is not
%% valid. You can use
%% parallel `PutLogEvents' actions on the same log stream.
%%
%% The batch of events must satisfy the following constraints:
%%
%% The maximum batch size is 1,048,576 bytes. This size is calculated as the
%% sum of
%% all event messages in UTF-8, plus 26 bytes for each log event.
%%
%% None of the log events in the batch can be more than 2 hours in the
%% future.
%%
%% None of the log events in the batch can be more than 14 days in the past.
%% Also,
%% none of the log events can be from earlier than the retention period of
%% the log
%% group.
%%
%% The log events in the batch must be in chronological order by their
%% timestamp. The
%% timestamp is the time that the event occurred, expressed as the number of
%% milliseconds
%% after `Jan 1, 1970 00:00:00 UTC'. (In Amazon Web Services Tools for
%% PowerShell
%% and the Amazon Web Services SDK for .NET, the timestamp is specified in
%% .NET format:
%% `yyyy-mm-ddThh:mm:ss'. For example, `2017-09-15T13:45:30'.)
%%
%% A batch of log events in a single request cannot span more than 24 hours.
%% Otherwise, the operation fails.
%%
%% Each log event can be no larger than 256 KB.
%%
%% The maximum number of log events in a batch is 10,000.
%%
%% The quota of five requests per second per log stream
%% has been removed. Instead, `PutLogEvents' actions are throttled based
%% on a
%% per-second per-account quota. You can request an increase to the
%% per-second throttling
%% quota by using the Service Quotas service.
%%
%% If a call to `PutLogEvents' returns
%% &quot;UnrecognizedClientException&quot; the most
%% likely cause is a non-valid Amazon Web Services access key ID or secret
%% key.
-spec put_log_events(aws_client:aws_client(), put_log_events_request()) ->
    {ok, put_log_events_response(), tuple()} |
    {error, any()} |
    {error, put_log_events_errors(), tuple()}.
put_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_log_events(Client, Input, []).

-spec put_log_events(aws_client:aws_client(), put_log_events_request(), proplists:proplist()) ->
    {ok, put_log_events_response(), tuple()} |
    {error, any()} |
    {error, put_log_events_errors(), tuple()}.
put_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLogEvents">>, Input, Options).

%% @doc Creates or updates a metric filter and associates it with the
%% specified log group.
%%
%% With
%% metric filters, you can configure rules to extract metric data from log
%% events ingested
%% through PutLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html.
%%
%% The maximum number of metric filters that can be associated with a log
%% group is
%% 100.
%%
%% Using regular expressions in filter patterns is supported. For these
%% filters,
%% there is a quota of two regular expression patterns within a single filter
%% pattern. There
%% is also a quota of five regular expression patterns per log group.
%% For more information about using regular expressions in filter patterns,
%% see
%% Filter pattern syntax for metric filters, subscription filters, filter log
%% events, and Live Tail:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html.
%%
%% When you create a metric filter, you can also optionally assign a unit and
%% dimensions
%% to the metric that is created.
%%
%% Metrics extracted from log events are charged as custom metrics.
%% To prevent unexpected high charges, do not specify high-cardinality fields
%% such as
%% `IPAddress' or `requestID' as dimensions. Each different value
%% found for
%% a dimension is treated as a separate metric and accrues charges as a
%% separate custom metric.
%%
%% CloudWatch Logs might disable a metric filter if it generates 1,000
%% different name/value pairs for
%% your specified dimensions within one hour.
%%
%% You can also set up a billing alarm to alert you if your charges are
%% higher than
%% expected. For more information,
%% see
%% Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services
%% Charges:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html.
-spec put_metric_filter(aws_client:aws_client(), put_metric_filter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metric_filter_errors(), tuple()}.
put_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_filter(Client, Input, []).

-spec put_metric_filter(aws_client:aws_client(), put_metric_filter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metric_filter_errors(), tuple()}.
put_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricFilter">>, Input, Options).

%% @doc Creates or updates a query definition for CloudWatch Logs Insights.
%%
%% For
%% more information, see Analyzing Log Data with CloudWatch Logs Insights:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html.
%%
%% To update a query definition, specify its `queryDefinitionId' in your
%% request.
%% The values of `name', `queryString', and `logGroupNames' are
%% changed to the values that you specify in your update operation. No
%% current values are
%% retained from the current query definition. For example, imagine updating
%% a current query
%% definition that includes log groups. If you don't specify the
%% `logGroupNames'
%% parameter in your update operation, the query definition changes to
%% contain no log
%% groups.
%%
%% You must have the `logs:PutQueryDefinition' permission to be able to
%% perform
%% this operation.
-spec put_query_definition(aws_client:aws_client(), put_query_definition_request()) ->
    {ok, put_query_definition_response(), tuple()} |
    {error, any()} |
    {error, put_query_definition_errors(), tuple()}.
put_query_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_query_definition(Client, Input, []).

-spec put_query_definition(aws_client:aws_client(), put_query_definition_request(), proplists:proplist()) ->
    {ok, put_query_definition_response(), tuple()} |
    {error, any()} |
    {error, put_query_definition_errors(), tuple()}.
put_query_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutQueryDefinition">>, Input, Options).

%% @doc Creates or updates a resource policy allowing other Amazon Web
%% Services services to put log events to
%% this account, such as Amazon Route 53.
%%
%% An account can have up to 10 resource policies per Amazon Web Services
%% Region.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Sets the retention of the specified log group.
%%
%% With a retention policy, you can
%% configure the number of days for which to retain log events in the
%% specified log
%% group.
%%
%% CloudWatch Logs doesn't immediately delete log events when they reach
%% their retention
%% setting. It typically takes up to 72 hours after that before log events
%% are deleted, but in
%% rare situations might take longer.
%%
%% To illustrate, imagine that you change a log group to have a longer
%% retention setting
%% when it contains log events that are past the expiration date, but
%% haven't been deleted.
%% Those log events will take up to 72 hours to be deleted after the new
%% retention date is
%% reached. To make sure that log data is deleted permanently, keep a log
%% group at its lower
%% retention setting until 72 hours after the previous retention period ends.
%% Alternatively,
%% wait to change the retention setting until you confirm that the earlier
%% log events are
%% deleted.
%%
%% When log events reach their retention setting they are marked for
%% deletion. After
%% they are marked for deletion, they do not add to your archival storage
%% costs anymore, even if
%% they are not actually deleted until later. These log events marked for
%% deletion are also not
%% included when you use an API to retrieve the `storedBytes' value to
%% see how many bytes a log group is storing.
-spec put_retention_policy(aws_client:aws_client(), put_retention_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_retention_policy_errors(), tuple()}.
put_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_policy(Client, Input, []).

-spec put_retention_policy(aws_client:aws_client(), put_retention_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_retention_policy_errors(), tuple()}.
put_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionPolicy">>, Input, Options).

%% @doc Creates or updates a subscription filter and associates it with the
%% specified log
%% group.
%%
%% With subscription filters, you can subscribe to a real-time stream of log
%% events
%% ingested through PutLogEvents:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
%% and have them delivered to a specific destination. When log events are
%% sent to the receiving
%% service, they are Base64 encoded and compressed with the GZIP format.
%%
%% The following destinations are supported for subscription filters:
%%
%% An Amazon Kinesis data stream belonging to the same account as the
%% subscription
%% filter, for same-account delivery.
%%
%% A logical destination created with PutDestination:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html
%% that belongs to a different account, for cross-account delivery.
%% We currently support Kinesis Data Streams and Firehose as logical
%% destinations.
%%
%% An Amazon Kinesis Data Firehose delivery stream that belongs to the same
%% account as
%% the subscription filter, for same-account delivery.
%%
%% An Lambda function that belongs to the same account as the
%% subscription filter, for same-account delivery.
%%
%% Each log group can have up to two subscription filters associated with it.
%% If you are
%% updating an existing filter, you must specify the correct name in
%% `filterName'.
%%
%% Using regular expressions in filter patterns is supported. For these
%% filters,
%% there is a quotas of quota of two regular expression patterns within a
%% single filter pattern. There
%% is also a quota of five regular expression patterns per log group.
%% For more information about using regular expressions in filter patterns,
%% see
%% Filter pattern syntax for metric filters, subscription filters, filter log
%% events, and Live Tail:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html.
%%
%% To perform a `PutSubscriptionFilter' operation for any destination
%% except a Lambda function,
%% you must also have the
%% `iam:PassRole' permission.
-spec put_subscription_filter(aws_client:aws_client(), put_subscription_filter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_subscription_filter_errors(), tuple()}.
put_subscription_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_subscription_filter(Client, Input, []).

-spec put_subscription_filter(aws_client:aws_client(), put_subscription_filter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_subscription_filter_errors(), tuple()}.
put_subscription_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSubscriptionFilter">>, Input, Options).

%% @doc Creates or updates a log transformer for a single log group.
%%
%% You use log transformers to transform log events into
%% a different format, making them easier for you to process and analyze. You
%% can also transform logs from different sources into standardized formats
%% that
%% contains
%% relevant, source-specific information.
%%
%% After you have created a transformer,
%% CloudWatch Logs performs the transformations at the time of log ingestion.
%% You can then refer to the transformed versions of the logs during
%% operations such as querying with CloudWatch Logs Insights or creating
%% metric filters or subscription filers.
%%
%% You can also use a transformer to copy metadata from metadata keys into
%% the log events themselves. This metadata can include log group name,
%% log stream name, account ID and Region.
%%
%% A transformer for a log group is a series of processors, where each
%% processor applies one type of transformation to the log events
%% ingested into this log group. The processors work one after another, in
%% the order that you list them, like a pipeline. For more information about
%% the available processors to use in a transformer, see
%% Processors that you can use:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors.
%%
%% Having log events in standardized format enables visibility across your
%% applications for your log analysis, reporting, and alarming needs.
%% CloudWatch Logs provides transformation for common log types with
%% out-of-the-box transformation templates for major Amazon Web Services log
%% sources such
%% as VPC flow logs, Lambda, and Amazon RDS. You can use pre-built
%% transformation templates or create custom transformation policies.
%%
%% You can create transformers only for the log groups in the Standard log
%% class.
%%
%% You can also set up a transformer at the account level. For more
%% information, see
%% PutAccountPolicy:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html.
%% If there is both a
%% log-group level transformer created with `PutTransformer' and an
%% account-level transformer that could apply to the same log
%% group, the log group uses only the log-group level transformer. It ignores
%% the account-level transformer.
-spec put_transformer(aws_client:aws_client(), put_transformer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_transformer_errors(), tuple()}.
put_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_transformer(Client, Input, []).

-spec put_transformer(aws_client:aws_client(), put_transformer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_transformer_errors(), tuple()}.
put_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutTransformer">>, Input, Options).

%% @doc Starts a Live Tail streaming session for one or more log groups.
%%
%% A Live Tail session returns a stream of
%% log events that have
%% been recently ingested in the log groups. For more information, see
%% Use Live Tail to view logs in near real time:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html.
%%
%% The response to this operation is a response stream, over which
%% the server sends live log events and the client receives them.
%%
%% The following objects are sent over the stream:
%%
%% A single LiveTailSessionStart:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionStart.html
%% object is sent at the start of the session.
%%
%% Every second, a LiveTailSessionUpdate:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionUpdate.html
%% object is sent. Each of these objects contains an array of the actual log
%% events.
%%
%% If no new log events were ingested in the past second, the
%% `LiveTailSessionUpdate' object will contain an empty array.
%%
%% The array of log events contained in a `LiveTailSessionUpdate' can
%% include
%% as many as 500 log events. If the number of log events matching the
%% request exceeds 500 per second, the
%% log events are sampled down to 500 log events to be included in each
%% `LiveTailSessionUpdate' object.
%%
%% If your client consumes the log events slower than the server produces
%% them, CloudWatch Logs
%% buffers up to 10 `LiveTailSessionUpdate' events or 5000 log events,
%% after
%% which it starts dropping the oldest events.
%%
%% A SessionStreamingException:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionStreamingException
%% object is returned if an unknown error occurs on the server side.
%%
%% A SessionTimeoutException:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionTimeoutException
%% object is returned when the session times out, after it has been kept open
%% for three hours.
%%
%% You can end a session before it times out by closing the session stream or
%% by closing the client that is receiving the
%% stream. The session also ends if the established connection between the
%% client and the server breaks.
%%
%% For examples of using an SDK to start a Live Tail session, see
%%
%% Start a Live Tail session using an Amazon Web Services SDK:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/example_cloudwatch-logs_StartLiveTail_section.html.
-spec start_live_tail(aws_client:aws_client(), start_live_tail_request()) ->
    {ok, start_live_tail_response(), tuple()} |
    {error, any()} |
    {error, start_live_tail_errors(), tuple()}.
start_live_tail(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_live_tail(Client, Input, []).

-spec start_live_tail(aws_client:aws_client(), start_live_tail_request(), proplists:proplist()) ->
    {ok, start_live_tail_response(), tuple()} |
    {error, any()} |
    {error, start_live_tail_errors(), tuple()}.
start_live_tail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLiveTail">>, Input, Options).

%% @doc Starts a query of one or more log groups using CloudWatch Logs
%% Insights.
%%
%% You specify the log groups
%% and time range to query and the query string to use.
%%
%% For more information, see CloudWatch Logs Insights Query Syntax:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html.
%%
%% After you run a query using `StartQuery', the query results are stored
%% by CloudWatch Logs.
%% You can use GetQueryResults:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
%% to retrieve
%% the results of a query, using the `queryId' that `StartQuery'
%% returns.
%%
%% To specify the log groups to query, a `StartQuery' operation must
%% include one of the following:
%%
%% Either exactly one of the following
%% parameters: `logGroupName', `logGroupNames', or
%% `logGroupIdentifiers'
%%
%% Or the `queryString' must include a `SOURCE' command to select log
%% groups for the query. The `SOURCE' command can select log groups based
%% on log group name prefix, account ID,
%% and log class.
%%
%% For more information about the `SOURCE' command,
%% see SOURCE:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax-Source.html.
%%
%% If you have associated a KMS key with the query results in this account,
%% then
%% StartQuery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
%% uses that key to
%% encrypt the results when it stores them. If no key is associated with
%% query results, the query results are
%% encrypted with the default CloudWatch Logs encryption method.
%%
%% Queries time out after 60 minutes of runtime. If your queries are timing
%% out, reduce the
%% time range being searched or partition your query into a number of
%% queries.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a
%% monitoring account to start a query in a linked source account. For more
%% information, see
%% CloudWatch
%% cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
%% For a cross-account `StartQuery' operation,
%% the query definition must be defined in the monitoring account.
%%
%% You can have up to 30 concurrent CloudWatch Logs insights queries,
%% including queries
%% that have been added to dashboards.
-spec start_query(aws_client:aws_client(), start_query_request()) ->
    {ok, start_query_response(), tuple()} |
    {error, any()} |
    {error, start_query_errors(), tuple()}.
start_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_query(Client, Input, []).

-spec start_query(aws_client:aws_client(), start_query_request(), proplists:proplist()) ->
    {ok, start_query_response(), tuple()} |
    {error, any()} |
    {error, start_query_errors(), tuple()}.
start_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartQuery">>, Input, Options).

%% @doc Stops a CloudWatch Logs Insights query that is in progress.
%%
%% If the query has already ended, the operation
%% returns an error indicating that the specified query is not running.
-spec stop_query(aws_client:aws_client(), stop_query_request()) ->
    {ok, stop_query_response(), tuple()} |
    {error, any()} |
    {error, stop_query_errors(), tuple()}.
stop_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_query(Client, Input, []).

-spec stop_query(aws_client:aws_client(), stop_query_request(), proplists:proplist()) ->
    {ok, stop_query_response(), tuple()} |
    {error, any()} |
    {error, stop_query_errors(), tuple()}.
stop_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopQuery">>, Input, Options).

%% @doc
%% The TagLogGroup operation is on the path to deprecation.
%%
%% We recommend that you use
%% TagResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
%% instead.
%%
%% Adds or updates the specified tags for the specified log group.
%%
%% To list the tags for a log group, use ListTagsForResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html.
%% To remove tags, use UntagResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html.
%%
%% For more information about tags, see Tag Log Groups in Amazon CloudWatch
%% Logs:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging
%% in the Amazon CloudWatch Logs User Guide.
%%
%% CloudWatch Logs doesn't support IAM policies that prevent users from
%% assigning specified tags to
%% log groups using the
%% ```
%% aws:Resource/key-name ''' or `aws:TagKeys' condition keys.
%% For more information about using tags to control access, see
%% Controlling access to Amazon Web Services resources using tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html.
-spec tag_log_group(aws_client:aws_client(), tag_log_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_log_group_errors(), tuple()}.
tag_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_log_group(Client, Input, []).

-spec tag_log_group(aws_client:aws_client(), tag_log_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_log_group_errors(), tuple()}.
tag_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagLogGroup">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch Logs resource.
%%
%% Currently, the only CloudWatch Logs resources that
%% can be tagged are log groups and destinations.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user
%% permissions by granting a user
%% permission to access or change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the alarm,
%% this tag is appended to the list of tags associated
%% with the alarm. If you specify a tag key that is already associated with
%% the alarm, the new tag value that you specify replaces
%% the previous value for that tag.
%%
%% You can associate as many as 50 tags with a CloudWatch Logs resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests the filter pattern of a metric filter against a sample of log
%% event messages.
%%
%% You
%% can use this operation to validate the correctness of a metric filter
%% pattern.
-spec test_metric_filter(aws_client:aws_client(), test_metric_filter_request()) ->
    {ok, test_metric_filter_response(), tuple()} |
    {error, any()} |
    {error, test_metric_filter_errors(), tuple()}.
test_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_metric_filter(Client, Input, []).

-spec test_metric_filter(aws_client:aws_client(), test_metric_filter_request(), proplists:proplist()) ->
    {ok, test_metric_filter_response(), tuple()} |
    {error, any()} |
    {error, test_metric_filter_errors(), tuple()}.
test_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestMetricFilter">>, Input, Options).

%% @doc Use this operation to test a log transformer.
%%
%% You enter the transformer configuration and a set of log events to test
%% with. The operation
%% responds with an array that includes the original log events and the
%% transformed versions.
-spec test_transformer(aws_client:aws_client(), test_transformer_request()) ->
    {ok, test_transformer_response(), tuple()} |
    {error, any()} |
    {error, test_transformer_errors(), tuple()}.
test_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_transformer(Client, Input, []).

-spec test_transformer(aws_client:aws_client(), test_transformer_request(), proplists:proplist()) ->
    {ok, test_transformer_response(), tuple()} |
    {error, any()} |
    {error, test_transformer_errors(), tuple()}.
test_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestTransformer">>, Input, Options).

%% @doc
%% The UntagLogGroup operation is on the path to deprecation.
%%
%% We recommend that you use
%% UntagResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
%% instead.
%%
%% Removes the specified tags from the specified log group.
%%
%% To list the tags for a log group, use ListTagsForResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html.
%% To add tags, use TagResource:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html.
%%
%% CloudWatch Logs doesn't support IAM policies that prevent users from
%% assigning specified tags to
%% log groups using the
%% ```
%% aws:Resource/key-name ''' or `aws:TagKeys' condition keys.
-spec untag_log_group(aws_client:aws_client(), untag_log_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_log_group_errors(), tuple()}.
untag_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_log_group(Client, Input, []).

-spec untag_log_group(aws_client:aws_client(), untag_log_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_log_group_errors(), tuple()}.
untag_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagLogGroup">>, Input, Options).

%% @doc Removes one or more tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Use this operation to suppress anomaly detection for a specified
%% anomaly or pattern.
%%
%% If you suppress
%% an anomaly, CloudWatch Logs won't report new occurrences of that
%% anomaly and won't
%% update that anomaly
%% with new data. If you suppress a pattern, CloudWatch Logs won't report
%% any anomalies related to that pattern.
%%
%% You must specify either `anomalyId' or `patternId', but you
%% can't specify both parameters in the
%% same operation.
%%
%% If you have previously used this operation to suppress detection of a
%% pattern or anomaly, you can use it again to cause
%% CloudWatch Logs to end the suppression. To do this, use this operation and
%% specify the anomaly or pattern to
%% stop suppressing, and omit the `suppressionType' and
%% `suppressionPeriod' parameters.
-spec update_anomaly(aws_client:aws_client(), update_anomaly_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_anomaly_errors(), tuple()}.
update_anomaly(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly(Client, Input, []).

-spec update_anomaly(aws_client:aws_client(), update_anomaly_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_anomaly_errors(), tuple()}.
update_anomaly(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomaly">>, Input, Options).

%% @doc Use this operation to update the configuration of a delivery:
%% https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Delivery.html
%% to change either the
%% S3 path pattern or the format of the delivered logs.
%%
%% You can't use this operation to change the
%% source or destination of the delivery.
-spec update_delivery_configuration(aws_client:aws_client(), update_delivery_configuration_request()) ->
    {ok, update_delivery_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_delivery_configuration_errors(), tuple()}.
update_delivery_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_delivery_configuration(Client, Input, []).

-spec update_delivery_configuration(aws_client:aws_client(), update_delivery_configuration_request(), proplists:proplist()) ->
    {ok, update_delivery_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_delivery_configuration_errors(), tuple()}.
update_delivery_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeliveryConfiguration">>, Input, Options).

%% @doc Updates an existing log anomaly detector.
-spec update_log_anomaly_detector(aws_client:aws_client(), update_log_anomaly_detector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_log_anomaly_detector_errors(), tuple()}.
update_log_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_log_anomaly_detector(Client, Input, []).

-spec update_log_anomaly_detector(aws_client:aws_client(), update_log_anomaly_detector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_log_anomaly_detector_errors(), tuple()}.
update_log_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLogAnomalyDetector">>, Input, Options).

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
    Client1 = Client#{service => <<"logs">>},
    Host = build_host(<<"logs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Logs_20140328.", Action/binary>>}
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
