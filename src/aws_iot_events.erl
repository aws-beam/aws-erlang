%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Events monitors your equipment or device fleets for failures
%% or changes in operation, and
%% triggers actions when such events occur.
%%
%% You can use AWS IoT Events API operations to create, read,
%% update, and delete inputs and detector models, and to list their versions.
-module(aws_iot_events).

-export([create_alarm_model/2,
         create_alarm_model/3,
         create_detector_model/2,
         create_detector_model/3,
         create_input/2,
         create_input/3,
         delete_alarm_model/3,
         delete_alarm_model/4,
         delete_detector_model/3,
         delete_detector_model/4,
         delete_input/3,
         delete_input/4,
         describe_alarm_model/2,
         describe_alarm_model/4,
         describe_alarm_model/5,
         describe_detector_model/2,
         describe_detector_model/4,
         describe_detector_model/5,
         describe_detector_model_analysis/2,
         describe_detector_model_analysis/4,
         describe_detector_model_analysis/5,
         describe_input/2,
         describe_input/4,
         describe_input/5,
         describe_logging_options/1,
         describe_logging_options/3,
         describe_logging_options/4,
         get_detector_model_analysis_results/2,
         get_detector_model_analysis_results/4,
         get_detector_model_analysis_results/5,
         list_alarm_model_versions/2,
         list_alarm_model_versions/4,
         list_alarm_model_versions/5,
         list_alarm_models/1,
         list_alarm_models/3,
         list_alarm_models/4,
         list_detector_model_versions/2,
         list_detector_model_versions/4,
         list_detector_model_versions/5,
         list_detector_models/1,
         list_detector_models/3,
         list_detector_models/4,
         list_input_routings/2,
         list_input_routings/3,
         list_inputs/1,
         list_inputs/3,
         list_inputs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_logging_options/2,
         put_logging_options/3,
         start_detector_model_analysis/2,
         start_detector_model_analysis/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_alarm_model/3,
         update_alarm_model/4,
         update_detector_model/3,
         update_detector_model/4,
         update_input/3,
         update_input/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_detector_model_analysis_results_response() :: #{
%%   <<"analysisResults">> => list(analysis_result()),
%%   <<"nextToken">> => string()
%% }
-type get_detector_model_analysis_results_response() :: #{binary() => any()}.


%% Example:
%% state() :: #{
%%   <<"onEnter">> => on_enter_lifecycle(),
%%   <<"onExit">> => on_exit_lifecycle(),
%%   <<"onInput">> => on_input_lifecycle(),
%%   <<"stateName">> => string()
%% }
-type state() :: #{binary() => any()}.


%% Example:
%% analysis_result() :: #{
%%   <<"level">> => list(any()),
%%   <<"locations">> => list(analysis_result_location()),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type analysis_result() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% firehose_action() :: #{
%%   <<"deliveryStreamName">> => string(),
%%   <<"payload">> => payload(),
%%   <<"separator">> => string()
%% }
-type firehose_action() :: #{binary() => any()}.

%% Example:
%% delete_alarm_model_request() :: #{}
-type delete_alarm_model_request() :: #{}.


%% Example:
%% payload() :: #{
%%   <<"contentExpression">> => string(),
%%   <<"type">> => list(any())
%% }
-type payload() :: #{binary() => any()}.

%% Example:
%% describe_input_request() :: #{}
-type describe_input_request() :: #{}.


%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.


%% Example:
%% describe_detector_model_analysis_response() :: #{
%%   <<"status">> => list(any())
%% }
-type describe_detector_model_analysis_response() :: #{binary() => any()}.


%% Example:
%% input_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"inputArn">> => string(),
%%   <<"inputDescription">> => string(),
%%   <<"inputName">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type input_summary() :: #{binary() => any()}.


%% Example:
%% set_timer_action() :: #{
%%   <<"durationExpression">> => string(),
%%   <<"seconds">> => integer(),
%%   <<"timerName">> => string()
%% }
-type set_timer_action() :: #{binary() => any()}.


%% Example:
%% start_detector_model_analysis_request() :: #{
%%   <<"detectorModelDefinition">> := detector_model_definition()
%% }
-type start_detector_model_analysis_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% alarm_event_actions() :: #{
%%   <<"alarmActions">> => list(alarm_action())
%% }
-type alarm_event_actions() :: #{binary() => any()}.


%% Example:
%% create_detector_model_response() :: #{
%%   <<"detectorModelConfiguration">> => detector_model_configuration()
%% }
-type create_detector_model_response() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% dynamo_dbv2_action() :: #{
%%   <<"payload">> => payload(),
%%   <<"tableName">> => string()
%% }
-type dynamo_dbv2_action() :: #{binary() => any()}.


%% Example:
%% asset_property_value() :: #{
%%   <<"quality">> => string(),
%%   <<"timestamp">> => asset_property_timestamp(),
%%   <<"value">> => asset_property_variant()
%% }
-type asset_property_value() :: #{binary() => any()}.


