%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kinesis Data Streams Service API Reference
%%
%% Amazon Kinesis Data Streams is a managed service that scales elastically
%% for real-time
%% processing of streaming big data.
-module(aws_kinesis).

-export([add_tags_to_stream/2,
         add_tags_to_stream/3,
         create_stream/2,
         create_stream/3,
         decrease_stream_retention_period/2,
         decrease_stream_retention_period/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_stream/2,
         delete_stream/3,
         deregister_stream_consumer/2,
         deregister_stream_consumer/3,
         describe_account_settings/2,
         describe_account_settings/3,
         describe_limits/2,
         describe_limits/3,
         describe_stream/2,
         describe_stream/3,
         describe_stream_consumer/2,
         describe_stream_consumer/3,
         describe_stream_summary/2,
         describe_stream_summary/3,
         disable_enhanced_monitoring/2,
         disable_enhanced_monitoring/3,
         enable_enhanced_monitoring/2,
         enable_enhanced_monitoring/3,
         get_records/2,
         get_records/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_shard_iterator/2,
         get_shard_iterator/3,
         increase_stream_retention_period/2,
         increase_stream_retention_period/3,
         list_shards/2,
         list_shards/3,
         list_stream_consumers/2,
         list_stream_consumers/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tags_for_stream/2,
         list_tags_for_stream/3,
         merge_shards/2,
         merge_shards/3,
         put_record/2,
         put_record/3,
         put_records/2,
         put_records/3,
         put_resource_policy/2,
         put_resource_policy/3,
         register_stream_consumer/2,
         register_stream_consumer/3,
         remove_tags_from_stream/2,
         remove_tags_from_stream/3,
         split_shard/2,
         split_shard/3,
         start_stream_encryption/2,
         start_stream_encryption/3,
         stop_stream_encryption/2,
         stop_stream_encryption/3,
         subscribe_to_shard/2,
         subscribe_to_shard/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_account_settings/2,
         update_account_settings/3,
         update_max_record_size/2,
         update_max_record_size/3,
         update_shard_count/2,
         update_shard_count/3,
         update_stream_mode/2,
         update_stream_mode/3,
         update_stream_warm_throughput/2,
         update_stream_warm_throughput/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% kms_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_disabled_exception() :: #{binary() => any()}.

%% Example:
%% list_shards_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Shards">> => list(shard())
%% }
-type list_shards_output() :: #{binary() => any()}.

%% Example:
%% consumer_description() :: #{
%%   <<"ConsumerARN">> => string(),
%%   <<"ConsumerCreationTimestamp">> => non_neg_integer(),
%%   <<"ConsumerName">> => string(),
%%   <<"ConsumerStatus">> => list(any()),
%%   <<"StreamARN">> => string()
%% }
-type consumer_description() :: #{binary() => any()}.

%% Example:
%% record() :: #{
%%   <<"ApproximateArrivalTimestamp">> => non_neg_integer(),
%%   <<"Data">> => binary(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"PartitionKey">> => string(),
%%   <<"SequenceNumber">> => string()
%% }
-type record() :: #{binary() => any()}.

%% Example:
%% describe_limits_output() :: #{
%%   <<"OnDemandStreamCount">> => integer(),
%%   <<"OnDemandStreamCountLimit">> => integer(),
%%   <<"OpenShardCount">> => integer(),
%%   <<"ShardLimit">> => integer()
%% }
-type describe_limits_output() :: #{binary() => any()}.

%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% enable_enhanced_monitoring_input() :: #{
%%   <<"ShardLevelMetrics">> := list(list(any())()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type enable_enhanced_monitoring_input() :: #{binary() => any()}.

%% Example:
%% list_shards_input() :: #{
%%   <<"ExclusiveStartShardId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ShardFilter">> => shard_filter(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamCreationTimestamp">> => non_neg_integer(),
%%   <<"StreamName">> => string()
%% }
-type list_shards_input() :: #{binary() => any()}.

%% Example:
%% kms_opt_in_required() :: #{
%%   <<"message">> => string()
%% }
-type kms_opt_in_required() :: #{binary() => any()}.

%% Example:
%% list_stream_consumers_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StreamARN">> := string(),
%%   <<"StreamCreationTimestamp">> => non_neg_integer()
%% }
-type list_stream_consumers_input() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_output() :: #{
%%   <<"Policy">> => string()
%% }
-type get_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% starting_position() :: #{
%%   <<"SequenceNumber">> => string(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type starting_position() :: #{binary() => any()}.

%% Example:
%% update_stream_warm_throughput_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"WarmThroughputMiBps">> := integer()
%% }
-type update_stream_warm_throughput_input() :: #{binary() => any()}.

%% Example:
%% kms_throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_throttling_exception() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% update_stream_warm_throughput_output() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"WarmThroughput">> => warm_throughput_object()
%% }
-type update_stream_warm_throughput_output() :: #{binary() => any()}.

%% Example:
%% update_shard_count_input() :: #{
%%   <<"ScalingType">> := list(any()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"TargetShardCount">> := integer()
%% }
-type update_shard_count_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_stream_output() :: #{
%%   <<"HasMoreTags">> => boolean(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_stream_output() :: #{binary() => any()}.

%% Example:
%% stream_description() :: #{
%%   <<"EncryptionType">> => list(any()),
%%   <<"EnhancedMonitoring">> => list(enhanced_metrics()),
%%   <<"HasMoreShards">> => boolean(),
%%   <<"KeyId">> => string(),
%%   <<"RetentionPeriodHours">> => integer(),
%%   <<"Shards">> => list(shard()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamCreationTimestamp">> => non_neg_integer(),
%%   <<"StreamModeDetails">> => stream_mode_details(),
%%   <<"StreamName">> => string(),
%%   <<"StreamStatus">> => list(any())
%% }
-type stream_description() :: #{binary() => any()}.

%% Example:
%% decrease_stream_retention_period_input() :: #{
%%   <<"RetentionPeriodHours">> := integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type decrease_stream_retention_period_input() :: #{binary() => any()}.

%% Example:
%% stream_description_summary() :: #{
%%   <<"ConsumerCount">> => integer(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"EnhancedMonitoring">> => list(enhanced_metrics()),
%%   <<"KeyId">> => string(),
%%   <<"MaxRecordSizeInKiB">> => integer(),
%%   <<"OpenShardCount">> => integer(),
%%   <<"RetentionPeriodHours">> => integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamCreationTimestamp">> => non_neg_integer(),
%%   <<"StreamModeDetails">> => stream_mode_details(),
%%   <<"StreamName">> => string(),
%%   <<"StreamStatus">> => list(any()),
%%   <<"WarmThroughput">> => warm_throughput_object()
%% }
-type stream_description_summary() :: #{binary() => any()}.

%% Example:
%% deregister_stream_consumer_input() :: #{
%%   <<"ConsumerARN">> => string(),
%%   <<"ConsumerName">> => string(),
%%   <<"StreamARN">> => string()
%% }
-type deregister_stream_consumer_input() :: #{binary() => any()}.

%% Example:
%% describe_account_settings_input() :: #{

%% }
-type describe_account_settings_input() :: #{binary() => any()}.

%% Example:
%% increase_stream_retention_period_input() :: #{
%%   <<"RetentionPeriodHours">> := integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type increase_stream_retention_period_input() :: #{binary() => any()}.

%% Example:
%% delete_stream_input() :: #{
%%   <<"EnforceConsumerDeletion">> => boolean(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type delete_stream_input() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_input() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type delete_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% put_records_input() :: #{
%%   <<"Records">> := list(put_records_request_entry()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type put_records_input() :: #{binary() => any()}.

%% Example:
%% get_records_output() :: #{
%%   <<"ChildShards">> => list(child_shard()),
%%   <<"MillisBehindLatest">> => float(),
%%   <<"NextShardIterator">> => string(),
%%   <<"Records">> => list(record())
%% }
-type get_records_output() :: #{binary() => any()}.

%% Example:
%% add_tags_to_stream_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"Tags">> := map()
%% }
-type add_tags_to_stream_input() :: #{binary() => any()}.

%% Example:
%% list_streams_output() :: #{
%%   <<"HasMoreStreams">> => boolean(),
%%   <<"NextToken">> => string(),
%%   <<"StreamNames">> => list(string()),
%%   <<"StreamSummaries">> => list(stream_summary())
%% }
-type list_streams_output() :: #{binary() => any()}.

%% Example:
%% warm_throughput_object() :: #{
%%   <<"CurrentMiBps">> => integer(),
%%   <<"TargetMiBps">> => integer()
%% }
-type warm_throughput_object() :: #{binary() => any()}.

%% Example:
%% expired_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type expired_next_token_exception() :: #{binary() => any()}.

%% Example:
%% register_stream_consumer_output() :: #{
%%   <<"Consumer">> => consumer()
%% }
-type register_stream_consumer_output() :: #{binary() => any()}.

%% Example:
%% hash_key_range() :: #{
%%   <<"EndingHashKey">> => string(),
%%   <<"StartingHashKey">> => string()
%% }
-type hash_key_range() :: #{binary() => any()}.

