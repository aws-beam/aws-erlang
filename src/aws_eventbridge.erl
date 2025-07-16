%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EventBridge helps you to respond to state changes in your
%% Amazon Web Services
%% resources.
%%
%% When your resources change state, they automatically send events to an
%% event
%% stream. You can create rules that match selected events in the stream and
%% route them to
%% targets to take action. You can also use rules to take action on a
%% predetermined schedule. For
%% example, you can configure rules to:
%%
%% Automatically invoke an Lambda function to update DNS entries when an
%% event notifies you that Amazon EC2 instance enters the running state.
%%
%% Direct specific API records from CloudTrail to an Amazon Kinesis
%% data stream for detailed analysis of potential security or availability
%% risks.
%%
%% Periodically invoke a built-in target to create a snapshot of an Amazon
%% EBS
%% volume.
%%
%% For more information about the features of Amazon EventBridge, see the
%% Amazon EventBridge User
%% Guide: https://docs.aws.amazon.com/eventbridge/latest/userguide.
-module(aws_eventbridge).

-export([activate_event_source/2,
         activate_event_source/3,
         cancel_replay/2,
         cancel_replay/3,
         create_api_destination/2,
         create_api_destination/3,
         create_archive/2,
         create_archive/3,
         create_connection/2,
         create_connection/3,
         create_endpoint/2,
         create_endpoint/3,
         create_event_bus/2,
         create_event_bus/3,
         create_partner_event_source/2,
         create_partner_event_source/3,
         deactivate_event_source/2,
         deactivate_event_source/3,
         deauthorize_connection/2,
         deauthorize_connection/3,
         delete_api_destination/2,
         delete_api_destination/3,
         delete_archive/2,
         delete_archive/3,
         delete_connection/2,
         delete_connection/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_event_bus/2,
         delete_event_bus/3,
         delete_partner_event_source/2,
         delete_partner_event_source/3,
         delete_rule/2,
         delete_rule/3,
         describe_api_destination/2,
         describe_api_destination/3,
         describe_archive/2,
         describe_archive/3,
         describe_connection/2,
         describe_connection/3,
         describe_endpoint/2,
         describe_endpoint/3,
         describe_event_bus/2,
         describe_event_bus/3,
         describe_event_source/2,
         describe_event_source/3,
         describe_partner_event_source/2,
         describe_partner_event_source/3,
         describe_replay/2,
         describe_replay/3,
         describe_rule/2,
         describe_rule/3,
         disable_rule/2,
         disable_rule/3,
         enable_rule/2,
         enable_rule/3,
         list_api_destinations/2,
         list_api_destinations/3,
         list_archives/2,
         list_archives/3,
         list_connections/2,
         list_connections/3,
         list_endpoints/2,
         list_endpoints/3,
         list_event_buses/2,
         list_event_buses/3,
         list_event_sources/2,
         list_event_sources/3,
         list_partner_event_source_accounts/2,
         list_partner_event_source_accounts/3,
         list_partner_event_sources/2,
         list_partner_event_sources/3,
         list_replays/2,
         list_replays/3,
         list_rule_names_by_target/2,
         list_rule_names_by_target/3,
         list_rules/2,
         list_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targets_by_rule/2,
         list_targets_by_rule/3,
         put_events/2,
         put_events/3,
         put_partner_events/2,
         put_partner_events/3,
         put_permission/2,
         put_permission/3,
         put_rule/2,
         put_rule/3,
         put_targets/2,
         put_targets/3,
         remove_permission/2,
         remove_permission/3,
         remove_targets/2,
         remove_targets/3,
         start_replay/2,
         start_replay/3,
         tag_resource/2,
         tag_resource/3,
         test_event_pattern/2,
         test_event_pattern/3,
         untag_resource/2,
         untag_resource/3,
         update_api_destination/2,
         update_api_destination/3,
         update_archive/2,
         update_archive/3,
         update_connection/2,
         update_connection/3,
         update_endpoint/2,
         update_endpoint/3,
         update_event_bus/2,
         update_event_bus/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_replay_request() :: #{
%%   <<"ReplayName">> := string()
%% }
-type cancel_replay_request() :: #{binary() => any()}.

%% Example:
%% describe_event_bus_request() :: #{
%%   <<"Name">> => string()
%% }
-type describe_event_bus_request() :: #{binary() => any()}.

%% Example:
%% update_connection_request() :: #{
%%   <<"AuthParameters">> => update_connection_auth_request_parameters(),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"InvocationConnectivityParameters">> => connectivity_resource_parameters(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"Name">> := string()
%% }
-type update_connection_request() :: #{binary() => any()}.

%% Example:
%% deauthorize_connection_response() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastAuthorizedTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type deauthorize_connection_response() :: #{binary() => any()}.

%% Example:
%% create_event_bus_request() :: #{
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"EventSourceName">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LogConfig">> => log_config(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_event_bus_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_retry_strategy() :: #{
%%   <<"Attempts">> => integer()
%% }
-type batch_retry_strategy() :: #{binary() => any()}.

%% Example:
%% list_archives_response() :: #{
%%   <<"Archives">> => list(archive()),
%%   <<"NextToken">> => string()
%% }
-type list_archives_response() :: #{binary() => any()}.

%% Example:
%% put_partner_events_request_entry() :: #{
%%   <<"Detail">> => string(),
%%   <<"DetailType">> => string(),
%%   <<"Resources">> => list(string()),
%%   <<"Source">> => string(),
%%   <<"Time">> => non_neg_integer()
%% }
-type put_partner_events_request_entry() :: #{binary() => any()}.

%% Example:
%% connection_query_string_parameter() :: #{
%%   <<"IsValueSecret">> => boolean(),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type connection_query_string_parameter() :: #{binary() => any()}.

%% Example:
%% update_connection_o_auth_request_parameters() :: #{
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientParameters">> => update_connection_o_auth_client_request_parameters(),
%%   <<"HttpMethod">> => list(any()),
%%   <<"OAuthHttpParameters">> => connection_http_parameters()
%% }
-type update_connection_o_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% put_rule_response() :: #{
%%   <<"RuleArn">> => string()
%% }
-type put_rule_response() :: #{binary() => any()}.

%% Example:
%% run_command_target() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string())
%% }
-type run_command_target() :: #{binary() => any()}.

%% Example:
%% invalid_event_pattern_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_event_pattern_exception() :: #{binary() => any()}.

%% Example:
%% update_endpoint_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointUrl">> => string(),
%%   <<"EventBuses">> => list(endpoint_event_bus()),
%%   <<"Name">> => string(),
%%   <<"ReplicationConfig">> => replication_config(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> => routing_config(),
%%   <<"State">> => list(any())
%% }
-type update_endpoint_response() :: #{binary() => any()}.

%% Example:
%% describe_event_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type describe_event_source_response() :: #{binary() => any()}.

%% Example:
%% policy_length_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type policy_length_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% put_targets_result_entry() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"TargetId">> => string()
%% }
-type put_targets_result_entry() :: #{binary() => any()}.

%% Example:
%% describe_connection_request() :: #{
%%   <<"Name">> := string()
%% }
-type describe_connection_request() :: #{binary() => any()}.

%% Example:
%% describe_api_destination_request() :: #{
%%   <<"Name">> := string()
%% }
-type describe_api_destination_request() :: #{binary() => any()}.

%% Example:
%% enable_rule_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Name">> := string()
%% }
-type enable_rule_request() :: #{binary() => any()}.

%% Example:
%% describe_archive_request() :: #{
%%   <<"ArchiveName">> := string()
%% }
-type describe_archive_request() :: #{binary() => any()}.

%% Example:
%% test_event_pattern_request() :: #{
%%   <<"Event">> := string(),
%%   <<"EventPattern">> := string()
%% }
-type test_event_pattern_request() :: #{binary() => any()}.

%% Example:
%% connection_auth_response_parameters() :: #{
%%   <<"ApiKeyAuthParameters">> => connection_api_key_auth_response_parameters(),
%%   <<"BasicAuthParameters">> => connection_basic_auth_response_parameters(),
%%   <<"ConnectivityParameters">> => describe_connection_connectivity_parameters(),
%%   <<"InvocationHttpParameters">> => connection_http_parameters(),
%%   <<"OAuthParameters">> => connection_o_auth_response_parameters()
%% }
-type connection_auth_response_parameters() :: #{binary() => any()}.

%% Example:
%% deactivate_event_source_request() :: #{
%%   <<"Name">> := string()
%% }
-type deactivate_event_source_request() :: #{binary() => any()}.

%% Example:
%% list_event_sources_response() :: #{
%%   <<"EventSources">> => list(event_source()),
%%   <<"NextToken">> => string()
%% }
-type list_event_sources_response() :: #{binary() => any()}.

%% Example:
%% batch_array_properties() :: #{
%%   <<"Size">> => integer()
%% }
-type batch_array_properties() :: #{binary() => any()}.

%% Example:
%% partner_event_source_account() :: #{
%%   <<"Account">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type partner_event_source_account() :: #{binary() => any()}.

%% Example:
%% create_connection_o_auth_request_parameters() :: #{
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientParameters">> => create_connection_o_auth_client_request_parameters(),
%%   <<"HttpMethod">> => list(any()),
%%   <<"OAuthHttpParameters">> => connection_http_parameters()
%% }
-type create_connection_o_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% create_partner_event_source_request() :: #{
%%   <<"Account">> := string(),
%%   <<"Name">> := string()
%% }
-type create_partner_event_source_request() :: #{binary() => any()}.

%% Example:
%% list_connections_response() :: #{
%%   <<"Connections">> => list(connection()),
%%   <<"NextToken">> => string()
%% }
-type list_connections_response() :: #{binary() => any()}.

%% Example:
%% batch_parameters() :: #{
%%   <<"ArrayProperties">> => batch_array_properties(),
%%   <<"JobDefinition">> => string(),
%%   <<"JobName">> => string(),
%%   <<"RetryStrategy">> => batch_retry_strategy()
%% }
-type batch_parameters() :: #{binary() => any()}.

%% Example:
%% list_event_sources_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_event_sources_request() :: #{binary() => any()}.

%% Example:
%% run_command_parameters() :: #{
%%   <<"RunCommandTargets">> => list(run_command_target())
%% }
-type run_command_parameters() :: #{binary() => any()}.

%% Example:
%% create_endpoint_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBuses">> := list(endpoint_event_bus()),
%%   <<"Name">> := string(),
%%   <<"ReplicationConfig">> => replication_config(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> := routing_config()
%% }
-type create_endpoint_request() :: #{binary() => any()}.

%% Example:
%% http_parameters() :: #{
%%   <<"HeaderParameters">> => map(),
%%   <<"PathParameterValues">> => list(string()),
%%   <<"QueryStringParameters">> => map()
%% }
-type http_parameters() :: #{binary() => any()}.