%% Example:
%% update_alarm_model_request() :: #{
%%   <<"alarmCapabilities">> => alarm_capabilities(),
%%   <<"alarmEventActions">> => alarm_event_actions(),
%%   <<"alarmModelDescription">> => string(),
%%   <<"alarmNotification">> => alarm_notification(),
%%   <<"alarmRule">> := alarm_rule(),
%%   <<"roleArn">> := string(),
%%   <<"severity">> => integer()
%% }
-type update_alarm_model_request() :: #{binary() => any()}.


%% Example:
%% update_detector_model_request() :: #{
%%   <<"detectorModelDefinition">> := detector_model_definition(),
%%   <<"detectorModelDescription">> => string(),
%%   <<"evaluationMethod">> => list(any()),
%%   <<"roleArn">> := string()
%% }
-type update_detector_model_request() :: #{binary() => any()}.


%% Example:
%% detector_model_definition() :: #{
%%   <<"initialStateName">> => string(),
%%   <<"states">> => list(state())
%% }
-type detector_model_definition() :: #{binary() => any()}.


%% Example:
%% notification_target_actions() :: #{
%%   <<"lambdaAction">> => lambda_action()
%% }
-type notification_target_actions() :: #{binary() => any()}.


%% Example:
%% dynamo_db_action() :: #{
%%   <<"hashKeyField">> => string(),
%%   <<"hashKeyType">> => string(),
%%   <<"hashKeyValue">> => string(),
%%   <<"operation">> => string(),
%%   <<"payload">> => payload(),
%%   <<"payloadField">> => string(),
%%   <<"rangeKeyField">> => string(),
%%   <<"rangeKeyType">> => string(),
%%   <<"rangeKeyValue">> => string(),
%%   <<"tableName">> => string()
%% }
-type dynamo_db_action() :: #{binary() => any()}.


%% Example:
%% alarm_model_summary() :: #{
%%   <<"alarmModelDescription">> => string(),
%%   <<"alarmModelName">> => string(),
%%   <<"creationTime">> => non_neg_integer()
%% }
-type alarm_model_summary() :: #{binary() => any()}.


%% Example:
%% clear_timer_action() :: #{
%%   <<"timerName">> => string()
%% }
-type clear_timer_action() :: #{binary() => any()}.


%% Example:
%% start_detector_model_analysis_response() :: #{
%%   <<"analysisId">> => string()
%% }
-type start_detector_model_analysis_response() :: #{binary() => any()}.


%% Example:
%% email_content() :: #{
%%   <<"additionalMessage">> => string(),
%%   <<"subject">> => string()
%% }
-type email_content() :: #{binary() => any()}.


%% Example:
%% describe_logging_options_response() :: #{
%%   <<"loggingOptions">> => logging_options()
%% }
-type describe_logging_options_response() :: #{binary() => any()}.


%% Example:
%% list_alarm_models_response() :: #{
%%   <<"alarmModelSummaries">> => list(alarm_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_alarm_models_response() :: #{binary() => any()}.


%% Example:
%% s_s_o_identity() :: #{
%%   <<"identityStoreId">> => string(),
%%   <<"userId">> => string()
%% }
-type s_s_o_identity() :: #{binary() => any()}.


%% Example:
%% on_exit_lifecycle() :: #{
%%   <<"events">> => list(event())
%% }
-type on_exit_lifecycle() :: #{binary() => any()}.


%% Example:
%% describe_alarm_model_response() :: #{
%%   <<"alarmCapabilities">> => alarm_capabilities(),
%%   <<"alarmEventActions">> => alarm_event_actions(),
%%   <<"alarmModelArn">> => string(),
%%   <<"alarmModelDescription">> => string(),
%%   <<"alarmModelName">> => string(),
%%   <<"alarmModelVersion">> => string(),
%%   <<"alarmNotification">> => alarm_notification(),
%%   <<"alarmRule">> => alarm_rule(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"key">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"severity">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type describe_alarm_model_response() :: #{binary() => any()}.


%% Example:
%% detector_model() :: #{
%%   <<"detectorModelConfiguration">> => detector_model_configuration(),
%%   <<"detectorModelDefinition">> => detector_model_definition()
%% }
-type detector_model() :: #{binary() => any()}.


%% Example:
%% update_alarm_model_response() :: #{
%%   <<"alarmModelArn">> => string(),
%%   <<"alarmModelVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type update_alarm_model_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% alarm_action() :: #{
%%   <<"dynamoDB">> => dynamo_db_action(),
%%   <<"dynamoDBv2">> => dynamo_dbv2_action(),
%%   <<"firehose">> => firehose_action(),
%%   <<"iotEvents">> => iot_events_action(),
%%   <<"iotSiteWise">> => iot_site_wise_action(),
%%   <<"iotTopicPublish">> => iot_topic_publish_action(),
%%   <<"lambda">> => lambda_action(),
%%   <<"sns">> => s_n_s_topic_publish_action(),
%%   <<"sqs">> => sqs_action()
%% }
-type alarm_action() :: #{binary() => any()}.


%% Example:
%% list_alarm_model_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_alarm_model_versions_request() :: #{binary() => any()}.


%% Example:
%% list_input_routings_request() :: #{
%%   <<"inputIdentifier">> := input_identifier(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_input_routings_request() :: #{binary() => any()}.


%% Example:
%% describe_alarm_model_request() :: #{
%%   <<"alarmModelVersion">> => string()
%% }
-type describe_alarm_model_request() :: #{binary() => any()}.