%% Example:
%% provisioned_throughput_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type provisioned_throughput_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% put_records_result_entry() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"SequenceNumber">> => string(),
%%   <<"ShardId">> => string()
%% }
-type put_records_result_entry() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_input() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceARN">> := string()
%% }
-type put_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% minimum_throughput_billing_commitment_output() :: #{
%%   <<"EarliestAllowedEndAt">> => non_neg_integer(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type minimum_throughput_billing_commitment_output() :: #{binary() => any()}.

%% Example:
%% register_stream_consumer_input() :: #{
%%   <<"ConsumerName">> := string(),
%%   <<"StreamARN">> := string(),
%%   <<"Tags">> => map()
%% }
-type register_stream_consumer_input() :: #{binary() => any()}.

%% Example:
%% get_shard_iterator_input() :: #{
%%   <<"ShardId">> := string(),
%%   <<"ShardIteratorType">> := list(any()),
%%   <<"StartingSequenceNumber">> => string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type get_shard_iterator_input() :: #{binary() => any()}.

%% Example:
%% describe_stream_consumer_input() :: #{
%%   <<"ConsumerARN">> => string(),
%%   <<"ConsumerName">> => string(),
%%   <<"StreamARN">> => string()
%% }
-type describe_stream_consumer_input() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_stream_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"TagKeys">> := list(string())
%% }
-type remove_tags_from_stream_input() :: #{binary() => any()}.

%% Example:
%% merge_shards_input() :: #{
%%   <<"AdjacentShardToMerge">> := string(),
%%   <<"ShardToMerge">> := string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type merge_shards_input() :: #{binary() => any()}.

%% Example:
%% get_shard_iterator_output() :: #{
%%   <<"ShardIterator">> => string()
%% }
-type get_shard_iterator_output() :: #{binary() => any()}.

%% Example:
%% expired_iterator_exception() :: #{
%%   <<"message">> => string()
%% }
-type expired_iterator_exception() :: #{binary() => any()}.

%% Example:
%% describe_stream_summary_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_stream_summary_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% list_stream_consumers_output() :: #{
%%   <<"Consumers">> => list(consumer()),
%%   <<"NextToken">> => string()
%% }
-type list_stream_consumers_output() :: #{binary() => any()}.

%% Example:
%% describe_limits_input() :: #{

%% }
-type describe_limits_input() :: #{binary() => any()}.

%% Example:
%% kms_access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% put_record_output() :: #{
%%   <<"EncryptionType">> => list(any()),
%%   <<"SequenceNumber">> => string(),
%%   <<"ShardId">> => string()
%% }
-type put_record_output() :: #{binary() => any()}.

%% Example:
%% list_streams_input() :: #{
%%   <<"ExclusiveStartStreamName">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_streams_input() :: #{binary() => any()}.

%% Example:
%% shard() :: #{
%%   <<"AdjacentParentShardId">> => string(),
%%   <<"HashKeyRange">> => hash_key_range(),
%%   <<"ParentShardId">> => string(),
%%   <<"SequenceNumberRange">> => sequence_number_range(),
%%   <<"ShardId">> => string()
%% }
-type shard() :: #{binary() => any()}.

%% Example:
%% subscribe_to_shard_input() :: #{
%%   <<"ConsumerARN">> := string(),
%%   <<"ShardId">> := string(),
%%   <<"StartingPosition">> := starting_position()
%% }
-type subscribe_to_shard_input() :: #{binary() => any()}.

%% Example:
%% update_account_settings_input() :: #{
%%   <<"MinimumThroughputBillingCommitment">> := minimum_throughput_billing_commitment_input()
%% }
-type update_account_settings_input() :: #{binary() => any()}.

%% Example:
%% describe_stream_output() :: #{
%%   <<"StreamDescription">> => stream_description()
%% }
-type describe_stream_output() :: #{binary() => any()}.

%% Example:
%% stop_stream_encryption_input() :: #{
%%   <<"EncryptionType">> := list(any()),
%%   <<"KeyId">> := string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type stop_stream_encryption_input() :: #{binary() => any()}.

%% Example:
%% get_records_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"ShardIterator">> := string(),
%%   <<"StreamARN">> => string()
%% }
-type get_records_input() :: #{binary() => any()}.

%% Example:
%% kms_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_account_settings_output() :: #{
%%   <<"MinimumThroughputBillingCommitment">> => minimum_throughput_billing_commitment_output()
%% }
-type update_account_settings_output() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% stream_mode_details() :: #{
%%   <<"StreamMode">> => list(any())
%% }
-type stream_mode_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_stream_input() :: #{
%%   <<"ExclusiveStartTagKey">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type list_tags_for_stream_input() :: #{binary() => any()}.

%% Example:
%% enhanced_monitoring_output() :: #{
%%   <<"CurrentShardLevelMetrics">> => list(list(any())()),
%%   <<"DesiredShardLevelMetrics">> => list(list(any())()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type enhanced_monitoring_output() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_input() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type get_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% invalid_argument_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% update_stream_mode_input() :: #{
%%   <<"StreamARN">> := string(),
%%   <<"StreamModeDetails">> := stream_mode_details(),
%%   <<"WarmThroughputMiBps">> => integer()
%% }
-type update_stream_mode_input() :: #{binary() => any()}.

%% Example:
%% sequence_number_range() :: #{
%%   <<"EndingSequenceNumber">> => string(),
%%   <<"StartingSequenceNumber">> => string()
%% }
-type sequence_number_range() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% subscribe_to_shard_event() :: #{
%%   <<"ChildShards">> => list(child_shard()),
%%   <<"ContinuationSequenceNumber">> => string(),
%%   <<"MillisBehindLatest">> => float(),
%%   <<"Records">> => list(record())
%% }
-type subscribe_to_shard_event() :: #{binary() => any()}.

%% Example:
%% child_shard() :: #{
%%   <<"HashKeyRange">> => hash_key_range(),
%%   <<"ParentShards">> => list(string()),
%%   <<"ShardId">> => string()
%% }
-type child_shard() :: #{binary() => any()}.

%% Example:
%% update_max_record_size_input() :: #{
%%   <<"MaxRecordSizeInKiB">> := integer(),
%%   <<"StreamARN">> => string()
%% }
-type update_max_record_size_input() :: #{binary() => any()}.

%% Example:
%% stream_summary() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamCreationTimestamp">> => non_neg_integer(),
%%   <<"StreamModeDetails">> => stream_mode_details(),
%%   <<"StreamName">> => string(),
%%   <<"StreamStatus">> => list(any())
%% }
-type stream_summary() :: #{binary() => any()}.

%% Example:
%% shard_filter() :: #{
%%   <<"ShardId">> => string(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type shard_filter() :: #{binary() => any()}.

%% Example:
%% consumer() :: #{
%%   <<"ConsumerARN">> => string(),
%%   <<"ConsumerCreationTimestamp">> => non_neg_integer(),
%%   <<"ConsumerName">> => string(),
%%   <<"ConsumerStatus">> => list(any())
%% }
-type consumer() :: #{binary() => any()}.

%% Example:
%% create_stream_input() :: #{
%%   <<"MaxRecordSizeInKiB">> => integer(),
%%   <<"ShardCount">> => integer(),
%%   <<"StreamModeDetails">> => stream_mode_details(),
%%   <<"StreamName">> := string(),
%%   <<"Tags">> => map(),
%%   <<"WarmThroughputMiBps">> => integer()
%% }
-type create_stream_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% put_records_request_entry() :: #{
%%   <<"Data">> => binary(),
%%   <<"ExplicitHashKey">> => string(),
%%   <<"PartitionKey">> => string()
%% }
-type put_records_request_entry() :: #{binary() => any()}.

%% Example:
%% start_stream_encryption_input() :: #{
%%   <<"EncryptionType">> := list(any()),
%%   <<"KeyId">> := string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type start_stream_encryption_input() :: #{binary() => any()}.

%% Example:
%% disable_enhanced_monitoring_input() :: #{
%%   <<"ShardLevelMetrics">> := list(list(any())()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type disable_enhanced_monitoring_input() :: #{binary() => any()}.

%% Example:
%% update_shard_count_output() :: #{
%%   <<"CurrentShardCount">> => integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"TargetShardCount">> => integer()
%% }
-type update_shard_count_output() :: #{binary() => any()}.

%% Example:
%% describe_stream_consumer_output() :: #{
%%   <<"ConsumerDescription">> => consumer_description()
%% }
-type describe_stream_consumer_output() :: #{binary() => any()}.

%% Example:
%% enhanced_metrics() :: #{
%%   <<"ShardLevelMetrics">> => list(list(any())())
%% }
-type enhanced_metrics() :: #{binary() => any()}.

%% Example:
%% minimum_throughput_billing_commitment_input() :: #{
%%   <<"Status">> => list(any())
%% }
-type minimum_throughput_billing_commitment_input() :: #{binary() => any()}.

%% Example:
%% split_shard_input() :: #{
%%   <<"NewStartingHashKey">> := string(),
%%   <<"ShardToSplit">> := string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type split_shard_input() :: #{binary() => any()}.

%% Example:
%% put_record_input() :: #{
%%   <<"Data">> := binary(),
%%   <<"ExplicitHashKey">> => string(),
%%   <<"PartitionKey">> := string(),
%%   <<"SequenceNumberForOrdering">> => string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type put_record_input() :: #{binary() => any()}.

%% Example:
%% kms_invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% describe_stream_input() :: #{
%%   <<"ExclusiveStartShardId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_stream_input() :: #{binary() => any()}.

%% Example:
%% subscribe_to_shard_output() :: #{
%%   <<"EventStream">> => list()
%% }
-type subscribe_to_shard_output() :: #{binary() => any()}.