%% Example:
%% app_sync_parameters() :: #{
%%   <<"GraphQLOperation">> => string()
%% }
-type app_sync_parameters() :: #{binary() => any()}.

%% Example:
%% sage_maker_pipeline_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type sage_maker_pipeline_parameter() :: #{binary() => any()}.

%% Example:
%% connection_header_parameter() :: #{
%%   <<"IsValueSecret">> => boolean(),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type connection_header_parameter() :: #{binary() => any()}.

%% Example:
%% describe_connection_connectivity_parameters() :: #{
%%   <<"ResourceParameters">> => describe_connection_resource_parameters()
%% }
-type describe_connection_connectivity_parameters() :: #{binary() => any()}.

%% Example:
%% delete_api_destination_response() :: #{

%% }
-type delete_api_destination_response() :: #{binary() => any()}.

%% Example:
%% create_event_bus_response() :: #{
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"EventBusArn">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LogConfig">> => log_config()
%% }
-type create_event_bus_response() :: #{binary() => any()}.

%% Example:
%% update_endpoint_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBuses">> => list(endpoint_event_bus()),
%%   <<"Name">> := string(),
%%   <<"ReplicationConfig">> => replication_config(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> => routing_config()
%% }
-type update_endpoint_request() :: #{binary() => any()}.

%% Example:
%% put_events_response() :: #{
%%   <<"Entries">> => list(put_events_result_entry()),
%%   <<"FailedEntryCount">> => integer()
%% }
-type put_events_response() :: #{binary() => any()}.

%% Example:
%% routing_config() :: #{
%%   <<"FailoverConfig">> => failover_config()
%% }
-type routing_config() :: #{binary() => any()}.

%% Example:
%% put_events_request_entry() :: #{
%%   <<"Detail">> => string(),
%%   <<"DetailType">> => string(),
%%   <<"EventBusName">> => string(),
%%   <<"Resources">> => list(string()),
%%   <<"Source">> => string(),
%%   <<"Time">> => non_neg_integer(),
%%   <<"TraceHeader">> => string()
%% }
-type put_events_request_entry() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% describe_replay_response() :: #{
%%   <<"Description">> => string(),
%%   <<"Destination">> => replay_destination(),
%%   <<"EventEndTime">> => non_neg_integer(),
%%   <<"EventLastReplayedTime">> => non_neg_integer(),
%%   <<"EventSourceArn">> => string(),
%%   <<"EventStartTime">> => non_neg_integer(),
%%   <<"ReplayArn">> => string(),
%%   <<"ReplayEndTime">> => non_neg_integer(),
%%   <<"ReplayName">> => string(),
%%   <<"ReplayStartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type describe_replay_response() :: #{binary() => any()}.

%% Example:
%% connection_api_key_auth_response_parameters() :: #{
%%   <<"ApiKeyName">> => string()
%% }
-type connection_api_key_auth_response_parameters() :: #{binary() => any()}.

%% Example:
%% replay() :: #{
%%   <<"EventEndTime">> => non_neg_integer(),
%%   <<"EventLastReplayedTime">> => non_neg_integer(),
%%   <<"EventSourceArn">> => string(),
%%   <<"EventStartTime">> => non_neg_integer(),
%%   <<"ReplayEndTime">> => non_neg_integer(),
%%   <<"ReplayName">> => string(),
%%   <<"ReplayStartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type replay() :: #{binary() => any()}.

%% Example:
%% list_rules_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_rules_request() :: #{binary() => any()}.

%% Example:
%% event_source() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type event_source() :: #{binary() => any()}.

%% Example:
%% update_connection_auth_request_parameters() :: #{
%%   <<"ApiKeyAuthParameters">> => update_connection_api_key_auth_request_parameters(),
%%   <<"BasicAuthParameters">> => update_connection_basic_auth_request_parameters(),
%%   <<"ConnectivityParameters">> => connectivity_resource_parameters(),
%%   <<"InvocationHttpParameters">> => connection_http_parameters(),
%%   <<"OAuthParameters">> => update_connection_o_auth_request_parameters()
%% }
-type update_connection_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% endpoint_event_bus() :: #{
%%   <<"EventBusArn">> => string()
%% }
-type endpoint_event_bus() :: #{binary() => any()}.

%% Example:
%% describe_partner_event_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type describe_partner_event_source_response() :: #{binary() => any()}.

%% Example:
%% delete_archive_response() :: #{

%% }
-type delete_archive_response() :: #{binary() => any()}.

%% Example:
%% update_connection_api_key_auth_request_parameters() :: #{
%%   <<"ApiKeyName">> => string(),
%%   <<"ApiKeyValue">> => string()
%% }
-type update_connection_api_key_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% create_archive_request() :: #{
%%   <<"ArchiveName">> := string(),
%%   <<"Description">> => string(),
%%   <<"EventPattern">> => string(),
%%   <<"EventSourceArn">> := string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"RetentionDays">> => integer()
%% }
-type create_archive_request() :: #{binary() => any()}.

%% Example:
%% delete_rule_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Force">> => boolean(),
%%   <<"Name">> := string()
%% }
-type delete_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_archive_request() :: #{
%%   <<"ArchiveName">> := string()
%% }
-type delete_archive_request() :: #{binary() => any()}.

%% Example:
%% list_partner_event_source_accounts_request() :: #{
%%   <<"EventSourceName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_partner_event_source_accounts_request() :: #{binary() => any()}.

%% Example:
%% describe_connection_response() :: #{
%%   <<"AuthParameters">> => connection_auth_response_parameters(),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"InvocationConnectivityParameters">> => describe_connection_connectivity_parameters(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LastAuthorizedTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"StateReason">> => string()
%% }
-type describe_connection_response() :: #{binary() => any()}.

%% Example:
%% remove_targets_result_entry() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"TargetId">> => string()
%% }
-type remove_targets_result_entry() :: #{binary() => any()}.

%% Example:
%% describe_api_destination_response() :: #{
%%   <<"ApiDestinationArn">> => string(),
%%   <<"ApiDestinationState">> => list(any()),
%%   <<"ConnectionArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"HttpMethod">> => list(any()),
%%   <<"InvocationEndpoint">> => string(),
%%   <<"InvocationRateLimitPerSecond">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type describe_api_destination_response() :: #{binary() => any()}.

%% Example:
%% target() :: #{
%%   <<"AppSyncParameters">> => app_sync_parameters(),
%%   <<"Arn">> => string(),
%%   <<"BatchParameters">> => batch_parameters(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"EcsParameters">> => ecs_parameters(),
%%   <<"HttpParameters">> => http_parameters(),
%%   <<"Id">> => string(),
%%   <<"Input">> => string(),
%%   <<"InputPath">> => string(),
%%   <<"InputTransformer">> => input_transformer(),
%%   <<"KinesisParameters">> => kinesis_parameters(),
%%   <<"RedshiftDataParameters">> => redshift_data_parameters(),
%%   <<"RetryPolicy">> => retry_policy(),
%%   <<"RoleArn">> => string(),
%%   <<"RunCommandParameters">> => run_command_parameters(),
%%   <<"SageMakerPipelineParameters">> => sage_maker_pipeline_parameters(),
%%   <<"SqsParameters">> => sqs_parameters()
%% }
-type target() :: #{binary() => any()}.

%% Example:
%% list_connections_request() :: #{
%%   <<"ConnectionState">> => list(any()),
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_connections_request() :: #{binary() => any()}.

%% Example:
%% list_archives_request() :: #{
%%   <<"EventSourceArn">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_archives_request() :: #{binary() => any()}.

%% Example:
%% describe_archive_response() :: #{
%%   <<"ArchiveArn">> => string(),
%%   <<"ArchiveName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventCount">> => float(),
%%   <<"EventPattern">> => string(),
%%   <<"EventSourceArn">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"RetentionDays">> => integer(),
%%   <<"SizeBytes">> => float(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type describe_archive_response() :: #{binary() => any()}.

%% Example:
%% list_replays_request() :: #{
%%   <<"EventSourceArn">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_replays_request() :: #{binary() => any()}.

%% Example:
%% redshift_data_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"SecretManagerArn">> => string(),
%%   <<"Sql">> => string(),
%%   <<"Sqls">> => list(string()),
%%   <<"StatementName">> => string(),
%%   <<"WithEvent">> => boolean()
%% }
-type redshift_data_parameters() :: #{binary() => any()}.

%% Example:
%% start_replay_response() :: #{
%%   <<"ReplayArn">> => string(),
%%   <<"ReplayStartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type start_replay_response() :: #{binary() => any()}.

%% Example:
%% secondary() :: #{
%%   <<"Route">> => string()
%% }
-type secondary() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% deauthorize_connection_request() :: #{
%%   <<"Name">> := string()
%% }
-type deauthorize_connection_request() :: #{binary() => any()}.

%% Example:
%% input_transformer() :: #{
%%   <<"InputPathsMap">> => map(),
%%   <<"InputTemplate">> => string()
%% }
-type input_transformer() :: #{binary() => any()}.

%% Example:
%% describe_connection_resource_parameters() :: #{
%%   <<"ResourceAssociationArn">> => string(),
%%   <<"ResourceConfigurationArn">> => string()
%% }
-type describe_connection_resource_parameters() :: #{binary() => any()}.

%% Example:
%% connection_http_parameters() :: #{
%%   <<"BodyParameters">> => list(connection_body_parameter()),
%%   <<"HeaderParameters">> => list(connection_header_parameter()),
%%   <<"QueryStringParameters">> => list(connection_query_string_parameter())
%% }
-type connection_http_parameters() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_api_destination_request() :: #{
%%   <<"ConnectionArn">> := string(),
%%   <<"Description">> => string(),
%%   <<"HttpMethod">> := list(any()),
%%   <<"InvocationEndpoint">> := string(),
%%   <<"InvocationRateLimitPerSecond">> => integer(),
%%   <<"Name">> := string()
%% }
-type create_api_destination_request() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_response() :: #{

%% }
-type delete_endpoint_response() :: #{binary() => any()}.

%% Example:
%% list_endpoints_response() :: #{
%%   <<"Endpoints">> => list(endpoint()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_response() :: #{binary() => any()}.

%% Example:
%% put_events_request() :: #{
%%   <<"EndpointId">> => string(),
%%   <<"Entries">> := list(put_events_request_entry())
%% }
-type put_events_request() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"AuthorizationType">> => list(any()),
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastAuthorizedTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"StateReason">> => string()
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% log_config() :: #{
%%   <<"IncludeDetail">> => list(any()),
%%   <<"Level">> => list(any())
%% }
-type log_config() :: #{binary() => any()}.

%% Example:
%% primary() :: #{
%%   <<"HealthCheck">> => string()
%% }
-type primary() :: #{binary() => any()}.

