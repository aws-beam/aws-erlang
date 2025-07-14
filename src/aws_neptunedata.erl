%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Neptune Data API
%%
%% The Amazon Neptune data API provides SDK support for more than 40 of
%% Neptune's data
%% operations, including data loading, query execution, data inquiry, and
%% machine learning.
%%
%% It supports the Gremlin and openCypher query languages, and is
%% available in all SDK languages. It automatically signs API requests and
%% greatly simplifies
%% integrating Neptune into your applications.
-module(aws_neptunedata).

-export([cancel_gremlin_query/3,
         cancel_gremlin_query/4,
         cancel_loader_job/3,
         cancel_loader_job/4,
         cancel_ml_data_processing_job/3,
         cancel_ml_data_processing_job/4,
         cancel_ml_model_training_job/3,
         cancel_ml_model_training_job/4,
         cancel_ml_model_transform_job/3,
         cancel_ml_model_transform_job/4,
         cancel_open_cypher_query/3,
         cancel_open_cypher_query/4,
         create_ml_endpoint/2,
         create_ml_endpoint/3,
         delete_ml_endpoint/3,
         delete_ml_endpoint/4,
         delete_propertygraph_statistics/2,
         delete_propertygraph_statistics/3,
         delete_sparql_statistics/2,
         delete_sparql_statistics/3,
         execute_fast_reset/2,
         execute_fast_reset/3,
         execute_gremlin_explain_query/2,
         execute_gremlin_explain_query/3,
         execute_gremlin_profile_query/2,
         execute_gremlin_profile_query/3,
         execute_gremlin_query/2,
         execute_gremlin_query/3,
         execute_open_cypher_explain_query/2,
         execute_open_cypher_explain_query/3,
         execute_open_cypher_query/2,
         execute_open_cypher_query/3,
         get_engine_status/1,
         get_engine_status/3,
         get_engine_status/4,
         get_gremlin_query_status/2,
         get_gremlin_query_status/4,
         get_gremlin_query_status/5,
         get_loader_job_status/2,
         get_loader_job_status/4,
         get_loader_job_status/5,
         get_ml_data_processing_job/2,
         get_ml_data_processing_job/4,
         get_ml_data_processing_job/5,
         get_ml_endpoint/2,
         get_ml_endpoint/4,
         get_ml_endpoint/5,
         get_ml_model_training_job/2,
         get_ml_model_training_job/4,
         get_ml_model_training_job/5,
         get_ml_model_transform_job/2,
         get_ml_model_transform_job/4,
         get_ml_model_transform_job/5,
         get_open_cypher_query_status/2,
         get_open_cypher_query_status/4,
         get_open_cypher_query_status/5,
         get_propertygraph_statistics/1,
         get_propertygraph_statistics/3,
         get_propertygraph_statistics/4,
         get_propertygraph_stream/1,
         get_propertygraph_stream/3,
         get_propertygraph_stream/4,
         get_propertygraph_summary/1,
         get_propertygraph_summary/3,
         get_propertygraph_summary/4,
         get_r_d_f_graph_summary/1,
         get_r_d_f_graph_summary/3,
         get_r_d_f_graph_summary/4,
         get_sparql_statistics/1,
         get_sparql_statistics/3,
         get_sparql_statistics/4,
         get_sparql_stream/1,
         get_sparql_stream/3,
         get_sparql_stream/4,
         list_gremlin_queries/1,
         list_gremlin_queries/3,
         list_gremlin_queries/4,
         list_loader_jobs/1,
         list_loader_jobs/3,
         list_loader_jobs/4,
         list_ml_data_processing_jobs/1,
         list_ml_data_processing_jobs/3,
         list_ml_data_processing_jobs/4,
         list_ml_endpoints/1,
         list_ml_endpoints/3,
         list_ml_endpoints/4,
         list_ml_model_training_jobs/1,
         list_ml_model_training_jobs/3,
         list_ml_model_training_jobs/4,
         list_ml_model_transform_jobs/1,
         list_ml_model_transform_jobs/3,
         list_ml_model_transform_jobs/4,
         list_open_cypher_queries/1,
         list_open_cypher_queries/3,
         list_open_cypher_queries/4,
         manage_propertygraph_statistics/2,
         manage_propertygraph_statistics/3,
         manage_sparql_statistics/2,
         manage_sparql_statistics/3,
         start_loader_job/2,
         start_loader_job/3,
         start_ml_data_processing_job/2,
         start_ml_data_processing_job/3,
         start_ml_model_training_job/2,
         start_ml_model_training_job/3,
         start_ml_model_transform_job/2,
         start_ml_model_transform_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% parsing_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type parsing_exception() :: #{binary() => any()}.


%% Example:
%% manage_sparql_statistics_input() :: #{
%%   <<"mode">> => list(any())
%% }
-type manage_sparql_statistics_input() :: #{binary() => any()}.


%% Example:
%% get_ml_model_training_job_input() :: #{
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type get_ml_model_training_job_input() :: #{binary() => any()}.


%% Example:
%% cancel_ml_data_processing_job_input() :: #{
%%   <<"clean">> => [boolean()],
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type cancel_ml_data_processing_job_input() :: #{binary() => any()}.


%% Example:
%% read_only_violation_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type read_only_violation_exception() :: #{binary() => any()}.


%% Example:
%% custom_model_training_parameters() :: #{
%%   <<"sourceS3DirectoryPath">> => [string()],
%%   <<"trainingEntryPointScript">> => [string()],
%%   <<"transformEntryPointScript">> => [string()]
%% }
-type custom_model_training_parameters() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% s3_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type s3_exception() :: #{binary() => any()}.


%% Example:
%% get_r_d_f_graph_summary_input() :: #{
%%   <<"mode">> => list(any())
%% }
-type get_r_d_f_graph_summary_input() :: #{binary() => any()}.


%% Example:
%% get_propertygraph_stream_output() :: #{
%%   <<"format">> => [string()],
%%   <<"lastEventId">> => map(),
%%   <<"lastTrxTimestampInMillis">> => [float()],
%%   <<"records">> => list(propertygraph_record()),
%%   <<"totalRecords">> => [integer()]
%% }
-type get_propertygraph_stream_output() :: #{binary() => any()}.


%% Example:
%% statistics_not_available_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type statistics_not_available_exception() :: #{binary() => any()}.


%% Example:
%% query_language_version() :: #{
%%   <<"version">> => [string()]
%% }
-type query_language_version() :: #{binary() => any()}.


%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.


%% Example:
%% delete_propertygraph_statistics_output() :: #{
%%   <<"payload">> => delete_statistics_value_map(),
%%   <<"status">> => [string()],
%%   <<"statusCode">> => [integer()]
%% }
-type delete_propertygraph_statistics_output() :: #{binary() => any()}.


%% Example:
%% get_propertygraph_statistics_output() :: #{
%%   <<"payload">> => statistics(),
%%   <<"status">> => [string()]
%% }
-type get_propertygraph_statistics_output() :: #{binary() => any()}.


%% Example:
%% execute_gremlin_profile_query_input() :: #{
%%   <<"chop">> => [integer()],
%%   <<"gremlinQuery">> := [string()],
%%   <<"indexOps">> => [boolean()],
%%   <<"results">> => [boolean()],
%%   <<"serializer">> => [string()]
%% }
-type execute_gremlin_profile_query_input() :: #{binary() => any()}.


%% Example:
%% list_ml_model_transform_jobs_input() :: #{
%%   <<"maxItems">> => integer(),
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type list_ml_model_transform_jobs_input() :: #{binary() => any()}.


%% Example:
%% cancel_ml_data_processing_job_output() :: #{
%%   <<"status">> => [string()]
%% }
-type cancel_ml_data_processing_job_output() :: #{binary() => any()}.


%% Example:
%% bulk_load_id_not_found_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type bulk_load_id_not_found_exception() :: #{binary() => any()}.


%% Example:
%% query_eval_stats() :: #{
%%   <<"cancelled">> => [boolean()],
%%   <<"elapsed">> => [integer()],
%%   <<"subqueries">> => [any()],
%%   <<"waited">> => [integer()]
%% }
-type query_eval_stats() :: #{binary() => any()}.


%% Example:
%% manage_propertygraph_statistics_output() :: #{
%%   <<"payload">> => refresh_statistics_id_map(),
%%   <<"status">> => [string()]
%% }
-type manage_propertygraph_statistics_output() :: #{binary() => any()}.


%% Example:
%% cancel_open_cypher_query_output() :: #{
%%   <<"payload">> => [boolean()],
%%   <<"status">> => [string()]
%% }
-type cancel_open_cypher_query_output() :: #{binary() => any()}.


%% Example:
%% execute_open_cypher_query_output() :: #{
%%   <<"results">> => [any()]
%% }
-type execute_open_cypher_query_output() :: #{binary() => any()}.


%% Example:
%% get_ml_model_transform_job_output() :: #{
%%   <<"baseProcessingJob">> => ml_resource_definition(),
%%   <<"id">> => [string()],
%%   <<"models">> => list(ml_config_definition()),
%%   <<"remoteModelTransformJob">> => ml_resource_definition(),
%%   <<"status">> => [string()]
%% }
-type get_ml_model_transform_job_output() :: #{binary() => any()}.


%% Example:
%% cancel_ml_model_transform_job_output() :: #{
%%   <<"status">> => [string()]
%% }
-type cancel_ml_model_transform_job_output() :: #{binary() => any()}.


%% Example:
%% execute_gremlin_explain_query_input() :: #{
%%   <<"gremlinQuery">> := [string()]
%% }
-type execute_gremlin_explain_query_input() :: #{binary() => any()}.


%% Example:
%% method_not_allowed_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type method_not_allowed_exception() :: #{binary() => any()}.


%% Example:
%% get_propertygraph_summary_input() :: #{
%%   <<"mode">> => list(any())
%% }
-type get_propertygraph_summary_input() :: #{binary() => any()}.


%% Example:
%% ml_config_definition() :: #{
%%   <<"arn">> => [string()],
%%   <<"name">> => [string()]
%% }
-type ml_config_definition() :: #{binary() => any()}.


%% Example:
%% execute_gremlin_profile_query_output() :: #{
%%   <<"output">> => binary()
%% }
-type execute_gremlin_profile_query_output() :: #{binary() => any()}.