%% Example:
%% put_records_output() :: #{
%%   <<"EncryptionType">> => list(any()),
%%   <<"FailedRecordCount">> => integer(),
%%   <<"Records">> => list(put_records_result_entry())
%% }
-type put_records_output() :: #{binary() => any()}.

%% Example:
%% describe_stream_summary_output() :: #{
%%   <<"StreamDescriptionSummary">> => stream_description_summary()
%% }
-type describe_stream_summary_output() :: #{binary() => any()}.

%% Example:
%% describe_account_settings_output() :: #{
%%   <<"MinimumThroughputBillingCommitment">> => minimum_throughput_billing_commitment_output()
%% }
-type describe_account_settings_output() :: #{binary() => any()}.

-type add_tags_to_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_stream_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    resource_in_use_exception().

-type decrease_stream_retention_period_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_resource_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type deregister_stream_consumer_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception().

-type describe_account_settings_errors() ::
    limit_exceeded_exception().

-type describe_limits_errors() ::
    limit_exceeded_exception().

-type describe_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type describe_stream_consumer_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception().

-type describe_stream_summary_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type disable_enhanced_monitoring_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type enable_enhanced_monitoring_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type get_records_errors() ::
    kms_invalid_state_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    kms_not_found_exception() | 
    kms_access_denied_exception() | 
    expired_iterator_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    kms_throttling_exception() | 
    kms_opt_in_required() | 
    internal_failure_exception() | 
    kms_disabled_exception().

-type get_resource_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type get_shard_iterator_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    internal_failure_exception().

-type increase_stream_retention_period_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type list_shards_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    expired_next_token_exception() | 
    resource_in_use_exception().

-type list_stream_consumers_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    expired_next_token_exception() | 
    resource_in_use_exception().

-type list_streams_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    expired_next_token_exception().

-type list_tags_for_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type list_tags_for_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type merge_shards_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type put_record_errors() ::
    kms_invalid_state_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    kms_not_found_exception() | 
    kms_access_denied_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    kms_throttling_exception() | 
    kms_opt_in_required() | 
    internal_failure_exception() | 
    kms_disabled_exception().

-type put_records_errors() ::
    kms_invalid_state_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    kms_not_found_exception() | 
    kms_access_denied_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    kms_throttling_exception() | 
    kms_opt_in_required() | 
    internal_failure_exception() | 
    kms_disabled_exception().

-type put_resource_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type register_stream_consumer_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type remove_tags_from_stream_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type split_shard_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type start_stream_encryption_errors() ::
    kms_invalid_state_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    kms_not_found_exception() | 
    kms_access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    kms_throttling_exception() | 
    kms_opt_in_required() | 
    kms_disabled_exception().

-type stop_stream_encryption_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type subscribe_to_shard_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type untag_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_account_settings_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception().

-type update_max_record_size_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_shard_count_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_stream_mode_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_stream_warm_throughput_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds or updates tags for the specified Kinesis data stream.
%%
%% You can assign up to 50
%% tags to a data stream.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% If tags have already been assigned to the stream, `AddTagsToStream'
%% overwrites any existing tags that correspond to the specified tag keys.
%%
%% `AddTagsToStream' has a limit of five transactions per second per
%% account.
-spec add_tags_to_stream(aws_client:aws_client(), add_tags_to_stream_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_stream_errors(), tuple()}.
add_tags_to_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_stream(Client, Input, []).

-spec add_tags_to_stream(aws_client:aws_client(), add_tags_to_stream_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_stream_errors(), tuple()}.
add_tags_to_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToStream">>, Input, Options).

%% @doc Creates a Kinesis data stream.
%%
%% A stream captures and transports data records that are
%% continuously emitted from different data sources or producers.
%% Scale-out within a stream is explicitly supported by means of shards,
%% which are uniquely
%% identified groups of data records in a stream.
%%
%% You can create your data stream using either on-demand or provisioned
%% capacity mode. Data streams with an on-demand mode require no capacity
%% planning and automatically scale to handle gigabytes of write and read
%% throughput per minute. With the on-demand mode, Kinesis Data Streams
%% automatically manages the shards in order to provide the necessary
%% throughput.
%%
%% If you'd still like to proactively scale your on-demand data stream’s
%% capacity, you can unlock the warm throughput feature for on-demand data
%% streams by enabling `MinimumThroughputBillingCommitment' for your
%% account. Once your account has `MinimumThroughputBillingCommitment'
%% enabled, you can specify the warm throughput in MiB per second that your
%% stream can support in writes.
%%
%% For the data streams with a provisioned mode, you must specify the number
%% of shards for the data stream. Each shard can support reads up to five
%% transactions per second, up to a maximum data read total of 2 MiB per
%% second. Each shard can support writes up to 1,000 records per second, up
%% to a maximum data write total of 1 MiB per second. If the amount of data
%% input increases or decreases, you can add or remove shards.
%%
%% The stream name identifies the stream. The name is scoped to the Amazon
%% Web Services
%% account used by the application. It is also scoped by Amazon Web Services
%% Region. That
%% is, two streams in two different accounts can have the same name, and two
%% streams in the
%% same account, but in two different Regions, can have the same name.
%%
%% `CreateStream' is an asynchronous operation. Upon receiving a
%% `CreateStream' request, Kinesis Data Streams immediately returns and
%% sets
%% the stream status to `CREATING'. After the stream is created, Kinesis
%% Data
%% Streams sets the stream status to `ACTIVE'. You should perform read
%% and write
%% operations only on an `ACTIVE' stream.
%%
%% You receive a `LimitExceededException' when making a
%% `CreateStream' request when you try to do one of the following:
%%
%% Have more than five streams in the `CREATING' state at any point in
%% time.
%%
%% Create more shards than are authorized for your account.
%%
%% For the default shard or on-demand throughput limits for an Amazon Web
%% Services account, see Amazon Kinesis Data Streams Limits:
%% https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
%% in the Amazon Kinesis Data Streams Developer Guide. To increase this
%% limit, contact Amazon Web Services Support:
%% https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html.
%%
%% You can use `DescribeStreamSummary' to check the stream status, which
%% is returned in `StreamStatus'.
%%
%% `CreateStream' has a limit of five transactions per second per
%% account.
%%
%% You can add tags to the stream when making a `CreateStream' request by
%% setting the `Tags' parameter. If you pass the `Tags' parameter, in
%% addition to having the `kinesis:CreateStream' permission, you must
%% also have the `kinesis:AddTagsToStream' permission for the stream that
%% will be created. The `kinesis:TagResource' permission won’t work to
%% tag streams on creation. Tags will take effect from the `CREATING'
%% status of the stream, but you can't make any updates to the tags until
%% the stream is in `ACTIVE' state.
-spec create_stream(aws_client:aws_client(), create_stream_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_stream_errors(), tuple()}.
create_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stream(Client, Input, []).

-spec create_stream(aws_client:aws_client(), create_stream_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_stream_errors(), tuple()}.
create_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStream">>, Input, Options).

%% @doc Decreases the Kinesis data stream's retention period, which is
%% the length of time data
%% records are accessible after they are added to the stream.
%%
%% The minimum value of a
%% stream's retention period is 24 hours.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% This operation may result in lost data. For example, if the stream's
%% retention period
%% is 48 hours and is decreased to 24 hours, any data already in the stream
%% that is older
%% than 24 hours is inaccessible.
-spec decrease_stream_retention_period(aws_client:aws_client(), decrease_stream_retention_period_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, decrease_stream_retention_period_errors(), tuple()}.
decrease_stream_retention_period(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_stream_retention_period(Client, Input, []).

-spec decrease_stream_retention_period(aws_client:aws_client(), decrease_stream_retention_period_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, decrease_stream_retention_period_errors(), tuple()}.
decrease_stream_retention_period(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseStreamRetentionPeriod">>, Input, Options).

%% @doc Delete a policy for the specified data stream or consumer.
%%
%% Request patterns can be one of the following:
%%
%% Data stream pattern: `arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+'
%%
%% Consumer pattern:
%% `^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+'
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a Kinesis data stream and all its shards and data.
%%
%% You must shut down any
%% applications that are operating on the stream before you delete the
%% stream. If an
%% application attempts to operate on a deleted stream, it receives the
%% exception
%% `ResourceNotFoundException'.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% If the stream is in the `ACTIVE' state, you can delete it. After a
%% `DeleteStream' request, the specified stream is in the
%% `DELETING' state until Kinesis Data Streams completes the
%% deletion.
%%
%% Note: Kinesis Data Streams might continue to accept
%% data read and write operations, such as `PutRecord', `PutRecords',
%% and `GetRecords', on a stream in the
%% `DELETING' state until the stream deletion is complete.
%%
%% When you delete a stream, any shards in that stream are also deleted, and
%% any tags are
%% dissociated from the stream.
%%
%% You can use the `DescribeStreamSummary' operation to check the state
%% of the stream, which is returned in `StreamStatus'.
%%
%% `DeleteStream' has a limit of five transactions per second per
%% account.
-spec delete_stream(aws_client:aws_client(), delete_stream_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stream_errors(), tuple()}.
delete_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stream(Client, Input, []).

-spec delete_stream(aws_client:aws_client(), delete_stream_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stream_errors(), tuple()}.
delete_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStream">>, Input, Options).

%% @doc To deregister a consumer, provide its ARN.
%%
%% Alternatively, you can provide the ARN of
%% the data stream and the name you gave the consumer when you registered it.
%% You may also
%% provide all three parameters, as long as they don't conflict with each
%% other. If you
%% don't know the name or ARN of the consumer that you want to
%% deregister, you can use the
%% `ListStreamConsumers' operation to get a list of the descriptions of
%% all the consumers that are currently registered with a given data stream.
%% The
%% description of a consumer contains its name and ARN.
%%
%% This operation has a limit of five transactions per second per stream.
-spec deregister_stream_consumer(aws_client:aws_client(), deregister_stream_consumer_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_stream_consumer_errors(), tuple()}.
deregister_stream_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_stream_consumer(Client, Input, []).

