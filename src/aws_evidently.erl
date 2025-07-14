%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use Amazon CloudWatch Evidently to safely validate new
%% features by serving
%% them to a specified percentage
%% of your users while you roll out the feature.
%%
%% You can monitor the performance of the new feature
%% to help you decide when to ramp up traffic to your users. This helps you
%% reduce risk and identify unintended consequences before you fully launch
%% the feature.
%%
%% You can also conduct A/B experiments to make feature design decisions
%% based on evidence
%% and data. An experiment can test as many as five variations at once.
%% Evidently collects
%% experiment data and analyzes it using statistical methods. It also
%% provides clear
%% recommendations about which variations perform better. You can test both
%% user-facing features
%% and backend features.
-module(aws_evidently).

-export([batch_evaluate_feature/3,
         batch_evaluate_feature/4,
         create_experiment/3,
         create_experiment/4,
         create_feature/3,
         create_feature/4,
         create_launch/3,
         create_launch/4,
         create_project/2,
         create_project/3,
         create_segment/2,
         create_segment/3,
         delete_experiment/4,
         delete_experiment/5,
         delete_feature/4,
         delete_feature/5,
         delete_launch/4,
         delete_launch/5,
         delete_project/3,
         delete_project/4,
         delete_segment/3,
         delete_segment/4,
         evaluate_feature/4,
         evaluate_feature/5,
         get_experiment/3,
         get_experiment/5,
         get_experiment/6,
         get_experiment_results/4,
         get_experiment_results/5,
         get_feature/3,
         get_feature/5,
         get_feature/6,
         get_launch/3,
         get_launch/5,
         get_launch/6,
         get_project/2,
         get_project/4,
         get_project/5,
         get_segment/2,
         get_segment/4,
         get_segment/5,
         list_experiments/2,
         list_experiments/4,
         list_experiments/5,
         list_features/2,
         list_features/4,
         list_features/5,
         list_launches/2,
         list_launches/4,
         list_launches/5,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_segment_references/3,
         list_segment_references/5,
         list_segment_references/6,
         list_segments/1,
         list_segments/3,
         list_segments/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_project_events/3,
         put_project_events/4,
         start_experiment/4,
         start_experiment/5,
         start_launch/4,
         start_launch/5,
         stop_experiment/4,
         stop_experiment/5,
         stop_launch/4,
         stop_launch/5,
         tag_resource/3,
         tag_resource/4,
         test_segment_pattern/2,
         test_segment_pattern/3,
         untag_resource/3,
         untag_resource/4,
         update_experiment/4,
         update_experiment/5,
         update_feature/4,
         update_feature/5,
         update_launch/4,
         update_launch/5,
         update_project/3,
         update_project/4,
         update_project_data_delivery/3,
         update_project_data_delivery/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% evaluation_request() :: #{
%%   <<"entityId">> => string(),
%%   <<"evaluationContext">> => string(),
%%   <<"feature">> => string()
%% }
-type evaluation_request() :: #{binary() => any()}.


%% Example:
%% list_experiments_response() :: #{
%%   <<"experiments">> => list(experiment()),
%%   <<"nextToken">> => string()
%% }
-type list_experiments_response() :: #{binary() => any()}.

%% Example:
%% delete_experiment_response() :: #{}
-type delete_experiment_response() :: #{}.


%% Example:
%% treatment_config() :: #{
%%   <<"description">> => string(),
%%   <<"feature">> => string(),
%%   <<"name">> => string(),
%%   <<"variation">> => string()
%% }
-type treatment_config() :: #{binary() => any()}.


%% Example:
%% launch_group() :: #{
%%   <<"description">> => string(),
%%   <<"featureVariations">> => map(),
%%   <<"name">> => string()
%% }
-type launch_group() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_launches_response() :: #{
%%   <<"launches">> => list(launch()),
%%   <<"nextToken">> => string()
%% }
-type list_launches_response() :: #{binary() => any()}.


%% Example:
%% create_feature_request() :: #{
%%   <<"defaultVariation">> => string(),
%%   <<"description">> => string(),
%%   <<"entityOverrides">> => map(),
%%   <<"evaluationStrategy">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"variations">> := list(variation_config())
%% }
-type create_feature_request() :: #{binary() => any()}.


%% Example:
%% create_feature_response() :: #{
%%   <<"feature">> => feature()
%% }
-type create_feature_response() :: #{binary() => any()}.


%% Example:
%% update_project_data_delivery_response() :: #{
%%   <<"project">> := project()
%% }
-type update_project_data_delivery_response() :: #{binary() => any()}.


%% Example:
%% get_experiment_response() :: #{
%%   <<"experiment">> => experiment()
%% }
-type get_experiment_response() :: #{binary() => any()}.


%% Example:
%% test_segment_pattern_request() :: #{
%%   <<"pattern">> := string(),
%%   <<"payload">> := string()
%% }
-type test_segment_pattern_request() :: #{binary() => any()}.


%% Example:
%% feature() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"defaultVariation">> => string(),
%%   <<"description">> => string(),
%%   <<"entityOverrides">> => map(),
%%   <<"evaluationRules">> => list(evaluation_rule()),
%%   <<"evaluationStrategy">> => string(),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"project">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"valueType">> => string(),
%%   <<"variations">> => list(variation())
%% }
-type feature() :: #{binary() => any()}.


%% Example:
%% online_ab_definition() :: #{
%%   <<"controlTreatmentName">> => string(),
%%   <<"treatmentWeights">> => map()
%% }
-type online_ab_definition() :: #{binary() => any()}.


%% Example:
%% scheduled_splits_launch_definition() :: #{
%%   <<"steps">> => list(scheduled_split())
%% }
-type scheduled_splits_launch_definition() :: #{binary() => any()}.


%% Example:
%% project_summary() :: #{
%%   <<"activeExperimentCount">> => [float()],
%%   <<"activeLaunchCount">> => [float()],
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"experimentCount">> => [float()],
%%   <<"featureCount">> => [float()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"launchCount">> => [float()],
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% get_launch_response() :: #{
%%   <<"launch">> => launch()
%% }
-type get_launch_response() :: #{binary() => any()}.

%% Example:
%% get_segment_request() :: #{}
-type get_segment_request() :: #{}.


%% Example:
%% put_project_events_response() :: #{
%%   <<"eventResults">> => list(put_project_events_result_entry()),
%%   <<"failedEventCount">> => [integer()]
%% }
-type put_project_events_response() :: #{binary() => any()}.


%% Example:
%% variation_config() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => list()
%% }
-type variation_config() :: #{binary() => any()}.


%% Example:
%% test_segment_pattern_response() :: #{
%%   <<"match">> := [boolean()]
%% }
-type test_segment_pattern_response() :: #{binary() => any()}.

%% Example:
%% get_project_request() :: #{}
-type get_project_request() :: #{}.


