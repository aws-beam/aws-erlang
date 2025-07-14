%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Definition of the public APIs
%% exposed by Amazon Machine Learning
-module(aws_machine_learning).

-export([add_tags/2,
         add_tags/3,
         create_batch_prediction/2,
         create_batch_prediction/3,
         create_data_source_from_rds/2,
         create_data_source_from_rds/3,
         create_data_source_from_redshift/2,
         create_data_source_from_redshift/3,
         create_data_source_from_s3/2,
         create_data_source_from_s3/3,
         create_evaluation/2,
         create_evaluation/3,
         create_ml_model/2,
         create_ml_model/3,
         create_realtime_endpoint/2,
         create_realtime_endpoint/3,
         delete_batch_prediction/2,
         delete_batch_prediction/3,
         delete_data_source/2,
         delete_data_source/3,
         delete_evaluation/2,
         delete_evaluation/3,
         delete_ml_model/2,
         delete_ml_model/3,
         delete_realtime_endpoint/2,
         delete_realtime_endpoint/3,
         delete_tags/2,
         delete_tags/3,
         describe_batch_predictions/2,
         describe_batch_predictions/3,
         describe_data_sources/2,
         describe_data_sources/3,
         describe_evaluations/2,
         describe_evaluations/3,
         describe_ml_models/2,
         describe_ml_models/3,
         describe_tags/2,
         describe_tags/3,
         get_batch_prediction/2,
         get_batch_prediction/3,
         get_data_source/2,
         get_data_source/3,
         get_evaluation/2,
         get_evaluation/3,
         get_ml_model/2,
         get_ml_model/3,
         predict/2,
         predict/3,
         update_batch_prediction/2,
         update_batch_prediction/3,
         update_data_source/2,
         update_data_source/3,
         update_evaluation/2,
         update_evaluation/3,
         update_ml_model/2,
         update_ml_model/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_data_source_from_s3_input() :: #{
%%   <<"ComputeStatistics">> => boolean(),
%%   <<"DataSourceId">> := string(),
%%   <<"DataSourceName">> => string(),
%%   <<"DataSpec">> := s3_data_spec()
%% }
-type create_data_source_from_s3_input() :: #{binary() => any()}.

%% Example:
%% get_batch_prediction_output() :: #{
%%   <<"BatchPredictionDataSourceId">> => string(),
%%   <<"BatchPredictionId">> => string(),
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"InputDataLocationS3">> => string(),
%%   <<"InvalidRecordCount">> => float(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"LogUri">> => string(),
%%   <<"MLModelId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputUri">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalRecordCount">> => float()
%% }
-type get_batch_prediction_output() :: #{binary() => any()}.

%% Example:
%% delete_evaluation_output() :: #{
%%   <<"EvaluationId">> => string()
%% }
-type delete_evaluation_output() :: #{binary() => any()}.

%% Example:
%% create_realtime_endpoint_output() :: #{
%%   <<"MLModelId">> => string(),
%%   <<"RealtimeEndpointInfo">> => realtime_endpoint_info()
%% }
-type create_realtime_endpoint_output() :: #{binary() => any()}.

%% Example:
%% delete_evaluation_input() :: #{
%%   <<"EvaluationId">> := string()
%% }
-type delete_evaluation_input() :: #{binary() => any()}.

%% Example:
%% get_data_source_input() :: #{
%%   <<"DataSourceId">> := string(),
%%   <<"Verbose">> => boolean()
%% }
-type get_data_source_input() :: #{binary() => any()}.

%% Example:
%% redshift_data_spec() :: #{
%%   <<"DataRearrangement">> => string(),
%%   <<"DataSchema">> => string(),
%%   <<"DataSchemaUri">> => string(),
%%   <<"DatabaseCredentials">> => redshift_database_credentials(),
%%   <<"DatabaseInformation">> => redshift_database(),
%%   <<"S3StagingLocation">> => string(),
%%   <<"SelectSqlQuery">> => string()
%% }
-type redshift_data_spec() :: #{binary() => any()}.

%% Example:
%% get_ml_model_output() :: #{
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"EndpointInfo">> => realtime_endpoint_info(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"InputDataLocationS3">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"LogUri">> => string(),
%%   <<"MLModelId">> => string(),
%%   <<"MLModelType">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"Recipe">> => string(),
%%   <<"Schema">> => string(),
%%   <<"ScoreThreshold">> => float(),
%%   <<"ScoreThresholdLastUpdatedAt">> => non_neg_integer(),
%%   <<"SizeInBytes">> => float(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TrainingDataSourceId">> => string(),
%%   <<"TrainingParameters">> => map()
%% }
-type get_ml_model_output() :: #{binary() => any()}.

%% Example:
%% delete_tags_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"TagKeys">> := list(string())
%% }
-type delete_tags_input() :: #{binary() => any()}.

%% Example:
%% predict_input() :: #{
%%   <<"MLModelId">> := string(),
%%   <<"PredictEndpoint">> := string(),
%%   <<"Record">> := map()
%% }
-type predict_input() :: #{binary() => any()}.

%% Example:
%% redshift_metadata() :: #{
%%   <<"DatabaseUserName">> => string(),
%%   <<"RedshiftDatabase">> => redshift_database(),
%%   <<"SelectSqlQuery">> => string()
%% }
-type redshift_metadata() :: #{binary() => any()}.

%% Example:
%% add_tags_output() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type add_tags_output() :: #{binary() => any()}.

%% Example:
%% delete_ml_model_output() :: #{
%%   <<"MLModelId">> => string()
%% }
-type delete_ml_model_output() :: #{binary() => any()}.