%% Example:
%% list_ml_model_training_jobs_input() :: #{
%%   <<"maxItems">> => integer(),
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type list_ml_model_training_jobs_input() :: #{binary() => any()}.


%% Example:
%% cancel_gremlin_query_output() :: #{
%%   <<"status">> => [string()]
%% }
-type cancel_gremlin_query_output() :: #{binary() => any()}.


%% Example:
%% propertygraph_data() :: #{
%%   <<"from">> => [string()],
%%   <<"id">> => [string()],
%%   <<"key">> => [string()],
%%   <<"to">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [any()]
%% }
-type propertygraph_data() :: #{binary() => any()}.

%% Example:
%% cancel_loader_job_input() :: #{}
-type cancel_loader_job_input() :: #{}.


%% Example:
%% execute_open_cypher_explain_query_input() :: #{
%%   <<"explainMode">> := list(any()),
%%   <<"openCypherQuery">> := [string()],
%%   <<"parameters">> => [string()]
%% }
-type execute_open_cypher_explain_query_input() :: #{binary() => any()}.


%% Example:
%% failure_by_query_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type failure_by_query_exception() :: #{binary() => any()}.


%% Example:
%% get_sparql_stream_output() :: #{
%%   <<"format">> => [string()],
%%   <<"lastEventId">> => map(),
%%   <<"lastTrxTimestampInMillis">> => [float()],
%%   <<"records">> => list(sparql_record()),
%%   <<"totalRecords">> => [integer()]
%% }
-type get_sparql_stream_output() :: #{binary() => any()}.


%% Example:
%% illegal_argument_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type illegal_argument_exception() :: #{binary() => any()}.


%% Example:
%% start_ml_model_training_job_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"creationTimeInMillis">> => [float()],
%%   <<"id">> => [string()]
%% }
-type start_ml_model_training_job_output() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% start_loader_job_input() :: #{
%%   <<"dependencies">> => list([string()]()),
%%   <<"failOnError">> => [boolean()],
%%   <<"format">> := list(any()),
%%   <<"iamRoleArn">> := [string()],
%%   <<"mode">> => list(any()),
%%   <<"parallelism">> => list(any()),
%%   <<"parserConfiguration">> => map(),
%%   <<"queueRequest">> => [boolean()],
%%   <<"s3BucketRegion">> := list(any()),
%%   <<"source">> := [string()],
%%   <<"updateSingleCardinalityProperties">> => [boolean()],
%%   <<"userProvidedEdgeIds">> => [boolean()]
%% }
-type start_loader_job_input() :: #{binary() => any()}.

%% Example:
%% get_gremlin_query_status_input() :: #{}
-type get_gremlin_query_status_input() :: #{}.


%% Example:
%% start_ml_data_processing_job_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"creationTimeInMillis">> => [float()],
%%   <<"id">> => [string()]
%% }
-type start_ml_data_processing_job_output() :: #{binary() => any()}.


%% Example:
%% list_ml_model_transform_jobs_output() :: #{
%%   <<"ids">> => list([string()]())
%% }
-type list_ml_model_transform_jobs_output() :: #{binary() => any()}.


%% Example:
%% get_ml_data_processing_job_input() :: #{
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type get_ml_data_processing_job_input() :: #{binary() => any()}.


%% Example:
%% subject_structure() :: #{
%%   <<"count">> => [float()],
%%   <<"predicates">> => list([string()]())
%% }
-type subject_structure() :: #{binary() => any()}.


%% Example:
%% ml_resource_not_found_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type ml_resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% ml_resource_definition() :: #{
%%   <<"arn">> => [string()],
%%   <<"cloudwatchLogUrl">> => [string()],
%%   <<"failureReason">> => [string()],
%%   <<"name">> => [string()],
%%   <<"outputLocation">> => [string()],
%%   <<"status">> => [string()]
%% }
-type ml_resource_definition() :: #{binary() => any()}.


%% Example:
%% query_limit_exceeded_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type query_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_ml_data_processing_jobs_output() :: #{
%%   <<"ids">> => list([string()]())
%% }
-type list_ml_data_processing_jobs_output() :: #{binary() => any()}.


%% Example:
%% edge_structure() :: #{
%%   <<"count">> => [float()],
%%   <<"edgeProperties">> => list([string()]())
%% }
-type edge_structure() :: #{binary() => any()}.


%% Example:
%% get_sparql_stream_input() :: #{
%%   <<"commitNum">> => [float()],
%%   <<"encoding">> => list(any()),
%%   <<"iteratorType">> => list(any()),
%%   <<"limit">> => [float()],
%%   <<"opNum">> => [float()]
%% }
-type get_sparql_stream_input() :: #{binary() => any()}.


%% Example:
%% cancel_ml_model_training_job_output() :: #{
%%   <<"status">> => [string()]
%% }
-type cancel_ml_model_training_job_output() :: #{binary() => any()}.


%% Example:
%% time_limit_exceeded_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type time_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_loader_job_status_output() :: #{
%%   <<"payload">> => [any()],
%%   <<"status">> => [string()]
%% }
-type get_loader_job_status_output() :: #{binary() => any()}.


%% Example:
%% start_ml_model_training_job_input() :: #{
%%   <<"baseProcessingInstanceType">> => [string()],
%%   <<"customModelTrainingParameters">> => custom_model_training_parameters(),
%%   <<"dataProcessingJobId">> := [string()],
%%   <<"enableManagedSpotTraining">> => [boolean()],
%%   <<"id">> => [string()],
%%   <<"maxHPONumberOfTrainingJobs">> => [integer()],
%%   <<"maxHPOParallelTrainingJobs">> => [integer()],
%%   <<"neptuneIamRoleArn">> => [string()],
%%   <<"previousModelTrainingJobId">> => [string()],
%%   <<"s3OutputEncryptionKMSKey">> => [string()],
%%   <<"sagemakerIamRoleArn">> => [string()],
%%   <<"securityGroupIds">> => list([string()]()),
%%   <<"subnets">> => list([string()]()),
%%   <<"trainModelS3Location">> := [string()],
%%   <<"trainingInstanceType">> => [string()],
%%   <<"trainingInstanceVolumeSizeInGB">> => [integer()],
%%   <<"trainingTimeOutInSeconds">> => [integer()],
%%   <<"volumeEncryptionKMSKey">> => [string()]
%% }
-type start_ml_model_training_job_input() :: #{binary() => any()}.


%% Example:
%% memory_limit_exceeded_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type memory_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_ml_data_processing_job_input() :: #{
%%   <<"configFileName">> => [string()],
%%   <<"id">> => [string()],
%%   <<"inputDataS3Location">> := [string()],
%%   <<"modelType">> => [string()],
%%   <<"neptuneIamRoleArn">> => [string()],
%%   <<"previousDataProcessingJobId">> => [string()],
%%   <<"processedDataS3Location">> := [string()],
%%   <<"processingInstanceType">> => [string()],
%%   <<"processingInstanceVolumeSizeInGB">> => [integer()],
%%   <<"processingTimeOutInSeconds">> => [integer()],
%%   <<"s3OutputEncryptionKMSKey">> => [string()],
%%   <<"sagemakerIamRoleArn">> => [string()],
%%   <<"securityGroupIds">> => list([string()]()),
%%   <<"subnets">> => list([string()]()),
%%   <<"volumeEncryptionKMSKey">> => [string()]
%% }
-type start_ml_data_processing_job_input() :: #{binary() => any()}.


%% Example:
%% malformed_query_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type malformed_query_exception() :: #{binary() => any()}.


%% Example:
%% query_limit_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type query_limit_exception() :: #{binary() => any()}.


%% Example:
%% sparql_record() :: #{
%%   <<"commitTimestampInMillis">> => [float()],
%%   <<"data">> => sparql_data(),
%%   <<"eventId">> => map(),
%%   <<"isLastOp">> => [boolean()],
%%   <<"op">> => [string()]
%% }
-type sparql_record() :: #{binary() => any()}.


%% Example:
%% gremlin_query_status() :: #{
%%   <<"queryEvalStats">> => query_eval_stats(),
%%   <<"queryId">> => [string()],
%%   <<"queryString">> => [string()]
%% }
-type gremlin_query_status() :: #{binary() => any()}.


%% Example:
%% get_propertygraph_summary_output() :: #{
%%   <<"payload">> => propertygraph_summary_value_map(),
%%   <<"statusCode">> => [integer()]
%% }
-type get_propertygraph_summary_output() :: #{binary() => any()}.


%% Example:
%% list_ml_endpoints_output() :: #{
%%   <<"ids">> => list([string()]())
%% }
-type list_ml_endpoints_output() :: #{binary() => any()}.


%% Example:
%% r_d_f_graph_summary_value_map() :: #{
%%   <<"graphSummary">> => r_d_f_graph_summary(),
%%   <<"lastStatisticsComputationTime">> => [non_neg_integer()],
%%   <<"version">> => [string()]
%% }
-type r_d_f_graph_summary_value_map() :: #{binary() => any()}.


%% Example:
%% execute_open_cypher_query_input() :: #{
%%   <<"openCypherQuery">> := [string()],
%%   <<"parameters">> => [string()]
%% }
-type execute_open_cypher_query_input() :: #{binary() => any()}.


%% Example:
%% cancel_ml_model_transform_job_input() :: #{
%%   <<"clean">> => [boolean()],
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type cancel_ml_model_transform_job_input() :: #{binary() => any()}.


%% Example:
%% cancel_open_cypher_query_input() :: #{
%%   <<"silent">> => [boolean()]
%% }
-type cancel_open_cypher_query_input() :: #{binary() => any()}.


%% Example:
%% list_ml_model_training_jobs_output() :: #{
%%   <<"ids">> => list([string()]())
%% }
-type list_ml_model_training_jobs_output() :: #{binary() => any()}.


%% Example:
%% get_loader_job_status_input() :: #{
%%   <<"details">> => [boolean()],
%%   <<"errors">> => [boolean()],
%%   <<"errorsPerPage">> => integer(),
%%   <<"page">> => integer()
%% }
-type get_loader_job_status_input() :: #{binary() => any()}.


%% Example:
%% get_open_cypher_query_status_output() :: #{
%%   <<"queryEvalStats">> => query_eval_stats(),
%%   <<"queryId">> => [string()],
%%   <<"queryString">> => [string()]
%% }
-type get_open_cypher_query_status_output() :: #{binary() => any()}.