%% Example:
%% simple_rule() :: #{
%%   <<"comparisonOperator">> => list(any()),
%%   <<"inputProperty">> => string(),
%%   <<"threshold">> => string()
%% }
-type simple_rule() :: #{binary() => any()}.


%% Example:
%% iot_site_wise_input_identifier() :: #{
%%   <<"iotSiteWiseAssetModelPropertyIdentifier">> => iot_site_wise_asset_model_property_identifier()
%% }
-type iot_site_wise_input_identifier() :: #{binary() => any()}.


%% Example:
%% list_detector_models_response() :: #{
%%   <<"detectorModelSummaries">> => list(detector_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_detector_models_response() :: #{binary() => any()}.


%% Example:
%% acknowledge_flow() :: #{
%%   <<"enabled">> => boolean()
%% }
-type acknowledge_flow() :: #{binary() => any()}.


%% Example:
%% alarm_capabilities() :: #{
%%   <<"acknowledgeFlow">> => acknowledge_flow(),
%%   <<"initializationConfiguration">> => initialization_configuration()
%% }
-type alarm_capabilities() :: #{binary() => any()}.


%% Example:
%% update_detector_model_response() :: #{
%%   <<"detectorModelConfiguration">> => detector_model_configuration()
%% }
-type update_detector_model_response() :: #{binary() => any()}.


%% Example:
%% sms_configuration() :: #{
%%   <<"additionalMessage">> => string(),
%%   <<"recipients">> => list(recipient_detail()),
%%   <<"senderId">> => string()
%% }
-type sms_configuration() :: #{binary() => any()}.


%% Example:
%% create_input_response() :: #{
%%   <<"inputConfiguration">> => input_configuration()
%% }
-type create_input_response() :: #{binary() => any()}.


%% Example:
%% create_input_request() :: #{
%%   <<"inputDefinition">> := input_definition(),
%%   <<"inputDescription">> => string(),
%%   <<"inputName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_input_request() :: #{binary() => any()}.


%% Example:
%% set_variable_action() :: #{
%%   <<"value">> => string(),
%%   <<"variableName">> => string()
%% }
-type set_variable_action() :: #{binary() => any()}.


%% Example:
%% list_input_routings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"routedResources">> => list(routed_resource())
%% }
-type list_input_routings_response() :: #{binary() => any()}.


%% Example:
%% input() :: #{
%%   <<"inputConfiguration">> => input_configuration(),
%%   <<"inputDefinition">> => input_definition()
%% }
-type input() :: #{binary() => any()}.

%% Example:
%% delete_input_request() :: #{}
-type delete_input_request() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% detector_model_version_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"detectorModelArn">> => string(),
%%   <<"detectorModelName">> => string(),
%%   <<"detectorModelVersion">> => string(),
%%   <<"evaluationMethod">> => list(any()),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type detector_model_version_summary() :: #{binary() => any()}.


%% Example:
%% update_input_request() :: #{
%%   <<"inputDefinition">> := input_definition(),
%%   <<"inputDescription">> => string()
%% }
-type update_input_request() :: #{binary() => any()}.


%% Example:
%% lambda_action() :: #{
%%   <<"functionArn">> => string(),
%%   <<"payload">> => payload()
%% }
-type lambda_action() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% describe_detector_model_request() :: #{
%%   <<"detectorModelVersion">> => string()
%% }
-type describe_detector_model_request() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% describe_detector_model_response() :: #{
%%   <<"detectorModel">> => detector_model()
%% }
-type describe_detector_model_response() :: #{binary() => any()}.

%% Example:
%% delete_alarm_model_response() :: #{}
-type delete_alarm_model_response() :: #{}.


%% Example:
%% list_inputs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_inputs_request() :: #{binary() => any()}.


%% Example:
%% on_input_lifecycle() :: #{
%%   <<"events">> => list(event()),
%%   <<"transitionEvents">> => list(transition_event())
%% }
-type on_input_lifecycle() :: #{binary() => any()}.

%% Example:
%% delete_detector_model_response() :: #{}
-type delete_detector_model_response() :: #{}.


%% Example:
%% list_alarm_model_versions_response() :: #{
%%   <<"alarmModelVersionSummaries">> => list(alarm_model_version_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_alarm_model_versions_response() :: #{binary() => any()}.


%% Example:
%% describe_input_response() :: #{
%%   <<"input">> => input()
%% }
-type describe_input_response() :: #{binary() => any()}.


%% Example:
%% alarm_rule() :: #{
%%   <<"simpleRule">> => simple_rule()
%% }
-type alarm_rule() :: #{binary() => any()}.