%% Example:
%% list_segment_references_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"referencedBy">> => list(ref_resource())
%% }
-type list_segment_references_response() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_destination() :: #{
%%   <<"logGroup">> => string()
%% }
-type cloud_watch_logs_destination() :: #{binary() => any()}.


%% Example:
%% put_project_events_result_entry() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"eventId">> => string()
%% }
-type put_project_events_result_entry() :: #{binary() => any()}.


%% Example:
%% list_features_response() :: #{
%%   <<"features">> => list(feature_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_features_response() :: #{binary() => any()}.


%% Example:
%% metric_definition_config() :: #{
%%   <<"entityIdKey">> => string(),
%%   <<"eventPattern">> => string(),
%%   <<"name">> => string(),
%%   <<"unitLabel">> => string(),
%%   <<"valueKey">> => string()
%% }
-type metric_definition_config() :: #{binary() => any()}.


%% Example:
%% create_experiment_response() :: #{
%%   <<"experiment">> := experiment()
%% }
-type create_experiment_response() :: #{binary() => any()}.


%% Example:
%% segment_override() :: #{
%%   <<"evaluationOrder">> => [float()],
%%   <<"segment">> => string(),
%%   <<"weights">> => map()
%% }
-type segment_override() :: #{binary() => any()}.


%% Example:
%% list_launches_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_launches_request() :: #{binary() => any()}.

%% Example:
%% delete_launch_response() :: #{}
-type delete_launch_response() :: #{}.


%% Example:
%% list_features_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_features_request() :: #{binary() => any()}.


%% Example:
%% metric_definition() :: #{
%%   <<"entityIdKey">> => string(),
%%   <<"eventPattern">> => string(),
%%   <<"name">> => string(),
%%   <<"unitLabel">> => string(),
%%   <<"valueKey">> => string()
%% }
-type metric_definition() :: #{binary() => any()}.


%% Example:
%% create_launch_request() :: #{
%%   <<"description">> => string(),
%%   <<"groups">> := list(launch_group_config()),
%%   <<"metricMonitors">> => list(metric_monitor_config()),
%%   <<"name">> := string(),
%%   <<"randomizationSalt">> => string(),
%%   <<"scheduledSplitsConfig">> => scheduled_splits_launch_config(),
%%   <<"tags">> => map()
%% }
-type create_launch_request() :: #{binary() => any()}.


%% Example:
%% update_project_data_delivery_request() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_destination_config(),
%%   <<"s3Destination">> => s3_destination_config()
%% }
-type update_project_data_delivery_request() :: #{binary() => any()}.


%% Example:
%% variation() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => list()
%% }
-type variation() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_project_response() :: #{
%%   <<"project">> := project()
%% }
-type update_project_response() :: #{binary() => any()}.


%% Example:
%% evaluate_feature_response() :: #{
%%   <<"details">> => string(),
%%   <<"reason">> => [string()],
%%   <<"value">> => list(),
%%   <<"variation">> => [string()]
%% }
-type evaluate_feature_response() :: #{binary() => any()}.


%% Example:
%% update_feature_request() :: #{
%%   <<"addOrUpdateVariations">> => list(variation_config()),
%%   <<"defaultVariation">> => string(),
%%   <<"description">> => string(),
%%   <<"entityOverrides">> => map(),
%%   <<"evaluationStrategy">> => string(),
%%   <<"removeVariations">> => list(string())
%% }
-type update_feature_request() :: #{binary() => any()}.


%% Example:
%% segment() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"experimentCount">> => [float()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"launchCount">> => [float()],
%%   <<"name">> => string(),
%%   <<"pattern">> => string(),
%%   <<"tags">> => map()
%% }
-type segment() :: #{binary() => any()}.


%% Example:
%% put_project_events_request() :: #{
%%   <<"events">> := list(event())
%% }
-type put_project_events_request() :: #{binary() => any()}.


%% Example:
%% project_data_delivery_config() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_destination_config(),
%%   <<"s3Destination">> => s3_destination_config()
%% }
-type project_data_delivery_config() :: #{binary() => any()}.


%% Example:
%% create_segment_response() :: #{
%%   <<"segment">> := segment()
%% }
-type create_segment_response() :: #{binary() => any()}.


%% Example:
%% project_app_config_resource() :: #{
%%   <<"applicationId">> => string(),
%%   <<"configurationProfileId">> => string(),
%%   <<"environmentId">> => string()
%% }
-type project_app_config_resource() :: #{binary() => any()}.


%% Example:
%% list_segments_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"segments">> => list(segment())
%% }
-type list_segments_response() :: #{binary() => any()}.


%% Example:
%% evaluate_feature_request() :: #{
%%   <<"entityId">> := string(),
%%   <<"evaluationContext">> => string()
%% }
-type evaluate_feature_request() :: #{binary() => any()}.


%% Example:
%% scheduled_split_config() :: #{
%%   <<"groupWeights">> => map(),
%%   <<"segmentOverrides">> => list(segment_override()),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type scheduled_split_config() :: #{binary() => any()}.


%% Example:
%% create_project_response() :: #{
%%   <<"project">> := project()
%% }
-type create_project_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_experiment_request() :: #{}
-type delete_experiment_request() :: #{}.

%% Example:
%% get_experiment_request() :: #{}
-type get_experiment_request() :: #{}.


%% Example:
%% project() :: #{
%%   <<"activeExperimentCount">> => [float()],
%%   <<"activeLaunchCount">> => [float()],
%%   <<"appConfigResource">> => project_app_config_resource(),
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"dataDelivery">> => project_data_delivery(),
%%   <<"description">> => string(),
%%   <<"experimentCount">> => [float()],
%%   <<"featureCount">> => [float()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"launchCount">> => [float()],
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type project() :: #{binary() => any()}.


%% Example:
%% launch_group_config() :: #{
%%   <<"description">> => string(),
%%   <<"feature">> => string(),
%%   <<"name">> => string(),
%%   <<"variation">> => string()
%% }
-type launch_group_config() :: #{binary() => any()}.


%% Example:
%% metric_monitor() :: #{
%%   <<"metricDefinition">> => metric_definition()
%% }
-type metric_monitor() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_feature_response() :: #{
%%   <<"feature">> := feature()
%% }
-type update_feature_response() :: #{binary() => any()}.


%% Example:
%% metric_goal_config() :: #{
%%   <<"desiredChange">> => string(),
%%   <<"metricDefinition">> => metric_definition_config()
%% }
-type metric_goal_config() :: #{binary() => any()}.


%% Example:
%% list_projects_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(project_summary())
%% }
-type list_projects_response() :: #{binary() => any()}.


%% Example:
%% get_project_response() :: #{
%%   <<"project">> := project()
%% }
-type get_project_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% feature_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"defaultVariation">> => string(),
%%   <<"evaluationRules">> => list(evaluation_rule()),
%%   <<"evaluationStrategy">> => string(),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"project">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type feature_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% experiment_report() :: #{
%%   <<"content">> => string(),
%%   <<"metricName">> => string(),
%%   <<"reportName">> => string(),
%%   <<"treatmentName">> => string()
%% }
-type experiment_report() :: #{binary() => any()}.