%% Example:
%% create_ml_model_input() :: #{
%%   <<"MLModelId">> := string(),
%%   <<"MLModelName">> => string(),
%%   <<"MLModelType">> := list(any()),
%%   <<"Parameters">> => map(),
%%   <<"Recipe">> => string(),
%%   <<"RecipeUri">> => string(),
%%   <<"TrainingDataSourceId">> := string()
%% }
-type create_ml_model_input() :: #{binary() => any()}.

%% Example:
%% describe_batch_predictions_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(batch_prediction())
%% }
-type describe_batch_predictions_output() :: #{binary() => any()}.

%% Example:
%% get_data_source_output() :: #{
%%   <<"ComputeStatistics">> => boolean(),
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"DataLocationS3">> => string(),
%%   <<"DataRearrangement">> => string(),
%%   <<"DataSizeInBytes">> => float(),
%%   <<"DataSourceId">> => string(),
%%   <<"DataSourceSchema">> => string(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"LogUri">> => string(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"NumberOfFiles">> => float(),
%%   <<"RDSMetadata">> => rds_metadata(),
%%   <<"RedshiftMetadata">> => redshift_metadata(),
%%   <<"RoleARN">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type get_data_source_output() :: #{binary() => any()}.

%% Example:
%% get_evaluation_output() :: #{
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"EvaluationDataSourceId">> => string(),
%%   <<"EvaluationId">> => string(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"InputDataLocationS3">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"LogUri">> => string(),
%%   <<"MLModelId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"PerformanceMetrics">> => performance_metrics(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type get_evaluation_output() :: #{binary() => any()}.

%% Example:
%% add_tags_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Tags">> := list(tag())
%% }
-type add_tags_input() :: #{binary() => any()}.

%% Example:
%% predict_output() :: #{
%%   <<"Prediction">> => prediction()
%% }
-type predict_output() :: #{binary() => any()}.

%% Example:
%% describe_evaluations_input() :: #{
%%   <<"EQ">> => string(),
%%   <<"FilterVariable">> => list(any()),
%%   <<"GE">> => string(),
%%   <<"GT">> => string(),
%%   <<"LE">> => string(),
%%   <<"LT">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NE">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type describe_evaluations_input() :: #{binary() => any()}.

%% Example:
%% rds_database() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"InstanceIdentifier">> => string()
%% }
-type rds_database() :: #{binary() => any()}.

%% Example:
%% update_evaluation_input() :: #{
%%   <<"EvaluationId">> := string(),
%%   <<"EvaluationName">> := string()
%% }
-type update_evaluation_input() :: #{binary() => any()}.

%% Example:
%% batch_prediction() :: #{
%%   <<"BatchPredictionDataSourceId">> => string(),
%%   <<"BatchPredictionId">> => string(),
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"InputDataLocationS3">> => string(),
%%   <<"InvalidRecordCount">> => float(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MLModelId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputUri">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalRecordCount">> => float()
%% }
-type batch_prediction() :: #{binary() => any()}.

%% Example:
%% describe_ml_models_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(ml_model())
%% }
-type describe_ml_models_output() :: #{binary() => any()}.

%% Example:
%% delete_ml_model_input() :: #{
%%   <<"MLModelId">> := string()
%% }
-type delete_ml_model_input() :: #{binary() => any()}.

%% Example:
%% update_data_source_input() :: #{
%%   <<"DataSourceId">> := string(),
%%   <<"DataSourceName">> := string()
%% }
-type update_data_source_input() :: #{binary() => any()}.

%% Example:
%% get_ml_model_input() :: #{
%%   <<"MLModelId">> := string(),
%%   <<"Verbose">> => boolean()
%% }
-type get_ml_model_input() :: #{binary() => any()}.

%% Example:
%% update_ml_model_input() :: #{
%%   <<"MLModelId">> := string(),
%%   <<"MLModelName">> => string(),
%%   <<"ScoreThreshold">> => float()
%% }
-type update_ml_model_input() :: #{binary() => any()}.

%% Example:
%% ml_model() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"EndpointInfo">> => realtime_endpoint_info(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"InputDataLocationS3">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MLModelId">> => string(),
%%   <<"MLModelType">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"ScoreThreshold">> => float(),
%%   <<"ScoreThresholdLastUpdatedAt">> => non_neg_integer(),
%%   <<"SizeInBytes">> => float(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TrainingDataSourceId">> => string(),
%%   <<"TrainingParameters">> => map()
%% }
-type ml_model() :: #{binary() => any()}.

%% Example:
%% rds_data_spec() :: #{
%%   <<"DataRearrangement">> => string(),
%%   <<"DataSchema">> => string(),
%%   <<"DataSchemaUri">> => string(),
%%   <<"DatabaseCredentials">> => rds_database_credentials(),
%%   <<"DatabaseInformation">> => rds_database(),
%%   <<"ResourceRole">> => string(),
%%   <<"S3StagingLocation">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SelectSqlQuery">> => string(),
%%   <<"ServiceRole">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type rds_data_spec() :: #{binary() => any()}.

%% Example:
%% create_evaluation_input() :: #{
%%   <<"EvaluationDataSourceId">> := string(),
%%   <<"EvaluationId">> := string(),
%%   <<"EvaluationName">> => string(),
%%   <<"MLModelId">> := string()
%% }
-type create_evaluation_input() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_tags_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any())
%% }
-type describe_tags_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_data_source_output() :: #{
%%   <<"DataSourceId">> => string()
%% }
-type delete_data_source_output() :: #{binary() => any()}.

%% Example:
%% predictor_not_mounted_exception() :: #{
%%   <<"message">> => string()
%% }
-type predictor_not_mounted_exception() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% realtime_endpoint_info() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EndpointStatus">> => list(any()),
%%   <<"EndpointUrl">> => string(),
%%   <<"PeakRequestsPerSecond">> => integer()
%% }
-type realtime_endpoint_info() :: #{binary() => any()}.