%% Example:
%% start_ml_model_transform_job_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"creationTimeInMillis">> => [float()],
%%   <<"id">> => [string()]
%% }
-type start_ml_model_transform_job_output() :: #{binary() => any()}.


%% Example:
%% propertygraph_summary() :: #{
%%   <<"edgeLabels">> => list([string()]()),
%%   <<"edgeProperties">> => list(map()),
%%   <<"edgeStructures">> => list(edge_structure()),
%%   <<"nodeLabels">> => list([string()]()),
%%   <<"nodeProperties">> => list(map()),
%%   <<"nodeStructures">> => list(node_structure()),
%%   <<"numEdgeLabels">> => [float()],
%%   <<"numEdgeProperties">> => [float()],
%%   <<"numEdges">> => [float()],
%%   <<"numNodeLabels">> => [float()],
%%   <<"numNodeProperties">> => [float()],
%%   <<"numNodes">> => [float()],
%%   <<"totalEdgePropertyValues">> => [float()],
%%   <<"totalNodePropertyValues">> => [float()]
%% }
-type propertygraph_summary() :: #{binary() => any()}.


%% Example:
%% fast_reset_token() :: #{
%%   <<"token">> => [string()]
%% }
-type fast_reset_token() :: #{binary() => any()}.


%% Example:
%% create_ml_endpoint_input() :: #{
%%   <<"id">> => [string()],
%%   <<"instanceCount">> => [integer()],
%%   <<"instanceType">> => [string()],
%%   <<"mlModelTrainingJobId">> => [string()],
%%   <<"mlModelTransformJobId">> => [string()],
%%   <<"modelName">> => [string()],
%%   <<"neptuneIamRoleArn">> => [string()],
%%   <<"update">> => [boolean()],
%%   <<"volumeEncryptionKMSKey">> => [string()]
%% }
-type create_ml_endpoint_input() :: #{binary() => any()}.


%% Example:
%% get_ml_model_transform_job_input() :: #{
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type get_ml_model_transform_job_input() :: #{binary() => any()}.


%% Example:
%% get_ml_endpoint_output() :: #{
%%   <<"endpoint">> => ml_resource_definition(),
%%   <<"endpointConfig">> => ml_config_definition(),
%%   <<"id">> => [string()],
%%   <<"status">> => [string()]
%% }
-type get_ml_endpoint_output() :: #{binary() => any()}.


%% Example:
%% r_d_f_graph_summary() :: #{
%%   <<"classes">> => list([string()]()),
%%   <<"numClasses">> => [float()],
%%   <<"numDistinctPredicates">> => [float()],
%%   <<"numDistinctSubjects">> => [float()],
%%   <<"numQuads">> => [float()],
%%   <<"predicates">> => list(map()),
%%   <<"subjectStructures">> => list(subject_structure())
%% }
-type r_d_f_graph_summary() :: #{binary() => any()}.


%% Example:
%% statistics_summary() :: #{
%%   <<"instanceCount">> => [integer()],
%%   <<"predicateCount">> => [integer()],
%%   <<"signatureCount">> => [integer()]
%% }
-type statistics_summary() :: #{binary() => any()}.


%% Example:
%% missing_parameter_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type missing_parameter_exception() :: #{binary() => any()}.


%% Example:
%% server_shutdown_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type server_shutdown_exception() :: #{binary() => any()}.

%% Example:
%% get_open_cypher_query_status_input() :: #{}
-type get_open_cypher_query_status_input() :: #{}.


%% Example:
%% list_ml_data_processing_jobs_input() :: #{
%%   <<"maxItems">> => integer(),
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type list_ml_data_processing_jobs_input() :: #{binary() => any()}.


%% Example:
%% get_gremlin_query_status_output() :: #{
%%   <<"queryEvalStats">> => query_eval_stats(),
%%   <<"queryId">> => [string()],
%%   <<"queryString">> => [string()]
%% }
-type get_gremlin_query_status_output() :: #{binary() => any()}.


%% Example:
%% list_ml_endpoints_input() :: #{
%%   <<"maxItems">> => integer(),
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type list_ml_endpoints_input() :: #{binary() => any()}.


%% Example:
%% list_gremlin_queries_output() :: #{
%%   <<"acceptedQueryCount">> => [integer()],
%%   <<"queries">> => list(gremlin_query_status()),
%%   <<"runningQueryCount">> => [integer()]
%% }
-type list_gremlin_queries_output() :: #{binary() => any()}.


%% Example:
%% cancel_ml_model_training_job_input() :: #{
%%   <<"clean">> => [boolean()],
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type cancel_ml_model_training_job_input() :: #{binary() => any()}.


%% Example:
%% cancelled_by_user_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type cancelled_by_user_exception() :: #{binary() => any()}.


%% Example:
%% get_ml_data_processing_job_output() :: #{
%%   <<"id">> => [string()],
%%   <<"processingJob">> => ml_resource_definition(),
%%   <<"status">> => [string()]
%% }
-type get_ml_data_processing_job_output() :: #{binary() => any()}.


%% Example:
%% delete_sparql_statistics_output() :: #{
%%   <<"payload">> => delete_statistics_value_map(),
%%   <<"status">> => [string()],
%%   <<"statusCode">> => [integer()]
%% }
-type delete_sparql_statistics_output() :: #{binary() => any()}.


%% Example:
%% get_propertygraph_stream_input() :: #{
%%   <<"commitNum">> => [float()],
%%   <<"encoding">> => list(any()),
%%   <<"iteratorType">> => list(any()),
%%   <<"limit">> => [float()],
%%   <<"opNum">> => [float()]
%% }
-type get_propertygraph_stream_input() :: #{binary() => any()}.


%% Example:
%% execute_gremlin_query_input() :: #{
%%   <<"gremlinQuery">> := [string()],
%%   <<"serializer">> => [string()]
%% }
-type execute_gremlin_query_input() :: #{binary() => any()}.


%% Example:
%% get_engine_status_output() :: #{
%%   <<"dbEngineVersion">> => [string()],
%%   <<"dfeQueryEngine">> => [string()],
%%   <<"features">> => map(),
%%   <<"gremlin">> => query_language_version(),
%%   <<"labMode">> => map(),
%%   <<"opencypher">> => query_language_version(),
%%   <<"role">> => [string()],
%%   <<"rollingBackTrxCount">> => [integer()],
%%   <<"rollingBackTrxEarliestStartTime">> => [string()],
%%   <<"settings">> => map(),
%%   <<"sparql">> => query_language_version(),
%%   <<"startTime">> => [string()],
%%   <<"status">> => [string()]
%% }
-type get_engine_status_output() :: #{binary() => any()}.


%% Example:
%% create_ml_endpoint_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"creationTimeInMillis">> => [float()],
%%   <<"id">> => [string()]
%% }
-type create_ml_endpoint_output() :: #{binary() => any()}.


%% Example:
%% propertygraph_record() :: #{
%%   <<"commitTimestampInMillis">> => [float()],
%%   <<"data">> => propertygraph_data(),
%%   <<"eventId">> => map(),
%%   <<"isLastOp">> => [boolean()],
%%   <<"op">> => [string()]
%% }
-type propertygraph_record() :: #{binary() => any()}.


%% Example:
%% list_loader_jobs_input() :: #{
%%   <<"includeQueuedLoads">> => [boolean()],
%%   <<"limit">> => integer()
%% }
-type list_loader_jobs_input() :: #{binary() => any()}.


%% Example:
%% refresh_statistics_id_map() :: #{
%%   <<"statisticsId">> => [string()]
%% }
-type refresh_statistics_id_map() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% execute_fast_reset_output() :: #{
%%   <<"payload">> => fast_reset_token(),
%%   <<"status">> => [string()]
%% }
-type execute_fast_reset_output() :: #{binary() => any()}.


%% Example:
%% propertygraph_summary_value_map() :: #{
%%   <<"graphSummary">> => propertygraph_summary(),
%%   <<"lastStatisticsComputationTime">> => [non_neg_integer()],
%%   <<"version">> => [string()]
%% }
-type propertygraph_summary_value_map() :: #{binary() => any()}.


%% Example:
%% invalid_argument_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type invalid_argument_exception() :: #{binary() => any()}.


%% Example:
%% list_open_cypher_queries_input() :: #{
%%   <<"includeWaiting">> => [boolean()]
%% }
-type list_open_cypher_queries_input() :: #{binary() => any()}.


%% Example:
%% statistics() :: #{
%%   <<"active">> => [boolean()],
%%   <<"autoCompute">> => [boolean()],
%%   <<"date">> => [non_neg_integer()],
%%   <<"note">> => [string()],
%%   <<"signatureInfo">> => statistics_summary(),
%%   <<"statisticsId">> => [string()]
%% }
-type statistics() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% manage_sparql_statistics_output() :: #{
%%   <<"payload">> => refresh_statistics_id_map(),
%%   <<"status">> => [string()]
%% }
-type manage_sparql_statistics_output() :: #{binary() => any()}.


%% Example:
%% node_structure() :: #{
%%   <<"count">> => [float()],
%%   <<"distinctOutgoingEdgeLabels">> => list([string()]()),
%%   <<"nodeProperties">> => list([string()]())
%% }
-type node_structure() :: #{binary() => any()}.


%% Example:
%% constraint_violation_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type constraint_violation_exception() :: #{binary() => any()}.


%% Example:
%% query_too_large_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type query_too_large_exception() :: #{binary() => any()}.


%% Example:
%% cancel_loader_job_output() :: #{
%%   <<"status">> => [string()]
%% }
-type cancel_loader_job_output() :: #{binary() => any()}.


%% Example:
%% list_gremlin_queries_input() :: #{
%%   <<"includeWaiting">> => [boolean()]
%% }
-type list_gremlin_queries_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% execute_gremlin_query_output() :: #{
%%   <<"meta">> => [any()],
%%   <<"requestId">> => [string()],
%%   <<"result">> => [any()],
%%   <<"status">> => gremlin_query_status_attributes()
%% }
-type execute_gremlin_query_output() :: #{binary() => any()}.


%% Example:
%% stream_records_not_found_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type stream_records_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_r_d_f_graph_summary_output() :: #{
%%   <<"payload">> => r_d_f_graph_summary_value_map(),
%%   <<"statusCode">> => [integer()]
%% }
-type get_r_d_f_graph_summary_output() :: #{binary() => any()}.