%% Example:
%% batch_evaluate_feature_response() :: #{
%%   <<"results">> => list(evaluation_result())
%% }
-type batch_evaluate_feature_response() :: #{binary() => any()}.


%% Example:
%% get_segment_response() :: #{
%%   <<"segment">> := segment()
%% }
-type get_segment_response() :: #{binary() => any()}.


%% Example:
%% ref_resource() :: #{
%%   <<"arn">> => [string()],
%%   <<"endTime">> => [string()],
%%   <<"lastUpdatedOn">> => [string()],
%%   <<"name">> => [string()],
%%   <<"startTime">> => [string()],
%%   <<"status">> => [string()],
%%   <<"type">> => [string()]
%% }
-type ref_resource() :: #{binary() => any()}.


%% Example:
%% scheduled_splits_launch_config() :: #{
%%   <<"steps">> => list(scheduled_split_config())
%% }
-type scheduled_splits_launch_config() :: #{binary() => any()}.


%% Example:
%% create_segment_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"pattern">> := string(),
%%   <<"tags">> => map()
%% }
-type create_segment_request() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_destination_config() :: #{
%%   <<"logGroup">> => string()
%% }
-type cloud_watch_logs_destination_config() :: #{binary() => any()}.


%% Example:
%% s3_destination() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.


%% Example:
%% update_experiment_request() :: #{
%%   <<"description">> => string(),
%%   <<"metricGoals">> => list(metric_goal_config()),
%%   <<"onlineAbConfig">> => online_ab_config(),
%%   <<"randomizationSalt">> => string(),
%%   <<"removeSegment">> => [boolean()],
%%   <<"samplingRate">> => float(),
%%   <<"segment">> => string(),
%%   <<"treatments">> => list(treatment_config())
%% }
-type update_experiment_request() :: #{binary() => any()}.


%% Example:
%% create_experiment_request() :: #{
%%   <<"description">> => string(),
%%   <<"metricGoals">> := list(metric_goal_config()),
%%   <<"name">> := string(),
%%   <<"onlineAbConfig">> => online_ab_config(),
%%   <<"randomizationSalt">> => string(),
%%   <<"samplingRate">> => float(),
%%   <<"segment">> => string(),
%%   <<"tags">> => map(),
%%   <<"treatments">> := list(treatment_config())
%% }
-type create_experiment_request() :: #{binary() => any()}.

%% Example:
%% delete_segment_response() :: #{}
-type delete_segment_response() :: #{}.


%% Example:
%% experiment_results_data() :: #{
%%   <<"metricName">> => string(),
%%   <<"resultStat">> => string(),
%%   <<"treatmentName">> => string(),
%%   <<"values">> => list([float()]())
%% }
-type experiment_results_data() :: #{binary() => any()}.


%% Example:
%% experiment_schedule() :: #{
%%   <<"analysisCompleteTime">> => [non_neg_integer()]
%% }
-type experiment_schedule() :: #{binary() => any()}.


%% Example:
%% evaluation_rule() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type evaluation_rule() :: #{binary() => any()}.


%% Example:
%% experiment_execution() :: #{
%%   <<"endedTime">> => [non_neg_integer()],
%%   <<"startedTime">> => [non_neg_integer()]
%% }
-type experiment_execution() :: #{binary() => any()}.


%% Example:
%% stop_experiment_request() :: #{
%%   <<"desiredState">> => string(),
%%   <<"reason">> => string()
%% }
-type stop_experiment_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_project_response() :: #{}
-type delete_project_response() :: #{}.


%% Example:
%% update_project_request() :: #{
%%   <<"appConfigResource">> => project_app_config_resource_config(),
%%   <<"description">> => string()
%% }
-type update_project_request() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"data">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"type">> => string()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% online_ab_config() :: #{
%%   <<"controlTreatmentName">> => string(),
%%   <<"treatmentWeights">> => map()
%% }
-type online_ab_config() :: #{binary() => any()}.


%% Example:
%% treatment() :: #{
%%   <<"description">> => string(),
%%   <<"featureVariations">> => map(),
%%   <<"name">> => string()
%% }
-type treatment() :: #{binary() => any()}.


%% Example:
%% start_experiment_response() :: #{
%%   <<"startedTime">> => [non_neg_integer()]
%% }
-type start_experiment_response() :: #{binary() => any()}.


%% Example:
%% update_launch_response() :: #{
%%   <<"launch">> := launch()
%% }
-type update_launch_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% project_data_delivery() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_destination(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type project_data_delivery() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% batch_evaluate_feature_request() :: #{
%%   <<"requests">> := list(evaluation_request())
%% }
-type batch_evaluate_feature_request() :: #{binary() => any()}.


%% Example:
%% list_experiments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_experiments_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_project_request() :: #{
%%   <<"appConfigResource">> => project_app_config_resource_config(),
%%   <<"dataDelivery">> => project_data_delivery_config(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% start_experiment_request() :: #{
%%   <<"analysisCompleteTime">> := [non_neg_integer()]
%% }
-type start_experiment_request() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.


%% Example:
%% list_segments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_segments_request() :: #{binary() => any()}.


%% Example:
%% list_segment_references_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"type">> := string()
%% }
-type list_segment_references_request() :: #{binary() => any()}.


%% Example:
%% metric_goal() :: #{
%%   <<"desiredChange">> => string(),
%%   <<"metricDefinition">> => metric_definition()
%% }
-type metric_goal() :: #{binary() => any()}.


%% Example:
%% launch_execution() :: #{
%%   <<"endedTime">> => [non_neg_integer()],
%%   <<"startedTime">> => [non_neg_integer()]
%% }
-type launch_execution() :: #{binary() => any()}.

%% Example:
%% delete_segment_request() :: #{}
-type delete_segment_request() :: #{}.


%% Example:
%% metric_monitor_config() :: #{
%%   <<"metricDefinition">> => metric_definition_config()
%% }
-type metric_monitor_config() :: #{binary() => any()}.


%% Example:
%% project_app_config_resource_config() :: #{
%%   <<"applicationId">> => string(),
%%   <<"environmentId">> => string()
%% }
-type project_app_config_resource_config() :: #{binary() => any()}.


%% Example:
%% evaluation_result() :: #{
%%   <<"details">> => string(),
%%   <<"entityId">> => string(),
%%   <<"feature">> => string(),
%%   <<"project">> => string(),
%%   <<"reason">> => [string()],
%%   <<"value">> => list(),
%%   <<"variation">> => [string()]
%% }
-type evaluation_result() :: #{binary() => any()}.