-spec deregister_stream_consumer(aws_client:aws_client(), deregister_stream_consumer_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_stream_consumer_errors(), tuple()}.
deregister_stream_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterStreamConsumer">>, Input, Options).

%% @doc Describes the account-level settings for Amazon Kinesis Data Streams.
%%
%% This operation returns information about the minimum throughput billing
%% commitments and other account-level configurations.
%%
%% This API has a call limit of 5 transactions per second (TPS) for each
%% Amazon Web Services account. TPS over 5 will initiate the
%% `LimitExceededException'.
-spec describe_account_settings(aws_client:aws_client(), describe_account_settings_input()) ->
    {ok, describe_account_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_settings(Client, Input, []).

-spec describe_account_settings(aws_client:aws_client(), describe_account_settings_input(), proplists:proplist()) ->
    {ok, describe_account_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountSettings">>, Input, Options).

%% @doc Describes the shard limits and usage for the account.
%%
%% If you update your account limits, the old limits might be returned for a
%% few
%% minutes.
%%
%% This operation has a limit of one transaction per second per account.
-spec describe_limits(aws_client:aws_client(), describe_limits_input()) ->
    {ok, describe_limits_output(), tuple()} |
    {error, any()} |
    {error, describe_limits_errors(), tuple()}.
describe_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_limits(Client, Input, []).

-spec describe_limits(aws_client:aws_client(), describe_limits_input(), proplists:proplist()) ->
    {ok, describe_limits_output(), tuple()} |
    {error, any()} |
    {error, describe_limits_errors(), tuple()}.
describe_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLimits">>, Input, Options).

%% @doc Describes the specified Kinesis data stream.
%%
%% This API has been revised. It's highly recommended that you use the
%% `DescribeStreamSummary' API to get a summarized description of the
%% specified Kinesis data stream and the `ListShards' API to list the
%% shards in a specified data stream and obtain information about each shard.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% The information returned includes the stream name, Amazon Resource Name
%% (ARN),
%% creation time, enhanced metric configuration, and shard map. The shard map
%% is an array
%% of shard objects. For each shard object, there is the hash key and
%% sequence number
%% ranges that the shard spans, and the IDs of any earlier shards that played
%% in a role in
%% creating the shard. Every record ingested in the stream is identified by a
%% sequence
%% number, which is assigned when the record is put into the stream.
%%
%% You can limit the number of shards returned by each call. For more
%% information, see
%% Retrieving
%% Shards from a Stream:
%% https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide.
%%
%% There are no guarantees about the chronological order shards returned. To
%% process
%% shards in chronological order, use the ID of the parent shard to track the
%% lineage to
%% the oldest shard.
%%
%% This operation has a limit of 10 transactions per second per account.
-spec describe_stream(aws_client:aws_client(), describe_stream_input()) ->
    {ok, describe_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream(Client, Input, []).

-spec describe_stream(aws_client:aws_client(), describe_stream_input(), proplists:proplist()) ->
    {ok, describe_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStream">>, Input, Options).

%% @doc To get the description of a registered consumer, provide the ARN of
%% the consumer.
%%
%% Alternatively, you can provide the ARN of the data stream and the name you
%% gave the
%% consumer when you registered it. You may also provide all three
%% parameters, as long as
%% they don't conflict with each other. If you don't know the name or
%% ARN of the consumer
%% that you want to describe, you can use the `ListStreamConsumers'
%% operation to get a list of the descriptions of all the consumers that are
%% currently
%% registered with a given data stream.
%%
%% This operation has a limit of 20 transactions per second per stream.
%%
%% When making a cross-account call with `DescribeStreamConsumer', make
%% sure to provide the ARN of the consumer.
-spec describe_stream_consumer(aws_client:aws_client(), describe_stream_consumer_input()) ->
    {ok, describe_stream_consumer_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_consumer_errors(), tuple()}.
describe_stream_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream_consumer(Client, Input, []).

-spec describe_stream_consumer(aws_client:aws_client(), describe_stream_consumer_input(), proplists:proplist()) ->
    {ok, describe_stream_consumer_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_consumer_errors(), tuple()}.
describe_stream_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStreamConsumer">>, Input, Options).

%% @doc Provides a summarized description of the specified Kinesis data
%% stream without the
%% shard list.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% The information returned includes the stream name, Amazon Resource Name
%% (ARN), status,
%% record retention period, approximate creation time, monitoring, encryption
%% details, and
%% open shard count.
%%
%% `DescribeStreamSummary' has a limit of 20 transactions per second per
%% account.
-spec describe_stream_summary(aws_client:aws_client(), describe_stream_summary_input()) ->
    {ok, describe_stream_summary_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_summary_errors(), tuple()}.
describe_stream_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream_summary(Client, Input, []).

-spec describe_stream_summary(aws_client:aws_client(), describe_stream_summary_input(), proplists:proplist()) ->
    {ok, describe_stream_summary_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_summary_errors(), tuple()}.
describe_stream_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStreamSummary">>, Input, Options).

%% @doc Disables enhanced monitoring.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
-spec disable_enhanced_monitoring(aws_client:aws_client(), disable_enhanced_monitoring_input()) ->
    {ok, enhanced_monitoring_output(), tuple()} |
    {error, any()} |
    {error, disable_enhanced_monitoring_errors(), tuple()}.