%% Example:
%% manage_propertygraph_statistics_input() :: #{
%%   <<"mode">> => list(any())
%% }
-type manage_propertygraph_statistics_input() :: #{binary() => any()}.


%% Example:
%% invalid_numeric_data_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type invalid_numeric_data_exception() :: #{binary() => any()}.


%% Example:
%% execute_gremlin_explain_query_output() :: #{
%%   <<"output">> => binary()
%% }
-type execute_gremlin_explain_query_output() :: #{binary() => any()}.


%% Example:
%% delete_ml_endpoint_output() :: #{
%%   <<"status">> => [string()]
%% }
-type delete_ml_endpoint_output() :: #{binary() => any()}.


%% Example:
%% load_url_access_denied_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type load_url_access_denied_exception() :: #{binary() => any()}.


%% Example:
%% delete_ml_endpoint_input() :: #{
%%   <<"clean">> => [boolean()],
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type delete_ml_endpoint_input() :: #{binary() => any()}.


%% Example:
%% expired_stream_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type expired_stream_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% gremlin_query_status_attributes() :: #{
%%   <<"attributes">> => [any()],
%%   <<"code">> => [integer()],
%%   <<"message">> => [string()]
%% }
-type gremlin_query_status_attributes() :: #{binary() => any()}.


%% Example:
%% start_loader_job_output() :: #{
%%   <<"payload">> => map(),
%%   <<"status">> => [string()]
%% }
-type start_loader_job_output() :: #{binary() => any()}.


%% Example:
%% delete_statistics_value_map() :: #{
%%   <<"active">> => [boolean()],
%%   <<"statisticsId">> => [string()]
%% }
-type delete_statistics_value_map() :: #{binary() => any()}.


%% Example:
%% execute_open_cypher_explain_query_output() :: #{
%%   <<"results">> => [binary()]
%% }
-type execute_open_cypher_explain_query_output() :: #{binary() => any()}.


%% Example:
%% list_open_cypher_queries_output() :: #{
%%   <<"acceptedQueryCount">> => [integer()],
%%   <<"queries">> => list(gremlin_query_status()),
%%   <<"runningQueryCount">> => [integer()]
%% }
-type list_open_cypher_queries_output() :: #{binary() => any()}.


%% Example:
%% start_ml_model_transform_job_input() :: #{
%%   <<"baseProcessingInstanceType">> => [string()],
%%   <<"baseProcessingInstanceVolumeSizeInGB">> => [integer()],
%%   <<"customModelTransformParameters">> => custom_model_transform_parameters(),
%%   <<"dataProcessingJobId">> => [string()],
%%   <<"id">> => [string()],
%%   <<"mlModelTrainingJobId">> => [string()],
%%   <<"modelTransformOutputS3Location">> := [string()],
%%   <<"neptuneIamRoleArn">> => [string()],
%%   <<"s3OutputEncryptionKMSKey">> => [string()],
%%   <<"sagemakerIamRoleArn">> => [string()],
%%   <<"securityGroupIds">> => list([string()]()),
%%   <<"subnets">> => list([string()]()),
%%   <<"trainingJobName">> => [string()],
%%   <<"volumeEncryptionKMSKey">> => [string()]
%% }
-type start_ml_model_transform_job_input() :: #{binary() => any()}.


%% Example:
%% custom_model_transform_parameters() :: #{
%%   <<"sourceS3DirectoryPath">> => [string()],
%%   <<"transformEntryPointScript">> => [string()]
%% }
-type custom_model_transform_parameters() :: #{binary() => any()}.


%% Example:
%% loader_id_result() :: #{
%%   <<"loadIds">> => list([string()]())
%% }
-type loader_id_result() :: #{binary() => any()}.


%% Example:
%% get_ml_model_training_job_output() :: #{
%%   <<"hpoJob">> => ml_resource_definition(),
%%   <<"id">> => [string()],
%%   <<"mlModels">> => list(ml_config_definition()),
%%   <<"modelTransformJob">> => ml_resource_definition(),
%%   <<"processingJob">> => ml_resource_definition(),
%%   <<"status">> => [string()]
%% }
-type get_ml_model_training_job_output() :: #{binary() => any()}.


%% Example:
%% preconditions_failed_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type preconditions_failed_exception() :: #{binary() => any()}.


%% Example:
%% client_timeout_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"detailedMessage">> => [string()],
%%   <<"requestId">> => [string()]
%% }
-type client_timeout_exception() :: #{binary() => any()}.


%% Example:
%% sparql_data() :: #{
%%   <<"stmt">> => [string()]
%% }
-type sparql_data() :: #{binary() => any()}.


%% Example:
%% list_loader_jobs_output() :: #{
%%   <<"payload">> => loader_id_result(),
%%   <<"status">> => [string()]
%% }
-type list_loader_jobs_output() :: #{binary() => any()}.

%% Example:
%% cancel_gremlin_query_input() :: #{}
-type cancel_gremlin_query_input() :: #{}.


%% Example:
%% get_ml_endpoint_input() :: #{
%%   <<"neptuneIamRoleArn">> => [string()]
%% }
-type get_ml_endpoint_input() :: #{binary() => any()}.


%% Example:
%% get_sparql_statistics_output() :: #{
%%   <<"payload">> => statistics(),
%%   <<"status">> => [string()]
%% }
-type get_sparql_statistics_output() :: #{binary() => any()}.


%% Example:
%% execute_fast_reset_input() :: #{
%%   <<"action">> := list(any()),
%%   <<"token">> => [string()]
%% }
-type execute_fast_reset_input() :: #{binary() => any()}.

-type cancel_gremlin_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    time_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type cancel_loader_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    load_url_access_denied_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    bulk_load_id_not_found_exception() | 
    unsupported_operation_exception() | 
    internal_failure_exception().

-type cancel_ml_data_processing_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type cancel_ml_model_training_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type cancel_ml_model_transform_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type cancel_open_cypher_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    invalid_numeric_data_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    time_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type create_ml_endpoint_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type delete_ml_endpoint_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type delete_propertygraph_statistics_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type delete_sparql_statistics_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type execute_fast_reset_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    server_shutdown_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    method_not_allowed_exception() | 
    unsupported_operation_exception() | 
    read_only_violation_exception().

-type execute_gremlin_explain_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    query_too_large_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    cancelled_by_user_exception() | 
    missing_parameter_exception() | 
    query_limit_exception() | 
    malformed_query_exception() | 
    memory_limit_exceeded_exception() | 
    time_limit_exceeded_exception() | 
    query_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type execute_gremlin_profile_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    query_too_large_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    cancelled_by_user_exception() | 
    missing_parameter_exception() | 
    query_limit_exception() | 
    malformed_query_exception() | 
    memory_limit_exceeded_exception() | 
    time_limit_exceeded_exception() | 
    query_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type execute_gremlin_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    query_too_large_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    cancelled_by_user_exception() | 
    missing_parameter_exception() | 
    query_limit_exception() | 
    malformed_query_exception() | 
    memory_limit_exceeded_exception() | 
    time_limit_exceeded_exception() | 
    query_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type execute_open_cypher_explain_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    invalid_numeric_data_exception() | 
    query_too_large_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    cancelled_by_user_exception() | 
    missing_parameter_exception() | 
    query_limit_exception() | 
    malformed_query_exception() | 
    memory_limit_exceeded_exception() | 
    time_limit_exceeded_exception() | 
    query_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type execute_open_cypher_query_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    invalid_numeric_data_exception() | 
    query_too_large_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    cancelled_by_user_exception() | 
    missing_parameter_exception() | 
    query_limit_exception() | 
    malformed_query_exception() | 
    memory_limit_exceeded_exception() | 
    time_limit_exceeded_exception() | 
    query_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    parsing_exception().

-type get_engine_status_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    internal_failure_exception().

-type get_gremlin_query_status_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    time_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    read_only_violation_exception() | 
    parsing_exception().

-type get_loader_job_status_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    load_url_access_denied_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    bulk_load_id_not_found_exception() | 
    unsupported_operation_exception() | 
    internal_failure_exception().

-type get_ml_data_processing_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type get_ml_endpoint_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type get_ml_model_training_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type get_ml_model_transform_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type get_open_cypher_query_status_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    invalid_numeric_data_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    time_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    read_only_violation_exception() | 
    parsing_exception().

-type get_propertygraph_statistics_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type get_propertygraph_stream_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    expired_stream_exception() | 
    stream_records_not_found_exception() | 
    throttling_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    memory_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type get_propertygraph_summary_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type get_r_d_f_graph_summary_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type get_sparql_statistics_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type get_sparql_stream_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    expired_stream_exception() | 
    stream_records_not_found_exception() | 
    throttling_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    memory_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type list_gremlin_queries_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    time_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    read_only_violation_exception() | 
    parsing_exception().

-type list_loader_jobs_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    load_url_access_denied_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    bulk_load_id_not_found_exception() | 
    unsupported_operation_exception() | 
    internal_failure_exception().

-type list_ml_data_processing_jobs_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type list_ml_endpoints_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type list_ml_model_training_jobs_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type list_ml_model_transform_jobs_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type list_open_cypher_queries_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    invalid_numeric_data_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    time_limit_exceeded_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    failure_by_query_exception() | 
    unsupported_operation_exception() | 
    read_only_violation_exception() | 
    parsing_exception().

-type manage_propertygraph_statistics_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type manage_sparql_statistics_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception() | 
    statistics_not_available_exception() | 
    read_only_violation_exception().

-type start_loader_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    load_url_access_denied_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    bulk_load_id_not_found_exception() | 
    unsupported_operation_exception() | 
    s3_exception() | 
    internal_failure_exception().

-type start_ml_data_processing_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type start_ml_model_training_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

-type start_ml_model_transform_job_errors() ::
    client_timeout_exception() | 
    preconditions_failed_exception() | 
    bad_request_exception() | 
    constraint_violation_exception() | 
    invalid_argument_exception() | 
    invalid_parameter_exception() | 
    missing_parameter_exception() | 
    ml_resource_not_found_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    unsupported_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a Gremlin query.