%% Example:
%% activate_event_source_request() :: #{
%%   <<"Name">> := string()
%% }
-type activate_event_source_request() :: #{binary() => any()}.

%% Example:
%% replay_destination() :: #{
%%   <<"Arn">> => string(),
%%   <<"FilterArns">> => list(string())
%% }
-type replay_destination() :: #{binary() => any()}.

%% Example:
%% list_replays_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Replays">> => list(replay())
%% }
-type list_replays_response() :: #{binary() => any()}.

%% Example:
%% list_event_buses_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_event_buses_request() :: #{binary() => any()}.

%% Example:
%% describe_event_source_request() :: #{
%%   <<"Name">> := string()
%% }
-type describe_event_source_request() :: #{binary() => any()}.

%% Example:
%% create_api_destination_response() :: #{
%%   <<"ApiDestinationArn">> => string(),
%%   <<"ApiDestinationState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type create_api_destination_response() :: #{binary() => any()}.

%% Example:
%% remove_permission_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"RemoveAllPermissions">> => boolean(),
%%   <<"StatementId">> => string()
%% }
-type remove_permission_request() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_request() :: #{
%%   <<"HomeRegion">> => string(),
%%   <<"Name">> := string()
%% }
-type describe_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% sage_maker_pipeline_parameters() :: #{
%%   <<"PipelineParameterList">> => list(sage_maker_pipeline_parameter())
%% }
-type sage_maker_pipeline_parameters() :: #{binary() => any()}.

%% Example:
%% managed_rule_exception() :: #{
%%   <<"message">> => string()
%% }
-type managed_rule_exception() :: #{binary() => any()}.

%% Example:
%% disable_rule_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Name">> := string()
%% }
-type disable_rule_request() :: #{binary() => any()}.

%% Example:
%% update_connection_response() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastAuthorizedTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type update_connection_response() :: #{binary() => any()}.

%% Example:
%% sqs_parameters() :: #{
%%   <<"MessageGroupId">> => string()
%% }
-type sqs_parameters() :: #{binary() => any()}.

%% Example:
%% put_permission_request() :: #{
%%   <<"Action">> => string(),
%%   <<"Condition">> => condition(),
%%   <<"EventBusName">> => string(),
%%   <<"Policy">> => string(),
%%   <<"Principal">> => string(),
%%   <<"StatementId">> => string()
%% }
-type put_permission_request() :: #{binary() => any()}.

%% Example:
%% list_api_destinations_response() :: #{
%%   <<"ApiDestinations">> => list(api_destination()),
%%   <<"NextToken">> => string()
%% }
-type list_api_destinations_response() :: #{binary() => any()}.

%% Example:
%% delete_event_bus_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_event_bus_request() :: #{binary() => any()}.

%% Example:
%% condition() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type condition() :: #{binary() => any()}.

%% Example:
%% put_partner_events_response() :: #{
%%   <<"Entries">> => list(put_partner_events_result_entry()),
%%   <<"FailedEntryCount">> => integer()
%% }
-type put_partner_events_response() :: #{binary() => any()}.

%% Example:
%% partner_event_source() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type partner_event_source() :: #{binary() => any()}.

%% Example:
%% operation_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_disabled_exception() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"EventBusName">> => string(),
%%   <<"EventPattern">> => string(),
%%   <<"ManagedBy">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"State">> => list(any())
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% put_events_result_entry() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventId">> => string()
%% }
-type put_events_result_entry() :: #{binary() => any()}.

%% Example:
%% update_api_destination_request() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"HttpMethod">> => list(any()),
%%   <<"InvocationEndpoint">> => string(),
%%   <<"InvocationRateLimitPerSecond">> => integer(),
%%   <<"Name">> := string()
%% }
-type update_api_destination_request() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointUrl">> => string(),
%%   <<"EventBuses">> => list(endpoint_event_bus()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ReplicationConfig">> => replication_config(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> => routing_config(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% create_connection_api_key_auth_request_parameters() :: #{
%%   <<"ApiKeyName">> => string(),
%%   <<"ApiKeyValue">> => string()
%% }
-type create_connection_api_key_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% list_endpoints_request() :: #{
%%   <<"HomeRegion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_request() :: #{binary() => any()}.

%% Example:
%% describe_rule_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Name">> := string()
%% }
-type describe_rule_request() :: #{binary() => any()}.

%% Example:
%% create_connection_o_auth_client_request_parameters() :: #{
%%   <<"ClientID">> => string(),
%%   <<"ClientSecret">> => string()
%% }
-type create_connection_o_auth_client_request_parameters() :: #{binary() => any()}.

%% Example:
%% connectivity_resource_configuration_arn() :: #{
%%   <<"ResourceConfigurationArn">> => string()
%% }
-type connectivity_resource_configuration_arn() :: #{binary() => any()}.

%% Example:
%% capacity_provider_strategy_item() :: #{
%%   <<"base">> => integer(),
%%   <<"capacityProvider">> => string(),
%%   <<"weight">> => integer()
%% }
-type capacity_provider_strategy_item() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_endpoint_request() :: #{binary() => any()}.

%% Example:
%% placement_constraint() :: #{
%%   <<"expression">> => string(),
%%   <<"type">> => list(any())
%% }
-type placement_constraint() :: #{binary() => any()}.

%% Example:
%% network_configuration() :: #{
%%   <<"awsvpcConfiguration">> => aws_vpc_configuration()
%% }
-type network_configuration() :: #{binary() => any()}.

%% Example:
%% api_destination() :: #{
%%   <<"ApiDestinationArn">> => string(),
%%   <<"ApiDestinationState">> => list(any()),
%%   <<"ConnectionArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpMethod">> => list(any()),
%%   <<"InvocationEndpoint">> => string(),
%%   <<"InvocationRateLimitPerSecond">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type api_destination() :: #{binary() => any()}.

%% Example:
%% internal_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% list_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rules">> => list(rule())
%% }
-type list_rules_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointUrl">> => string(),
%%   <<"EventBuses">> => list(endpoint_event_bus()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ReplicationConfig">> => replication_config(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> => routing_config(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type describe_endpoint_response() :: #{binary() => any()}.

%% Example:
%% describe_partner_event_source_request() :: #{
%%   <<"Name">> := string()
%% }
-type describe_partner_event_source_request() :: #{binary() => any()}.

%% Example:
%% create_partner_event_source_response() :: #{
%%   <<"EventSourceArn">> => string()
%% }
-type create_partner_event_source_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_connection_basic_auth_request_parameters() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type update_connection_basic_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% list_partner_event_sources_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_partner_event_sources_request() :: #{binary() => any()}.

%% Example:
%% describe_event_bus_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LogConfig">> => log_config(),
%%   <<"Name">> => string(),
%%   <<"Policy">> => string()
%% }
-type describe_event_bus_response() :: #{binary() => any()}.

%% Example:
%% remove_targets_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Force">> => boolean(),
%%   <<"Ids">> := list(string()),
%%   <<"Rule">> := string()
%% }
-type remove_targets_request() :: #{binary() => any()}.

%% Example:
%% dead_letter_config() :: #{
%%   <<"Arn">> => string()
%% }
-type dead_letter_config() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% update_api_destination_response() :: #{
%%   <<"ApiDestinationArn">> => string(),
%%   <<"ApiDestinationState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type update_api_destination_response() :: #{binary() => any()}.

%% Example:
%% update_event_bus_request() :: #{
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LogConfig">> => log_config(),
%%   <<"Name">> => string()
%% }
-type update_event_bus_request() :: #{binary() => any()}.

%% Example:
%% cancel_replay_response() :: #{
%%   <<"ReplayArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type cancel_replay_response() :: #{binary() => any()}.

%% Example:
%% delete_connection_response() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastAuthorizedTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type delete_connection_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% put_rule_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBusName">> => string(),
%%   <<"EventPattern">> => string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type put_rule_request() :: #{binary() => any()}.

%% Example:
%% list_partner_event_sources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PartnerEventSources">> => list(partner_event_source())
%% }
-type list_partner_event_sources_response() :: #{binary() => any()}.

%% Example:
%% describe_replay_request() :: #{
%%   <<"ReplayName">> := string()
%% }
-type describe_replay_request() :: #{binary() => any()}.

%% Example:
%% list_api_destinations_request() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_api_destinations_request() :: #{binary() => any()}.

%% Example:
%% create_archive_response() :: #{
%%   <<"ArchiveArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type create_archive_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% start_replay_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Destination">> := replay_destination(),
%%   <<"EventEndTime">> := non_neg_integer(),
%%   <<"EventSourceArn">> := string(),
%%   <<"EventStartTime">> := non_neg_integer(),
%%   <<"ReplayName">> := string()
%% }
-type start_replay_request() :: #{binary() => any()}.

%% Example:
%% connection_o_auth_response_parameters() :: #{
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientParameters">> => connection_o_auth_client_response_parameters(),
%%   <<"HttpMethod">> => list(any()),
%%   <<"OAuthHttpParameters">> => connection_http_parameters()
%% }
-type connection_o_auth_response_parameters() :: #{binary() => any()}.

%% Example:
%% archive() :: #{
%%   <<"ArchiveName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EventCount">> => float(),
%%   <<"EventSourceArn">> => string(),
%%   <<"RetentionDays">> => integer(),
%%   <<"SizeBytes">> => float(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type archive() :: #{binary() => any()}.

%% Example:
%% remove_targets_response() :: #{
%%   <<"FailedEntries">> => list(remove_targets_result_entry()),
%%   <<"FailedEntryCount">> => integer()
%% }
-type remove_targets_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_connection_response() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type create_connection_response() :: #{binary() => any()}.

%% Example:
%% list_event_buses_response() :: #{
%%   <<"EventBuses">> => list(event_bus()),
%%   <<"NextToken">> => string()
%% }
-type list_event_buses_response() :: #{binary() => any()}.

%% Example:
%% update_archive_request() :: #{
%%   <<"ArchiveName">> := string(),
%%   <<"Description">> => string(),
%%   <<"EventPattern">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"RetentionDays">> => integer()
%% }
-type update_archive_request() :: #{binary() => any()}.

%% Example:
%% list_rule_names_by_target_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TargetArn">> := string()
%% }
-type list_rule_names_by_target_request() :: #{binary() => any()}.

%% Example:
%% aws_vpc_configuration() :: #{
%%   <<"AssignPublicIp">> => list(any()),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"Subnets">> => list(string())
%% }
-type aws_vpc_configuration() :: #{binary() => any()}.

%% Example:
%% connectivity_resource_parameters() :: #{
%%   <<"ResourceParameters">> => connectivity_resource_configuration_arn()
%% }
-type connectivity_resource_parameters() :: #{binary() => any()}.

%% Example:
%% create_endpoint_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"EventBuses">> => list(endpoint_event_bus()),
%%   <<"Name">> => string(),
%%   <<"ReplicationConfig">> => replication_config(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> => routing_config(),
%%   <<"State">> => list(any())
%% }
-type create_endpoint_response() :: #{binary() => any()}.