%% Example:
%% stop_experiment_response() :: #{
%%   <<"endedTime">> => [non_neg_integer()]
%% }
-type stop_experiment_response() :: #{binary() => any()}.


%% Example:
%% stop_launch_request() :: #{
%%   <<"desiredState">> => string(),
%%   <<"reason">> => string()
%% }
-type stop_launch_request() :: #{binary() => any()}.

%% Example:
%% delete_feature_response() :: #{}
-type delete_feature_response() :: #{}.


%% Example:
%% start_launch_response() :: #{
%%   <<"launch">> := launch()
%% }
-type start_launch_response() :: #{binary() => any()}.


%% Example:
%% get_feature_response() :: #{
%%   <<"feature">> := feature()
%% }
-type get_feature_response() :: #{binary() => any()}.

%% Example:
%% start_launch_request() :: #{}
-type start_launch_request() :: #{}.


%% Example:
%% launch() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"execution">> => launch_execution(),
%%   <<"groups">> => list(launch_group()),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"metricMonitors">> => list(metric_monitor()),
%%   <<"name">> => string(),
%%   <<"project">> => string(),
%%   <<"randomizationSalt">> => string(),
%%   <<"scheduledSplitsDefinition">> => scheduled_splits_launch_definition(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type launch() :: #{binary() => any()}.


%% Example:
%% get_experiment_results_response() :: #{
%%   <<"details">> => [string()],
%%   <<"reports">> => list(experiment_report()),
%%   <<"resultsData">> => list(experiment_results_data()),
%%   <<"timestamps">> => list([non_neg_integer()]())
%% }
-type get_experiment_results_response() :: #{binary() => any()}.


%% Example:
%% scheduled_split() :: #{
%%   <<"groupWeights">> => map(),
%%   <<"segmentOverrides">> => list(segment_override()),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type scheduled_split() :: #{binary() => any()}.


%% Example:
%% experiment() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"execution">> => experiment_execution(),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"metricGoals">> => list(metric_goal()),
%%   <<"name">> => string(),
%%   <<"onlineAbDefinition">> => online_ab_definition(),
%%   <<"project">> => string(),
%%   <<"randomizationSalt">> => string(),
%%   <<"samplingRate">> => float(),
%%   <<"schedule">> => experiment_schedule(),
%%   <<"segment">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map(),
%%   <<"treatments">> => list(treatment()),
%%   <<"type">> => string()
%% }
-type experiment() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{}
-type delete_project_request() :: #{}.


%% Example:
%% stop_launch_response() :: #{
%%   <<"endedTime">> => [non_neg_integer()]
%% }
-type stop_launch_response() :: #{binary() => any()}.


%% Example:
%% update_experiment_response() :: #{
%%   <<"experiment">> := experiment()
%% }
-type update_experiment_response() :: #{binary() => any()}.

%% Example:
%% get_launch_request() :: #{}
-type get_launch_request() :: #{}.


%% Example:
%% s3_destination_config() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_destination_config() :: #{binary() => any()}.


%% Example:
%% get_experiment_results_request() :: #{
%%   <<"baseStat">> => string(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"metricNames">> := list(string()),
%%   <<"period">> => float(),
%%   <<"reportNames">> => list(string()),
%%   <<"resultStats">> => list(string()),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"treatmentNames">> := list(string())
%% }
-type get_experiment_results_request() :: #{binary() => any()}.

%% Example:
%% delete_feature_request() :: #{}
-type delete_feature_request() :: #{}.

%% Example:
%% delete_launch_request() :: #{}
-type delete_launch_request() :: #{}.

%% Example:
%% get_feature_request() :: #{}
-type get_feature_request() :: #{}.


%% Example:
%% create_launch_response() :: #{
%%   <<"launch">> := launch()
%% }
-type create_launch_response() :: #{binary() => any()}.


%% Example:
%% update_launch_request() :: #{
%%   <<"description">> => string(),
%%   <<"groups">> => list(launch_group_config()),
%%   <<"metricMonitors">> => list(metric_monitor_config()),
%%   <<"randomizationSalt">> => string(),
%%   <<"scheduledSplitsConfig">> => scheduled_splits_launch_config()
%% }
-type update_launch_request() :: #{binary() => any()}.

-type batch_evaluate_feature_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type create_experiment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_feature_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_launch_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_project_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_segment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_experiment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_feature_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_launch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_segment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type evaluate_feature_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_experiment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_experiment_results_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_feature_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_launch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_segment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_experiments_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_features_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_launches_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_projects_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_segment_references_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_segments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_project_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type start_experiment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_launch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_experiment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_launch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type test_segment_pattern_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_experiment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_feature_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_launch_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_project_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_project_data_delivery_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation assigns feature variation to user sessions.
%%
%% For each user session, you pass
%% in an `entityID' that represents the user. Evidently then checks the
%% evaluation
%% rules and assigns the variation.
%%
%% The first rules that are evaluated are the override rules. If the
%% user's
%% `entityID' matches an override rule, the user is served the variation
%% specified
%% by that rule.
%%
%% Next, if there is a launch of the feature, the user might be assigned to a
%% variation in
%% the launch. The chance of this depends on the percentage of users that are
%% allocated to that
%% launch. If the user is enrolled in the launch, the variation they are
%% served depends on the
%% allocation of the various feature variations used for the launch.
%%
%% If the user is not assigned to a launch, and there is an ongoing
%% experiment for this feature, the user might
%% be assigned to a variation in the experiment. The chance of this
%% depends on the percentage of users that are allocated to that experiment.
%% If the user is enrolled in the experiment,
%% the variation they are served depends on the allocation of the various
%% feature variations used for the experiment.
%%
%% If the user is not assigned to a launch or experiment, they are served the
%% default variation.
-spec batch_evaluate_feature(aws_client:aws_client(), binary() | list(), batch_evaluate_feature_request()) ->
    {ok, batch_evaluate_feature_response(), tuple()} |
    {error, any()} |
    {error, batch_evaluate_feature_errors(), tuple()}.
batch_evaluate_feature(Client, Project, Input) ->
    batch_evaluate_feature(Client, Project, Input, []).

-spec batch_evaluate_feature(aws_client:aws_client(), binary() | list(), batch_evaluate_feature_request(), proplists:proplist()) ->
    {ok, batch_evaluate_feature_response(), tuple()} |
    {error, any()} |
    {error, batch_evaluate_feature_errors(), tuple()}.