disable_enhanced_monitoring(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_enhanced_monitoring(Client, Input, []).

-spec disable_enhanced_monitoring(aws_client:aws_client(), disable_enhanced_monitoring_input(), proplists:proplist()) ->
    {ok, enhanced_monitoring_output(), tuple()} |
    {error, any()} |
    {error, disable_enhanced_monitoring_errors(), tuple()}.
disable_enhanced_monitoring(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableEnhancedMonitoring">>, Input, Options).

%% @doc Enables enhanced Kinesis data stream monitoring for shard-level
%% metrics.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
-spec enable_enhanced_monitoring(aws_client:aws_client(), enable_enhanced_monitoring_input()) ->
    {ok, enhanced_monitoring_output(), tuple()} |
    {error, any()} |
    {error, enable_enhanced_monitoring_errors(), tuple()}.
enable_enhanced_monitoring(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_enhanced_monitoring(Client, Input, []).

-spec enable_enhanced_monitoring(aws_client:aws_client(), enable_enhanced_monitoring_input(), proplists:proplist()) ->
    {ok, enhanced_monitoring_output(), tuple()} |
    {error, any()} |
    {error, enable_enhanced_monitoring_errors(), tuple()}.
enable_enhanced_monitoring(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableEnhancedMonitoring">>, Input, Options).

%% @doc Gets data records from a Kinesis data stream's shard.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% Specify a shard iterator using the `ShardIterator' parameter. The
%% shard
%% iterator specifies the position in the shard from which you want to start
%% reading data
%% records sequentially. If there are no records available in the portion of
%% the shard that
%% the iterator points to, `GetRecords' returns an empty list. It might
%% take multiple calls to get to a portion of the shard that contains
%% records.
%%
%% You can scale by provisioning multiple shards per stream while considering
%% service
%% limits (for more information, see Amazon Kinesis Data Streams
%% Limits:
%% https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide). Your application should have one thread per shard, each reading
%% continuously from its stream. To read from a stream continually, call
%% `GetRecords' in a loop. Use `GetShardIterator' to get the
%% shard iterator to specify in the first `GetRecords' call.
%% `GetRecords' returns a new shard iterator in
%% `NextShardIterator'. Specify the shard iterator returned in
%% `NextShardIterator' in subsequent calls to `GetRecords'.
%% If the shard has been closed, the shard iterator can't return more
%% data and `GetRecords' returns `null' in `NextShardIterator'.
%% You can terminate the loop when the shard is closed, or when the shard
%% iterator reaches
%% the record with the sequence number or other attribute that marks it as
%% the last record
%% to process.
%%
%% Each data record can be up to 1 MiB in size, and each shard can read up to
%% 2 MiB per
%% second. You can ensure that your calls don't exceed the maximum
%% supported size or
%% throughput by using the `Limit' parameter to specify the maximum
%% number of
%% records that `GetRecords' can return. Consider your average record
%% size
%% when determining this limit. The maximum number of records that can be
%% returned per call
%% is 10,000.
%%
%% The size of the data returned by `GetRecords' varies depending on the
%% utilization of the shard. It is recommended that consumer applications
%% retrieve records
%% via the `GetRecords' command using the 5 TPS limit to remain caught
%% up.
%% Retrieving records less frequently can lead to consumer applications
%% falling behind. The
%% maximum size of data that `GetRecords' can return is 10 MiB. If a call
%% returns this amount of data, subsequent calls made within the next 5
%% seconds throw
%% `ProvisionedThroughputExceededException'. If there is insufficient
%% provisioned throughput on the stream, subsequent calls made within the
%% next 1 second
%% throw `ProvisionedThroughputExceededException'. `GetRecords'
%% doesn't return any data when it throws an exception. For this reason,
%% we recommend that
%% you wait 1 second between calls to `GetRecords'. However, it's
%% possible
%% that the application will get exceptions for longer than 1 second.
%%
%% To detect whether the application is falling behind in processing, you can
%% use the
%% `MillisBehindLatest' response attribute. You can also monitor the
%% stream
%% using CloudWatch metrics and other mechanisms (see Monitoring:
%% https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html in the
%% Amazon
%% Kinesis Data Streams Developer Guide).
%%
%% Each Amazon Kinesis record includes a value,
%% `ApproximateArrivalTimestamp',
%% that is set when a stream successfully receives and stores a record. This
%% is commonly
%% referred to as a server-side time stamp, whereas a client-side time stamp
%% is set when a
%% data producer creates or sends the record to a stream (a data producer is
%% any data
%% source putting data records into a stream, for example with
%% `PutRecords'). The time stamp has millisecond precision. There are no
%% guarantees about the time
%% stamp accuracy, or that the time stamp is always increasing. For example,
%% records in a
%% shard or across a stream might have time stamps that are out of order.
%%
%% This operation has a limit of five transactions per second per shard.
-spec get_records(aws_client:aws_client(), get_records_input()) ->
    {ok, get_records_output(), tuple()} |
    {error, any()} |
    {error, get_records_errors(), tuple()}.
get_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_records(Client, Input, []).

-spec get_records(aws_client:aws_client(), get_records_input(), proplists:proplist()) ->
    {ok, get_records_output(), tuple()} |
    {error, any()} |
    {error, get_records_errors(), tuple()}.
get_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecords">>, Input, Options).

%% @doc Returns a policy attached to the specified data stream or consumer.
%%
%% Request patterns can be one of the following:
%%
%% Data stream pattern: `arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+'
%%
%% Consumer pattern:
%% `^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+'
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input(), proplists:proplist()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Gets an Amazon Kinesis shard iterator.
%%
%% A shard iterator expires 5 minutes after it is
%% returned to the requester.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% A shard iterator specifies the shard position from which to start reading
%% data records
%% sequentially. The position is specified using the sequence number of a
%% data record in a
%% shard. A sequence number is the identifier associated with every record
%% ingested in the
%% stream, and is assigned when a record is put into the stream. Each stream
%% has one or
%% more shards.
%%
%% You must specify the shard iterator type. For example, you can set the
%% `ShardIteratorType' parameter to read exactly from the position
%% denoted
%% by a specific sequence number by using the `AT_SEQUENCE_NUMBER' shard
%% iterator type. Alternatively, the parameter can read right after the
%% sequence number by
%% using the `AFTER_SEQUENCE_NUMBER' shard iterator type, using sequence
%% numbers
%% returned by earlier calls to `PutRecord', `PutRecords',
%% `GetRecords', or `DescribeStream'. In the request,
%% you can specify the shard iterator type `AT_TIMESTAMP' to read records
%% from
%% an arbitrary point in time, `TRIM_HORIZON' to cause
%% `ShardIterator' to point to the last untrimmed record in the shard in
%% the
%% system (the oldest data record in the shard), or `LATEST' so that you
%% always
%% read the most recent data in the shard.
%%
%% When you read repeatedly from a stream, use a `GetShardIterator'
%% request to get the first shard iterator for use in your first
%% `GetRecords' request and for subsequent reads use the shard iterator
%% returned by the `GetRecords' request in `NextShardIterator'. A new
%% shard
%% iterator is returned by every `GetRecords' request in
%% `NextShardIterator', which you use in the `ShardIterator'
%% parameter of the next `GetRecords' request.
%%
%% If a `GetShardIterator' request is made too often, you receive a
%% `ProvisionedThroughputExceededException'. For more information about
%% throughput limits, see `GetRecords', and Streams Limits:
%% https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
%% in the
%% Amazon Kinesis Data Streams Developer Guide.
%%
%% If the shard is closed, `GetShardIterator' returns a valid iterator
%% for the last sequence number of the shard. A shard can be closed as a
%% result of using
%% `SplitShard' or `MergeShards'.
%%
%% `GetShardIterator' has a limit of five transactions per second per
%% account per open shard.
-spec get_shard_iterator(aws_client:aws_client(), get_shard_iterator_input()) ->
    {ok, get_shard_iterator_output(), tuple()} |
    {error, any()} |
    {error, get_shard_iterator_errors(), tuple()}.
get_shard_iterator(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_shard_iterator(Client, Input, []).

-spec get_shard_iterator(aws_client:aws_client(), get_shard_iterator_input(), proplists:proplist()) ->
    {ok, get_shard_iterator_output(), tuple()} |
    {error, any()} |
    {error, get_shard_iterator_errors(), tuple()}.
get_shard_iterator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetShardIterator">>, Input, Options).

%% @doc Increases the Kinesis data stream's retention period, which is
%% the length of time data
%% records are accessible after they are added to the stream.
%%
%% The maximum value of a
%% stream's retention period is 8760 hours (365 days).
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% If you choose a longer stream retention period, this operation increases
%% the time
%% period during which records that have not yet expired are accessible.
%% However, it does
%% not make previous, expired data (older than the stream's previous
%% retention period)
%% accessible after the operation has been called. For example, if a
%% stream's retention
%% period is set to 24 hours and is increased to 168 hours, any data that is
%% older than 24
%% hours remains inaccessible to consumer applications.
-spec increase_stream_retention_period(aws_client:aws_client(), increase_stream_retention_period_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, increase_stream_retention_period_errors(), tuple()}.
increase_stream_retention_period(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_stream_retention_period(Client, Input, []).

-spec increase_stream_retention_period(aws_client:aws_client(), increase_stream_retention_period_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, increase_stream_retention_period_errors(), tuple()}.
increase_stream_retention_period(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseStreamRetentionPeriod">>, Input, Options).

%% @doc Lists the shards in a stream and provides information about each
%% shard.
%%
%% This operation
%% has a limit of 1000 transactions per second per data stream.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% This action does not list expired shards. For information about expired
%% shards, see
%% Data Routing, Data Persistence, and Shard State after a Reshard:
%% https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing.
%%
%% This API is a new operation that is used by the Amazon Kinesis Client
%% Library
%% (KCL). If you have a fine-grained IAM policy that only allows specific
%% operations,
%% you must update your policy to allow calls to this API. For more
%% information, see
%% Controlling Access to Amazon Kinesis Data Streams Resources Using
%% IAM:
%% https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html.
-spec list_shards(aws_client:aws_client(), list_shards_input()) ->
    {ok, list_shards_output(), tuple()} |
    {error, any()} |
    {error, list_shards_errors(), tuple()}.
list_shards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_shards(Client, Input, []).

-spec list_shards(aws_client:aws_client(), list_shards_input(), proplists:proplist()) ->
    {ok, list_shards_output(), tuple()} |
    {error, any()} |
    {error, list_shards_errors(), tuple()}.
list_shards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListShards">>, Input, Options).

%% @doc Lists the consumers registered to receive data from a stream using
%% enhanced fan-out,
%% and provides information about each consumer.
%%
%% This operation has a limit of 5 transactions per second per stream.
-spec list_stream_consumers(aws_client:aws_client(), list_stream_consumers_input()) ->
    {ok, list_stream_consumers_output(), tuple()} |
    {error, any()} |
    {error, list_stream_consumers_errors(), tuple()}.
list_stream_consumers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stream_consumers(Client, Input, []).

-spec list_stream_consumers(aws_client:aws_client(), list_stream_consumers_input(), proplists:proplist()) ->
    {ok, list_stream_consumers_output(), tuple()} |
    {error, any()} |
    {error, list_stream_consumers_errors(), tuple()}.
list_stream_consumers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStreamConsumers">>, Input, Options).

%% @doc Lists your Kinesis data streams.
%%
%% The number of streams may be too large to return from a single call to
%% `ListStreams'. You can limit the number of returned streams using the
%% `Limit' parameter. If you do not specify a value for the
%% `Limit' parameter, Kinesis Data Streams uses the default limit, which
%% is
%% currently 100.
%%
%% You can detect if there are more streams available to list by using the
%% `HasMoreStreams' flag from the returned output. If there are more
%% streams
%% available, you can request more streams by using the name of the last
%% stream returned by
%% the `ListStreams' request in the `ExclusiveStartStreamName'
%% parameter in a subsequent request to `ListStreams'. The group of
%% stream names
%% returned by the subsequent request is then added to the list. You can
%% continue this
%% process until all the stream names have been collected in the list.
%%
%% `ListStreams' has a limit of five transactions per second per
%% account.
-spec list_streams(aws_client:aws_client(), list_streams_input()) ->
    {ok, list_streams_output(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_streams(Client, Input, []).

-spec list_streams(aws_client:aws_client(), list_streams_input(), proplists:proplist()) ->
    {ok, list_streams_output(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStreams">>, Input, Options).

%% @doc List all tags added to the specified Kinesis resource.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources.
%%
%% For more information about tagging Kinesis resources, see Tag your Amazon
%% Kinesis Data Streams resources:
%% https://docs.aws.amazon.com/streams/latest/dev/tagging.html.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the tags for the specified Kinesis data stream.
%%
%% This operation has a limit of
%% five transactions per second per account.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
-spec list_tags_for_stream(aws_client:aws_client(), list_tags_for_stream_input()) ->
    {ok, list_tags_for_stream_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_stream_errors(), tuple()}.
list_tags_for_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_stream(Client, Input, []).

-spec list_tags_for_stream(aws_client:aws_client(), list_tags_for_stream_input(), proplists:proplist()) ->
    {ok, list_tags_for_stream_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_stream_errors(), tuple()}.
list_tags_for_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForStream">>, Input, Options).

%% @doc Merges two adjacent shards in a Kinesis data stream and combines them
%% into a single
%% shard to reduce the stream's capacity to ingest and transport data.
%%
%% This API is only
%% supported for the data streams with the provisioned capacity mode. Two
%% shards are
%% considered adjacent if the union of the hash key ranges for the two shards
%% form a
%% contiguous set with no gaps. For example, if you have two shards, one with
%% a hash key
%% range of 276...381 and the other with a hash key range of 382...454, then
%% you could
%% merge these two shards into a single shard that would have a hash key
%% range of
%% 276...454. After the merge, the single child shard receives data for all
%% hash key values
%% covered by the two parent shards.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% `MergeShards' is called when there is a need to reduce the overall
%% capacity
%% of a stream because of excess capacity that is not being used. You must
%% specify the
%% shard to be merged and the adjacent shard for a stream. For more
%% information about
%% merging shards, see Merge Two
%% Shards:
%% https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide.
%%
%% If the stream is in the `ACTIVE' state, you can call
%% `MergeShards'. If a stream is in the `CREATING',
%% `UPDATING', or `DELETING' state, `MergeShards'
%% returns a `ResourceInUseException'. If the specified stream does not
%% exist,
%% `MergeShards' returns a `ResourceNotFoundException'.
%%
%% You can use `DescribeStreamSummary' to check the state of the stream,
%% which is returned in `StreamStatus'.
%%
%% `MergeShards' is an asynchronous operation. Upon receiving a
%% `MergeShards' request, Amazon Kinesis Data Streams immediately returns
%% a
%% response and sets the `StreamStatus' to `UPDATING'. After the
%% operation is completed, Kinesis Data Streams sets the `StreamStatus'
%% to
%% `ACTIVE'. Read and write operations continue to work while the stream
%% is
%% in the `UPDATING' state.
%%
%% You use `DescribeStreamSummary' and the `ListShards'
%% APIs to determine the shard IDs that are specified in the
%% `MergeShards'
%% request.
%%
%% If you try to operate on too many streams in parallel using
%% `CreateStream', `DeleteStream', `MergeShards',
%% or `SplitShard', you receive a `LimitExceededException'.
%%
%% `MergeShards' has a limit of five transactions per second per account.
-spec merge_shards(aws_client:aws_client(), merge_shards_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, merge_shards_errors(), tuple()}.
merge_shards(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_shards(Client, Input, []).

-spec merge_shards(aws_client:aws_client(), merge_shards_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, merge_shards_errors(), tuple()}.
merge_shards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeShards">>, Input, Options).

%% @doc Writes a single data record into an Amazon Kinesis data stream.
%%
%% Call
%% `PutRecord' to send data into the stream for real-time ingestion and
%% subsequent processing, one record at a time. Each shard can support writes
%% up to 1,000
%% records per second, up to a maximum data write total of 10 MiB per second.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% You must specify the name of the stream that captures, stores, and
%% transports the
%% data; a partition key; and the data blob itself.
%%
%% The data blob can be any type of data; for example, a segment from a log
%% file,
%% geographic/location data, website clickstream data, and so on.
%%
%% The partition key is used by Kinesis Data Streams to distribute data
%% across shards.
%% Kinesis Data Streams segregates the data records that belong to a stream
%% into multiple
%% shards, using the partition key associated with each data record to
%% determine the shard
%% to which a given data record belongs.
%%
%% Partition keys are Unicode strings, with a maximum length limit of 256
%% characters for
%% each key. An MD5 hash function is used to map partition keys to 128-bit
%% integer values
%% and to map associated data records to shards using the hash key ranges of
%% the shards.
%% You can override hashing the partition key to determine the shard by
%% explicitly
%% specifying a hash value using the `ExplicitHashKey' parameter. For
%% more
%% information, see Adding Data to a Stream:
%% https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream
%% in the Amazon Kinesis Data Streams
%% Developer Guide.
%%
%% `PutRecord' returns the shard ID of where the data record was placed
%% and the
%% sequence number that was assigned to the data record.
%%
%% Sequence numbers increase over time and are specific to a shard within a
%% stream, not
%% across all shards within a stream. To guarantee strictly increasing
%% ordering, write
%% serially to a shard and use the `SequenceNumberForOrdering' parameter.
%% For
%% more information, see Adding Data to a Stream:
%% https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream
%% in the Amazon Kinesis Data Streams
%% Developer Guide.
%%
%% After you write a record to a stream, you cannot modify that record or its
%% order
%% within the stream.
%%
%% If a `PutRecord' request cannot be processed because of insufficient
%% provisioned throughput on the shard involved in the request,
%% `PutRecord'
%% throws `ProvisionedThroughputExceededException'.
%%
%% By default, data records are accessible for 24 hours from the time that
%% they are added
%% to a stream. You can use `IncreaseStreamRetentionPeriod' or
%% `DecreaseStreamRetentionPeriod' to modify this retention period.
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

%% @doc Writes multiple data records into a Kinesis data stream in a single
%% call (also
%% referred to as a `PutRecords' request).
%%
%% Use this operation to send data into
%% the stream for data ingestion and processing.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% Each `PutRecords' request can support up to 500 records. Each record
%% in the
%% request can be as large as 10 MiB, up to a limit of 10 MiB for the entire
%% request,
%% including partition keys. Each shard can support writes up to 1,000
%% records per second,
%% up to a maximum data write total of 1 MB per second.
%%
%% You must specify the name of the stream that captures, stores, and
%% transports the
%% data; and an array of request `Records', with each record in the array
%% requiring a partition key and data blob. The record size limit applies to
%% the total size
%% of the partition key and data blob.
%%
%% The data blob can be any type of data; for example, a segment from a log
%% file,
%% geographic/location data, website clickstream data, and so on.
%%
%% The partition key is used by Kinesis Data Streams as input to a hash
%% function that
%% maps the partition key and associated data to a specific shard. An MD5
%% hash function is
%% used to map partition keys to 128-bit integer values and to map associated
%% data records
%% to shards. As a result of this hashing mechanism, all data records with
%% the same
%% partition key map to the same shard within the stream. For more
%% information, see Adding Data to a Stream:
%% https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream
%% in the Amazon Kinesis Data Streams
%% Developer Guide.
%%
%% Each record in the `Records' array may include an optional parameter,
%% `ExplicitHashKey', which overrides the partition key to shard mapping.
%% This parameter allows a data producer to determine explicitly the shard
%% where the record
%% is stored. For more information, see Adding Multiple Records with
%% PutRecords:
%% https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords
%% in the Amazon Kinesis
%% Data Streams Developer Guide.
%%
%% The `PutRecords' response includes an array of response
%% `Records'. Each record in the response array directly correlates with
%% a
%% record in the request array using natural ordering, from the top to the
%% bottom of the
%% request and response. The response `Records' array always includes the
%% same
%% number of records as the request array.
%%
%% The response `Records' array includes both successfully and
%% unsuccessfully
%% processed records. Kinesis Data Streams attempts to process all records in
%% each
%% `PutRecords' request. A single record failure does not stop the
%% processing of subsequent records. As a result, PutRecords doesn't
%% guarantee the ordering
%% of records. If you need to read records in the same order they are written
%% to the
%% stream, use `PutRecord' instead of `PutRecords', and write to
%% the same shard.
%%
%% A successfully processed record includes `ShardId' and
%% `SequenceNumber' values. The `ShardId' parameter identifies
%% the shard in the stream where the record is stored. The
%% `SequenceNumber'
%% parameter is an identifier assigned to the put record, unique to all
%% records in the
%% stream.
%%
%% An unsuccessfully processed record includes `ErrorCode' and
%% `ErrorMessage' values. `ErrorCode' reflects the type of error
%% and can be one of the following values:
%% `ProvisionedThroughputExceededException' or `InternalFailure'.
%% `ErrorMessage' provides more detailed information about the
%% `ProvisionedThroughputExceededException' exception including the
%% account
%% ID, stream name, and shard ID of the record that was throttled. For more
%% information
%% about partially successful responses, see Adding Multiple Records with
%% PutRecords:
%% https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords
%% in the Amazon Kinesis
%% Data Streams Developer Guide.
%%
%% After you write a record to a stream, you cannot modify that record or its
%% order
%% within the stream.
%%
%% By default, data records are accessible for 24 hours from the time that
%% they are added
%% to a stream. You can use `IncreaseStreamRetentionPeriod' or
%% `DecreaseStreamRetentionPeriod' to modify this retention period.
-spec put_records(aws_client:aws_client(), put_records_input()) ->
    {ok, put_records_output(), tuple()} |
    {error, any()} |
    {error, put_records_errors(), tuple()}.
put_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_records(Client, Input, []).

-spec put_records(aws_client:aws_client(), put_records_input(), proplists:proplist()) ->
    {ok, put_records_output(), tuple()} |
    {error, any()} |
    {error, put_records_errors(), tuple()}.
put_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecords">>, Input, Options).

%% @doc Attaches a resource-based policy to a data stream or registered
%% consumer.
%%
%% If you are using an identity other than the root user of
%% the Amazon Web Services account that owns the resource, the calling
%% identity must have the `PutResourcePolicy' permissions on the
%% specified Kinesis Data Streams resource and belong to the owner's
%% account in order to use this operation.
%% If you don't have `PutResourcePolicy' permissions, Amazon Kinesis
%% Data Streams returns a `403 Access Denied error'.
%% If you receive a `ResourceNotFoundException', check to see if you
%% passed a valid stream or consumer resource.
%%
%% Request patterns can be one of the following:
%%
%% Data stream pattern: `arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+'
%%
%% Consumer pattern:
%% `^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+'
%%
%% For more information, see Controlling Access to Amazon Kinesis Data
%% Streams Resources Using IAM:
%% https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Registers a consumer with a Kinesis data stream.
%%
%% When you use this operation, the
%% consumer you register can then call `SubscribeToShard' to receive data
%% from the stream using enhanced fan-out, at a rate of up to 2 MiB per
%% second for every
%% shard you subscribe to. This rate is unaffected by the total number of
%% consumers that
%% read from the same stream.
%%
%% You can add tags to the registered consumer when making a
%% `RegisterStreamConsumer' request by setting the `Tags' parameter.
%% If you pass the `Tags' parameter, in addition to having the
%% `kinesis:RegisterStreamConsumer' permission, you must also have the
%% `kinesis:TagResource' permission for the consumer that will be
%% registered. Tags will take effect from the `CREATING' status of the
%% consumer.
%%
%% You can register up to 20 consumers per stream. A given consumer can only
%% be
%% registered with one stream at a time.
%%
%% For an example of how to use this operation, see Enhanced Fan-Out
%% Using the Kinesis Data Streams API:
%% https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html.
%%
%% The use of this operation has a limit of five transactions per second per
%% account.
%% Also, only 5 consumers can be created simultaneously. In other words, you
%% cannot have
%% more than 5 consumers in a `CREATING' status at the same time.
%% Registering a
%% 6th consumer while there are 5 in a `CREATING' status results in a
%% `LimitExceededException'.
-spec register_stream_consumer(aws_client:aws_client(), register_stream_consumer_input()) ->
    {ok, register_stream_consumer_output(), tuple()} |
    {error, any()} |
    {error, register_stream_consumer_errors(), tuple()}.
register_stream_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_stream_consumer(Client, Input, []).

-spec register_stream_consumer(aws_client:aws_client(), register_stream_consumer_input(), proplists:proplist()) ->
    {ok, register_stream_consumer_output(), tuple()} |
    {error, any()} |
    {error, register_stream_consumer_errors(), tuple()}.
register_stream_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterStreamConsumer">>, Input, Options).

%% @doc Removes tags from the specified Kinesis data stream.
%%
%% Removed tags are deleted and
%% cannot be recovered after this operation successfully completes.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% If you specify a tag that does not exist, it is ignored.
%%
%% `RemoveTagsFromStream' has a limit of five transactions per second per
%% account.
-spec remove_tags_from_stream(aws_client:aws_client(), remove_tags_from_stream_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_stream_errors(), tuple()}.
remove_tags_from_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_stream(Client, Input, []).

-spec remove_tags_from_stream(aws_client:aws_client(), remove_tags_from_stream_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_stream_errors(), tuple()}.
remove_tags_from_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromStream">>, Input, Options).

%% @doc Splits a shard into two new shards in the Kinesis data stream, to
%% increase the
%% stream's capacity to ingest and transport data.
%%
%% `SplitShard' is called when
%% there is a need to increase the overall capacity of a stream because of an
%% expected
%% increase in the volume of data records being ingested. This API is only
%% supported for
%% the data streams with the provisioned capacity mode.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% You can also use `SplitShard' when a shard appears to be approaching
%% its
%% maximum utilization; for example, the producers sending data into the
%% specific shard are
%% suddenly sending more than previously anticipated. You can also call
%% `SplitShard' to increase stream capacity, so that more Kinesis Data
%% Streams applications can simultaneously read data from the stream for
%% real-time
%% processing.
%%
%% You must specify the shard to be split and the new hash key, which is the
%% position in
%% the shard where the shard gets split in two. In many cases, the new hash
%% key might be
%% the average of the beginning and ending hash key, but it can be any hash
%% key value in
%% the range being mapped into the shard. For more information, see Split a
%% Shard:
%% https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide.
%%
%% You can use `DescribeStreamSummary' and the `ListShards' APIs to
%% determine the shard ID and hash key values for the `ShardToSplit'
%% and `NewStartingHashKey' parameters that are specified in the
%% `SplitShard' request.
%%
%% `SplitShard' is an asynchronous operation. Upon receiving a
%% `SplitShard' request, Kinesis Data Streams immediately returns a
%% response
%% and sets the stream status to `UPDATING'. After the operation is
%% completed,
%% Kinesis Data Streams sets the stream status to `ACTIVE'. Read and
%% write
%% operations continue to work while the stream is in the `UPDATING'
%% state.
%%
%% You can use `DescribeStreamSummary' to check the status of the stream,
%% which is returned in `StreamStatus'. If the stream is in the
%% `ACTIVE' state, you can call `SplitShard'.
%%
%% If the specified stream does not exist, `DescribeStreamSummary'
%% returns a `ResourceNotFoundException'. If you try to create more
%% shards than
%% are authorized for your account, you receive a
%% `LimitExceededException'.
%%
%% For the default shard limit for an Amazon Web Services account, see
%% Kinesis
%% Data Streams Limits:
%% https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide. To increase this limit, contact Amazon Web Services
%% Support:
%% https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html.
%%
%% If you try to operate on too many streams simultaneously using
%% `CreateStream', `DeleteStream', `MergeShards', and/or
%% `SplitShard', you receive a
%% `LimitExceededException'.
%%
%% `SplitShard' has a limit of five transactions per second per account.
-spec split_shard(aws_client:aws_client(), split_shard_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, split_shard_errors(), tuple()}.
split_shard(Client, Input)
  when is_map(Client), is_map(Input) ->
    split_shard(Client, Input, []).

-spec split_shard(aws_client:aws_client(), split_shard_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, split_shard_errors(), tuple()}.
split_shard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SplitShard">>, Input, Options).

%% @doc Enables or updates server-side encryption using an Amazon Web
%% Services KMS key for a
%% specified stream.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% Starting encryption is an asynchronous operation. Upon receiving the
%% request, Kinesis
%% Data Streams returns immediately and sets the status of the stream to
%% `UPDATING'. After the update is complete, Kinesis Data Streams sets
%% the
%% status of the stream back to `ACTIVE'. Updating or applying encryption
%% normally takes a few seconds to complete, but it can take minutes. You can
%% continue to
%% read and write data to your stream while its status is `UPDATING'.
%% Once the
%% status of the stream is `ACTIVE', encryption begins for records
%% written to
%% the stream.
%%
%% API Limits: You can successfully apply a new Amazon Web Services KMS key
%% for
%% server-side encryption 25 times in a rolling 24-hour period.
%%
%% Note: It can take up to 5 seconds after the stream is in an `ACTIVE'
%% status
%% before all records written to the stream are encrypted. After you enable
%% encryption, you
%% can verify that encryption is applied by inspecting the API response from
%% `PutRecord' or `PutRecords'.
-spec start_stream_encryption(aws_client:aws_client(), start_stream_encryption_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_stream_encryption_errors(), tuple()}.
start_stream_encryption(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_stream_encryption(Client, Input, []).

-spec start_stream_encryption(aws_client:aws_client(), start_stream_encryption_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_stream_encryption_errors(), tuple()}.
start_stream_encryption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartStreamEncryption">>, Input, Options).

%% @doc Disables server-side encryption for a specified stream.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% Stopping encryption is an asynchronous operation. Upon receiving the
%% request, Kinesis
%% Data Streams returns immediately and sets the status of the stream to
%% `UPDATING'. After the update is complete, Kinesis Data Streams sets
%% the
%% status of the stream back to `ACTIVE'. Stopping encryption normally
%% takes a
%% few seconds to complete, but it can take minutes. You can continue to read
%% and write
%% data to your stream while its status is `UPDATING'. Once the status of
%% the
%% stream is `ACTIVE', records written to the stream are no longer
%% encrypted by
%% Kinesis Data Streams.
%%
%% API Limits: You can successfully disable server-side encryption 25 times
%% in a rolling
%% 24-hour period.
%%
%% Note: It can take up to 5 seconds after the stream is in an `ACTIVE'
%% status
%% before all records written to the stream are no longer subject to
%% encryption. After you
%% disabled encryption, you can verify that encryption is not applied by
%% inspecting the API
%% response from `PutRecord' or `PutRecords'.
-spec stop_stream_encryption(aws_client:aws_client(), stop_stream_encryption_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_stream_encryption_errors(), tuple()}.
stop_stream_encryption(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stream_encryption(Client, Input, []).

-spec stop_stream_encryption(aws_client:aws_client(), stop_stream_encryption_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_stream_encryption_errors(), tuple()}.
stop_stream_encryption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStreamEncryption">>, Input, Options).

%% @doc This operation establishes an HTTP/2 connection between the consumer
%% you specify in
%% the `ConsumerARN' parameter and the shard you specify in the
%% `ShardId' parameter.
%%
%% After the connection is successfully established,
%% Kinesis Data Streams pushes records from the shard to the consumer over
%% this connection.
%% Before you call this operation, call `RegisterStreamConsumer' to
%% register the consumer with Kinesis Data Streams.
%%
%% When the `SubscribeToShard' call succeeds, your consumer starts
%% receiving
%% events of type `SubscribeToShardEvent' over the HTTP/2 connection for
%% up
%% to 5 minutes, after which time you need to call `SubscribeToShard'
%% again to
%% renew the subscription if you want to continue to receive records.
%%
%% You can make one call to `SubscribeToShard' per second per registered
%% consumer per shard. For example, if you have a 4000 shard stream and two
%% registered
%% stream consumers, you can make one `SubscribeToShard' request per
%% second for
%% each combination of shard and registered consumer, allowing you to
%% subscribe both
%% consumers to all 4000 shards in one second.
%%
%% If you call `SubscribeToShard' again with the same `ConsumerARN'
%% and `ShardId' within 5 seconds of a successful call, you'll get a
%% `ResourceInUseException'. If you call `SubscribeToShard' 5
%% seconds or more after a successful call, the second call takes over the
%% subscription and
%% the previous connection expires or fails with a
%% `ResourceInUseException'.
%%
%% For an example of how to use this operation, see Enhanced Fan-Out
%% Using the Kinesis Data Streams API:
%% https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html.
-spec subscribe_to_shard(aws_client:aws_client(), subscribe_to_shard_input()) ->
    {ok, subscribe_to_shard_output(), tuple()} |
    {error, any()} |
    {error, subscribe_to_shard_errors(), tuple()}.
subscribe_to_shard(Client, Input)
  when is_map(Client), is_map(Input) ->
    subscribe_to_shard(Client, Input, []).

-spec subscribe_to_shard(aws_client:aws_client(), subscribe_to_shard_input(), proplists:proplist()) ->
    {ok, subscribe_to_shard_output(), tuple()} |
    {error, any()} |
    {error, subscribe_to_shard_errors(), tuple()}.
subscribe_to_shard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubscribeToShard">>, Input, Options).

%% @doc Adds or updates tags for the specified Kinesis resource.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources. You
%% can assign up to 50 tags to a Kinesis resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from the specified Kinesis resource.
%%
%% Removed tags are deleted and can't be recovered after this operation
%% completes successfully.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the account-level settings for Amazon Kinesis Data Streams.
%%
%% Updating account settings is a synchronous operation. Upon receiving the
%% request, Kinesis Data Streams will return immediately with your account’s
%% updated settings.
%%
%% API limits
%%
%% Certain account configurations have minimum commitment windows. Attempting
%% to update your settings prior to the end of the minimum commitment window
%% might have certain restrictions.
%%
%% This API has a call limit of 5 transactions per second (TPS) for each
%% Amazon Web Services account. TPS over 5 will initiate the
%% `LimitExceededException'.
-spec update_account_settings(aws_client:aws_client(), update_account_settings_input()) ->
    {ok, update_account_settings_output(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_settings(Client, Input, []).

-spec update_account_settings(aws_client:aws_client(), update_account_settings_input(), proplists:proplist()) ->
    {ok, update_account_settings_output(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSettings">>, Input, Options).

%% @doc This allows you to update the `MaxRecordSize' of a single record
%% that you can write to, and read from a stream.
%%
%% You can ingest and digest single records up to 10240 KiB.
-spec update_max_record_size(aws_client:aws_client(), update_max_record_size_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_max_record_size_errors(), tuple()}.
update_max_record_size(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_max_record_size(Client, Input, []).

-spec update_max_record_size(aws_client:aws_client(), update_max_record_size_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_max_record_size_errors(), tuple()}.
update_max_record_size(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaxRecordSize">>, Input, Options).

%% @doc Updates the shard count of the specified stream to the specified
%% number of shards.
%%
%% This API is only supported for the data streams with the provisioned
%% capacity
%% mode.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% Updating the shard count is an asynchronous operation. Upon receiving the
%% request,
%% Kinesis Data Streams returns immediately and sets the status of the stream
%% to
%% `UPDATING'. After the update is complete, Kinesis Data Streams sets
%% the
%% status of the stream back to `ACTIVE'. Depending on the size of the
%% stream,
%% the scaling action could take a few minutes to complete. You can continue
%% to read and
%% write data to your stream while its status is `UPDATING'.
%%
%% To update the shard count, Kinesis Data Streams performs splits or merges
%% on
%% individual shards. This can cause short-lived shards to be created, in
%% addition to the
%% final shards. These short-lived shards count towards your total shard
%% limit for your
%% account in the Region.
%%
%% When using this operation, we recommend that you specify a target shard
%% count that is
%% a multiple of 25% (25%, 50%, 75%, 100%). You can specify any target value
%% within your
%% shard limit. However, if you specify a target that isn't a multiple of
%% 25%, the scaling
%% action might take longer to complete.
%%
%% This operation has the following default limits. By default, you cannot do
%% the
%% following:
%%
%% Scale more than ten times per rolling 24-hour period per stream
%%
%% Scale up to more than double your current shard count for a stream
%%
%% Scale down below half your current shard count for a stream
%%
%% Scale up to more than 10000 shards in a stream
%%
%% Scale a stream with more than 10000 shards down unless the result is less
%% than
%% 10000 shards
%%
%% Scale up to more than the shard limit for your account
%%
%% Make over 10 TPS. TPS over 10 will trigger the LimitExceededException
%%
%% For the default limits for an Amazon Web Services account, see Streams
%% Limits:
%% https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide. To request an increase in the call rate limit, the shard limit for
%% this API, or your overall shard limit, use the limits form:
%% https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&amp;limitType=service-code-kinesis.
-spec update_shard_count(aws_client:aws_client(), update_shard_count_input()) ->
    {ok, update_shard_count_output(), tuple()} |
    {error, any()} |
    {error, update_shard_count_errors(), tuple()}.
update_shard_count(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_shard_count(Client, Input, []).

-spec update_shard_count(aws_client:aws_client(), update_shard_count_input(), proplists:proplist()) ->
    {ok, update_shard_count_output(), tuple()} |
    {error, any()} |
    {error, update_shard_count_errors(), tuple()}.
update_shard_count(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateShardCount">>, Input, Options).

%% @doc Updates the capacity mode of the data stream.
%%
%% Currently, in Kinesis Data Streams, you
%% can choose between an on-demand capacity mode and a
%% provisioned capacity mode for your data stream.
%%
%% If you'd still like to proactively scale your on-demand data stream’s
%% capacity, you can unlock the warm throughput feature for on-demand data
%% streams by enabling `MinimumThroughputBillingCommitment' for your
%% account. Once your account has `MinimumThroughputBillingCommitment'
%% enabled, you can specify the warm throughput in MiB per second that your
%% stream can support in writes.
-spec update_stream_mode(aws_client:aws_client(), update_stream_mode_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_stream_mode_errors(), tuple()}.
update_stream_mode(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stream_mode(Client, Input, []).

-spec update_stream_mode(aws_client:aws_client(), update_stream_mode_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_stream_mode_errors(), tuple()}.
update_stream_mode(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStreamMode">>, Input, Options).

%% @doc Updates the warm throughput configuration for the specified Amazon
%% Kinesis Data Streams on-demand data stream.
%%
%% This operation allows you to proactively scale your on-demand data stream
%% to a specified throughput level, enabling better performance for sudden
%% traffic spikes.
%%
%% When invoking this API, you must use either the `StreamARN' or the
%% `StreamName' parameter, or both. It is recommended that you use the
%% `StreamARN' input parameter when you invoke this API.
%%
%% Updating the warm throughput is an asynchronous operation. Upon receiving
%% the request, Kinesis Data Streams returns immediately and sets the status
%% of the stream to `UPDATING'. After the update is complete, Kinesis
%% Data Streams sets the status of the stream back to `ACTIVE'. Depending
%% on the size of the stream, the scaling action could take a few minutes to
%% complete. You can continue to read and write data to your stream while its
%% status is `UPDATING'.
%%
%% This operation is only supported for data streams with the on-demand
%% capacity mode in accounts that have
%% `MinimumThroughputBillingCommitment' enabled. Provisioned capacity
%% mode streams do not support warm throughput configuration.
%%
%% This operation has the following default limits. By default, you cannot do
%% the following:
%%
%% Scale to more than 10 GiBps for an on-demand stream.
%%
%% This API has a call limit of 5 transactions per second (TPS) for each
%% Amazon Web Services account. TPS over 5 will initiate the
%% `LimitExceededException'.
%%
%% For the default limits for an Amazon Web Services account, see Streams
%% Limits:
%% https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
%% in the Amazon Kinesis Data Streams Developer
%% Guide. To request an increase in the call rate limit, the shard limit for
%% this API, or your overall shard limit, use the limits form:
%% https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&amp;limitType=service-code-kinesis.
-spec update_stream_warm_throughput(aws_client:aws_client(), update_stream_warm_throughput_input()) ->
    {ok, update_stream_warm_throughput_output(), tuple()} |
    {error, any()} |
    {error, update_stream_warm_throughput_errors(), tuple()}.
update_stream_warm_throughput(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stream_warm_throughput(Client, Input, []).

-spec update_stream_warm_throughput(aws_client:aws_client(), update_stream_warm_throughput_input(), proplists:proplist()) ->
    {ok, update_stream_warm_throughput_output(), tuple()} |
    {error, any()} |
    {error, update_stream_warm_throughput_errors(), tuple()}.
update_stream_warm_throughput(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStreamWarmThroughput">>, Input, Options).

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
    Client1 = Client#{service => <<"kinesis">>},
    Host = build_host(<<"kinesis">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Kinesis_20131202.", Action/binary>>}
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