%%
%% See Gremlin
%% query cancellation:
%% https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status-cancel.html
%% for more information.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:CancelQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery
%% IAM action in that cluster.
-spec cancel_gremlin_query(aws_client:aws_client(), binary() | list(), cancel_gremlin_query_input()) ->
    {ok, cancel_gremlin_query_output(), tuple()} |
    {error, any()} |
    {error, cancel_gremlin_query_errors(), tuple()}.
cancel_gremlin_query(Client, QueryId, Input) ->
    cancel_gremlin_query(Client, QueryId, Input, []).

-spec cancel_gremlin_query(aws_client:aws_client(), binary() | list(), cancel_gremlin_query_input(), proplists:proplist()) ->
    {ok, cancel_gremlin_query_output(), tuple()} |
    {error, any()} |
    {error, cancel_gremlin_query_errors(), tuple()}.
cancel_gremlin_query(Client, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/gremlin/status/", aws_util:encode_uri(QueryId), ""],
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

%% @doc Cancels a specified load job.
%%
%% This is an HTTP `DELETE'
%% request. See Neptune
%% Loader Get-Status API:
%% https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm
%% for more information.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:CancelLoaderJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelloaderjob
%% IAM action in that cluster..
-spec cancel_loader_job(aws_client:aws_client(), binary() | list(), cancel_loader_job_input()) ->
    {ok, cancel_loader_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_loader_job_errors(), tuple()}.
cancel_loader_job(Client, LoadId, Input) ->
    cancel_loader_job(Client, LoadId, Input, []).

-spec cancel_loader_job(aws_client:aws_client(), binary() | list(), cancel_loader_job_input(), proplists:proplist()) ->
    {ok, cancel_loader_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_loader_job_errors(), tuple()}.
cancel_loader_job(Client, LoadId, Input0, Options0) ->
    Method = delete,
    Path = ["/loader/", aws_util:encode_uri(LoadId), ""],
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

%% @doc Cancels a Neptune ML data processing job.
%%
%% See The
%% `dataprocessing' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:CancelMLDataProcessingJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmldataprocessingjob
%% IAM action in that cluster.
-spec cancel_ml_data_processing_job(aws_client:aws_client(), binary() | list(), cancel_ml_data_processing_job_input()) ->
    {ok, cancel_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_ml_data_processing_job_errors(), tuple()}.
cancel_ml_data_processing_job(Client, Id, Input) ->
    cancel_ml_data_processing_job(Client, Id, Input, []).

-spec cancel_ml_data_processing_job(aws_client:aws_client(), binary() | list(), cancel_ml_data_processing_job_input(), proplists:proplist()) ->
    {ok, cancel_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_ml_data_processing_job_errors(), tuple()}.
cancel_ml_data_processing_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/dataprocessing/", aws_util:encode_uri(Id), ""],
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
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a Neptune ML model training job.
%%
%% See Model
%% training using the `modeltraining' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:CancelMLModelTrainingJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltrainingjob
%% IAM action in that cluster.
-spec cancel_ml_model_training_job(aws_client:aws_client(), binary() | list(), cancel_ml_model_training_job_input()) ->
    {ok, cancel_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_ml_model_training_job_errors(), tuple()}.
cancel_ml_model_training_job(Client, Id, Input) ->
    cancel_ml_model_training_job(Client, Id, Input, []).

-spec cancel_ml_model_training_job(aws_client:aws_client(), binary() | list(), cancel_ml_model_training_job_input(), proplists:proplist()) ->
    {ok, cancel_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_ml_model_training_job_errors(), tuple()}.
cancel_ml_model_training_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/modeltraining/", aws_util:encode_uri(Id), ""],
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
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a specified model transform job.
%%
%% See Use
%% a trained model to generate new model artifacts:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:CancelMLModelTransformJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltransformjob
%% IAM action in that cluster.
-spec cancel_ml_model_transform_job(aws_client:aws_client(), binary() | list(), cancel_ml_model_transform_job_input()) ->
    {ok, cancel_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_ml_model_transform_job_errors(), tuple()}.
cancel_ml_model_transform_job(Client, Id, Input) ->
    cancel_ml_model_transform_job(Client, Id, Input, []).

-spec cancel_ml_model_transform_job(aws_client:aws_client(), binary() | list(), cancel_ml_model_transform_job_input(), proplists:proplist()) ->
    {ok, cancel_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, cancel_ml_model_transform_job_errors(), tuple()}.
cancel_ml_model_transform_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/modeltransform/", aws_util:encode_uri(Id), ""],
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
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a specified openCypher query.
%%
%% See Neptune
%% openCypher status endpoint:
%% https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html
%% for more information.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:CancelQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery
%% IAM action in that cluster.
-spec cancel_open_cypher_query(aws_client:aws_client(), binary() | list(), cancel_open_cypher_query_input()) ->
    {ok, cancel_open_cypher_query_output(), tuple()} |
    {error, any()} |
    {error, cancel_open_cypher_query_errors(), tuple()}.
cancel_open_cypher_query(Client, QueryId, Input) ->
    cancel_open_cypher_query(Client, QueryId, Input, []).

-spec cancel_open_cypher_query(aws_client:aws_client(), binary() | list(), cancel_open_cypher_query_input(), proplists:proplist()) ->
    {ok, cancel_open_cypher_query_output(), tuple()} |
    {error, any()} |
    {error, cancel_open_cypher_query_errors(), tuple()}.
cancel_open_cypher_query(Client, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/opencypher/status/", aws_util:encode_uri(QueryId), ""],
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
                     {<<"silent">>, <<"silent">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Neptune ML inference endpoint that lets you query
%% one specific model that the model-training process constructed.
%%
%% See
%% Managing
%% inference endpoints using the endpoints command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:CreateMLEndpoint:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#createmlendpoint
%% IAM action in that cluster.
-spec create_ml_endpoint(aws_client:aws_client(), create_ml_endpoint_input()) ->
    {ok, create_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_ml_endpoint_errors(), tuple()}.
create_ml_endpoint(Client, Input) ->
    create_ml_endpoint(Client, Input, []).

-spec create_ml_endpoint(aws_client:aws_client(), create_ml_endpoint_input(), proplists:proplist()) ->
    {ok, create_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_ml_endpoint_errors(), tuple()}.
create_ml_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/endpoints"],
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

%% @doc Cancels the creation of a Neptune ML inference endpoint.
%%
%% See
%% Managing
%% inference endpoints using the endpoints command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:DeleteMLEndpoint:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletemlendpoint
%% IAM action in that cluster.
-spec delete_ml_endpoint(aws_client:aws_client(), binary() | list(), delete_ml_endpoint_input()) ->
    {ok, delete_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, delete_ml_endpoint_errors(), tuple()}.
delete_ml_endpoint(Client, Id, Input) ->
    delete_ml_endpoint(Client, Id, Input, []).

-spec delete_ml_endpoint(aws_client:aws_client(), binary() | list(), delete_ml_endpoint_input(), proplists:proplist()) ->
    {ok, delete_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, delete_ml_endpoint_errors(), tuple()}.
delete_ml_endpoint(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/endpoints/", aws_util:encode_uri(Id), ""],
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
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes statistics for Gremlin and openCypher (property graph)
%% data.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:DeleteStatistics:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics
%% IAM action in that cluster.
-spec delete_propertygraph_statistics(aws_client:aws_client(), #{}) ->
    {ok, delete_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, delete_propertygraph_statistics_errors(), tuple()}.
delete_propertygraph_statistics(Client, Input) ->
    delete_propertygraph_statistics(Client, Input, []).

-spec delete_propertygraph_statistics(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, delete_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, delete_propertygraph_statistics_errors(), tuple()}.
delete_propertygraph_statistics(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/propertygraph/statistics"],
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

%% @doc Deletes SPARQL statistics
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:DeleteStatistics:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics
%% IAM action in that cluster.
-spec delete_sparql_statistics(aws_client:aws_client(), #{}) ->
    {ok, delete_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, delete_sparql_statistics_errors(), tuple()}.
delete_sparql_statistics(Client, Input) ->
    delete_sparql_statistics(Client, Input, []).

-spec delete_sparql_statistics(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, delete_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, delete_sparql_statistics_errors(), tuple()}.
delete_sparql_statistics(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/sparql/statistics"],
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

%% @doc The fast reset REST API lets you reset a Neptune graph quicky
%% and easily, removing all of its data.
%%
%% Neptune fast reset is a two-step process. First you call
%% `ExecuteFastReset'
%% with `action' set to `initiateDatabaseReset'. This returns a
%% UUID token which you then include when calling `ExecuteFastReset'
%% again
%% with `action' set to `performDatabaseReset'. See Empty an Amazon
%% Neptune
%% DB cluster using the fast reset API:
%% https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-fast-reset.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ResetDatabase:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#resetdatabase
%% IAM action in that cluster.
-spec execute_fast_reset(aws_client:aws_client(), execute_fast_reset_input()) ->
    {ok, execute_fast_reset_output(), tuple()} |
    {error, any()} |
    {error, execute_fast_reset_errors(), tuple()}.
execute_fast_reset(Client, Input) ->
    execute_fast_reset(Client, Input, []).

-spec execute_fast_reset(aws_client:aws_client(), execute_fast_reset_input(), proplists:proplist()) ->
    {ok, execute_fast_reset_output(), tuple()} |
    {error, any()} |
    {error, execute_fast_reset_errors(), tuple()}.
execute_fast_reset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/system"],
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

%% @doc Executes a Gremlin Explain query.
%%
%% Amazon Neptune has added a Gremlin feature named `explain'
%% that provides is a self-service tool for understanding the execution
%% approach being taken by the Neptune engine for the query. You invoke
%% it by adding an `explain' parameter to an HTTP call that
%% submits a Gremlin query.
%%
%% The explain feature provides information about the logical structure
%% of query execution plans. You can use this information to identify
%% potential evaluation and execution bottlenecks and to tune your query,
%% as explained in Tuning
%% Gremlin queries:
%% https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html.
%% You can also use query hints to improve
%% query execution plans.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows one of the following IAM actions
%% in that cluster, depending on the query:
%%
%% neptune-db:ReadDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
%%
%% neptune-db:WriteDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery
%%
%% neptune-db:DeleteDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery
%%
%% Note that the neptune-db:QueryLanguage:Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% Gremlin queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec execute_gremlin_explain_query(aws_client:aws_client(), execute_gremlin_explain_query_input()) ->
    {ok, execute_gremlin_explain_query_output(), tuple()} |
    {error, any()} |
    {error, execute_gremlin_explain_query_errors(), tuple()}.
execute_gremlin_explain_query(Client, Input) ->
    execute_gremlin_explain_query(Client, Input, []).

-spec execute_gremlin_explain_query(aws_client:aws_client(), execute_gremlin_explain_query_input(), proplists:proplist()) ->
    {ok, execute_gremlin_explain_query_output(), tuple()} |
    {error, any()} |
    {error, execute_gremlin_explain_query_errors(), tuple()}.
execute_gremlin_explain_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gremlin/explain"],
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

%% @doc Executes a Gremlin Profile query, which runs a specified traversal,
%% collects various metrics about the run, and produces a profile report
%% as output.
%%
%% See Gremlin profile
%% API in Neptune:
%% https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html
%% for details.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ReadDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% Gremlin queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec execute_gremlin_profile_query(aws_client:aws_client(), execute_gremlin_profile_query_input()) ->
    {ok, execute_gremlin_profile_query_output(), tuple()} |
    {error, any()} |
    {error, execute_gremlin_profile_query_errors(), tuple()}.
execute_gremlin_profile_query(Client, Input) ->
    execute_gremlin_profile_query(Client, Input, []).

-spec execute_gremlin_profile_query(aws_client:aws_client(), execute_gremlin_profile_query_input(), proplists:proplist()) ->
    {ok, execute_gremlin_profile_query_output(), tuple()} |
    {error, any()} |
    {error, execute_gremlin_profile_query_errors(), tuple()}.
execute_gremlin_profile_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gremlin/profile"],
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

%% @doc This commands executes a Gremlin query.
%%
%% Amazon Neptune is compatible
%% with Apache TinkerPop3 and Gremlin, so you can use the Gremlin traversal
%% language to query the graph, as described under The
%% Graph: https://tinkerpop.apache.org/docs/current/reference/#graph in the
%% Apache TinkerPop3 documentation.
%% More details can also be found in Accessing a
%% Neptune graph with Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that enables one of the following IAM actions
%% in that cluster, depending on the query:
%%
%% neptune-db:ReadDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
%%
%% neptune-db:WriteDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery
%%
%% neptune-db:DeleteDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery
%%
%% Note that the neptune-db:QueryLanguage:Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% Gremlin queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec execute_gremlin_query(aws_client:aws_client(), execute_gremlin_query_input()) ->
    {ok, execute_gremlin_query_output(), tuple()} |
    {error, any()} |
    {error, execute_gremlin_query_errors(), tuple()}.
execute_gremlin_query(Client, Input) ->
    execute_gremlin_query(Client, Input, []).

-spec execute_gremlin_query(aws_client:aws_client(), execute_gremlin_query_input(), proplists:proplist()) ->
    {ok, execute_gremlin_query_output(), tuple()} |
    {error, any()} |
    {error, execute_gremlin_query_errors(), tuple()}.
execute_gremlin_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gremlin"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"accept">>, <<"serializer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Executes an openCypher `explain' request.
%%
%% See
%% The
%% openCypher explain feature:
%% https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-explain.html
%% for more information.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ReadDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:OpenCypher:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% openCypher queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec execute_open_cypher_explain_query(aws_client:aws_client(), execute_open_cypher_explain_query_input()) ->
    {ok, execute_open_cypher_explain_query_output(), tuple()} |
    {error, any()} |
    {error, execute_open_cypher_explain_query_errors(), tuple()}.
execute_open_cypher_explain_query(Client, Input) ->
    execute_open_cypher_explain_query(Client, Input, []).

-spec execute_open_cypher_explain_query(aws_client:aws_client(), execute_open_cypher_explain_query_input(), proplists:proplist()) ->
    {ok, execute_open_cypher_explain_query_output(), tuple()} |
    {error, any()} |
    {error, execute_open_cypher_explain_query_errors(), tuple()}.
execute_open_cypher_explain_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/opencypher/explain"],
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

%% @doc Executes an openCypher query.
%%
%% See Accessing
%% the Neptune Graph with openCypher:
%% https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher.html
%% for more information.
%%
%% Neptune supports building graph applications using openCypher,
%% which is currently one of the most popular query languages among
%% developers working with graph databases. Developers, business analysts,
%% and data scientists like openCypher's declarative, SQL-inspired syntax
%% because it provides a familiar structure in which to querying property
%% graphs.
%%
%% The openCypher language was originally developed by Neo4j, then
%% open-sourced in 2015 and contributed to the openCypher project:
%% https://opencypher.org/ under an Apache
%% 2 open-source license.
%%
%% Note that when invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows one of the following IAM actions
%% in that cluster, depending on the query:
%%
%% neptune-db:ReadDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
%%
%% neptune-db:WriteDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery
%%
%% neptune-db:DeleteDataViaQuery:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery
%%
%% Note also that the neptune-db:QueryLanguage:OpenCypher:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% openCypher queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec execute_open_cypher_query(aws_client:aws_client(), execute_open_cypher_query_input()) ->
    {ok, execute_open_cypher_query_output(), tuple()} |
    {error, any()} |
    {error, execute_open_cypher_query_errors(), tuple()}.
execute_open_cypher_query(Client, Input) ->
    execute_open_cypher_query(Client, Input, []).

-spec execute_open_cypher_query(aws_client:aws_client(), execute_open_cypher_query_input(), proplists:proplist()) ->
    {ok, execute_open_cypher_query_output(), tuple()} |
    {error, any()} |
    {error, execute_open_cypher_query_errors(), tuple()}.
execute_open_cypher_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/opencypher"],
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

%% @doc Retrieves the status of the graph database on the host.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetEngineStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getenginestatus
%% IAM action in that cluster.
-spec get_engine_status(aws_client:aws_client()) ->
    {ok, get_engine_status_output(), tuple()} |
    {error, any()} |
    {error, get_engine_status_errors(), tuple()}.
get_engine_status(Client)
  when is_map(Client) ->
    get_engine_status(Client, #{}, #{}).

-spec get_engine_status(aws_client:aws_client(), map(), map()) ->
    {ok, get_engine_status_output(), tuple()} |
    {error, any()} |
    {error, get_engine_status_errors(), tuple()}.
get_engine_status(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_engine_status(Client, QueryMap, HeadersMap, []).

-spec get_engine_status(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_engine_status_output(), tuple()} |
    {error, any()} |
    {error, get_engine_status_errors(), tuple()}.
get_engine_status(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a specified Gremlin query.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetQueryStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% Gremlin queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec get_gremlin_query_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_gremlin_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_gremlin_query_status_errors(), tuple()}.
get_gremlin_query_status(Client, QueryId)
  when is_map(Client) ->
    get_gremlin_query_status(Client, QueryId, #{}, #{}).

-spec get_gremlin_query_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_gremlin_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_gremlin_query_status_errors(), tuple()}.
get_gremlin_query_status(Client, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gremlin_query_status(Client, QueryId, QueryMap, HeadersMap, []).

-spec get_gremlin_query_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_gremlin_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_gremlin_query_status_errors(), tuple()}.
get_gremlin_query_status(Client, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gremlin/status/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets status information about a specified load job.
%%
%% Neptune keeps track of the most recent 1,024 bulk load jobs,
%% and stores the last 10,000 error details per job.
%%
%% See Neptune
%% Loader Get-Status API:
%% https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm
%% for more information.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetLoaderJobStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getloaderjobstatus
%% IAM action in that cluster..
-spec get_loader_job_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_loader_job_status_output(), tuple()} |
    {error, any()} |
    {error, get_loader_job_status_errors(), tuple()}.
get_loader_job_status(Client, LoadId)
  when is_map(Client) ->
    get_loader_job_status(Client, LoadId, #{}, #{}).

-spec get_loader_job_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_loader_job_status_output(), tuple()} |
    {error, any()} |
    {error, get_loader_job_status_errors(), tuple()}.
get_loader_job_status(Client, LoadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_loader_job_status(Client, LoadId, QueryMap, HeadersMap, []).

-spec get_loader_job_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_loader_job_status_output(), tuple()} |
    {error, any()} |
    {error, get_loader_job_status_errors(), tuple()}.
get_loader_job_status(Client, LoadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/loader/", aws_util:encode_uri(LoadId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"details">>, maps:get(<<"details">>, QueryMap, undefined)},
        {<<"errors">>, maps:get(<<"errors">>, QueryMap, undefined)},
        {<<"errorsPerPage">>, maps:get(<<"errorsPerPage">>, QueryMap, undefined)},
        {<<"page">>, maps:get(<<"page">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specified data processing job.
%%
%% See The
%% `dataprocessing' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:neptune-db:GetMLDataProcessingJobStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmldataprocessingjobstatus
%% IAM action in that cluster.
-spec get_ml_data_processing_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_data_processing_job_errors(), tuple()}.
get_ml_data_processing_job(Client, Id)
  when is_map(Client) ->
    get_ml_data_processing_job(Client, Id, #{}, #{}).

-spec get_ml_data_processing_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_data_processing_job_errors(), tuple()}.
get_ml_data_processing_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_data_processing_job(Client, Id, QueryMap, HeadersMap, []).