%% Example:
%% list_detector_model_versions_response() :: #{
%%   <<"detectorModelVersionSummaries">> => list(detector_model_version_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_detector_model_versions_response() :: #{binary() => any()}.


%% Example:
%% create_alarm_model_request() :: #{
%%   <<"alarmCapabilities">> => alarm_capabilities(),
%%   <<"alarmEventActions">> => alarm_event_actions(),
%%   <<"alarmModelDescription">> => string(),
%%   <<"alarmModelName">> := string(),
%%   <<"alarmNotification">> => alarm_notification(),
%%   <<"alarmRule">> := alarm_rule(),
%%   <<"key">> => string(),
%%   <<"roleArn">> := string(),
%%   <<"severity">> => integer(),
%%   <<"tags">> => list(tag())
%% }
-type create_alarm_model_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% s_n_s_topic_publish_action() :: #{
%%   <<"payload">> => payload(),
%%   <<"targetArn">> => string()
%% }
-type s_n_s_topic_publish_action() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% input_definition() :: #{
%%   <<"attributes">> => list(attribute())
%% }
-type input_definition() :: #{binary() => any()}.


%% Example:
%% input_configuration() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"inputArn">> => string(),
%%   <<"inputDescription">> => string(),
%%   <<"inputName">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type input_configuration() :: #{binary() => any()}.


%% Example:
%% list_inputs_response() :: #{
%%   <<"inputSummaries">> => list(input_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_inputs_response() :: #{binary() => any()}.


%% Example:
%% input_identifier() :: #{
%%   <<"iotEventsInputIdentifier">> => iot_events_input_identifier(),
%%   <<"iotSiteWiseInputIdentifier">> => iot_site_wise_input_identifier()
%% }
-type input_identifier() :: #{binary() => any()}.


%% Example:
%% on_enter_lifecycle() :: #{
%%   <<"events">> => list(event())
%% }
-type on_enter_lifecycle() :: #{binary() => any()}.


%% Example:
%% list_alarm_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_alarm_models_request() :: #{binary() => any()}.

%% Example:
%% describe_logging_options_request() :: #{}
-type describe_logging_options_request() :: #{}.


%% Example:
%% iot_site_wise_asset_model_property_identifier() :: #{
%%   <<"assetModelId">> => string(),
%%   <<"propertyId">> => string()
%% }
-type iot_site_wise_asset_model_property_identifier() :: #{binary() => any()}.

%% Example:
%% delete_input_response() :: #{}
-type delete_input_response() :: #{}.


%% Example:
%% analysis_result_location() :: #{
%%   <<"path">> => string()
%% }
-type analysis_result_location() :: #{binary() => any()}.


%% Example:
%% asset_property_timestamp() :: #{
%%   <<"offsetInNanos">> => string(),
%%   <<"timeInSeconds">> => string()
%% }
-type asset_property_timestamp() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"actions">> => list(action()),
%%   <<"condition">> => string(),
%%   <<"eventName">> => string()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% iot_events_input_identifier() :: #{
%%   <<"inputName">> => string()
%% }
-type iot_events_input_identifier() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"clearTimer">> => clear_timer_action(),
%%   <<"dynamoDB">> => dynamo_db_action(),
%%   <<"dynamoDBv2">> => dynamo_dbv2_action(),
%%   <<"firehose">> => firehose_action(),
%%   <<"iotEvents">> => iot_events_action(),
%%   <<"iotSiteWise">> => iot_site_wise_action(),
%%   <<"iotTopicPublish">> => iot_topic_publish_action(),
%%   <<"lambda">> => lambda_action(),
%%   <<"resetTimer">> => reset_timer_action(),
%%   <<"setTimer">> => set_timer_action(),
%%   <<"setVariable">> => set_variable_action(),
%%   <<"sns">> => s_n_s_topic_publish_action(),
%%   <<"sqs">> => sqs_action()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% routed_resource() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type routed_resource() :: #{binary() => any()}.


%% Example:
%% get_detector_model_analysis_results_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_detector_model_analysis_results_request() :: #{binary() => any()}.


%% Example:
%% detector_debug_option() :: #{
%%   <<"detectorModelName">> => string(),
%%   <<"keyValue">> => string()
%% }
-type detector_debug_option() :: #{binary() => any()}.


%% Example:
%% detector_model_configuration() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"detectorModelArn">> => string(),
%%   <<"detectorModelDescription">> => string(),
%%   <<"detectorModelName">> => string(),
%%   <<"detectorModelVersion">> => string(),
%%   <<"evaluationMethod">> => list(any()),
%%   <<"key">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type detector_model_configuration() :: #{binary() => any()}.


%% Example:
%% create_detector_model_request() :: #{
%%   <<"detectorModelDefinition">> := detector_model_definition(),
%%   <<"detectorModelDescription">> => string(),
%%   <<"detectorModelName">> := string(),
%%   <<"evaluationMethod">> => list(any()),
%%   <<"key">> => string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_detector_model_request() :: #{binary() => any()}.


%% Example:
%% list_detector_model_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_detector_model_versions_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% put_logging_options_request() :: #{
%%   <<"loggingOptions">> := logging_options()
%% }
-type put_logging_options_request() :: #{binary() => any()}.


%% Example:
%% transition_event() :: #{
%%   <<"actions">> => list(action()),
%%   <<"condition">> => string(),
%%   <<"eventName">> => string(),
%%   <<"nextState">> => string()
%% }
-type transition_event() :: #{binary() => any()}.