batch_evaluate_feature(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/evaluations"],
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

%% @doc Creates an Evidently experiment.
%%
%% Before you create an experiment,
%% you must create the feature to use for the experiment.
%%
%% An experiment helps you make feature design
%% decisions based on evidence and data. An experiment can test as
%% many as five variations at once. Evidently collects experiment data and
%% analyzes it by statistical methods, and provides
%% clear recommendations about which variations perform better.
%%
%% You can optionally specify a `segment' to have the experiment consider
%% only certain audience
%% types in the experiment, such as using only user sessions from a certain
%% location or who use a certain internet browser.
%%
%% Don't use this operation to update an existing experiment. Instead,
%% use
%% UpdateExperiment:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateExperiment.html.
-spec create_experiment(aws_client:aws_client(), binary() | list(), create_experiment_request()) ->
    {ok, create_experiment_response(), tuple()} |
    {error, any()} |
    {error, create_experiment_errors(), tuple()}.
create_experiment(Client, Project, Input) ->
    create_experiment(Client, Project, Input, []).

-spec create_experiment(aws_client:aws_client(), binary() | list(), create_experiment_request(), proplists:proplist()) ->
    {ok, create_experiment_response(), tuple()} |
    {error, any()} |
    {error, create_experiment_errors(), tuple()}.
create_experiment(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments"],
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

%% @doc Creates an Evidently feature that you want to launch or test.
%%
%% You can define up to
%% five variations of a feature, and use these variations in your launches
%% and experiments. A feature must be created in
%% a project. For information about creating a project, see CreateProject:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html.
%%
%% Don't use this operation to update an existing feature. Instead, use
%% UpdateFeature:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html.
-spec create_feature(aws_client:aws_client(), binary() | list(), create_feature_request()) ->
    {ok, create_feature_response(), tuple()} |
    {error, any()} |
    {error, create_feature_errors(), tuple()}.
create_feature(Client, Project, Input) ->
    create_feature(Client, Project, Input, []).

-spec create_feature(aws_client:aws_client(), binary() | list(), create_feature_request(), proplists:proplist()) ->
    {ok, create_feature_response(), tuple()} |
    {error, any()} |
    {error, create_feature_errors(), tuple()}.
create_feature(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/features"],
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

%% @doc Creates a launch of a given feature.
%%
%% Before you create a launch, you
%% must create the feature to use for the launch.
%%
%% You can use a launch to safely validate new features by serving them to a
%% specified
%% percentage of your users while you roll out the feature. You can monitor
%% the performance of
%% the new feature to help you decide when to ramp up traffic to more users.
%% This helps you
%% reduce risk and identify unintended consequences before you fully launch
%% the feature.
%%
%% Don't use this operation to update an existing launch. Instead, use
%% UpdateLaunch:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateLaunch.html.
-spec create_launch(aws_client:aws_client(), binary() | list(), create_launch_request()) ->
    {ok, create_launch_response(), tuple()} |
    {error, any()} |
    {error, create_launch_errors(), tuple()}.
create_launch(Client, Project, Input) ->
    create_launch(Client, Project, Input, []).

-spec create_launch(aws_client:aws_client(), binary() | list(), create_launch_request(), proplists:proplist()) ->
    {ok, create_launch_response(), tuple()} |
    {error, any()} |
    {error, create_launch_errors(), tuple()}.
create_launch(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches"],
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

%% @doc Creates a project, which is the logical object in Evidently that can
%% contain features, launches, and
%% experiments.
%%
%% Use projects to group similar features together.
%%
%% To update an existing project, use UpdateProject:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProject.html.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/projects"],
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

%% @doc Use this operation to define a segment of your audience.
%%
%% A segment
%% is a portion of your audience that share one or more characteristics.
%% Examples could be Chrome browser users,
%% users in Europe, or Firefox browser users in Europe who also fit other
%% criteria that your application collects,
%% such as age.
%%
%% Using a segment in an experiment limits that experiment to evaluate only
%% the users who match the segment
%% criteria. Using one or more segments in a launch allows you to define
%% different traffic splits for the different
%% audience segments.
%%
%% For more information about segment pattern syntax, see
%%
%% Segment rule pattern syntax:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html.
%%
%% The pattern that you define for a segment is matched against the value of
%% `evaluationContext', which
%% is passed into Evidently in the EvaluateFeature:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html
%% operation,
%% when Evidently assigns a feature variation to a user.
-spec create_segment(aws_client:aws_client(), create_segment_request()) ->
    {ok, create_segment_response(), tuple()} |
    {error, any()} |
    {error, create_segment_errors(), tuple()}.
create_segment(Client, Input) ->
    create_segment(Client, Input, []).

-spec create_segment(aws_client:aws_client(), create_segment_request(), proplists:proplist()) ->
    {ok, create_segment_response(), tuple()} |
    {error, any()} |
    {error, create_segment_errors(), tuple()}.
create_segment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/segments"],
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

%% @doc Deletes an Evidently experiment.
%%
%% The feature used for the experiment is not deleted.
%%
%% To stop an experiment without deleting it, use StopExperiment:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopExperiment.html.
-spec delete_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_experiment_request()) ->
    {ok, delete_experiment_response(), tuple()} |
    {error, any()} |
    {error, delete_experiment_errors(), tuple()}.
delete_experiment(Client, Experiment, Project, Input) ->
    delete_experiment(Client, Experiment, Project, Input, []).

-spec delete_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_experiment_request(), proplists:proplist()) ->
    {ok, delete_experiment_response(), tuple()} |
    {error, any()} |
    {error, delete_experiment_errors(), tuple()}.
delete_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), ""],
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

%% @doc Deletes an Evidently feature.
-spec delete_feature(aws_client:aws_client(), binary() | list(), binary() | list(), delete_feature_request()) ->
    {ok, delete_feature_response(), tuple()} |
    {error, any()} |
    {error, delete_feature_errors(), tuple()}.
delete_feature(Client, Feature, Project, Input) ->
    delete_feature(Client, Feature, Project, Input, []).

-spec delete_feature(aws_client:aws_client(), binary() | list(), binary() | list(), delete_feature_request(), proplists:proplist()) ->
    {ok, delete_feature_response(), tuple()} |
    {error, any()} |
    {error, delete_feature_errors(), tuple()}.
delete_feature(Client, Feature, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), "/features/", aws_util:encode_uri(Feature), ""],
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

%% @doc Deletes an Evidently launch.
%%
%% The feature used for the launch is not deleted.
%%
%% To stop a launch without deleting it, use StopLaunch:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopLaunch.html.
-spec delete_launch(aws_client:aws_client(), binary() | list(), binary() | list(), delete_launch_request()) ->
    {ok, delete_launch_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_errors(), tuple()}.
delete_launch(Client, Launch, Project, Input) ->
    delete_launch(Client, Launch, Project, Input, []).

-spec delete_launch(aws_client:aws_client(), binary() | list(), binary() | list(), delete_launch_request(), proplists:proplist()) ->
    {ok, delete_launch_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_errors(), tuple()}.
delete_launch(Client, Launch, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), ""],
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

%% @doc Deletes an Evidently project.
%%
%% Before you can delete a project, you must delete all the
%% features that the project contains. To delete a feature, use
%% DeleteFeature:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html.
-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Project, Input) ->
    delete_project(Client, Project, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), ""],
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