-spec get_ml_data_processing_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_data_processing_job_errors(), tuple()}.
get_ml_data_processing_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/dataprocessing/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about an inference endpoint.
%%
%% See Managing
%% inference endpoints using the endpoints command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetMLEndpointStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlendpointstatus
%% IAM action in that cluster.
-spec get_ml_endpoint(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_ml_endpoint_errors(), tuple()}.
get_ml_endpoint(Client, Id)
  when is_map(Client) ->
    get_ml_endpoint(Client, Id, #{}, #{}).

-spec get_ml_endpoint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_ml_endpoint_errors(), tuple()}.
get_ml_endpoint(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_endpoint(Client, Id, QueryMap, HeadersMap, []).

-spec get_ml_endpoint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ml_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_ml_endpoint_errors(), tuple()}.
get_ml_endpoint(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Neptune ML model training job.
%%
%% See Model
%% training using the `modeltraining' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:GetMLModelTrainingJobStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltrainingjobstatus
%% IAM action in that cluster.
-spec get_ml_model_training_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_training_job_errors(), tuple()}.
get_ml_model_training_job(Client, Id)
  when is_map(Client) ->
    get_ml_model_training_job(Client, Id, #{}, #{}).

-spec get_ml_model_training_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_training_job_errors(), tuple()}.
get_ml_model_training_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_model_training_job(Client, Id, QueryMap, HeadersMap, []).

-spec get_ml_model_training_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_training_job_errors(), tuple()}.
get_ml_model_training_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltraining/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified model transform job.
%%
%% See Use
%% a trained model to generate new model artifacts:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:GetMLModelTransformJobStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltransformjobstatus
%% IAM action in that cluster.
-spec get_ml_model_transform_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_transform_job_errors(), tuple()}.
get_ml_model_transform_job(Client, Id)
  when is_map(Client) ->
    get_ml_model_transform_job(Client, Id, #{}, #{}).

-spec get_ml_model_transform_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_transform_job_errors(), tuple()}.
get_ml_model_transform_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_model_transform_job(Client, Id, QueryMap, HeadersMap, []).

-spec get_ml_model_transform_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, get_ml_model_transform_job_errors(), tuple()}.
get_ml_model_transform_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltransform/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status of a specified openCypher query.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetQueryStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:OpenCypher:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% openCypher queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec get_open_cypher_query_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_open_cypher_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_open_cypher_query_status_errors(), tuple()}.
get_open_cypher_query_status(Client, QueryId)
  when is_map(Client) ->
    get_open_cypher_query_status(Client, QueryId, #{}, #{}).

-spec get_open_cypher_query_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_open_cypher_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_open_cypher_query_status_errors(), tuple()}.
get_open_cypher_query_status(Client, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_open_cypher_query_status(Client, QueryId, QueryMap, HeadersMap, []).

-spec get_open_cypher_query_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_open_cypher_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_open_cypher_query_status_errors(), tuple()}.
get_open_cypher_query_status(Client, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/opencypher/status/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets property graph statistics (Gremlin and openCypher).
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetStatisticsStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus
%% IAM action in that cluster.
-spec get_propertygraph_statistics(aws_client:aws_client()) ->
    {ok, get_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_statistics_errors(), tuple()}.
get_propertygraph_statistics(Client)
  when is_map(Client) ->
    get_propertygraph_statistics(Client, #{}, #{}).

-spec get_propertygraph_statistics(aws_client:aws_client(), map(), map()) ->
    {ok, get_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_statistics_errors(), tuple()}.
get_propertygraph_statistics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_propertygraph_statistics(Client, QueryMap, HeadersMap, []).

-spec get_propertygraph_statistics(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_statistics_errors(), tuple()}.
get_propertygraph_statistics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/propertygraph/statistics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a stream for a property graph.
%%
%% With the Neptune Streams feature, you can generate a complete
%% sequence of change-log entries that record every change made to your
%% graph data as it happens. `GetPropertygraphStream' lets
%% you collect these change-log entries for a property graph.
%%
%% The Neptune streams feature needs to be enabled on your Neptune
%% DBcluster. To enable streams, set the neptune_streams:
%% https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams
%% DB cluster parameter to `1'.
%%
%% See Capturing
%% graph changes in real time using Neptune streams:
%% https://docs.aws.amazon.com/neptune/latest/userguide/streams.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetStreamRecords:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords
%% IAM action in that cluster.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that enables one of the following IAM actions,
%% depending on the query:
%%
%% Note that you can restrict property-graph queries using the
%% following IAM context keys:
%%
%% neptune-db:QueryLanguage:Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%%
%% neptune-db:QueryLanguage:OpenCypher:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%%
%% See Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec get_propertygraph_stream(aws_client:aws_client()) ->
    {ok, get_propertygraph_stream_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_stream_errors(), tuple()}.
get_propertygraph_stream(Client)
  when is_map(Client) ->
    get_propertygraph_stream(Client, #{}, #{}).

-spec get_propertygraph_stream(aws_client:aws_client(), map(), map()) ->
    {ok, get_propertygraph_stream_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_stream_errors(), tuple()}.
get_propertygraph_stream(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_propertygraph_stream(Client, QueryMap, HeadersMap, []).

-spec get_propertygraph_stream(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_propertygraph_stream_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_stream_errors(), tuple()}.
get_propertygraph_stream(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/propertygraph/stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept-Encoding">>, maps:get(<<"Accept-Encoding">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"commitNum">>, maps:get(<<"commitNum">>, QueryMap, undefined)},
        {<<"iteratorType">>, maps:get(<<"iteratorType">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"opNum">>, maps:get(<<"opNum">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a graph summary for a property graph.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetGraphSummary:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary
%% IAM action in that cluster.
-spec get_propertygraph_summary(aws_client:aws_client()) ->
    {ok, get_propertygraph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_summary_errors(), tuple()}.
get_propertygraph_summary(Client)
  when is_map(Client) ->
    get_propertygraph_summary(Client, #{}, #{}).

-spec get_propertygraph_summary(aws_client:aws_client(), map(), map()) ->
    {ok, get_propertygraph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_summary_errors(), tuple()}.
get_propertygraph_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_propertygraph_summary(Client, QueryMap, HeadersMap, []).

-spec get_propertygraph_summary(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_propertygraph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_propertygraph_summary_errors(), tuple()}.
get_propertygraph_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/propertygraph/statistics/summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"mode">>, maps:get(<<"mode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a graph summary for an RDF graph.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetGraphSummary:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary
%% IAM action in that cluster.
-spec get_r_d_f_graph_summary(aws_client:aws_client()) ->
    {ok, get_r_d_f_graph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_r_d_f_graph_summary_errors(), tuple()}.
get_r_d_f_graph_summary(Client)
  when is_map(Client) ->
    get_r_d_f_graph_summary(Client, #{}, #{}).

-spec get_r_d_f_graph_summary(aws_client:aws_client(), map(), map()) ->
    {ok, get_r_d_f_graph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_r_d_f_graph_summary_errors(), tuple()}.
get_r_d_f_graph_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_r_d_f_graph_summary(Client, QueryMap, HeadersMap, []).

-spec get_r_d_f_graph_summary(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_r_d_f_graph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_r_d_f_graph_summary_errors(), tuple()}.
get_r_d_f_graph_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rdf/statistics/summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"mode">>, maps:get(<<"mode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets RDF statistics (SPARQL).
-spec get_sparql_statistics(aws_client:aws_client()) ->
    {ok, get_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_sparql_statistics_errors(), tuple()}.
get_sparql_statistics(Client)
  when is_map(Client) ->
    get_sparql_statistics(Client, #{}, #{}).

-spec get_sparql_statistics(aws_client:aws_client(), map(), map()) ->
    {ok, get_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_sparql_statistics_errors(), tuple()}.
get_sparql_statistics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sparql_statistics(Client, QueryMap, HeadersMap, []).

-spec get_sparql_statistics(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_sparql_statistics_errors(), tuple()}.
get_sparql_statistics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sparql/statistics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a stream for an RDF graph.
%%
%% With the Neptune Streams feature, you can generate a complete
%% sequence of change-log entries that record every change made to your
%% graph data as it happens. `GetSparqlStream' lets
%% you collect these change-log entries for an RDF graph.
%%
%% The Neptune streams feature needs to be enabled on your Neptune
%% DBcluster. To enable streams, set the neptune_streams:
%% https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams
%% DB cluster parameter to `1'.
%%
%% See Capturing
%% graph changes in real time using Neptune streams:
%% https://docs.aws.amazon.com/neptune/latest/userguide/streams.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetStreamRecords:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:Sparql:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% SPARQL queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec get_sparql_stream(aws_client:aws_client()) ->
    {ok, get_sparql_stream_output(), tuple()} |
    {error, any()} |
    {error, get_sparql_stream_errors(), tuple()}.
get_sparql_stream(Client)
  when is_map(Client) ->
    get_sparql_stream(Client, #{}, #{}).

-spec get_sparql_stream(aws_client:aws_client(), map(), map()) ->
    {ok, get_sparql_stream_output(), tuple()} |
    {error, any()} |
    {error, get_sparql_stream_errors(), tuple()}.
get_sparql_stream(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sparql_stream(Client, QueryMap, HeadersMap, []).

-spec get_sparql_stream(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_sparql_stream_output(), tuple()} |
    {error, any()} |
    {error, get_sparql_stream_errors(), tuple()}.
get_sparql_stream(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sparql/stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept-Encoding">>, maps:get(<<"Accept-Encoding">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"commitNum">>, maps:get(<<"commitNum">>, QueryMap, undefined)},
        {<<"iteratorType">>, maps:get(<<"iteratorType">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"opNum">>, maps:get(<<"opNum">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists active Gremlin queries.
%%
%% See Gremlin query
%% status API:
%% https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html
%% for details about the output.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetQueryStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:Gremlin:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% Gremlin queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec list_gremlin_queries(aws_client:aws_client()) ->
    {ok, list_gremlin_queries_output(), tuple()} |
    {error, any()} |
    {error, list_gremlin_queries_errors(), tuple()}.
list_gremlin_queries(Client)
  when is_map(Client) ->
    list_gremlin_queries(Client, #{}, #{}).

-spec list_gremlin_queries(aws_client:aws_client(), map(), map()) ->
    {ok, list_gremlin_queries_output(), tuple()} |
    {error, any()} |
    {error, list_gremlin_queries_errors(), tuple()}.
list_gremlin_queries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gremlin_queries(Client, QueryMap, HeadersMap, []).

-spec list_gremlin_queries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_gremlin_queries_output(), tuple()} |
    {error, any()} |
    {error, list_gremlin_queries_errors(), tuple()}.
list_gremlin_queries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gremlin/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeWaiting">>, maps:get(<<"includeWaiting">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the `loadIds' for all active
%% loader jobs.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ListLoaderJobs:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listloaderjobs
%% IAM action in that cluster..
-spec list_loader_jobs(aws_client:aws_client()) ->
    {ok, list_loader_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_loader_jobs_errors(), tuple()}.
list_loader_jobs(Client)
  when is_map(Client) ->
    list_loader_jobs(Client, #{}, #{}).

-spec list_loader_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_loader_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_loader_jobs_errors(), tuple()}.
list_loader_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_loader_jobs(Client, QueryMap, HeadersMap, []).

-spec list_loader_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_loader_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_loader_jobs_errors(), tuple()}.
list_loader_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/loader"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeQueuedLoads">>, maps:get(<<"includeQueuedLoads">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Neptune ML data processing jobs.
%%
%% See Listing
%% active data-processing jobs using the Neptune ML dataprocessing command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html#machine-learning-api-dataprocessing-list-jobs.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:ListMLDataProcessingJobs:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmldataprocessingjobs
%% IAM action in that cluster.
-spec list_ml_data_processing_jobs(aws_client:aws_client()) ->
    {ok, list_ml_data_processing_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_data_processing_jobs_errors(), tuple()}.
list_ml_data_processing_jobs(Client)
  when is_map(Client) ->
    list_ml_data_processing_jobs(Client, #{}, #{}).

-spec list_ml_data_processing_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_ml_data_processing_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_data_processing_jobs_errors(), tuple()}.
list_ml_data_processing_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_data_processing_jobs(Client, QueryMap, HeadersMap, []).

-spec list_ml_data_processing_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ml_data_processing_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_data_processing_jobs_errors(), tuple()}.
list_ml_data_processing_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/dataprocessing"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists existing inference endpoints.
%%
%% See Managing
%% inference endpoints using the endpoints command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ListMLEndpoints:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlendpoints
%% IAM action in that cluster.
-spec list_ml_endpoints(aws_client:aws_client()) ->
    {ok, list_ml_endpoints_output(), tuple()} |
    {error, any()} |
    {error, list_ml_endpoints_errors(), tuple()}.