%% Example:
%% list_detector_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_detector_models_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% email_recipients() :: #{
%%   <<"to">> => list(recipient_detail())
%% }
-type email_recipients() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% alarm_notification() :: #{
%%   <<"notificationActions">> => list(notification_action())
%% }
-type alarm_notification() :: #{binary() => any()}.


%% Example:
%% reset_timer_action() :: #{
%%   <<"timerName">> => string()
%% }
-type reset_timer_action() :: #{binary() => any()}.


%% Example:
%% iot_topic_publish_action() :: #{
%%   <<"mqttTopic">> => string(),
%%   <<"payload">> => payload()
%% }
-type iot_topic_publish_action() :: #{binary() => any()}.


%% Example:
%% attribute() :: #{
%%   <<"jsonPath">> => string()
%% }
-type attribute() :: #{binary() => any()}.


%% Example:
%% detector_model_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"detectorModelDescription">> => string(),
%%   <<"detectorModelName">> => string()
%% }
-type detector_model_summary() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_input_response() :: #{
%%   <<"inputConfiguration">> => input_configuration()
%% }
-type update_input_response() :: #{binary() => any()}.


%% Example:
%% iot_site_wise_action() :: #{
%%   <<"assetId">> => string(),
%%   <<"entryId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"propertyValue">> => asset_property_value()
%% }
-type iot_site_wise_action() :: #{binary() => any()}.


%% Example:
%% logging_options() :: #{
%%   <<"detectorDebugOptions">> => list(detector_debug_option()),
%%   <<"enabled">> => boolean(),
%%   <<"level">> => list(any()),
%%   <<"roleArn">> => string()
%% }
-type logging_options() :: #{binary() => any()}.


%% Example:
%% notification_action() :: #{
%%   <<"action">> => notification_target_actions(),
%%   <<"emailConfigurations">> => list(email_configuration()),
%%   <<"smsConfigurations">> => list(sms_configuration())
%% }
-type notification_action() :: #{binary() => any()}.


%% Example:
%% asset_property_variant() :: #{
%%   <<"booleanValue">> => string(),
%%   <<"doubleValue">> => string(),
%%   <<"integerValue">> => string(),
%%   <<"stringValue">> => string()
%% }
-type asset_property_variant() :: #{binary() => any()}.


%% Example:
%% create_alarm_model_response() :: #{
%%   <<"alarmModelArn">> => string(),
%%   <<"alarmModelVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type create_alarm_model_response() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% delete_detector_model_request() :: #{}
-type delete_detector_model_request() :: #{}.


%% Example:
%% recipient_detail() :: #{
%%   <<"ssoIdentity">> => s_s_o_identity()
%% }
-type recipient_detail() :: #{binary() => any()}.

%% Example:
%% describe_detector_model_analysis_request() :: #{}
-type describe_detector_model_analysis_request() :: #{}.


%% Example:
%% alarm_model_version_summary() :: #{
%%   <<"alarmModelArn">> => string(),
%%   <<"alarmModelName">> => string(),
%%   <<"alarmModelVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type alarm_model_version_summary() :: #{binary() => any()}.


%% Example:
%% initialization_configuration() :: #{
%%   <<"disabledOnInitialization">> => boolean()
%% }
-type initialization_configuration() :: #{binary() => any()}.


%% Example:
%% email_configuration() :: #{
%%   <<"content">> => email_content(),
%%   <<"from">> => string(),
%%   <<"recipients">> => email_recipients()
%% }
-type email_configuration() :: #{binary() => any()}.


%% Example:
%% sqs_action() :: #{
%%   <<"payload">> => payload(),
%%   <<"queueUrl">> => string(),
%%   <<"useBase64">> => boolean()
%% }
-type sqs_action() :: #{binary() => any()}.


%% Example:
%% iot_events_action() :: #{
%%   <<"inputName">> => string(),
%%   <<"payload">> => payload()
%% }
-type iot_events_action() :: #{binary() => any()}.

-type create_alarm_model_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type create_detector_model_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type create_input_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_alarm_model_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_detector_model_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_input_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type describe_alarm_model_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_detector_model_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_detector_model_analysis_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_input_errors() ::
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
    unsupported_operation_exception() | 
    internal_failure_exception().

-type get_detector_model_analysis_results_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_alarm_model_versions_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_alarm_models_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_detector_model_versions_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_detector_models_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_input_routings_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_inputs_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type put_logging_options_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception() | 
    internal_failure_exception().

-type start_detector_model_analysis_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type update_alarm_model_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type update_detector_model_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type update_input_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an alarm model to monitor an AWS IoT Events input attribute.
%%
%% You can use the alarm to get
%% notified when the value is outside a specified range. For more
%% information, see Create an
%% alarm model:
%% https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html
%% in the AWS IoT Events Developer Guide.
-spec create_alarm_model(aws_client:aws_client(), create_alarm_model_request()) ->
    {ok, create_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, create_alarm_model_errors(), tuple()}.
create_alarm_model(Client, Input) ->
    create_alarm_model(Client, Input, []).

-spec create_alarm_model(aws_client:aws_client(), create_alarm_model_request(), proplists:proplist()) ->
    {ok, create_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, create_alarm_model_errors(), tuple()}.
create_alarm_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarm-models"],
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