%% @doc Deletes a segment.
%%
%% You can't delete a segment that is being used in a launch or
%% experiment, even if that
%% launch or experiment is not currently running.
-spec delete_segment(aws_client:aws_client(), binary() | list(), delete_segment_request()) ->
    {ok, delete_segment_response(), tuple()} |
    {error, any()} |
    {error, delete_segment_errors(), tuple()}.
delete_segment(Client, Segment, Input) ->
    delete_segment(Client, Segment, Input, []).

-spec delete_segment(aws_client:aws_client(), binary() | list(), delete_segment_request(), proplists:proplist()) ->
    {ok, delete_segment_response(), tuple()} |
    {error, any()} |
    {error, delete_segment_errors(), tuple()}.
delete_segment(Client, Segment, Input0, Options0) ->
    Method = delete,
    Path = ["/segments/", aws_util:encode_uri(Segment), ""],
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

%% @doc This operation assigns a feature variation to one given user session.
%%
%% You pass in an
%% `entityID' that represents the user. Evidently then checks the
%% evaluation rules
%% and assigns the variation.
%%
%% The first rules that are evaluated are the override rules. If the
%% user's
%% `entityID' matches an override rule, the user is served the variation
%% specified
%% by that rule.
%%
%% If there is a current launch with this feature that uses segment
%% overrides, and
%% if the user session's `evaluationContext' matches a segment rule
%% defined in a
%% segment override, the configuration in the segment overrides is used. For
%% more information
%% about segments, see CreateSegment:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html
%% and
%% Use segments to focus your
%% audience:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html.
%%
%% If there is a launch with no segment overrides, the user might be assigned
%% to a variation in
%% the launch. The chance of this depends on the percentage of users that are
%% allocated to that
%% launch. If the user is enrolled in the launch, the variation they are
%% served depends on the
%% allocation of the various feature variations used for the launch.
%%
%% If the user is not assigned to a launch, and there is an ongoing
%% experiment for this feature, the user might
%% be assigned to a variation in the experiment. The chance of this
%% depends on the percentage of users that are allocated to that experiment.
%%
%% If the experiment uses a segment, then only
%% user sessions with `evaluationContext' values that match the segment
%% rule are used in the experiment.
%%
%% If the user is enrolled in the experiment,
%% the variation they are served depends on the allocation of the various
%% feature variations used for the experiment.
%%
%% If the user is not assigned to a launch or experiment, they are served the
%% default variation.
-spec evaluate_feature(aws_client:aws_client(), binary() | list(), binary() | list(), evaluate_feature_request()) ->
    {ok, evaluate_feature_response(), tuple()} |
    {error, any()} |
    {error, evaluate_feature_errors(), tuple()}.
evaluate_feature(Client, Feature, Project, Input) ->
    evaluate_feature(Client, Feature, Project, Input, []).

-spec evaluate_feature(aws_client:aws_client(), binary() | list(), binary() | list(), evaluate_feature_request(), proplists:proplist()) ->
    {ok, evaluate_feature_response(), tuple()} |
    {error, any()} |
    {error, evaluate_feature_errors(), tuple()}.
evaluate_feature(Client, Feature, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/evaluations/", aws_util:encode_uri(Feature), ""],
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

%% @doc Returns the details about one experiment.
%%
%% You must already know the
%% experiment name. To retrieve a list of experiments in your account, use
%% ListExperiments:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html.
-spec get_experiment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_experiment_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_errors(), tuple()}.
get_experiment(Client, Experiment, Project)
  when is_map(Client) ->
    get_experiment(Client, Experiment, Project, #{}, #{}).

-spec get_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_experiment_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_errors(), tuple()}.
get_experiment(Client, Experiment, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_experiment(Client, Experiment, Project, QueryMap, HeadersMap, []).

-spec get_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_experiment_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_errors(), tuple()}.
get_experiment(Client, Experiment, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the results of a running or completed experiment.
%%
%% No results are available until
%% there have been 100 events for each variation and at least 10 minutes have
%% passed since the start of the experiment.
%% To increase the statistical power, Evidently performs an additional
%% offline p-value analysis at the end of the experiment.
%% Offline p-value analysis can detect statistical significance in some cases
%% where the anytime p-values used during
%% the experiment do not find statistical significance.
%%
%% Experiment
%% results are available up to 63 days after the start of the experiment.
%% They are not available after that because
%% of CloudWatch data retention policies.
-spec get_experiment_results(aws_client:aws_client(), binary() | list(), binary() | list(), get_experiment_results_request()) ->
    {ok, get_experiment_results_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_results_errors(), tuple()}.
get_experiment_results(Client, Experiment, Project, Input) ->
    get_experiment_results(Client, Experiment, Project, Input, []).

-spec get_experiment_results(aws_client:aws_client(), binary() | list(), binary() | list(), get_experiment_results_request(), proplists:proplist()) ->
    {ok, get_experiment_results_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_results_errors(), tuple()}.
get_experiment_results(Client, Experiment, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), "/results"],
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

%% @doc Returns the details about one feature.
%%
%% You must already know the feature name. To
%% retrieve a list of features in your account, use ListFeatures:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html.
-spec get_feature(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_feature_response(), tuple()} |
    {error, any()} |
    {error, get_feature_errors(), tuple()}.
get_feature(Client, Feature, Project)
  when is_map(Client) ->
    get_feature(Client, Feature, Project, #{}, #{}).

-spec get_feature(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_feature_response(), tuple()} |
    {error, any()} |
    {error, get_feature_errors(), tuple()}.
get_feature(Client, Feature, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_feature(Client, Feature, Project, QueryMap, HeadersMap, []).

-spec get_feature(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_feature_response(), tuple()} |
    {error, any()} |
    {error, get_feature_errors(), tuple()}.
get_feature(Client, Feature, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/features/", aws_util:encode_uri(Feature), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details about one launch.
%%
%% You must already know the
%% launch name. To retrieve a list of launches in your account, use
%% ListLaunches:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html.
-spec get_launch(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_launch_response(), tuple()} |
    {error, any()} |
    {error, get_launch_errors(), tuple()}.
get_launch(Client, Launch, Project)
  when is_map(Client) ->
    get_launch(Client, Launch, Project, #{}, #{}).

-spec get_launch(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_launch_response(), tuple()} |
    {error, any()} |
    {error, get_launch_errors(), tuple()}.
get_launch(Client, Launch, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch(Client, Launch, Project, QueryMap, HeadersMap, []).

-spec get_launch(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_launch_response(), tuple()} |
    {error, any()} |
    {error, get_launch_errors(), tuple()}.
get_launch(Client, Launch, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details about one launch.
%%
%% You must already know the
%% project name. To retrieve a list of projects in your account, use
%% ListProjects:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html.
-spec get_project(aws_client:aws_client(), binary() | list()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Project)
  when is_map(Client) ->
    get_project(Client, Project, #{}, #{}).

-spec get_project(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_project(Client, Project, QueryMap, HeadersMap, []).

-spec get_project(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified segment.
%%
%% Specify the segment you want to view
%% by specifying its ARN.
-spec get_segment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_segment_response(), tuple()} |
    {error, any()} |
    {error, get_segment_errors(), tuple()}.
get_segment(Client, Segment)
  when is_map(Client) ->
    get_segment(Client, Segment, #{}, #{}).

-spec get_segment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_segment_response(), tuple()} |
    {error, any()} |
    {error, get_segment_errors(), tuple()}.
get_segment(Client, Segment, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment(Client, Segment, QueryMap, HeadersMap, []).

-spec get_segment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_response(), tuple()} |
    {error, any()} |
    {error, get_segment_errors(), tuple()}.
get_segment(Client, Segment, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/segments/", aws_util:encode_uri(Segment), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration details about all the experiments in the
%% specified project.
-spec list_experiments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()} |
    {error, list_experiments_errors(), tuple()}.
list_experiments(Client, Project)
  when is_map(Client) ->
    list_experiments(Client, Project, #{}, #{}).

-spec list_experiments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()} |
    {error, list_experiments_errors(), tuple()}.
list_experiments(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_experiments(Client, Project, QueryMap, HeadersMap, []).

-spec list_experiments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()} |
    {error, list_experiments_errors(), tuple()}.
list_experiments(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration details about all the features in the specified
%% project.
-spec list_features(aws_client:aws_client(), binary() | list()) ->
    {ok, list_features_response(), tuple()} |
    {error, any()} |
    {error, list_features_errors(), tuple()}.
list_features(Client, Project)
  when is_map(Client) ->
    list_features(Client, Project, #{}, #{}).

-spec list_features(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_features_response(), tuple()} |
    {error, any()} |
    {error, list_features_errors(), tuple()}.
list_features(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_features(Client, Project, QueryMap, HeadersMap, []).

-spec list_features(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_features_response(), tuple()} |
    {error, any()} |
    {error, list_features_errors(), tuple()}.
list_features(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/features"],
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

%% @doc Returns configuration details about all the launches in the specified
%% project.
-spec list_launches(aws_client:aws_client(), binary() | list()) ->
    {ok, list_launches_response(), tuple()} |
    {error, any()} |
    {error, list_launches_errors(), tuple()}.
list_launches(Client, Project)
  when is_map(Client) ->
    list_launches(Client, Project, #{}, #{}).

-spec list_launches(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_launches_response(), tuple()} |
    {error, any()} |
    {error, list_launches_errors(), tuple()}.
list_launches(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_launches(Client, Project, QueryMap, HeadersMap, []).

-spec list_launches(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_launches_response(), tuple()} |
    {error, any()} |
    {error, list_launches_errors(), tuple()}.
list_launches(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration details about all the projects in the current
%% Region in your
%% account.
-spec list_projects(aws_client:aws_client()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

-spec list_projects(aws_client:aws_client(), map(), map()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects"],
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

%% @doc Use this operation to find which experiments or launches are using a
%% specified segment.
-spec list_segment_references(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_segment_references_response(), tuple()} |
    {error, any()} |
    {error, list_segment_references_errors(), tuple()}.
list_segment_references(Client, Segment, Type)
  when is_map(Client) ->
    list_segment_references(Client, Segment, Type, #{}, #{}).

-spec list_segment_references(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_segment_references_response(), tuple()} |
    {error, any()} |
    {error, list_segment_references_errors(), tuple()}.
list_segment_references(Client, Segment, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_segment_references(Client, Segment, Type, QueryMap, HeadersMap, []).

-spec list_segment_references(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_segment_references_response(), tuple()} |
    {error, any()} |
    {error, list_segment_references_errors(), tuple()}.
list_segment_references(Client, Segment, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/segments/", aws_util:encode_uri(Segment), "/references"],
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
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of audience segments that you have created in your
%% account in this Region.
-spec list_segments(aws_client:aws_client()) ->
    {ok, list_segments_response(), tuple()} |
    {error, any()} |
    {error, list_segments_errors(), tuple()}.
list_segments(Client)
  when is_map(Client) ->
    list_segments(Client, #{}, #{}).

-spec list_segments(aws_client:aws_client(), map(), map()) ->
    {ok, list_segments_response(), tuple()} |
    {error, any()} |
    {error, list_segments_errors(), tuple()}.
list_segments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_segments(Client, QueryMap, HeadersMap, []).

-spec list_segments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_segments_response(), tuple()} |
    {error, any()} |
    {error, list_segments_errors(), tuple()}.
list_segments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/segments"],
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

%% @doc Displays the tags associated with an Evidently resource.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends performance events to Evidently.
%%
%% These events can be used to evaluate a launch or
%% an experiment.
-spec put_project_events(aws_client:aws_client(), binary() | list(), put_project_events_request()) ->
    {ok, put_project_events_response(), tuple()} |
    {error, any()} |
    {error, put_project_events_errors(), tuple()}.
put_project_events(Client, Project, Input) ->
    put_project_events(Client, Project, Input, []).

-spec put_project_events(aws_client:aws_client(), binary() | list(), put_project_events_request(), proplists:proplist()) ->
    {ok, put_project_events_response(), tuple()} |
    {error, any()} |
    {error, put_project_events_errors(), tuple()}.
put_project_events(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/events/projects/", aws_util:encode_uri(Project), ""],
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

%% @doc Starts an existing experiment.
%%
%% To create an experiment,
%% use CreateExperiment:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html.
-spec start_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), start_experiment_request()) ->
    {ok, start_experiment_response(), tuple()} |
    {error, any()} |
    {error, start_experiment_errors(), tuple()}.
start_experiment(Client, Experiment, Project, Input) ->
    start_experiment(Client, Experiment, Project, Input, []).

-spec start_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), start_experiment_request(), proplists:proplist()) ->
    {ok, start_experiment_response(), tuple()} |
    {error, any()} |
    {error, start_experiment_errors(), tuple()}.
start_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), "/start"],
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

%% @doc Starts an existing launch.
%%
%% To create a launch,
%% use CreateLaunch:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html.
-spec start_launch(aws_client:aws_client(), binary() | list(), binary() | list(), start_launch_request()) ->
    {ok, start_launch_response(), tuple()} |
    {error, any()} |
    {error, start_launch_errors(), tuple()}.
start_launch(Client, Launch, Project, Input) ->
    start_launch(Client, Launch, Project, Input, []).

-spec start_launch(aws_client:aws_client(), binary() | list(), binary() | list(), start_launch_request(), proplists:proplist()) ->
    {ok, start_launch_response(), tuple()} |
    {error, any()} |
    {error, start_launch_errors(), tuple()}.
start_launch(Client, Launch, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), "/start"],
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

%% @doc Stops an experiment that is currently running.
%%
%% If you stop an experiment, you can't
%% resume it or restart it.
-spec stop_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), stop_experiment_request()) ->
    {ok, stop_experiment_response(), tuple()} |
    {error, any()} |
    {error, stop_experiment_errors(), tuple()}.
stop_experiment(Client, Experiment, Project, Input) ->
    stop_experiment(Client, Experiment, Project, Input, []).

-spec stop_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), stop_experiment_request(), proplists:proplist()) ->
    {ok, stop_experiment_response(), tuple()} |
    {error, any()} |
    {error, stop_experiment_errors(), tuple()}.
stop_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), "/cancel"],
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

%% @doc Stops a launch that is currently running.
%%
%% After you stop a launch, you will not be able to resume it or restart it.
%% Also, it
%% will not be evaluated as a rule for traffic allocation, and the traffic
%% that was allocated to the launch
%% will instead be available to the feature's experiment, if there is
%% one. Otherwise, all traffic
%% will be served the default variation after the launch is stopped.
-spec stop_launch(aws_client:aws_client(), binary() | list(), binary() | list(), stop_launch_request()) ->
    {ok, stop_launch_response(), tuple()} |
    {error, any()} |
    {error, stop_launch_errors(), tuple()}.
stop_launch(Client, Launch, Project, Input) ->
    stop_launch(Client, Launch, Project, Input, []).

-spec stop_launch(aws_client:aws_client(), binary() | list(), binary() | list(), stop_launch_request(), proplists:proplist()) ->
    {ok, stop_launch_response(), tuple()} |
    {error, any()} |
    {error, stop_launch_errors(), tuple()}.
stop_launch(Client, Launch, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), "/cancel"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch Evidently resource.
%%
%% Projects,
%% features, launches, and experiments can be tagged.
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
%% tags.
%% If you specify a new tag key for the resource,
%% this tag is appended to the list of tags associated
%% with the alarm. If you specify a tag key that is already associated with
%% the resource, the new tag value that you specify replaces
%% the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
%%
%% For more information, see Tagging Amazon Web Services resources:
%% https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Use this operation to test a rules pattern that you plan to use to
%% create an audience segment.
%%
%% For more information about segments, see CreateSegment:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html.
-spec test_segment_pattern(aws_client:aws_client(), test_segment_pattern_request()) ->
    {ok, test_segment_pattern_response(), tuple()} |
    {error, any()} |
    {error, test_segment_pattern_errors(), tuple()}.
test_segment_pattern(Client, Input) ->
    test_segment_pattern(Client, Input, []).

-spec test_segment_pattern(aws_client:aws_client(), test_segment_pattern_request(), proplists:proplist()) ->
    {ok, test_segment_pattern_response(), tuple()} |
    {error, any()} |
    {error, test_segment_pattern_errors(), tuple()}.
test_segment_pattern(Client, Input0, Options0) ->
    Method = post,
    Path = ["/test-segment-pattern"],
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

%% @doc Removes one or more tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Evidently experiment.
%%
%% Don't use this operation to update an experiment's tag. Instead,
%% use
%% TagResource:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html.
-spec update_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), update_experiment_request()) ->
    {ok, update_experiment_response(), tuple()} |
    {error, any()} |
    {error, update_experiment_errors(), tuple()}.
update_experiment(Client, Experiment, Project, Input) ->
    update_experiment(Client, Experiment, Project, Input, []).

-spec update_experiment(aws_client:aws_client(), binary() | list(), binary() | list(), update_experiment_request(), proplists:proplist()) ->
    {ok, update_experiment_response(), tuple()} |
    {error, any()} |
    {error, update_experiment_errors(), tuple()}.
update_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), ""],
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

%% @doc Updates an existing feature.
%%
%% You can't use this operation to update the tags of an existing
%% feature. Instead, use
%% TagResource:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html.
-spec update_feature(aws_client:aws_client(), binary() | list(), binary() | list(), update_feature_request()) ->
    {ok, update_feature_response(), tuple()} |
    {error, any()} |
    {error, update_feature_errors(), tuple()}.
update_feature(Client, Feature, Project, Input) ->
    update_feature(Client, Feature, Project, Input, []).

-spec update_feature(aws_client:aws_client(), binary() | list(), binary() | list(), update_feature_request(), proplists:proplist()) ->
    {ok, update_feature_response(), tuple()} |
    {error, any()} |
    {error, update_feature_errors(), tuple()}.
update_feature(Client, Feature, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/features/", aws_util:encode_uri(Feature), ""],
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

%% @doc Updates a launch of a given feature.
%%
%% Don't use this operation to update the tags of an existing launch.
%% Instead, use
%% TagResource:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html.
-spec update_launch(aws_client:aws_client(), binary() | list(), binary() | list(), update_launch_request()) ->
    {ok, update_launch_response(), tuple()} |
    {error, any()} |
    {error, update_launch_errors(), tuple()}.
update_launch(Client, Launch, Project, Input) ->
    update_launch(Client, Launch, Project, Input, []).

-spec update_launch(aws_client:aws_client(), binary() | list(), binary() | list(), update_launch_request(), proplists:proplist()) ->
    {ok, update_launch_response(), tuple()} |
    {error, any()} |
    {error, update_launch_errors(), tuple()}.
update_launch(Client, Launch, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), ""],
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

%% @doc Updates the description of an existing project.
%%
%% To create a new project, use CreateProject:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html.
%%
%% Don't use this operation to update the data storage options of a
%% project. Instead, use
%% UpdateProjectDataDelivery:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html.
%%
%% Don't use this operation to update the tags of a project. Instead, use
%% TagResource:
%% https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html.
-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Project, Input) ->
    update_project(Client, Project, Input, []).

-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), ""],
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

%% @doc Updates the data storage options for this project.
%%
%% If you store evaluation events, you an
%% keep them and analyze them on your own. If you choose not to store
%% evaluation events,
%% Evidently deletes them after using them to produce metrics and other
%% experiment results that
%% you can view.
%%
%% You can't specify both `cloudWatchLogs' and `s3Destination' in
%% the same operation.
-spec update_project_data_delivery(aws_client:aws_client(), binary() | list(), update_project_data_delivery_request()) ->
    {ok, update_project_data_delivery_response(), tuple()} |
    {error, any()} |
    {error, update_project_data_delivery_errors(), tuple()}.
update_project_data_delivery(Client, Project, Input) ->
    update_project_data_delivery(Client, Project, Input, []).

-spec update_project_data_delivery(aws_client:aws_client(), binary() | list(), update_project_data_delivery_request(), proplists:proplist()) ->
    {ok, update_project_data_delivery_response(), tuple()} |
    {error, any()} |
    {error, update_project_data_delivery_errors(), tuple()}.
update_project_data_delivery(Client, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/data-delivery"],
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
    Client1 = Client#{service => <<"evidently">>},
    Host = build_host(<<"evidently">>, Client1),
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