list_ml_endpoints(Client)
  when is_map(Client) ->
    list_ml_endpoints(Client, #{}, #{}).

-spec list_ml_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_ml_endpoints_output(), tuple()} |
    {error, any()} |
    {error, list_ml_endpoints_errors(), tuple()}.
list_ml_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_ml_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ml_endpoints_output(), tuple()} |
    {error, any()} |
    {error, list_ml_endpoints_errors(), tuple()}.
list_ml_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/endpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Neptune ML model-training jobs.
%%
%% See Model
%% training using the `modeltraining' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:neptune-db:ListMLModelTrainingJobs:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#neptune-db:listmlmodeltrainingjobs
%% IAM action in that cluster.
-spec list_ml_model_training_jobs(aws_client:aws_client()) ->
    {ok, list_ml_model_training_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_model_training_jobs_errors(), tuple()}.
list_ml_model_training_jobs(Client)
  when is_map(Client) ->
    list_ml_model_training_jobs(Client, #{}, #{}).

-spec list_ml_model_training_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_ml_model_training_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_model_training_jobs_errors(), tuple()}.
list_ml_model_training_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_model_training_jobs(Client, QueryMap, HeadersMap, []).

-spec list_ml_model_training_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ml_model_training_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_model_training_jobs_errors(), tuple()}.
list_ml_model_training_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltraining"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of model transform job IDs.
%%
%% See Use
%% a trained model to generate new model artifacts:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:ListMLModelTransformJobs:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlmodeltransformjobs
%% IAM action in that cluster.
-spec list_ml_model_transform_jobs(aws_client:aws_client()) ->
    {ok, list_ml_model_transform_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_model_transform_jobs_errors(), tuple()}.
list_ml_model_transform_jobs(Client)
  when is_map(Client) ->
    list_ml_model_transform_jobs(Client, #{}, #{}).

-spec list_ml_model_transform_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_ml_model_transform_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_model_transform_jobs_errors(), tuple()}.
list_ml_model_transform_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_model_transform_jobs(Client, QueryMap, HeadersMap, []).

-spec list_ml_model_transform_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ml_model_transform_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_ml_model_transform_jobs_errors(), tuple()}.
list_ml_model_transform_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltransform"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists active openCypher queries.
%%
%% See Neptune
%% openCypher status endpoint:
%% https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html
%% for more information.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:GetQueryStatus:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
%% IAM action in that cluster.
%%
%% Note that the neptune-db:QueryLanguage:OpenCypher:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
%% IAM condition key can be used in the policy document to restrict the use
%% of
%% openCypher queries (see Condition
%% keys available in Neptune IAM data-access policy statements:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html).
-spec list_open_cypher_queries(aws_client:aws_client()) ->
    {ok, list_open_cypher_queries_output(), tuple()} |
    {error, any()} |
    {error, list_open_cypher_queries_errors(), tuple()}.
list_open_cypher_queries(Client)
  when is_map(Client) ->
    list_open_cypher_queries(Client, #{}, #{}).

-spec list_open_cypher_queries(aws_client:aws_client(), map(), map()) ->
    {ok, list_open_cypher_queries_output(), tuple()} |
    {error, any()} |
    {error, list_open_cypher_queries_errors(), tuple()}.
list_open_cypher_queries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_open_cypher_queries(Client, QueryMap, HeadersMap, []).

-spec list_open_cypher_queries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_open_cypher_queries_output(), tuple()} |
    {error, any()} |
    {error, list_open_cypher_queries_errors(), tuple()}.
list_open_cypher_queries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/opencypher/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeWaiting">>, maps:get(<<"includeWaiting">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Manages the generation and use of property graph statistics.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ManageStatistics:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics
%% IAM action in that cluster.
-spec manage_propertygraph_statistics(aws_client:aws_client(), manage_propertygraph_statistics_input()) ->
    {ok, manage_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, manage_propertygraph_statistics_errors(), tuple()}.
manage_propertygraph_statistics(Client, Input) ->
    manage_propertygraph_statistics(Client, Input, []).

-spec manage_propertygraph_statistics(aws_client:aws_client(), manage_propertygraph_statistics_input(), proplists:proplist()) ->
    {ok, manage_propertygraph_statistics_output(), tuple()} |
    {error, any()} |
    {error, manage_propertygraph_statistics_errors(), tuple()}.
manage_propertygraph_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/propertygraph/statistics"],
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

%% @doc Manages the generation and use of RDF graph statistics.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:ManageStatistics:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics
%% IAM action in that cluster.
-spec manage_sparql_statistics(aws_client:aws_client(), manage_sparql_statistics_input()) ->
    {ok, manage_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, manage_sparql_statistics_errors(), tuple()}.
manage_sparql_statistics(Client, Input) ->
    manage_sparql_statistics(Client, Input, []).

-spec manage_sparql_statistics(aws_client:aws_client(), manage_sparql_statistics_input(), proplists:proplist()) ->
    {ok, manage_sparql_statistics_output(), tuple()} |
    {error, any()} |
    {error, manage_sparql_statistics_errors(), tuple()}.
manage_sparql_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sparql/statistics"],
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

%% @doc Starts a Neptune bulk loader job to load data from an Amazon S3
%% bucket into a Neptune DB instance.
%%
%% See Using the Amazon Neptune
%% Bulk Loader to Ingest Data:
%% https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:StartLoaderJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startloaderjob
%% IAM action in that cluster.
-spec start_loader_job(aws_client:aws_client(), start_loader_job_input()) ->
    {ok, start_loader_job_output(), tuple()} |
    {error, any()} |
    {error, start_loader_job_errors(), tuple()}.
start_loader_job(Client, Input) ->
    start_loader_job(Client, Input, []).

-spec start_loader_job(aws_client:aws_client(), start_loader_job_input(), proplists:proplist()) ->
    {ok, start_loader_job_output(), tuple()} |
    {error, any()} |
    {error, start_loader_job_errors(), tuple()}.
start_loader_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/loader"],
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

%% @doc Creates a new Neptune ML data processing job for processing the
%% graph data exported from Neptune for training.
%%
%% See The
%% `dataprocessing' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:StartMLModelDataProcessingJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeldataprocessingjob
%% IAM action in that cluster.
-spec start_ml_data_processing_job(aws_client:aws_client(), start_ml_data_processing_job_input()) ->
    {ok, start_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, start_ml_data_processing_job_errors(), tuple()}.