%% @doc Creates a detector model.
-spec create_detector_model(aws_client:aws_client(), create_detector_model_request()) ->
    {ok, create_detector_model_response(), tuple()} |
    {error, any()} |
    {error, create_detector_model_errors(), tuple()}.
create_detector_model(Client, Input) ->
    create_detector_model(Client, Input, []).

-spec create_detector_model(aws_client:aws_client(), create_detector_model_request(), proplists:proplist()) ->
    {ok, create_detector_model_response(), tuple()} |
    {error, any()} |
    {error, create_detector_model_errors(), tuple()}.
create_detector_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detector-models"],
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

%% @doc Creates an input.
-spec create_input(aws_client:aws_client(), create_input_request()) ->
    {ok, create_input_response(), tuple()} |
    {error, any()} |
    {error, create_input_errors(), tuple()}.
create_input(Client, Input) ->
    create_input(Client, Input, []).

-spec create_input(aws_client:aws_client(), create_input_request(), proplists:proplist()) ->
    {ok, create_input_response(), tuple()} |
    {error, any()} |
    {error, create_input_errors(), tuple()}.
create_input(Client, Input0, Options0) ->
    Method = post,
    Path = ["/inputs"],
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

%% @doc Deletes an alarm model.
%%
%% Any alarm instances that were created based on this alarm model
%% are also deleted. This action can't be undone.
-spec delete_alarm_model(aws_client:aws_client(), binary() | list(), delete_alarm_model_request()) ->
    {ok, delete_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, delete_alarm_model_errors(), tuple()}.
delete_alarm_model(Client, AlarmModelName, Input) ->
    delete_alarm_model(Client, AlarmModelName, Input, []).

-spec delete_alarm_model(aws_client:aws_client(), binary() | list(), delete_alarm_model_request(), proplists:proplist()) ->
    {ok, delete_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, delete_alarm_model_errors(), tuple()}.
delete_alarm_model(Client, AlarmModelName, Input0, Options0) ->
    Method = delete,
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), ""],
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

%% @doc Deletes a detector model.
%%
%% Any active instances of the detector model are also
%% deleted.
-spec delete_detector_model(aws_client:aws_client(), binary() | list(), delete_detector_model_request()) ->
    {ok, delete_detector_model_response(), tuple()} |
    {error, any()} |
    {error, delete_detector_model_errors(), tuple()}.
delete_detector_model(Client, DetectorModelName, Input) ->
    delete_detector_model(Client, DetectorModelName, Input, []).

-spec delete_detector_model(aws_client:aws_client(), binary() | list(), delete_detector_model_request(), proplists:proplist()) ->
    {ok, delete_detector_model_response(), tuple()} |
    {error, any()} |
    {error, delete_detector_model_errors(), tuple()}.
delete_detector_model(Client, DetectorModelName, Input0, Options0) ->
    Method = delete,
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
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

%% @doc Deletes an input.
-spec delete_input(aws_client:aws_client(), binary() | list(), delete_input_request()) ->
    {ok, delete_input_response(), tuple()} |
    {error, any()} |
    {error, delete_input_errors(), tuple()}.
delete_input(Client, InputName, Input) ->
    delete_input(Client, InputName, Input, []).

-spec delete_input(aws_client:aws_client(), binary() | list(), delete_input_request(), proplists:proplist()) ->
    {ok, delete_input_response(), tuple()} |
    {error, any()} |
    {error, delete_input_errors(), tuple()}.
delete_input(Client, InputName, Input0, Options0) ->
    Method = delete,
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
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