%% Example:
%% put_partner_events_result_entry() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventId">> => string()
%% }
-type put_partner_events_result_entry() :: #{binary() => any()}.

%% Example:
%% create_connection_basic_auth_request_parameters() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type create_connection_basic_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% put_partner_events_request() :: #{
%%   <<"Entries">> := list(put_partner_events_request_entry())
%% }
-type put_partner_events_request() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% kinesis_parameters() :: #{
%%   <<"PartitionKeyPath">> => string()
%% }
-type kinesis_parameters() :: #{binary() => any()}.

%% Example:
%% list_targets_by_rule_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Targets">> => list(target())
%% }
-type list_targets_by_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_connection_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_connection_request() :: #{binary() => any()}.

%% Example:
%% replication_config() :: #{
%%   <<"State">> => list(any())
%% }
-type replication_config() :: #{binary() => any()}.

%% Example:
%% update_archive_response() :: #{
%%   <<"ArchiveArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type update_archive_response() :: #{binary() => any()}.

%% Example:
%% test_event_pattern_response() :: #{
%%   <<"Result">> => boolean()
%% }
-type test_event_pattern_response() :: #{binary() => any()}.

%% Example:
%% illegal_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type illegal_status_exception() :: #{binary() => any()}.

%% Example:
%% list_targets_by_rule_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Rule">> := string()
%% }
-type list_targets_by_rule_request() :: #{binary() => any()}.

%% Example:
%% retry_policy() :: #{
%%   <<"MaximumEventAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer()
%% }
-type retry_policy() :: #{binary() => any()}.

%% Example:
%% connection_body_parameter() :: #{
%%   <<"IsValueSecret">> => boolean(),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type connection_body_parameter() :: #{binary() => any()}.

%% Example:
%% failover_config() :: #{
%%   <<"Primary">> => primary(),
%%   <<"Secondary">> => secondary()
%% }
-type failover_config() :: #{binary() => any()}.

%% Example:
%% connection_basic_auth_response_parameters() :: #{
%%   <<"Username">> => string()
%% }
-type connection_basic_auth_response_parameters() :: #{binary() => any()}.

%% Example:
%% put_targets_request() :: #{
%%   <<"EventBusName">> => string(),
%%   <<"Rule">> := string(),
%%   <<"Targets">> := list(target())
%% }
-type put_targets_request() :: #{binary() => any()}.

%% Example:
%% create_connection_request() :: #{
%%   <<"AuthParameters">> := create_connection_auth_request_parameters(),
%%   <<"AuthorizationType">> := list(any()),
%%   <<"Description">> => string(),
%%   <<"InvocationConnectivityParameters">> => connectivity_resource_parameters(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"Name">> := string()
%% }
-type create_connection_request() :: #{binary() => any()}.

%% Example:
%% update_connection_o_auth_client_request_parameters() :: #{
%%   <<"ClientID">> => string(),
%%   <<"ClientSecret">> => string()
%% }
-type update_connection_o_auth_client_request_parameters() :: #{binary() => any()}.

%% Example:
%% event_bus() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Policy">> => string()
%% }
-type event_bus() :: #{binary() => any()}.

%% Example:
%% create_connection_auth_request_parameters() :: #{
%%   <<"ApiKeyAuthParameters">> => create_connection_api_key_auth_request_parameters(),
%%   <<"BasicAuthParameters">> => create_connection_basic_auth_request_parameters(),
%%   <<"ConnectivityParameters">> => connectivity_resource_parameters(),
%%   <<"InvocationHttpParameters">> => connection_http_parameters(),
%%   <<"OAuthParameters">> => create_connection_o_auth_request_parameters()
%% }
-type create_connection_auth_request_parameters() :: #{binary() => any()}.

%% Example:
%% delete_api_destination_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_api_destination_request() :: #{binary() => any()}.

%% Example:
%% connection_o_auth_client_response_parameters() :: #{
%%   <<"ClientID">> => string()
%% }
-type connection_o_auth_client_response_parameters() :: #{binary() => any()}.

%% Example:
%% describe_rule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"EventBusName">> => string(),
%%   <<"EventPattern">> => string(),
%%   <<"ManagedBy">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"State">> => list(any())
%% }
-type describe_rule_response() :: #{binary() => any()}.

%% Example:
%% list_partner_event_source_accounts_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PartnerEventSourceAccounts">> => list(partner_event_source_account())
%% }
-type list_partner_event_source_accounts_response() :: #{binary() => any()}.

%% Example:
%% list_rule_names_by_target_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RuleNames">> => list(string())
%% }
-type list_rule_names_by_target_response() :: #{binary() => any()}.

%% Example:
%% update_event_bus_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LogConfig">> => log_config(),
%%   <<"Name">> => string()
%% }
-type update_event_bus_response() :: #{binary() => any()}.

%% Example:
%% delete_partner_event_source_request() :: #{
%%   <<"Account">> := string(),
%%   <<"Name">> := string()
%% }
-type delete_partner_event_source_request() :: #{binary() => any()}.

%% Example:
%% placement_strategy() :: #{
%%   <<"field">> => string(),
%%   <<"type">> => list(any())
%% }
-type placement_strategy() :: #{binary() => any()}.

%% Example:
%% ecs_parameters() :: #{
%%   <<"CapacityProviderStrategy">> => list(capacity_provider_strategy_item()),
%%   <<"EnableECSManagedTags">> => boolean(),
%%   <<"EnableExecuteCommand">> => boolean(),
%%   <<"Group">> => string(),
%%   <<"LaunchType">> => list(any()),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"PlacementConstraints">> => list(placement_constraint()),
%%   <<"PlacementStrategy">> => list(placement_strategy()),
%%   <<"PlatformVersion">> => string(),
%%   <<"PropagateTags">> => list(any()),
%%   <<"ReferenceId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TaskCount">> => integer(),
%%   <<"TaskDefinitionArn">> => string()
%% }
-type ecs_parameters() :: #{binary() => any()}.

%% Example:
%% put_targets_response() :: #{
%%   <<"FailedEntries">> => list(put_targets_result_entry()),
%%   <<"FailedEntryCount">> => integer()
%% }
-type put_targets_response() :: #{binary() => any()}.

-type activate_event_source_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type cancel_replay_errors() ::
    illegal_status_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type create_api_destination_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type create_archive_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    invalid_event_pattern_exception().

-type create_connection_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type create_endpoint_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    internal_exception().

-type create_event_bus_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type create_partner_event_source_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception().

-type deactivate_event_source_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type deauthorize_connection_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_api_destination_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_archive_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_connection_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_endpoint_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_event_bus_errors() ::
    concurrent_modification_exception() | 
    internal_exception().

-type delete_partner_event_source_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception().

-type delete_rule_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type describe_api_destination_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type describe_archive_errors() ::
    resource_already_exists_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_connection_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type describe_endpoint_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type describe_event_bus_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type describe_event_source_errors() ::
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception().

-type describe_partner_event_source_errors() ::
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception().

-type describe_replay_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type describe_rule_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type disable_rule_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type enable_rule_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type list_api_destinations_errors() ::
    internal_exception().

-type list_archives_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type list_connections_errors() ::
    internal_exception().

-type list_endpoints_errors() ::
    internal_exception().

-type list_event_buses_errors() ::
    internal_exception().

-type list_event_sources_errors() ::
    internal_exception() | 
    operation_disabled_exception().

-type list_partner_event_source_accounts_errors() ::
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception().

-type list_partner_event_sources_errors() ::
    internal_exception() | 
    operation_disabled_exception().

-type list_replays_errors() ::
    internal_exception().

-type list_rule_names_by_target_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type list_rules_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type list_targets_by_rule_errors() ::
    internal_exception() | 
    resource_not_found_exception().

-type put_events_errors() ::
    internal_exception().

-type put_partner_events_errors() ::
    internal_exception() | 
    operation_disabled_exception().

-type put_permission_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception() | 
    policy_length_exceeded_exception().

-type put_rule_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception() | 
    invalid_event_pattern_exception().

-type put_targets_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type remove_permission_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception().

-type remove_targets_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type start_replay_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    invalid_event_pattern_exception().

-type tag_resource_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type test_event_pattern_errors() ::
    internal_exception() | 
    invalid_event_pattern_exception().

-type untag_resource_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    managed_rule_exception() | 
    resource_not_found_exception().

-type update_api_destination_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type update_archive_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    invalid_event_pattern_exception().

-type update_connection_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type update_endpoint_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type update_event_bus_errors() ::
    concurrent_modification_exception() | 
    internal_exception() | 
    operation_disabled_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a partner event source that has been deactivated.
%%
%% Once activated, your matching
%% event bus will start receiving events from the event source.
-spec activate_event_source(aws_client:aws_client(), activate_event_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, activate_event_source_errors(), tuple()}.
activate_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_event_source(Client, Input, []).

-spec activate_event_source(aws_client:aws_client(), activate_event_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, activate_event_source_errors(), tuple()}.
activate_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateEventSource">>, Input, Options).

%% @doc Cancels the specified replay.
-spec cancel_replay(aws_client:aws_client(), cancel_replay_request()) ->
    {ok, cancel_replay_response(), tuple()} |
    {error, any()} |
    {error, cancel_replay_errors(), tuple()}.