%% Example:
%% create_data_source_from_s3_output() :: #{
%%   <<"DataSourceId">> => string()
%% }
-type create_data_source_from_s3_output() :: #{binary() => any()}.

%% Example:
%% tag_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_data_source_from_redshift_output() :: #{
%%   <<"DataSourceId">> => string()
%% }
-type create_data_source_from_redshift_output() :: #{binary() => any()}.

%% Example:
%% describe_tags_output() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type describe_tags_output() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% create_data_source_from_rds_input() :: #{
%%   <<"ComputeStatistics">> => boolean(),
%%   <<"DataSourceId">> := string(),
%%   <<"DataSourceName">> => string(),
%%   <<"RDSData">> := rds_data_spec(),
%%   <<"RoleARN">> := string()
%% }
-type create_data_source_from_rds_input() :: #{binary() => any()}.

%% Example:
%% update_evaluation_output() :: #{
%%   <<"EvaluationId">> => string()
%% }
-type update_evaluation_output() :: #{binary() => any()}.

%% Example:
%% get_evaluation_input() :: #{
%%   <<"EvaluationId">> := string()
%% }
-type get_evaluation_input() :: #{binary() => any()}.

%% Example:
%% get_batch_prediction_input() :: #{
%%   <<"BatchPredictionId">> := string()
%% }
-type get_batch_prediction_input() :: #{binary() => any()}.

%% Example:
%% rds_metadata() :: #{
%%   <<"DataPipelineId">> => string(),
%%   <<"Database">> => rds_database(),
%%   <<"DatabaseUserName">> => string(),
%%   <<"ResourceRole">> => string(),
%%   <<"SelectSqlQuery">> => string(),
%%   <<"ServiceRole">> => string()
%% }
-type rds_metadata() :: #{binary() => any()}.

%% Example:
%% delete_realtime_endpoint_output() :: #{
%%   <<"MLModelId">> => string(),
%%   <<"RealtimeEndpointInfo">> => realtime_endpoint_info()
%% }
-type delete_realtime_endpoint_output() :: #{binary() => any()}.

%% Example:
%% update_data_source_output() :: #{
%%   <<"DataSourceId">> => string()
%% }
-type update_data_source_output() :: #{binary() => any()}.

%% Example:
%% create_realtime_endpoint_input() :: #{
%%   <<"MLModelId">> := string()
%% }
-type create_realtime_endpoint_input() :: #{binary() => any()}.

%% Example:
%% s3_data_spec() :: #{
%%   <<"DataLocationS3">> => string(),
%%   <<"DataRearrangement">> => string(),
%%   <<"DataSchema">> => string(),
%%   <<"DataSchemaLocationS3">> => string()
%% }
-type s3_data_spec() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% describe_data_sources_input() :: #{
%%   <<"EQ">> => string(),
%%   <<"FilterVariable">> => list(any()),
%%   <<"GE">> => string(),
%%   <<"GT">> => string(),
%%   <<"LE">> => string(),
%%   <<"LT">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NE">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type describe_data_sources_input() :: #{binary() => any()}.

%% Example:
%% update_batch_prediction_input() :: #{
%%   <<"BatchPredictionId">> := string(),
%%   <<"BatchPredictionName">> := string()
%% }
-type update_batch_prediction_input() :: #{binary() => any()}.

%% Example:
%% describe_data_sources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(data_source())
%% }
-type describe_data_sources_output() :: #{binary() => any()}.

%% Example:
%% create_evaluation_output() :: #{
%%   <<"EvaluationId">> => string()
%% }
-type create_evaluation_output() :: #{binary() => any()}.

%% Example:
%% create_batch_prediction_output() :: #{
%%   <<"BatchPredictionId">> => string()
%% }
-type create_batch_prediction_output() :: #{binary() => any()}.

%% Example:
%% redshift_database() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"DatabaseName">> => string()
%% }
-type redshift_database() :: #{binary() => any()}.

%% Example:
%% performance_metrics() :: #{
%%   <<"Properties">> => map()
%% }
-type performance_metrics() :: #{binary() => any()}.

%% Example:
%% describe_ml_models_input() :: #{
%%   <<"EQ">> => string(),
%%   <<"FilterVariable">> => list(any()),
%%   <<"GE">> => string(),
%%   <<"GT">> => string(),
%%   <<"LE">> => string(),
%%   <<"LT">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NE">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type describe_ml_models_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_batch_predictions_input() :: #{
%%   <<"EQ">> => string(),
%%   <<"FilterVariable">> => list(any()),
%%   <<"GE">> => string(),
%%   <<"GT">> => string(),
%%   <<"LE">> => string(),
%%   <<"LT">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NE">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type describe_batch_predictions_input() :: #{binary() => any()}.

%% Example:
%% evaluation() :: #{
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"EvaluationDataSourceId">> => string(),
%%   <<"EvaluationId">> => string(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"InputDataLocationS3">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MLModelId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"PerformanceMetrics">> => performance_metrics(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type evaluation() :: #{binary() => any()}.

%% Example:
%% data_source() :: #{
%%   <<"ComputeStatistics">> => boolean(),
%%   <<"ComputeTime">> => float(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedByIamUser">> => string(),
%%   <<"DataLocationS3">> => string(),
%%   <<"DataRearrangement">> => string(),
%%   <<"DataSizeInBytes">> => float(),
%%   <<"DataSourceId">> => string(),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"NumberOfFiles">> => float(),
%%   <<"RDSMetadata">> => rds_metadata(),
%%   <<"RedshiftMetadata">> => redshift_metadata(),
%%   <<"RoleARN">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% update_ml_model_output() :: #{
%%   <<"MLModelId">> => string()
%% }
-type update_ml_model_output() :: #{binary() => any()}.

%% Example:
%% delete_data_source_input() :: #{
%%   <<"DataSourceId">> := string()
%% }
-type delete_data_source_input() :: #{binary() => any()}.

%% Example:
%% redshift_database_credentials() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type redshift_database_credentials() :: #{binary() => any()}.

%% Example:
%% delete_realtime_endpoint_input() :: #{
%%   <<"MLModelId">> := string()
%% }
-type delete_realtime_endpoint_input() :: #{binary() => any()}.