%% @doc Retrieves information about an alarm model.
%%
%% If you don't specify a value for the
%% `alarmModelVersion' parameter, the latest version is returned.
-spec describe_alarm_model(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, describe_alarm_model_errors(), tuple()}.
describe_alarm_model(Client, AlarmModelName)
  when is_map(Client) ->
    describe_alarm_model(Client, AlarmModelName, #{}, #{}).

-spec describe_alarm_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, describe_alarm_model_errors(), tuple()}.
describe_alarm_model(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alarm_model(Client, AlarmModelName, QueryMap, HeadersMap, []).

-spec describe_alarm_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, describe_alarm_model_errors(), tuple()}.
describe_alarm_model(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a detector model.
%%
%% If the `version' parameter is not specified,
%% information about the latest version is returned.
-spec describe_detector_model(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_detector_model_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_model_errors(), tuple()}.
describe_detector_model(Client, DetectorModelName)
  when is_map(Client) ->
    describe_detector_model(Client, DetectorModelName, #{}, #{}).

-spec describe_detector_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_detector_model_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_model_errors(), tuple()}.
describe_detector_model(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detector_model(Client, DetectorModelName, QueryMap, HeadersMap, []).

-spec describe_detector_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_detector_model_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_model_errors(), tuple()}.
describe_detector_model(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves runtime information about a detector model analysis.
%%
%% After AWS IoT Events starts analyzing your detector model, you have up to
%% 24 hours to retrieve the analysis results.
-spec describe_detector_model_analysis(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_detector_model_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_model_analysis_errors(), tuple()}.
describe_detector_model_analysis(Client, AnalysisId)
  when is_map(Client) ->
    describe_detector_model_analysis(Client, AnalysisId, #{}, #{}).

-spec describe_detector_model_analysis(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_detector_model_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_model_analysis_errors(), tuple()}.
describe_detector_model_analysis(Client, AnalysisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detector_model_analysis(Client, AnalysisId, QueryMap, HeadersMap, []).

-spec describe_detector_model_analysis(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_detector_model_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_detector_model_analysis_errors(), tuple()}.
describe_detector_model_analysis(Client, AnalysisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analysis/detector-models/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an input.
-spec describe_input(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_input_response(), tuple()} |
    {error, any()} |
    {error, describe_input_errors(), tuple()}.
describe_input(Client, InputName)
  when is_map(Client) ->
    describe_input(Client, InputName, #{}, #{}).

-spec describe_input(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_input_response(), tuple()} |
    {error, any()} |
    {error, describe_input_errors(), tuple()}.
describe_input(Client, InputName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_input(Client, InputName, QueryMap, HeadersMap, []).

-spec describe_input(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_input_response(), tuple()} |
    {error, any()} |
    {error, describe_input_errors(), tuple()}.
describe_input(Client, InputName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current settings of the AWS IoT Events logging options.
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

%% @doc Retrieves one or more analysis results of the detector model.
%%
%% After AWS IoT Events starts analyzing your detector model, you have up to
%% 24 hours to retrieve the analysis results.
-spec get_detector_model_analysis_results(aws_client:aws_client(), binary() | list()) ->
    {ok, get_detector_model_analysis_results_response(), tuple()} |
    {error, any()} |
    {error, get_detector_model_analysis_results_errors(), tuple()}.
get_detector_model_analysis_results(Client, AnalysisId)
  when is_map(Client) ->
    get_detector_model_analysis_results(Client, AnalysisId, #{}, #{}).

-spec get_detector_model_analysis_results(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_detector_model_analysis_results_response(), tuple()} |
    {error, any()} |
    {error, get_detector_model_analysis_results_errors(), tuple()}.
get_detector_model_analysis_results(Client, AnalysisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_detector_model_analysis_results(Client, AnalysisId, QueryMap, HeadersMap, []).

-spec get_detector_model_analysis_results(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_detector_model_analysis_results_response(), tuple()} |
    {error, any()} |
    {error, get_detector_model_analysis_results_errors(), tuple()}.
get_detector_model_analysis_results(Client, AnalysisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analysis/detector-models/", aws_util:encode_uri(AnalysisId), "/results"],
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

%% @doc Lists all the versions of an alarm model.
%%
%% The operation returns only the metadata
%% associated with each alarm model version.
-spec list_alarm_model_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_alarm_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_model_versions_errors(), tuple()}.
list_alarm_model_versions(Client, AlarmModelName)
  when is_map(Client) ->
    list_alarm_model_versions(Client, AlarmModelName, #{}, #{}).

-spec list_alarm_model_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_alarm_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_model_versions_errors(), tuple()}.
list_alarm_model_versions(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alarm_model_versions(Client, AlarmModelName, QueryMap, HeadersMap, []).

-spec list_alarm_model_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_alarm_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_model_versions_errors(), tuple()}.
list_alarm_model_versions(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), "/versions"],
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

%% @doc Lists the alarm models that you created.
%%
%% The operation returns only the metadata
%% associated with each alarm model.
-spec list_alarm_models(aws_client:aws_client()) ->
    {ok, list_alarm_models_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_models_errors(), tuple()}.
list_alarm_models(Client)
  when is_map(Client) ->
    list_alarm_models(Client, #{}, #{}).

-spec list_alarm_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_alarm_models_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_models_errors(), tuple()}.
list_alarm_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alarm_models(Client, QueryMap, HeadersMap, []).

-spec list_alarm_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_alarm_models_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_models_errors(), tuple()}.
list_alarm_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarm-models"],
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

%% @doc Lists all the versions of a detector model.
%%
%% Only the metadata associated with each
%% detector model version is returned.
-spec list_detector_model_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_detector_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_detector_model_versions_errors(), tuple()}.
list_detector_model_versions(Client, DetectorModelName)
  when is_map(Client) ->
    list_detector_model_versions(Client, DetectorModelName, #{}, #{}).

-spec list_detector_model_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_detector_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_detector_model_versions_errors(), tuple()}.
list_detector_model_versions(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detector_model_versions(Client, DetectorModelName, QueryMap, HeadersMap, []).

-spec list_detector_model_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_detector_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_detector_model_versions_errors(), tuple()}.
list_detector_model_versions(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), "/versions"],
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

%% @doc Lists the detector models you have created.
%%
%% Only the metadata associated with each
%% detector model is returned.
-spec list_detector_models(aws_client:aws_client()) ->
    {ok, list_detector_models_response(), tuple()} |
    {error, any()} |
    {error, list_detector_models_errors(), tuple()}.
list_detector_models(Client)
  when is_map(Client) ->
    list_detector_models(Client, #{}, #{}).

-spec list_detector_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_detector_models_response(), tuple()} |
    {error, any()} |
    {error, list_detector_models_errors(), tuple()}.
list_detector_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detector_models(Client, QueryMap, HeadersMap, []).

-spec list_detector_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_detector_models_response(), tuple()} |
    {error, any()} |
    {error, list_detector_models_errors(), tuple()}.
list_detector_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector-models"],
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

%% @doc
%% Lists one or more input routings.
-spec list_input_routings(aws_client:aws_client(), list_input_routings_request()) ->
    {ok, list_input_routings_response(), tuple()} |
    {error, any()} |
    {error, list_input_routings_errors(), tuple()}.
list_input_routings(Client, Input) ->
    list_input_routings(Client, Input, []).

-spec list_input_routings(aws_client:aws_client(), list_input_routings_request(), proplists:proplist()) ->
    {ok, list_input_routings_response(), tuple()} |
    {error, any()} |
    {error, list_input_routings_errors(), tuple()}.
list_input_routings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/input-routings"],
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

%% @doc Lists the inputs you have created.
-spec list_inputs(aws_client:aws_client()) ->
    {ok, list_inputs_response(), tuple()} |
    {error, any()} |
    {error, list_inputs_errors(), tuple()}.
list_inputs(Client)
  when is_map(Client) ->
    list_inputs(Client, #{}, #{}).

-spec list_inputs(aws_client:aws_client(), map(), map()) ->
    {ok, list_inputs_response(), tuple()} |
    {error, any()} |
    {error, list_inputs_errors(), tuple()}.
list_inputs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_inputs(Client, QueryMap, HeadersMap, []).

-spec list_inputs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_inputs_response(), tuple()} |
    {error, any()} |
    {error, list_inputs_errors(), tuple()}.
list_inputs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/inputs"],
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

%% @doc Lists the tags (metadata) you have assigned to the resource.
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

%% @doc Sets or updates the AWS IoT Events logging options.
%%
%% If you update the value of any `loggingOptions' field, it takes up to
%% one
%% minute for the change to take effect. If you change the policy attached to
%% the role you
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

%% @doc Performs an analysis of your detector model.
%%
%% For more information,
%% see Troubleshooting a detector model:
%% https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html
%% in the AWS IoT Events Developer Guide.
-spec start_detector_model_analysis(aws_client:aws_client(), start_detector_model_analysis_request()) ->
    {ok, start_detector_model_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_detector_model_analysis_errors(), tuple()}.
start_detector_model_analysis(Client, Input) ->
    start_detector_model_analysis(Client, Input, []).

-spec start_detector_model_analysis(aws_client:aws_client(), start_detector_model_analysis_request(), proplists:proplist()) ->
    {ok, start_detector_model_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_detector_model_analysis_errors(), tuple()}.
start_detector_model_analysis(Client, Input0, Options0) ->
    Method = post,
    Path = ["/analysis/detector-models"],
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

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an alarm model.
%%
%% Any alarms that were created based on the previous version are
%% deleted and then created again as new data arrives.
-spec update_alarm_model(aws_client:aws_client(), binary() | list(), update_alarm_model_request()) ->
    {ok, update_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, update_alarm_model_errors(), tuple()}.
update_alarm_model(Client, AlarmModelName, Input) ->
    update_alarm_model(Client, AlarmModelName, Input, []).

-spec update_alarm_model(aws_client:aws_client(), binary() | list(), update_alarm_model_request(), proplists:proplist()) ->
    {ok, update_alarm_model_response(), tuple()} |
    {error, any()} |
    {error, update_alarm_model_errors(), tuple()}.
update_alarm_model(Client, AlarmModelName, Input0, Options0) ->
    Method = post,
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), ""],
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

%% @doc Updates a detector model.
%%
%% Detectors (instances) spawned by the previous version are
%% deleted and then re-created as new inputs arrive.
-spec update_detector_model(aws_client:aws_client(), binary() | list(), update_detector_model_request()) ->
    {ok, update_detector_model_response(), tuple()} |
    {error, any()} |
    {error, update_detector_model_errors(), tuple()}.
update_detector_model(Client, DetectorModelName, Input) ->
    update_detector_model(Client, DetectorModelName, Input, []).

-spec update_detector_model(aws_client:aws_client(), binary() | list(), update_detector_model_request(), proplists:proplist()) ->
    {ok, update_detector_model_response(), tuple()} |
    {error, any()} |
    {error, update_detector_model_errors(), tuple()}.
update_detector_model(Client, DetectorModelName, Input0, Options0) ->
    Method = post,
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
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

%% @doc Updates an input.
-spec update_input(aws_client:aws_client(), binary() | list(), update_input_request()) ->
    {ok, update_input_response(), tuple()} |
    {error, any()} |
    {error, update_input_errors(), tuple()}.
update_input(Client, InputName, Input) ->
    update_input(Client, InputName, Input, []).

-spec update_input(aws_client:aws_client(), binary() | list(), update_input_request(), proplists:proplist()) ->
    {ok, update_input_response(), tuple()} |
    {error, any()} |
    {error, update_input_errors(), tuple()}.
update_input(Client, InputName, Input0, Options0) ->
    Method = put,
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
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
    Client1 = Client#{service => <<"iotevents">>},
    Host = build_host(<<"iotevents">>, Client1),
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