start_ml_data_processing_job(Client, Input) ->
    start_ml_data_processing_job(Client, Input, []).

-spec start_ml_data_processing_job(aws_client:aws_client(), start_ml_data_processing_job_input(), proplists:proplist()) ->
    {ok, start_ml_data_processing_job_output(), tuple()} |
    {error, any()} |
    {error, start_ml_data_processing_job_errors(), tuple()}.
start_ml_data_processing_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/dataprocessing"],
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

%% @doc Creates a new Neptune ML model training job.
%%
%% See Model
%% training using the `modeltraining' command:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the neptune-db:StartMLModelTrainingJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltrainingjob
%% IAM action in that cluster.
-spec start_ml_model_training_job(aws_client:aws_client(), start_ml_model_training_job_input()) ->
    {ok, start_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, start_ml_model_training_job_errors(), tuple()}.
start_ml_model_training_job(Client, Input) ->
    start_ml_model_training_job(Client, Input, []).

-spec start_ml_model_training_job(aws_client:aws_client(), start_ml_model_training_job_input(), proplists:proplist()) ->
    {ok, start_ml_model_training_job_output(), tuple()} |
    {error, any()} |
    {error, start_ml_model_training_job_errors(), tuple()}.
start_ml_model_training_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/modeltraining"],
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

%% @doc Creates a new model transform job.
%%
%% See Use
%% a trained model to generate new model artifacts:
%% https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html.
%%
%% When invoking this operation in a Neptune cluster that has IAM
%% authentication enabled, the IAM user or role making the request must
%% have a policy attached that allows the
%% neptune-db:StartMLModelTransformJob:
%% https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltransformjob
%% IAM action in that cluster.
-spec start_ml_model_transform_job(aws_client:aws_client(), start_ml_model_transform_job_input()) ->
    {ok, start_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, start_ml_model_transform_job_errors(), tuple()}.
start_ml_model_transform_job(Client, Input) ->
    start_ml_model_transform_job(Client, Input, []).

-spec start_ml_model_transform_job(aws_client:aws_client(), start_ml_model_transform_job_input(), proplists:proplist()) ->
    {ok, start_ml_model_transform_job_output(), tuple()} |
    {error, any()} |
    {error, start_ml_model_transform_job_errors(), tuple()}.
start_ml_model_transform_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/modeltransform"],
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
    Client1 = Client#{service => <<"neptune-db">>},
    Host = build_host(<<"neptune-db">>, Client1),
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