%% Example:
%% delete_batch_prediction_output() :: #{
%%   <<"BatchPredictionId">> => string()
%% }
-type delete_batch_prediction_output() :: #{binary() => any()}.

%% Example:
%% invalid_tag_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_exception() :: #{binary() => any()}.

%% Example:
%% create_data_source_from_rds_output() :: #{
%%   <<"DataSourceId">> => string()
%% }
-type create_data_source_from_rds_output() :: #{binary() => any()}.

%% Example:
%% create_data_source_from_redshift_input() :: #{
%%   <<"ComputeStatistics">> => boolean(),
%%   <<"DataSourceId">> := string(),
%%   <<"DataSourceName">> => string(),
%%   <<"DataSpec">> := redshift_data_spec(),
%%   <<"RoleARN">> := string()
%% }
-type create_data_source_from_redshift_input() :: #{binary() => any()}.

%% Example:
%% update_batch_prediction_output() :: #{
%%   <<"BatchPredictionId">> => string()
%% }
-type update_batch_prediction_output() :: #{binary() => any()}.

%% Example:
%% prediction() :: #{
%%   <<"details">> => map(),
%%   <<"predictedLabel">> => string(),
%%   <<"predictedScores">> => map(),
%%   <<"predictedValue">> => float()
%% }
-type prediction() :: #{binary() => any()}.

%% Example:
%% create_ml_model_output() :: #{
%%   <<"MLModelId">> => string()
%% }
-type create_ml_model_output() :: #{binary() => any()}.

%% Example:
%% rds_database_credentials() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type rds_database_credentials() :: #{binary() => any()}.

%% Example:
%% create_batch_prediction_input() :: #{
%%   <<"BatchPredictionDataSourceId">> := string(),
%%   <<"BatchPredictionId">> := string(),
%%   <<"BatchPredictionName">> => string(),
%%   <<"MLModelId">> := string(),
%%   <<"OutputUri">> := string()
%% }
-type create_batch_prediction_input() :: #{binary() => any()}.

%% Example:
%% delete_batch_prediction_input() :: #{
%%   <<"BatchPredictionId">> := string()
%% }
-type delete_batch_prediction_input() :: #{binary() => any()}.

%% Example:
%% delete_tags_output() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type delete_tags_output() :: #{binary() => any()}.

%% Example:
%% describe_evaluations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(evaluation())
%% }
-type describe_evaluations_output() :: #{binary() => any()}.

-type add_tags_errors() ::
    invalid_tag_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    tag_limit_exceeded_exception() | 
    resource_not_found_exception().

-type create_batch_prediction_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_data_source_from_rds_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_data_source_from_redshift_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_data_source_from_s3_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_evaluation_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_ml_model_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_realtime_endpoint_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_batch_prediction_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_data_source_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_evaluation_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_ml_model_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_realtime_endpoint_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_tags_errors() ::
    invalid_tag_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_batch_predictions_errors() ::
    internal_server_exception() | 
    invalid_input_exception().

-type describe_data_sources_errors() ::
    internal_server_exception() | 
    invalid_input_exception().

-type describe_evaluations_errors() ::
    internal_server_exception() | 
    invalid_input_exception().

-type describe_ml_models_errors() ::
    internal_server_exception() | 
    invalid_input_exception().

-type describe_tags_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_batch_prediction_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_data_source_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_evaluation_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_ml_model_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type predict_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    predictor_not_mounted_exception() | 
    resource_not_found_exception().

-type update_batch_prediction_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_data_source_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_evaluation_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_ml_model_errors() ::
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to an object, up to a limit of 10.
%%
%% Each tag consists of a key
%% and an optional value. If you add a tag using a key that is already
%% associated with the ML object,
%% `AddTags' updates the tag's value.
-spec add_tags(aws_client:aws_client(), add_tags_input()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).

-spec add_tags(aws_client:aws_client(), add_tags_input(), proplists:proplist()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Generates predictions for a group of observations.
%%
%% The observations to process exist in one or more data files referenced
%% by a `DataSource'. This operation creates a new `BatchPrediction',
%% and uses an `MLModel' and the data
%% files referenced by the `DataSource' as information sources.
%%
%% `CreateBatchPrediction' is an asynchronous operation. In response to
%% `CreateBatchPrediction',
%% Amazon Machine Learning (Amazon ML) immediately returns and sets the
%% `BatchPrediction' status to `PENDING'.
%% After the `BatchPrediction' completes, Amazon ML sets the status to
%% `COMPLETED'.
%%
%% You can poll for status updates by using the `GetBatchPrediction'
%% operation and checking the `Status' parameter of the result. After the
%% `COMPLETED' status appears,
%% the results are available in the location specified by the `OutputUri'
%% parameter.
-spec create_batch_prediction(aws_client:aws_client(), create_batch_prediction_input()) ->
    {ok, create_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, create_batch_prediction_errors(), tuple()}.
create_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_prediction(Client, Input, []).

-spec create_batch_prediction(aws_client:aws_client(), create_batch_prediction_input(), proplists:proplist()) ->
    {ok, create_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, create_batch_prediction_errors(), tuple()}.
create_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchPrediction">>, Input, Options).