cancel_replay(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_replay(Client, Input, []).

-spec cancel_replay(aws_client:aws_client(), cancel_replay_request(), proplists:proplist()) ->
    {ok, cancel_replay_response(), tuple()} |
    {error, any()} |
    {error, cancel_replay_errors(), tuple()}.
cancel_replay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelReplay">>, Input, Options).

%% @doc Creates an API destination, which is an HTTP invocation endpoint
%% configured as a target
%% for events.
%%
%% API destinations do not support private destinations, such as interface
%% VPC
%% endpoints.
%%
%% For more information, see API destinations:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html
%% in the
%% EventBridge User Guide.
-spec create_api_destination(aws_client:aws_client(), create_api_destination_request()) ->
    {ok, create_api_destination_response(), tuple()} |
    {error, any()} |
    {error, create_api_destination_errors(), tuple()}.
create_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_api_destination(Client, Input, []).

-spec create_api_destination(aws_client:aws_client(), create_api_destination_request(), proplists:proplist()) ->
    {ok, create_api_destination_response(), tuple()} |
    {error, any()} |
    {error, create_api_destination_errors(), tuple()}.
create_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApiDestination">>, Input, Options).

%% @doc Creates an archive of events with the specified settings.
%%
%% When you create an archive,
%% incoming events might not immediately start being sent to the archive.
%% Allow a short period of
%% time for changes to take effect. If you do not specify a pattern to filter
%% events sent to the
%% archive, all events are sent to the archive except replayed events.
%% Replayed events are not
%% sent to an archive.
%%
%% If you have specified that EventBridge use a customer managed key for
%% encrypting the source event bus, we strongly recommend you also specify a
%% customer managed key for any archives for the event bus as well.
%%
%% For more information, see Encrypting archives:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html
%% in the Amazon EventBridge User Guide.
-spec create_archive(aws_client:aws_client(), create_archive_request()) ->
    {ok, create_archive_response(), tuple()} |
    {error, any()} |
    {error, create_archive_errors(), tuple()}.
create_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_archive(Client, Input, []).

-spec create_archive(aws_client:aws_client(), create_archive_request(), proplists:proplist()) ->
    {ok, create_archive_response(), tuple()} |
    {error, any()} |
    {error, create_archive_errors(), tuple()}.
create_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateArchive">>, Input, Options).

%% @doc Creates a connection.
%%
%% A connection defines the authorization type and credentials to use
%% for authorization with an API destination HTTP endpoint.
%%
%% For more information, see Connections for endpoint targets:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-target-connection.html
%% in the Amazon EventBridge User Guide.
-spec create_connection(aws_client:aws_client(), create_connection_request()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).

-spec create_connection(aws_client:aws_client(), create_connection_request(), proplists:proplist()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a global endpoint.
%%
%% Global endpoints improve your application's availability by
%% making it regional-fault tolerant. To do this, you define a primary and
%% secondary Region with
%% event buses in each Region. You also create a Amazon Route 53 health check
%% that will
%% tell EventBridge to route events to the secondary Region when an
%% &quot;unhealthy&quot; state is
%% encountered and events will be routed back to the primary Region when the
%% health check reports
%% a &quot;healthy&quot; state.
-spec create_endpoint(aws_client:aws_client(), create_endpoint_request()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).

-spec create_endpoint(aws_client:aws_client(), create_endpoint_request(), proplists:proplist()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates a new event bus within your account.
%%
%% This can be a custom event bus which you can
%% use to receive events from your custom applications and services, or it
%% can be a partner event
%% bus which can be matched to a partner event source.
-spec create_event_bus(aws_client:aws_client(), create_event_bus_request()) ->
    {ok, create_event_bus_response(), tuple()} |
    {error, any()} |
    {error, create_event_bus_errors(), tuple()}.
create_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_bus(Client, Input, []).

-spec create_event_bus(aws_client:aws_client(), create_event_bus_request(), proplists:proplist()) ->
    {ok, create_event_bus_response(), tuple()} |
    {error, any()} |
    {error, create_event_bus_errors(), tuple()}.
create_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventBus">>, Input, Options).

%% @doc Called by an SaaS partner to create a partner event source.
%%
%% This operation is not used by
%% Amazon Web Services customers.
%%
%% Each partner event source can be used by one Amazon Web Services account
%% to create a
%% matching partner event bus in that Amazon Web Services account. A SaaS
%% partner must create one
%% partner event source for each Amazon Web Services account that wants to
%% receive those event
%% types.
%%
%% A partner event source creates events based on resources within the SaaS
%% partner's service
%% or application.
%%
%% An Amazon Web Services account that creates a partner event bus that
%% matches the partner
%% event source can use that event bus to receive events from the partner,
%% and then process them
%% using Amazon Web Services Events rules and targets.
%%
%% Partner event source names follow this format:
%%
%% ```
%% partner_name/event_namespace/event_name '''
%%
%% partner_name is determined during partner registration, and
%% identifies the partner to Amazon Web Services customers.
%%
%% event_namespace is determined by the partner, and is a way for
%% the partner to categorize their events.
%%
%% event_name is determined by the partner, and should uniquely
%% identify an event-generating resource within the partner system.
%%
%% The event_name must be unique across all Amazon Web Services
%% customers. This is because the event source is a shared resource between
%% the partner and
%% customer accounts, and each partner event source unique in the partner
%% account.
%%
%% The combination of event_namespace and
%% event_name should help Amazon Web Services customers decide whether to
%% create an event bus to receive these events.
-spec create_partner_event_source(aws_client:aws_client(), create_partner_event_source_request()) ->
    {ok, create_partner_event_source_response(), tuple()} |
    {error, any()} |
    {error, create_partner_event_source_errors(), tuple()}.
create_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partner_event_source(Client, Input, []).

-spec create_partner_event_source(aws_client:aws_client(), create_partner_event_source_request(), proplists:proplist()) ->
    {ok, create_partner_event_source_response(), tuple()} |
    {error, any()} |
    {error, create_partner_event_source_errors(), tuple()}.
create_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnerEventSource">>, Input, Options).

%% @doc You can use this operation to temporarily stop receiving events from
%% the specified partner
%% event source.
%%
%% The matching event bus is not deleted.
%%
%% When you deactivate a partner event source, the source goes into PENDING
%% state. If it
%% remains in PENDING state for more than two weeks, it is deleted.
%%
%% To activate a deactivated partner event source, use ActivateEventSource:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ActivateEventSource.html.
-spec deactivate_event_source(aws_client:aws_client(), deactivate_event_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deactivate_event_source_errors(), tuple()}.
deactivate_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_event_source(Client, Input, []).

-spec deactivate_event_source(aws_client:aws_client(), deactivate_event_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deactivate_event_source_errors(), tuple()}.
deactivate_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateEventSource">>, Input, Options).

%% @doc Removes all authorization parameters from the connection.
%%
%% This lets you remove the secret
%% from the connection so you can reuse it without having to create a new
%% connection.
-spec deauthorize_connection(aws_client:aws_client(), deauthorize_connection_request()) ->
    {ok, deauthorize_connection_response(), tuple()} |
    {error, any()} |
    {error, deauthorize_connection_errors(), tuple()}.
deauthorize_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    deauthorize_connection(Client, Input, []).

-spec deauthorize_connection(aws_client:aws_client(), deauthorize_connection_request(), proplists:proplist()) ->
    {ok, deauthorize_connection_response(), tuple()} |
    {error, any()} |
    {error, deauthorize_connection_errors(), tuple()}.
deauthorize_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeauthorizeConnection">>, Input, Options).

%% @doc Deletes the specified API destination.
-spec delete_api_destination(aws_client:aws_client(), delete_api_destination_request()) ->
    {ok, delete_api_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_api_destination_errors(), tuple()}.
delete_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_api_destination(Client, Input, []).

-spec delete_api_destination(aws_client:aws_client(), delete_api_destination_request(), proplists:proplist()) ->
    {ok, delete_api_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_api_destination_errors(), tuple()}.
delete_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApiDestination">>, Input, Options).

%% @doc Deletes the specified archive.
-spec delete_archive(aws_client:aws_client(), delete_archive_request()) ->
    {ok, delete_archive_response(), tuple()} |
    {error, any()} |
    {error, delete_archive_errors(), tuple()}.
delete_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_archive(Client, Input, []).

-spec delete_archive(aws_client:aws_client(), delete_archive_request(), proplists:proplist()) ->
    {ok, delete_archive_response(), tuple()} |
    {error, any()} |
    {error, delete_archive_errors(), tuple()}.
delete_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteArchive">>, Input, Options).

%% @doc Deletes a connection.
-spec delete_connection(aws_client:aws_client(), delete_connection_request()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_request(), proplists:proplist()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Delete an existing global endpoint.
%%
%% For more information about global endpoints, see
%% Making applications Regional-fault tolerant with global endpoints and
%% event
%% replication:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html
%% in the
%% Amazon EventBridge User Guide
%% .
-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_request()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).

-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_request(), proplists:proplist()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes the specified custom event bus or partner event bus.
%%
%% All rules associated with
%% this event bus need to be deleted. You can't delete your account's
%% default event bus.
-spec delete_event_bus(aws_client:aws_client(), delete_event_bus_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_bus_errors(), tuple()}.
delete_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_bus(Client, Input, []).

-spec delete_event_bus(aws_client:aws_client(), delete_event_bus_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_bus_errors(), tuple()}.
delete_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventBus">>, Input, Options).

%% @doc This operation is used by SaaS partners to delete a partner event
%% source.
%%
%% This operation
%% is not used by Amazon Web Services customers.
%%
%% When you delete an event source, the status of the corresponding partner
%% event bus in the
%% Amazon Web Services customer account becomes DELETED.
-spec delete_partner_event_source(aws_client:aws_client(), delete_partner_event_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_partner_event_source_errors(), tuple()}.
delete_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partner_event_source(Client, Input, []).

-spec delete_partner_event_source(aws_client:aws_client(), delete_partner_event_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_partner_event_source_errors(), tuple()}.
delete_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartnerEventSource">>, Input, Options).

%% @doc Deletes the specified rule.
%%
%% Before you can delete the rule, you must remove all targets, using
%% RemoveTargets:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemoveTargets.html.
%%
%% When you delete a rule, incoming events might continue to match to the
%% deleted rule. Allow
%% a short period of time for changes to take effect.
%%
%% If you call delete rule multiple times for the same rule, all calls will
%% succeed. When you
%% call delete rule for a non-existent custom eventbus,
%% `ResourceNotFoundException' is
%% returned.
%%
%% Managed rules are rules created and managed by another Amazon Web Services
%% service on your
%% behalf. These rules are created by those other Amazon Web Services
%% services to support
%% functionality in those services. You can delete these rules using the
%% `Force'
%% option, but you should do so only if you are sure the other service is not
%% still using that
%% rule.
-spec delete_rule(aws_client:aws_client(), delete_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).

-spec delete_rule(aws_client:aws_client(), delete_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Retrieves details about an API destination.
-spec describe_api_destination(aws_client:aws_client(), describe_api_destination_request()) ->
    {ok, describe_api_destination_response(), tuple()} |
    {error, any()} |
    {error, describe_api_destination_errors(), tuple()}.
describe_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_api_destination(Client, Input, []).

-spec describe_api_destination(aws_client:aws_client(), describe_api_destination_request(), proplists:proplist()) ->
    {ok, describe_api_destination_response(), tuple()} |
    {error, any()} |
    {error, describe_api_destination_errors(), tuple()}.
describe_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApiDestination">>, Input, Options).

%% @doc Retrieves details about an archive.
-spec describe_archive(aws_client:aws_client(), describe_archive_request()) ->
    {ok, describe_archive_response(), tuple()} |
    {error, any()} |
    {error, describe_archive_errors(), tuple()}.
describe_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_archive(Client, Input, []).

-spec describe_archive(aws_client:aws_client(), describe_archive_request(), proplists:proplist()) ->
    {ok, describe_archive_response(), tuple()} |
    {error, any()} |
    {error, describe_archive_errors(), tuple()}.
describe_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeArchive">>, Input, Options).

%% @doc Retrieves details about a connection.
-spec describe_connection(aws_client:aws_client(), describe_connection_request()) ->
    {ok, describe_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_connection_errors(), tuple()}.
describe_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection(Client, Input, []).

-spec describe_connection(aws_client:aws_client(), describe_connection_request(), proplists:proplist()) ->
    {ok, describe_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_connection_errors(), tuple()}.
describe_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnection">>, Input, Options).

%% @doc Get the information about an existing global endpoint.
%%
%% For more information about global
%% endpoints, see Making applications
%% Regional-fault tolerant with global endpoints and event replication:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html
%% in the
%%
%% Amazon EventBridge User Guide
%% .
-spec describe_endpoint(aws_client:aws_client(), describe_endpoint_request()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint(Client, Input, []).

-spec describe_endpoint(aws_client:aws_client(), describe_endpoint_request(), proplists:proplist()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoint">>, Input, Options).

%% @doc Displays details about an event bus in your account.
%%
%% This can include the external Amazon Web Services accounts that are
%% permitted to write events to your default event bus, and the
%% associated policy. For custom event buses and partner event buses, it
%% displays the name, ARN,
%% policy, state, and creation time.
%%
%% To enable your account to receive events from other accounts on its
%% default event bus,
%% use PutPermission:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html.
%%
%% For more information about partner event buses, see CreateEventBus:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html.
-spec describe_event_bus(aws_client:aws_client(), describe_event_bus_request()) ->
    {ok, describe_event_bus_response(), tuple()} |
    {error, any()} |
    {error, describe_event_bus_errors(), tuple()}.
describe_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_bus(Client, Input, []).

-spec describe_event_bus(aws_client:aws_client(), describe_event_bus_request(), proplists:proplist()) ->
    {ok, describe_event_bus_response(), tuple()} |
    {error, any()} |
    {error, describe_event_bus_errors(), tuple()}.
describe_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventBus">>, Input, Options).

%% @doc This operation lists details about a partner event source that is
%% shared with your
%% account.
-spec describe_event_source(aws_client:aws_client(), describe_event_source_request()) ->
    {ok, describe_event_source_response(), tuple()} |
    {error, any()} |
    {error, describe_event_source_errors(), tuple()}.
describe_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_source(Client, Input, []).

-spec describe_event_source(aws_client:aws_client(), describe_event_source_request(), proplists:proplist()) ->
    {ok, describe_event_source_response(), tuple()} |
    {error, any()} |
    {error, describe_event_source_errors(), tuple()}.
describe_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSource">>, Input, Options).

%% @doc An SaaS partner can use this operation to list details about a
%% partner event source that
%% they have created.
%%
%% Amazon Web Services customers do not use this operation. Instead, Amazon
%% Web Services customers can use DescribeEventSource:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventSource.html
%% to see details about a partner event source that is shared with
%% them.
-spec describe_partner_event_source(aws_client:aws_client(), describe_partner_event_source_request()) ->
    {ok, describe_partner_event_source_response(), tuple()} |
    {error, any()} |
    {error, describe_partner_event_source_errors(), tuple()}.
describe_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_partner_event_source(Client, Input, []).

-spec describe_partner_event_source(aws_client:aws_client(), describe_partner_event_source_request(), proplists:proplist()) ->
    {ok, describe_partner_event_source_response(), tuple()} |
    {error, any()} |
    {error, describe_partner_event_source_errors(), tuple()}.
describe_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePartnerEventSource">>, Input, Options).

%% @doc Retrieves details about a replay.
%%
%% Use `DescribeReplay' to determine the
%% progress of a running replay. A replay processes events to replay based on
%% the time in the
%% event, and replays them using 1 minute intervals. If you use
%% `StartReplay' and
%% specify an `EventStartTime' and an `EventEndTime' that covers a 20
%% minute time range, the events are replayed from the first minute of that
%% 20 minute range
%% first. Then the events from the second minute are replayed. You can use
%% `DescribeReplay' to determine the progress of a replay. The value
%% returned for
%% `EventLastReplayedTime' indicates the time within the specified time
%% range
%% associated with the last event replayed.
-spec describe_replay(aws_client:aws_client(), describe_replay_request()) ->
    {ok, describe_replay_response(), tuple()} |
    {error, any()} |
    {error, describe_replay_errors(), tuple()}.
describe_replay(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replay(Client, Input, []).

-spec describe_replay(aws_client:aws_client(), describe_replay_request(), proplists:proplist()) ->
    {ok, describe_replay_response(), tuple()} |
    {error, any()} |
    {error, describe_replay_errors(), tuple()}.
describe_replay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplay">>, Input, Options).

%% @doc Describes the specified rule.
%%
%% DescribeRule does not list the targets of a rule. To see the targets
%% associated with a
%% rule, use ListTargetsByRule:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html.
-spec describe_rule(aws_client:aws_client(), describe_rule_request()) ->
    {ok, describe_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_errors(), tuple()}.
describe_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule(Client, Input, []).

-spec describe_rule(aws_client:aws_client(), describe_rule_request(), proplists:proplist()) ->
    {ok, describe_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_errors(), tuple()}.
describe_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRule">>, Input, Options).

%% @doc Disables the specified rule.
%%
%% A disabled rule won't match any events, and won't
%% self-trigger if it has a schedule expression.
%%
%% When you disable a rule, incoming events might continue to match to the
%% disabled rule.
%% Allow a short period of time for changes to take effect.
-spec disable_rule(aws_client:aws_client(), disable_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_rule_errors(), tuple()}.
disable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_rule(Client, Input, []).

-spec disable_rule(aws_client:aws_client(), disable_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_rule_errors(), tuple()}.
disable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRule">>, Input, Options).

%% @doc Enables the specified rule.
%%
%% If the rule does not exist, the operation fails.
%%
%% When you enable a rule, incoming events might not immediately start
%% matching to a newly
%% enabled rule. Allow a short period of time for changes to take effect.
-spec enable_rule(aws_client:aws_client(), enable_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_rule_errors(), tuple()}.
enable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_rule(Client, Input, []).

-spec enable_rule(aws_client:aws_client(), enable_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_rule_errors(), tuple()}.
enable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRule">>, Input, Options).

%% @doc Retrieves a list of API destination in the account in the current
%% Region.
-spec list_api_destinations(aws_client:aws_client(), list_api_destinations_request()) ->
    {ok, list_api_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_api_destinations_errors(), tuple()}.
list_api_destinations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_api_destinations(Client, Input, []).

-spec list_api_destinations(aws_client:aws_client(), list_api_destinations_request(), proplists:proplist()) ->
    {ok, list_api_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_api_destinations_errors(), tuple()}.
list_api_destinations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApiDestinations">>, Input, Options).

%% @doc Lists your archives.
%%
%% You can either list all the archives or you can provide a prefix to
%% match to the archive names. Filter parameters are exclusive.
-spec list_archives(aws_client:aws_client(), list_archives_request()) ->
    {ok, list_archives_response(), tuple()} |
    {error, any()} |
    {error, list_archives_errors(), tuple()}.
list_archives(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_archives(Client, Input, []).

-spec list_archives(aws_client:aws_client(), list_archives_request(), proplists:proplist()) ->
    {ok, list_archives_response(), tuple()} |
    {error, any()} |
    {error, list_archives_errors(), tuple()}.
list_archives(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArchives">>, Input, Options).

%% @doc Retrieves a list of connections from the account.
-spec list_connections(aws_client:aws_client(), list_connections_request()) ->
    {ok, list_connections_response(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).

-spec list_connections(aws_client:aws_client(), list_connections_request(), proplists:proplist()) ->
    {ok, list_connections_response(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc List the global endpoints associated with this account.
%%
%% For more information about global
%% endpoints, see Making applications
%% Regional-fault tolerant with global endpoints and event replication:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html
%% in the
%%
%% Amazon EventBridge User Guide
%% .
-spec list_endpoints(aws_client:aws_client(), list_endpoints_request()) ->
    {ok, list_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints(Client, Input, []).

-spec list_endpoints(aws_client:aws_client(), list_endpoints_request(), proplists:proplist()) ->
    {ok, list_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpoints">>, Input, Options).

%% @doc Lists all the event buses in your account, including the default
%% event bus, custom event
%% buses, and partner event buses.
-spec list_event_buses(aws_client:aws_client(), list_event_buses_request()) ->
    {ok, list_event_buses_response(), tuple()} |
    {error, any()} |
    {error, list_event_buses_errors(), tuple()}.
list_event_buses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_buses(Client, Input, []).

-spec list_event_buses(aws_client:aws_client(), list_event_buses_request(), proplists:proplist()) ->
    {ok, list_event_buses_response(), tuple()} |
    {error, any()} |
    {error, list_event_buses_errors(), tuple()}.
list_event_buses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventBuses">>, Input, Options).

%% @doc You can use this to see all the partner event sources that have been
%% shared with your
%% Amazon Web Services account.
%%
%% For more information about partner event sources, see CreateEventBus:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html.
-spec list_event_sources(aws_client:aws_client(), list_event_sources_request()) ->
    {ok, list_event_sources_response(), tuple()} |
    {error, any()} |
    {error, list_event_sources_errors(), tuple()}.
list_event_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_sources(Client, Input, []).

-spec list_event_sources(aws_client:aws_client(), list_event_sources_request(), proplists:proplist()) ->
    {ok, list_event_sources_response(), tuple()} |
    {error, any()} |
    {error, list_event_sources_errors(), tuple()}.
list_event_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventSources">>, Input, Options).

%% @doc An SaaS partner can use this operation to display the Amazon Web
%% Services account ID that a
%% particular partner event source name is associated with.
%%
%% This operation is not used by Amazon Web Services customers.
-spec list_partner_event_source_accounts(aws_client:aws_client(), list_partner_event_source_accounts_request()) ->
    {ok, list_partner_event_source_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_partner_event_source_accounts_errors(), tuple()}.
list_partner_event_source_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_event_source_accounts(Client, Input, []).

-spec list_partner_event_source_accounts(aws_client:aws_client(), list_partner_event_source_accounts_request(), proplists:proplist()) ->
    {ok, list_partner_event_source_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_partner_event_source_accounts_errors(), tuple()}.
list_partner_event_source_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerEventSourceAccounts">>, Input, Options).

%% @doc An SaaS partner can use this operation to list all the partner event
%% source names that
%% they have created.
%%
%% This operation is not used by Amazon Web Services customers.
-spec list_partner_event_sources(aws_client:aws_client(), list_partner_event_sources_request()) ->
    {ok, list_partner_event_sources_response(), tuple()} |
    {error, any()} |
    {error, list_partner_event_sources_errors(), tuple()}.
list_partner_event_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_event_sources(Client, Input, []).

-spec list_partner_event_sources(aws_client:aws_client(), list_partner_event_sources_request(), proplists:proplist()) ->
    {ok, list_partner_event_sources_response(), tuple()} |
    {error, any()} |
    {error, list_partner_event_sources_errors(), tuple()}.
list_partner_event_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerEventSources">>, Input, Options).

%% @doc Lists your replays.
%%
%% You can either list all the replays or you can provide a prefix to
%% match to the replay names. Filter parameters are exclusive.
-spec list_replays(aws_client:aws_client(), list_replays_request()) ->
    {ok, list_replays_response(), tuple()} |
    {error, any()} |
    {error, list_replays_errors(), tuple()}.
list_replays(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_replays(Client, Input, []).

-spec list_replays(aws_client:aws_client(), list_replays_request(), proplists:proplist()) ->
    {ok, list_replays_response(), tuple()} |
    {error, any()} |
    {error, list_replays_errors(), tuple()}.
list_replays(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReplays">>, Input, Options).

%% @doc Lists the rules for the specified target.
%%
%% You can see which of the rules in Amazon
%% EventBridge can invoke a specific target in your account.
%%
%% The maximum number of results per page for requests is 100.
-spec list_rule_names_by_target(aws_client:aws_client(), list_rule_names_by_target_request()) ->
    {ok, list_rule_names_by_target_response(), tuple()} |
    {error, any()} |
    {error, list_rule_names_by_target_errors(), tuple()}.
list_rule_names_by_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_names_by_target(Client, Input, []).

-spec list_rule_names_by_target(aws_client:aws_client(), list_rule_names_by_target_request(), proplists:proplist()) ->
    {ok, list_rule_names_by_target_response(), tuple()} |
    {error, any()} |
    {error, list_rule_names_by_target_errors(), tuple()}.
list_rule_names_by_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleNamesByTarget">>, Input, Options).

%% @doc Lists your Amazon EventBridge rules.
%%
%% You can either list all the rules or you can
%% provide a prefix to match to the rule names.
%%
%% The maximum number of results per page for requests is 100.
%%
%% ListRules does not list the targets of a rule. To see the targets
%% associated with a rule,
%% use ListTargetsByRule:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html.
-spec list_rules(aws_client:aws_client(), list_rules_request()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).

-spec list_rules(aws_client:aws_client(), list_rules_request(), proplists:proplist()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc Displays the tags associated with an EventBridge resource.
%%
%% In EventBridge, rules and event
%% buses can be tagged.
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

%% @doc Lists the targets assigned to the specified rule.
%%
%% The maximum number of results per page for requests is 100.
-spec list_targets_by_rule(aws_client:aws_client(), list_targets_by_rule_request()) ->
    {ok, list_targets_by_rule_response(), tuple()} |
    {error, any()} |
    {error, list_targets_by_rule_errors(), tuple()}.
list_targets_by_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targets_by_rule(Client, Input, []).

-spec list_targets_by_rule(aws_client:aws_client(), list_targets_by_rule_request(), proplists:proplist()) ->
    {ok, list_targets_by_rule_response(), tuple()} |
    {error, any()} |
    {error, list_targets_by_rule_errors(), tuple()}.
list_targets_by_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetsByRule">>, Input, Options).

%% @doc Sends custom events to Amazon EventBridge so that they can be matched
%% to rules.
%%
%% You can batch multiple event entries into one request for efficiency.
%% However, the total entry size must be less than 256KB. You can calculate
%% the entry size before you send the events.
%% For more information, see Calculating PutEvents event entry
%% size:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-putevents.html#eb-putevent-size
%% in the
%% Amazon EventBridge User Guide
%% .
%%
%% PutEvents accepts the data in JSON format. For the JSON number (integer)
%% data type, the
%% constraints are: a minimum value of -9,223,372,036,854,775,808 and a
%% maximum value of
%% 9,223,372,036,854,775,807.
%%
%% PutEvents will only process nested JSON up to 1000 levels deep.
-spec put_events(aws_client:aws_client(), put_events_request()) ->
    {ok, put_events_response(), tuple()} |
    {error, any()} |
    {error, put_events_errors(), tuple()}.
put_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_events(Client, Input, []).

-spec put_events(aws_client:aws_client(), put_events_request(), proplists:proplist()) ->
    {ok, put_events_response(), tuple()} |
    {error, any()} |
    {error, put_events_errors(), tuple()}.
put_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvents">>, Input, Options).

%% @doc This is used by SaaS partners to write events to a customer's
%% partner event bus.
%%
%% Amazon Web Services customers do not use this operation.
%%
%% For information on calculating event batch size, see Calculating
%% EventBridge PutEvents event
%% entry size:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-putevent-size.html
%% in the EventBridge User Guide.
-spec put_partner_events(aws_client:aws_client(), put_partner_events_request()) ->
    {ok, put_partner_events_response(), tuple()} |
    {error, any()} |
    {error, put_partner_events_errors(), tuple()}.
put_partner_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_partner_events(Client, Input, []).

-spec put_partner_events(aws_client:aws_client(), put_partner_events_request(), proplists:proplist()) ->
    {ok, put_partner_events_response(), tuple()} |
    {error, any()} |
    {error, put_partner_events_errors(), tuple()}.
put_partner_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPartnerEvents">>, Input, Options).

%% @doc Running `PutPermission' permits the specified Amazon Web Services
%% account or Amazon Web Services organization
%% to put events to the specified event bus.
%%
%% Amazon EventBridge rules in your account are triggered by these events
%% arriving to an event bus in your
%% account.
%%
%% For another account to send events to your account, that external account
%% must have an
%% EventBridge rule with your account's event bus as a target.
%%
%% To enable multiple Amazon Web Services accounts to put events to your
%% event bus, run
%% `PutPermission' once for each of these accounts. Or, if all the
%% accounts are
%% members of the same Amazon Web Services organization, you can run
%% `PutPermission'
%% once specifying `Principal' as &quot;*&quot; and specifying the Amazon
%% Web Services
%% organization ID in `Condition', to grant permissions to all accounts
%% in that
%% organization.
%%
%% If you grant permissions using an organization, then accounts in that
%% organization must
%% specify a `RoleArn' with proper permissions when they use
%% `PutTarget' to
%% add your account's event bus as a target. For more information, see
%% Sending and
%% Receiving Events Between Amazon Web Services Accounts:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html
%% in the Amazon EventBridge User Guide.
%%
%% The permission policy on the event bus cannot exceed 10 KB in size.
-spec put_permission(aws_client:aws_client(), put_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_permission_errors(), tuple()}.
put_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission(Client, Input, []).

-spec put_permission(aws_client:aws_client(), put_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_permission_errors(), tuple()}.
put_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermission">>, Input, Options).

%% @doc Creates or updates the specified rule.
%%
%% Rules are enabled by default, or based on value of
%% the state. You can disable a rule using DisableRule:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DisableRule.html.
%%
%% A single rule watches for events from a single event bus. Events generated
%% by Amazon Web Services services go to your account's default event
%% bus. Events generated by SaaS partner
%% services or applications go to the matching partner event bus. If you have
%% custom applications
%% or services, you can specify whether their events go to your default event
%% bus or a custom
%% event bus that you have created. For more information, see CreateEventBus:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html.
%%
%% If you are updating an existing rule, the rule is replaced with what you
%% specify in this
%% `PutRule' command. If you omit arguments in `PutRule', the old
%% values
%% for those arguments are not kept. Instead, they are replaced with null
%% values.
%%
%% When you create or update a rule, incoming events might not immediately
%% start matching to
%% new or updated rules. Allow a short period of time for changes to take
%% effect.
%%
%% A rule must contain at least an EventPattern or ScheduleExpression. Rules
%% with
%% EventPatterns are triggered when a matching event is observed. Rules with
%% ScheduleExpressions
%% self-trigger based on the given schedule. A rule can have both an
%% EventPattern and a
%% ScheduleExpression, in which case the rule triggers on matching events as
%% well as on a
%% schedule.
%%
%% When you initially create a rule, you can optionally assign one or more
%% tags to the rule.
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user
%% permissions, by granting a user permission to access or change only rules
%% with certain tag
%% values. To use the `PutRule' operation and assign tags, you must have
%% both the
%% `events:PutRule' and `events:TagResource' permissions.
%%
%% If you are updating an existing rule, any tags you specify in the
%% `PutRule'
%% operation are ignored. To update the tags of an existing rule, use
%% TagResource:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_TagResource.html
%% and UntagResource:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UntagResource.html.
%%
%% Most services in Amazon Web Services treat : or / as the same character in
%% Amazon Resource
%% Names (ARNs). However, EventBridge uses an exact match in event patterns
%% and rules. Be sure to
%% use the correct ARN characters when creating event patterns so that they
%% match the ARN syntax
%% in the event you want to match.
%%
%% In EventBridge, it is possible to create rules that lead to infinite
%% loops, where a rule
%% is fired repeatedly. For example, a rule might detect that ACLs have
%% changed on an S3 bucket,
%% and trigger software to change them to the desired state. If the rule is
%% not written
%% carefully, the subsequent change to the ACLs fires the rule again,
%% creating an infinite
%% loop.
%%
%% To prevent this, write the rules so that the triggered actions do not
%% re-fire the same
%% rule. For example, your rule could fire only if ACLs are found to be in a
%% bad state, instead
%% of after any change.
%%
%% An infinite loop can quickly cause higher than expected charges. We
%% recommend that you use
%% budgeting, which alerts you when charges exceed your specified limit. For
%% more information,
%% see Managing Your Costs with
%% Budgets:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html.
%%
%% To create a rule that filters for management events from Amazon Web
%% Services services, see
%% Receiving read-only management events from Amazon Web Services services:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event-cloudtrail.html#eb-service-event-cloudtrail-management
%% in the
%% EventBridge User Guide.
-spec put_rule(aws_client:aws_client(), put_rule_request()) ->
    {ok, put_rule_response(), tuple()} |
    {error, any()} |
    {error, put_rule_errors(), tuple()}.
put_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_rule(Client, Input, []).

-spec put_rule(aws_client:aws_client(), put_rule_request(), proplists:proplist()) ->
    {ok, put_rule_response(), tuple()} |
    {error, any()} |
    {error, put_rule_errors(), tuple()}.
put_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRule">>, Input, Options).

%% @doc Adds the specified targets to the specified rule, or updates the
%% targets if they are
%% already associated with the rule.
%%
%% Targets are the resources that are invoked when a rule is triggered.
%%
%% The maximum number of entries per request is 10.
%%
%% Each rule can have up to five (5) targets associated with it at one time.
%%
%% For a list of services you can configure as targets for events, see
%% EventBridge targets:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-targets.html
%% in the
%% Amazon EventBridge User Guide
%% .
%%
%% Creating rules with built-in targets is supported only in the Amazon Web
%% Services Management Console. The
%% built-in targets are:
%%
%% `Amazon EBS CreateSnapshot API call'
%%
%% `Amazon EC2 RebootInstances API call'
%%
%% `Amazon EC2 StopInstances API call'
%%
%% `Amazon EC2 TerminateInstances API call'
%%
%% For some target types, `PutTargets' provides target-specific
%% parameters. If the
%% target is a Kinesis data stream, you can optionally specify which shard
%% the event
%% goes to by using the `KinesisParameters' argument. To invoke a command
%% on multiple
%% EC2 instances with one rule, you can use the `RunCommandParameters'
%% field.
%%
%% To be able to make API calls against the resources that you own, Amazon
%% EventBridge
%% needs the appropriate permissions:
%%
%% For Lambda and Amazon SNS resources, EventBridge relies
%% on resource-based policies.
%%
%% For EC2 instances, Kinesis Data Streams, Step Functions state machines and
%% API Gateway APIs, EventBridge relies on IAM roles that you specify in the
%% `RoleARN' argument in `PutTargets'.
%%
%% For more information, see Authentication
%% and Access Control:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html
%% in the
%% Amazon EventBridge User Guide
%% .
%%
%% If another Amazon Web Services account is in the same region and has
%% granted you permission
%% (using `PutPermission'), you can send events to that account. Set that
%% account's
%% event bus as a target of the rules in your account. To send the matched
%% events to the other
%% account, specify that account's event bus as the `Arn' value when
%% you run
%% `PutTargets'. If your account sends events to another account, your
%% account is
%% charged for each sent event. Each event sent to another account is charged
%% as a custom event.
%% The account receiving the event is not charged. For more information, see
%% Amazon EventBridge Pricing: http://aws.amazon.com/eventbridge/pricing/.
%%
%% `Input', `InputPath', and `InputTransformer' are not
%% available with `PutTarget' if the target is an event bus of a
%% different Amazon Web Services account.
%%
%% If you are setting the event bus of another account as the target, and
%% that account
%% granted permission to your account through an organization instead of
%% directly by the account
%% ID, then you must specify a `RoleArn' with proper permissions in the
%% `Target' structure. For more information, see Sending and
%% Receiving Events Between Amazon Web Services Accounts:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html
%% in the Amazon EventBridge User Guide.
%%
%% If you have an IAM role on a cross-account event bus target, a
%% `PutTargets'
%% call without a role on the same target (same `Id' and `Arn') will
%% not
%% remove the role.
%%
%% For more information about enabling cross-account events, see
%% PutPermission:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html.
%%
%% Input, InputPath, and
%% InputTransformer are mutually exclusive and optional
%% parameters of a target. When a rule is triggered due to a matched event:
%%
%% If none of the following arguments are specified for a target, then the
%% entire event
%% is passed to the target in JSON format (unless the target is Amazon EC2
%% Run Command or
%% Amazon ECS task, in which case nothing from the event is passed to the
%% target).
%%
%% If Input is specified in the form of valid JSON, then
%% the matched event is overridden with this constant.
%%
%% If InputPath is specified in the form of JSONPath
%% (for example, `$.detail'), then only the part of the event specified
%% in the
%% path is passed to the target (for example, only the detail part of the
%% event is
%% passed).
%%
%% If InputTransformer is specified, then one or more
%% specified JSONPaths are extracted from the event and used as values in a
%% template that you
%% specify as the input to the target.
%%
%% When you specify `InputPath' or `InputTransformer', you must use
%% JSON dot notation, not bracket notation.
%%
%% When you add targets to a rule and the associated rule triggers soon
%% after, new or updated
%% targets might not be immediately invoked. Allow a short period of time for
%% changes to take
%% effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that
%% happens, `FailedEntryCount' is non-zero in the response and each entry
%% in
%% `FailedEntries' provides the ID of the failed target and the error
%% code.
-spec put_targets(aws_client:aws_client(), put_targets_request()) ->
    {ok, put_targets_response(), tuple()} |
    {error, any()} |
    {error, put_targets_errors(), tuple()}.
put_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_targets(Client, Input, []).

-spec put_targets(aws_client:aws_client(), put_targets_request(), proplists:proplist()) ->
    {ok, put_targets_response(), tuple()} |
    {error, any()} |
    {error, put_targets_errors(), tuple()}.
put_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutTargets">>, Input, Options).

%% @doc Revokes the permission of another Amazon Web Services account to be
%% able to put events to
%% the specified event bus.
%%
%% Specify the account to revoke by the `StatementId' value
%% that you associated with the account when you granted it permission with
%% `PutPermission'. You can find the `StatementId' by using
%% DescribeEventBus:
%% https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventBus.html.
-spec remove_permission(aws_client:aws_client(), remove_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).

-spec remove_permission(aws_client:aws_client(), remove_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Removes the specified targets from the specified rule.
%%
%% When the rule is triggered, those
%% targets are no longer be invoked.
%%
%% A successful execution of `RemoveTargets' doesn't guarantee all
%% targets are
%% removed from the rule, it means that the target(s) listed in the request
%% are removed.
%%
%% When you remove a target, when the associated rule triggers, removed
%% targets might
%% continue to be invoked. Allow a short period of time for changes to take
%% effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that
%% happens, `FailedEntryCount' is non-zero in the response and each entry
%% in
%% `FailedEntries' provides the ID of the failed target and the error
%% code.
%%
%% The maximum number of entries per request is 10.
-spec remove_targets(aws_client:aws_client(), remove_targets_request()) ->
    {ok, remove_targets_response(), tuple()} |
    {error, any()} |
    {error, remove_targets_errors(), tuple()}.
remove_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_targets(Client, Input, []).

-spec remove_targets(aws_client:aws_client(), remove_targets_request(), proplists:proplist()) ->
    {ok, remove_targets_response(), tuple()} |
    {error, any()} |
    {error, remove_targets_errors(), tuple()}.
remove_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTargets">>, Input, Options).

%% @doc Starts the specified replay.
%%
%% Events are not necessarily replayed in the exact same order
%% that they were added to the archive. A replay processes events to replay
%% based on the time in
%% the event, and replays them using 1 minute intervals. If you specify an
%% `EventStartTime' and an `EventEndTime' that covers a 20 minute
%% time
%% range, the events are replayed from the first minute of that 20 minute
%% range first. Then the
%% events from the second minute are replayed. You can use
%% `DescribeReplay' to
%% determine the progress of a replay. The value returned for
%% `EventLastReplayedTime'
%% indicates the time within the specified time range associated with the
%% last event
%% replayed.
-spec start_replay(aws_client:aws_client(), start_replay_request()) ->
    {ok, start_replay_response(), tuple()} |
    {error, any()} |
    {error, start_replay_errors(), tuple()}.
start_replay(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replay(Client, Input, []).

-spec start_replay(aws_client:aws_client(), start_replay_request(), proplists:proplist()) ->
    {ok, start_replay_response(), tuple()} |
    {error, any()} |
    {error, start_replay_errors(), tuple()}.
start_replay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplay">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% EventBridge resource.
%%
%% Tags can
%% help you organize and categorize your resources. You can also use them to
%% scope user
%% permissions by granting a user permission to access or change only
%% resources with certain tag
%% values. In EventBridge, rules and event buses can be tagged.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as
%% strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If
%% you specify a new tag key, this tag is appended to the list of tags
%% associated with the
%% resource. If you specify a tag key that is already associated with the
%% resource, the new tag
%% value that you specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
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

%% @doc Tests whether the specified event pattern matches the provided event.
%%
%% Most services in Amazon Web Services treat : or / as the same character in
%% Amazon Resource
%% Names (ARNs). However, EventBridge uses an exact match in event patterns
%% and rules. Be
%% sure to use the correct ARN characters when creating event patterns so
%% that they match the ARN
%% syntax in the event you want to match.
-spec test_event_pattern(aws_client:aws_client(), test_event_pattern_request()) ->
    {ok, test_event_pattern_response(), tuple()} |
    {error, any()} |
    {error, test_event_pattern_errors(), tuple()}.
test_event_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_event_pattern(Client, Input, []).

-spec test_event_pattern(aws_client:aws_client(), test_event_pattern_request(), proplists:proplist()) ->
    {ok, test_event_pattern_response(), tuple()} |
    {error, any()} |
    {error, test_event_pattern_errors(), tuple()}.
test_event_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestEventPattern">>, Input, Options).

%% @doc Removes one or more tags from the specified EventBridge resource.
%%
%% In Amazon EventBridge, rules and event buses can be tagged.
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

%% @doc Updates an API destination.
-spec update_api_destination(aws_client:aws_client(), update_api_destination_request()) ->
    {ok, update_api_destination_response(), tuple()} |
    {error, any()} |
    {error, update_api_destination_errors(), tuple()}.
update_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_api_destination(Client, Input, []).

-spec update_api_destination(aws_client:aws_client(), update_api_destination_request(), proplists:proplist()) ->
    {ok, update_api_destination_response(), tuple()} |
    {error, any()} |
    {error, update_api_destination_errors(), tuple()}.
update_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApiDestination">>, Input, Options).

%% @doc Updates the specified archive.
-spec update_archive(aws_client:aws_client(), update_archive_request()) ->
    {ok, update_archive_response(), tuple()} |
    {error, any()} |
    {error, update_archive_errors(), tuple()}.
update_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_archive(Client, Input, []).

-spec update_archive(aws_client:aws_client(), update_archive_request(), proplists:proplist()) ->
    {ok, update_archive_response(), tuple()} |
    {error, any()} |
    {error, update_archive_errors(), tuple()}.
update_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateArchive">>, Input, Options).

%% @doc Updates settings for a connection.
-spec update_connection(aws_client:aws_client(), update_connection_request()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).

-spec update_connection(aws_client:aws_client(), update_connection_request(), proplists:proplist()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

%% @doc Update an existing endpoint.
%%
%% For more information about global endpoints, see Making
%% applications Regional-fault tolerant with global endpoints and event
%% replication:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html
%% in
%% the
%% Amazon EventBridge User Guide
%% .
-spec update_endpoint(aws_client:aws_client(), update_endpoint_request()) ->
    {ok, update_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint(Client, Input, []).

-spec update_endpoint(aws_client:aws_client(), update_endpoint_request(), proplists:proplist()) ->
    {ok, update_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpoint">>, Input, Options).

%% @doc Updates the specified event bus.
-spec update_event_bus(aws_client:aws_client(), update_event_bus_request()) ->
    {ok, update_event_bus_response(), tuple()} |
    {error, any()} |
    {error, update_event_bus_errors(), tuple()}.
update_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_bus(Client, Input, []).

-spec update_event_bus(aws_client:aws_client(), update_event_bus_request(), proplists:proplist()) ->
    {ok, update_event_bus_response(), tuple()} |
    {error, any()} |
    {error, update_event_bus_errors(), tuple()}.
update_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventBus">>, Input, Options).

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
    Client1 = Client#{service => <<"events">>},
    Host = build_host(<<"events">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSEvents.", Action/binary>>}
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