%% @doc Creates a `DataSource' object from an Amazon Relational Database
%% Service: http://aws.amazon.com/rds/ (Amazon RDS).
%%
%% A `DataSource' references data that can be used to perform
%% `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% `CreateDataSourceFromRDS' is an asynchronous operation. In response to
%% `CreateDataSourceFromRDS',
%% Amazon Machine Learning (Amazon ML) immediately returns and sets the
%% `DataSource' status to `PENDING'.
%% After the `DataSource' is created and ready for use, Amazon ML sets
%% the `Status' parameter to `COMPLETED'.
%% `DataSource' in the `COMPLETED' or `PENDING' state can
%% be used only to perform `&gt;CreateMLModel'&gt;,
%% `CreateEvaluation', or `CreateBatchPrediction' operations.
%%
%% If Amazon ML cannot accept the input source, it sets the `Status'
%% parameter to `FAILED' and includes an error message in the
%% `Message' attribute of the `GetDataSource' operation response.
-spec create_data_source_from_rds(aws_client:aws_client(), create_data_source_from_rds_input()) ->
    {ok, create_data_source_from_rds_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_from_rds_errors(), tuple()}.
create_data_source_from_rds(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_rds(Client, Input, []).

-spec create_data_source_from_rds(aws_client:aws_client(), create_data_source_from_rds_input(), proplists:proplist()) ->
    {ok, create_data_source_from_rds_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_from_rds_errors(), tuple()}.
create_data_source_from_rds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromRDS">>, Input, Options).

%% @doc Creates a `DataSource' from a database hosted on an Amazon
%% Redshift cluster.
%%
%% A
%% `DataSource' references data that can be used to perform either
%% `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction'
%% operations.
%%
%% `CreateDataSourceFromRedshift' is an asynchronous operation. In
%% response to `CreateDataSourceFromRedshift', Amazon Machine Learning
%% (Amazon ML) immediately returns and sets the `DataSource' status to
%% `PENDING'.
%% After the `DataSource' is created and ready for use, Amazon ML sets
%% the `Status' parameter to `COMPLETED'.
%% `DataSource' in `COMPLETED' or `PENDING' states can be
%% used to perform only `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% If Amazon ML can't accept the input source, it sets the `Status'
%% parameter to `FAILED' and includes an error message in the
%% `Message'
%% attribute of the `GetDataSource' operation response.
%%
%% The observations should be contained in the database hosted on an Amazon
%% Redshift cluster
%% and should be specified by a `SelectSqlQuery' query. Amazon ML
%% executes an
%% `Unload' command in Amazon Redshift to transfer the result set of
%% the `SelectSqlQuery' query to `S3StagingLocation'.
%%
%% After the `DataSource' has been created, it's ready for use in
%% evaluations and
%% batch predictions. If you plan to use the `DataSource' to train an
%% `MLModel', the `DataSource' also requires a recipe. A recipe
%% describes how each input variable will be used in training an
%% `MLModel'. Will
%% the variable be included or excluded from training? Will the variable be
%% manipulated;
%% for example, will it be combined with another variable or will it be split
%% apart into
%% word combinations? The recipe provides answers to these questions.
%%
%% You can't change an existing datasource, but you can copy and modify
%% the settings from an
%% existing Amazon Redshift datasource to create a new datasource. To do so,
%% call
%% `GetDataSource' for an existing datasource and copy the values to a
%% `CreateDataSource' call. Change the settings that you want to change
%% and
%% make sure that all required fields have the appropriate values.
-spec create_data_source_from_redshift(aws_client:aws_client(), create_data_source_from_redshift_input()) ->
    {ok, create_data_source_from_redshift_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_from_redshift_errors(), tuple()}.
create_data_source_from_redshift(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_redshift(Client, Input, []).

-spec create_data_source_from_redshift(aws_client:aws_client(), create_data_source_from_redshift_input(), proplists:proplist()) ->
    {ok, create_data_source_from_redshift_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_from_redshift_errors(), tuple()}.
create_data_source_from_redshift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromRedshift">>, Input, Options).

%% @doc Creates a `DataSource' object.
%%
%% A `DataSource' references data that
%% can be used to perform `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% `CreateDataSourceFromS3' is an asynchronous operation. In response to
%% `CreateDataSourceFromS3', Amazon Machine Learning (Amazon ML)
%% immediately
%% returns and sets the `DataSource' status to `PENDING'. After the
%% `DataSource' has been created and is ready for use, Amazon ML sets the
%% `Status' parameter to `COMPLETED'. `DataSource' in
%% the `COMPLETED' or `PENDING' state can be used to perform only
%% `CreateMLModel', `CreateEvaluation' or
%% `CreateBatchPrediction' operations.
%%
%% If Amazon ML can't accept the input source, it sets the `Status'
%% parameter to
%% `FAILED' and includes an error message in the `Message'
%% attribute of the `GetDataSource' operation response.
%%
%% The observation data used in a `DataSource' should be ready to use;
%% that is,
%% it should have a consistent structure, and missing data values should be
%% kept to a
%% minimum. The observation data must reside in one or more .csv files in an
%% Amazon Simple
%% Storage Service (Amazon S3) location, along with a schema that describes
%% the data items
%% by name and type. The same schema must be used for all of the data files
%% referenced by
%% the `DataSource'.
%%
%% After the `DataSource' has been created, it's ready to use in
%% evaluations and
%% batch predictions. If you plan to use the `DataSource' to train an
%% `MLModel', the `DataSource' also needs a recipe. A recipe
%% describes how each input variable will be used in training an
%% `MLModel'. Will
%% the variable be included or excluded from training? Will the variable be
%% manipulated;
%% for example, will it be combined with another variable or will it be split
%% apart into
%% word combinations? The recipe provides answers to these questions.
-spec create_data_source_from_s3(aws_client:aws_client(), create_data_source_from_s3_input()) ->
    {ok, create_data_source_from_s3_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_from_s3_errors(), tuple()}.
create_data_source_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_s3(Client, Input, []).

-spec create_data_source_from_s3(aws_client:aws_client(), create_data_source_from_s3_input(), proplists:proplist()) ->
    {ok, create_data_source_from_s3_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_from_s3_errors(), tuple()}.
create_data_source_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromS3">>, Input, Options).

%% @doc Creates a new `Evaluation' of an `MLModel'.
%%
%% An `MLModel' is evaluated on a set of observations associated to a
%% `DataSource'. Like a `DataSource'
%% for an `MLModel', the `DataSource' for an `Evaluation'
%% contains values for the `Target Variable'. The `Evaluation'
%% compares the predicted result for each observation to the actual outcome
%% and provides a
%% summary so that you know how effective the `MLModel' functions on the
%% test
%% data. Evaluation generates a relevant performance metric, such as
%% BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the
%% corresponding `MLModelType': `BINARY', `REGRESSION' or
%% `MULTICLASS'.
%%
%% `CreateEvaluation' is an asynchronous operation. In response to
%% `CreateEvaluation', Amazon Machine Learning (Amazon ML) immediately
%% returns and sets the evaluation status to `PENDING'. After the
%% `Evaluation' is created and ready for use,
%% Amazon ML sets the status to `COMPLETED'.
%%
%% You can use the `GetEvaluation' operation to check progress of the
%% evaluation during the creation operation.
-spec create_evaluation(aws_client:aws_client(), create_evaluation_input()) ->
    {ok, create_evaluation_output(), tuple()} |
    {error, any()} |
    {error, create_evaluation_errors(), tuple()}.
create_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_evaluation(Client, Input, []).

-spec create_evaluation(aws_client:aws_client(), create_evaluation_input(), proplists:proplist()) ->
    {ok, create_evaluation_output(), tuple()} |
    {error, any()} |
    {error, create_evaluation_errors(), tuple()}.
create_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEvaluation">>, Input, Options).

%% @doc Creates a new `MLModel' using the `DataSource' and the recipe
%% as
%% information sources.
%%
%% An `MLModel' is nearly immutable. Users can update only the
%% `MLModelName' and the `ScoreThreshold' in an
%% `MLModel' without creating a new `MLModel'.
%%
%% `CreateMLModel' is an asynchronous operation. In response to
%% `CreateMLModel', Amazon Machine Learning (Amazon ML) immediately
%% returns
%% and sets the `MLModel' status to `PENDING'. After the
%% `MLModel' has been created and ready is for use, Amazon ML sets the
%% status to `COMPLETED'.
%%
%% You can use the `GetMLModel' operation to check the progress of the
%% `MLModel' during the creation operation.
%%
%% `CreateMLModel' requires a `DataSource' with computed statistics,
%% which can be created by setting `ComputeStatistics' to `true' in
%% `CreateDataSourceFromRDS', `CreateDataSourceFromS3', or
%% `CreateDataSourceFromRedshift' operations.
-spec create_ml_model(aws_client:aws_client(), create_ml_model_input()) ->
    {ok, create_ml_model_output(), tuple()} |
    {error, any()} |
    {error, create_ml_model_errors(), tuple()}.
create_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ml_model(Client, Input, []).

-spec create_ml_model(aws_client:aws_client(), create_ml_model_input(), proplists:proplist()) ->
    {ok, create_ml_model_output(), tuple()} |
    {error, any()} |
    {error, create_ml_model_errors(), tuple()}.
create_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMLModel">>, Input, Options).

%% @doc Creates a real-time endpoint for the `MLModel'.
%%
%% The endpoint contains the URI of the `MLModel'; that is, the location
%% to send real-time prediction requests for the specified `MLModel'.
-spec create_realtime_endpoint(aws_client:aws_client(), create_realtime_endpoint_input()) ->
    {ok, create_realtime_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_realtime_endpoint_errors(), tuple()}.
create_realtime_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_realtime_endpoint(Client, Input, []).

-spec create_realtime_endpoint(aws_client:aws_client(), create_realtime_endpoint_input(), proplists:proplist()) ->
    {ok, create_realtime_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_realtime_endpoint_errors(), tuple()}.
create_realtime_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRealtimeEndpoint">>, Input, Options).

%% @doc Assigns the DELETED status to a `BatchPrediction', rendering it
%% unusable.
%%
%% After using the `DeleteBatchPrediction' operation, you can use the
%% `GetBatchPrediction'
%% operation to verify that the status of the `BatchPrediction' changed
%% to DELETED.
%%
%% Caution: The result of the `DeleteBatchPrediction' operation is
%% irreversible.
-spec delete_batch_prediction(aws_client:aws_client(), delete_batch_prediction_input()) ->
    {ok, delete_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, delete_batch_prediction_errors(), tuple()}.
delete_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_prediction(Client, Input, []).

-spec delete_batch_prediction(aws_client:aws_client(), delete_batch_prediction_input(), proplists:proplist()) ->
    {ok, delete_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, delete_batch_prediction_errors(), tuple()}.
delete_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchPrediction">>, Input, Options).

%% @doc Assigns the DELETED status to a `DataSource', rendering it
%% unusable.
%%
%% After using the `DeleteDataSource' operation, you can use the
%% `GetDataSource' operation to verify that the status of the
%% `DataSource' changed to DELETED.
%%
%% Caution: The results of the `DeleteDataSource' operation are
%% irreversible.
-spec delete_data_source(aws_client:aws_client(), delete_data_source_input()) ->
    {ok, delete_data_source_output(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_source(Client, Input, []).

-spec delete_data_source(aws_client:aws_client(), delete_data_source_input(), proplists:proplist()) ->
    {ok, delete_data_source_output(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataSource">>, Input, Options).

%% @doc Assigns the `DELETED' status to an `Evaluation', rendering it
%% unusable.
%%
%% After invoking the `DeleteEvaluation' operation, you can use the
%% `GetEvaluation' operation to verify that the status of the
%% `Evaluation' changed to `DELETED'.
%%
%% Caution: The results of the `DeleteEvaluation' operation are
%% irreversible.
-spec delete_evaluation(aws_client:aws_client(), delete_evaluation_input()) ->
    {ok, delete_evaluation_output(), tuple()} |
    {error, any()} |
    {error, delete_evaluation_errors(), tuple()}.
delete_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_evaluation(Client, Input, []).

-spec delete_evaluation(aws_client:aws_client(), delete_evaluation_input(), proplists:proplist()) ->
    {ok, delete_evaluation_output(), tuple()} |
    {error, any()} |
    {error, delete_evaluation_errors(), tuple()}.
delete_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvaluation">>, Input, Options).

%% @doc Assigns the `DELETED' status to an `MLModel', rendering it
%% unusable.
%%
%% After using the `DeleteMLModel' operation, you can use the
%% `GetMLModel' operation to verify that the status of the `MLModel'
%% changed to DELETED.
%%
%% Caution: The result of the `DeleteMLModel' operation is irreversible.
-spec delete_ml_model(aws_client:aws_client(), delete_ml_model_input()) ->
    {ok, delete_ml_model_output(), tuple()} |
    {error, any()} |
    {error, delete_ml_model_errors(), tuple()}.
delete_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ml_model(Client, Input, []).

-spec delete_ml_model(aws_client:aws_client(), delete_ml_model_input(), proplists:proplist()) ->
    {ok, delete_ml_model_output(), tuple()} |
    {error, any()} |
    {error, delete_ml_model_errors(), tuple()}.
delete_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMLModel">>, Input, Options).

%% @doc Deletes a real time endpoint of an `MLModel'.
-spec delete_realtime_endpoint(aws_client:aws_client(), delete_realtime_endpoint_input()) ->
    {ok, delete_realtime_endpoint_output(), tuple()} |
    {error, any()} |
    {error, delete_realtime_endpoint_errors(), tuple()}.
delete_realtime_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_realtime_endpoint(Client, Input, []).

-spec delete_realtime_endpoint(aws_client:aws_client(), delete_realtime_endpoint_input(), proplists:proplist()) ->
    {ok, delete_realtime_endpoint_output(), tuple()} |
    {error, any()} |
    {error, delete_realtime_endpoint_errors(), tuple()}.
delete_realtime_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRealtimeEndpoint">>, Input, Options).

%% @doc Deletes the specified tags associated with an ML object.
%%
%% After this operation is complete, you can't recover deleted tags.
%%
%% If you specify a tag that doesn't exist, Amazon ML ignores it.
-spec delete_tags(aws_client:aws_client(), delete_tags_input()) ->
    {ok, delete_tags_output(), tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).

-spec delete_tags(aws_client:aws_client(), delete_tags_input(), proplists:proplist()) ->
    {ok, delete_tags_output(), tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Returns a list of `BatchPrediction' operations that match the
%% search criteria in the request.
-spec describe_batch_predictions(aws_client:aws_client(), describe_batch_predictions_input()) ->
    {ok, describe_batch_predictions_output(), tuple()} |
    {error, any()} |
    {error, describe_batch_predictions_errors(), tuple()}.
describe_batch_predictions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_predictions(Client, Input, []).

-spec describe_batch_predictions(aws_client:aws_client(), describe_batch_predictions_input(), proplists:proplist()) ->
    {ok, describe_batch_predictions_output(), tuple()} |
    {error, any()} |
    {error, describe_batch_predictions_errors(), tuple()}.
describe_batch_predictions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchPredictions">>, Input, Options).

%% @doc Returns a list of `DataSource' that match the search criteria in
%% the request.
-spec describe_data_sources(aws_client:aws_client(), describe_data_sources_input()) ->
    {ok, describe_data_sources_output(), tuple()} |
    {error, any()} |
    {error, describe_data_sources_errors(), tuple()}.
describe_data_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_sources(Client, Input, []).

-spec describe_data_sources(aws_client:aws_client(), describe_data_sources_input(), proplists:proplist()) ->
    {ok, describe_data_sources_output(), tuple()} |
    {error, any()} |
    {error, describe_data_sources_errors(), tuple()}.
describe_data_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSources">>, Input, Options).

%% @doc Returns a list of `DescribeEvaluations' that match the search
%% criteria in the request.
-spec describe_evaluations(aws_client:aws_client(), describe_evaluations_input()) ->
    {ok, describe_evaluations_output(), tuple()} |
    {error, any()} |
    {error, describe_evaluations_errors(), tuple()}.
describe_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_evaluations(Client, Input, []).

-spec describe_evaluations(aws_client:aws_client(), describe_evaluations_input(), proplists:proplist()) ->
    {ok, describe_evaluations_output(), tuple()} |
    {error, any()} |
    {error, describe_evaluations_errors(), tuple()}.
describe_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvaluations">>, Input, Options).

%% @doc Returns a list of `MLModel' that match the search criteria in the
%% request.
-spec describe_ml_models(aws_client:aws_client(), describe_ml_models_input()) ->
    {ok, describe_ml_models_output(), tuple()} |
    {error, any()} |
    {error, describe_ml_models_errors(), tuple()}.
describe_ml_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ml_models(Client, Input, []).

-spec describe_ml_models(aws_client:aws_client(), describe_ml_models_input(), proplists:proplist()) ->
    {ok, describe_ml_models_output(), tuple()} |
    {error, any()} |
    {error, describe_ml_models_errors(), tuple()}.
describe_ml_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMLModels">>, Input, Options).

%% @doc Describes one or more of the tags for your Amazon ML object.
-spec describe_tags(aws_client:aws_client(), describe_tags_input()) ->
    {ok, describe_tags_output(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_input(), proplists:proplist()) ->
    {ok, describe_tags_output(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Returns a `BatchPrediction' that includes detailed metadata,
%% status, and data file information for a
%% `Batch Prediction' request.
-spec get_batch_prediction(aws_client:aws_client(), get_batch_prediction_input()) ->
    {ok, get_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, get_batch_prediction_errors(), tuple()}.
get_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_prediction(Client, Input, []).

-spec get_batch_prediction(aws_client:aws_client(), get_batch_prediction_input(), proplists:proplist()) ->
    {ok, get_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, get_batch_prediction_errors(), tuple()}.
get_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchPrediction">>, Input, Options).

%% @doc Returns a `DataSource' that includes metadata and data file
%% information, as well as the current status of the `DataSource'.
%%
%% `GetDataSource' provides results in normal or verbose format. The
%% verbose format
%% adds the schema description and the list of files pointed to by the
%% DataSource to the normal format.
-spec get_data_source(aws_client:aws_client(), get_data_source_input()) ->
    {ok, get_data_source_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_source(Client, Input, []).

-spec get_data_source(aws_client:aws_client(), get_data_source_input(), proplists:proplist()) ->
    {ok, get_data_source_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataSource">>, Input, Options).

%% @doc Returns an `Evaluation' that includes metadata as well as the
%% current status of the `Evaluation'.
-spec get_evaluation(aws_client:aws_client(), get_evaluation_input()) ->
    {ok, get_evaluation_output(), tuple()} |
    {error, any()} |
    {error, get_evaluation_errors(), tuple()}.
get_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_evaluation(Client, Input, []).

-spec get_evaluation(aws_client:aws_client(), get_evaluation_input(), proplists:proplist()) ->
    {ok, get_evaluation_output(), tuple()} |
    {error, any()} |
    {error, get_evaluation_errors(), tuple()}.
get_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEvaluation">>, Input, Options).

%% @doc Returns an `MLModel' that includes detailed metadata, data source
%% information, and the current status of the `MLModel'.
%%
%% `GetMLModel' provides results in normal or verbose format.
-spec get_ml_model(aws_client:aws_client(), get_ml_model_input()) ->
    {ok, get_ml_model_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_errors(), tuple()}.
get_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_model(Client, Input, []).

-spec get_ml_model(aws_client:aws_client(), get_ml_model_input(), proplists:proplist()) ->
    {ok, get_ml_model_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_errors(), tuple()}.
get_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLModel">>, Input, Options).

%% @doc Generates a prediction for the observation using the specified `ML
%% Model'.
%%
%% Note: Not all response parameters will be populated. Whether a
%% response parameter is populated depends on the type of model requested.
-spec predict(aws_client:aws_client(), predict_input()) ->
    {ok, predict_output(), tuple()} |
    {error, any()} |
    {error, predict_errors(), tuple()}.
predict(Client, Input)
  when is_map(Client), is_map(Input) ->
    predict(Client, Input, []).

-spec predict(aws_client:aws_client(), predict_input(), proplists:proplist()) ->
    {ok, predict_output(), tuple()} |
    {error, any()} |
    {error, predict_errors(), tuple()}.
predict(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Predict">>, Input, Options).

%% @doc Updates the `BatchPredictionName' of a `BatchPrediction'.
%%
%% You can use the `GetBatchPrediction' operation to view the contents of
%% the updated data element.
-spec update_batch_prediction(aws_client:aws_client(), update_batch_prediction_input()) ->
    {ok, update_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, update_batch_prediction_errors(), tuple()}.
update_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_batch_prediction(Client, Input, []).

-spec update_batch_prediction(aws_client:aws_client(), update_batch_prediction_input(), proplists:proplist()) ->
    {ok, update_batch_prediction_output(), tuple()} |
    {error, any()} |
    {error, update_batch_prediction_errors(), tuple()}.
update_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBatchPrediction">>, Input, Options).

%% @doc Updates the `DataSourceName' of a `DataSource'.
%%
%% You can use the `GetDataSource' operation to view the contents of the
%% updated data element.
-spec update_data_source(aws_client:aws_client(), update_data_source_input()) ->
    {ok, update_data_source_output(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_source(Client, Input, []).

-spec update_data_source(aws_client:aws_client(), update_data_source_input(), proplists:proplist()) ->
    {ok, update_data_source_output(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataSource">>, Input, Options).

%% @doc Updates the `EvaluationName' of an `Evaluation'.
%%
%% You can use the `GetEvaluation' operation to view the contents of the
%% updated data element.
-spec update_evaluation(aws_client:aws_client(), update_evaluation_input()) ->
    {ok, update_evaluation_output(), tuple()} |
    {error, any()} |
    {error, update_evaluation_errors(), tuple()}.
update_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_evaluation(Client, Input, []).

-spec update_evaluation(aws_client:aws_client(), update_evaluation_input(), proplists:proplist()) ->
    {ok, update_evaluation_output(), tuple()} |
    {error, any()} |
    {error, update_evaluation_errors(), tuple()}.
update_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEvaluation">>, Input, Options).

%% @doc Updates the `MLModelName' and the `ScoreThreshold' of an
%% `MLModel'.
%%
%% You can use the `GetMLModel' operation to view the contents of the
%% updated data element.
-spec update_ml_model(aws_client:aws_client(), update_ml_model_input()) ->
    {ok, update_ml_model_output(), tuple()} |
    {error, any()} |
    {error, update_ml_model_errors(), tuple()}.
update_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ml_model(Client, Input, []).

-spec update_ml_model(aws_client:aws_client(), update_ml_model_input(), proplists:proplist()) ->
    {ok, update_ml_model_output(), tuple()} |
    {error, any()} |
    {error, update_ml_model_errors(), tuple()}.
update_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMLModel">>, Input, Options).

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
    Client1 = Client#{service => <<"machinelearning">>},
    Host = build_host(<<"machinelearning">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonML_20141212.", Action/binary>>}
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
