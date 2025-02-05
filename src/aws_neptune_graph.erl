%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Neptune Analytics is a new analytics database engine for Amazon
%% Neptune that helps customers get to
%% insights faster by quickly processing large amounts of graph data,
%% invoking popular graph analytic
%% algorithms in low-latency queries, and getting analytics results in
%% seconds.
-module(aws_neptune_graph).

-export([cancel_export_task/3,
         cancel_export_task/4,
         cancel_import_task/3,
         cancel_import_task/4,
         cancel_query/3,
         cancel_query/4,
         create_graph/2,
         create_graph/3,
         create_graph_snapshot/2,
         create_graph_snapshot/3,
         create_graph_using_import_task/2,
         create_graph_using_import_task/3,
         create_private_graph_endpoint/3,
         create_private_graph_endpoint/4,
         delete_graph/3,
         delete_graph/4,
         delete_graph_snapshot/3,
         delete_graph_snapshot/4,
         delete_private_graph_endpoint/4,
         delete_private_graph_endpoint/5,
         execute_query/2,
         execute_query/3,
         get_export_task/2,
         get_export_task/4,
         get_export_task/5,
         get_graph/2,
         get_graph/4,
         get_graph/5,
         get_graph_snapshot/2,
         get_graph_snapshot/4,
         get_graph_snapshot/5,
         get_graph_summary/2,
         get_graph_summary/4,
         get_graph_summary/5,
         get_import_task/2,
         get_import_task/4,
         get_import_task/5,
         get_private_graph_endpoint/3,
         get_private_graph_endpoint/5,
         get_private_graph_endpoint/6,
         get_query/3,
         get_query/5,
         get_query/6,
         list_export_tasks/1,
         list_export_tasks/3,
         list_export_tasks/4,
         list_graph_snapshots/1,
         list_graph_snapshots/3,
         list_graph_snapshots/4,
         list_graphs/1,
         list_graphs/3,
         list_graphs/4,
         list_import_tasks/1,
         list_import_tasks/3,
         list_import_tasks/4,
         list_private_graph_endpoints/2,
         list_private_graph_endpoints/4,
         list_private_graph_endpoints/5,
         list_queries/3,
         list_queries/5,
         list_queries/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reset_graph/3,
         reset_graph/4,
         restore_graph_from_snapshot/3,
         restore_graph_from_snapshot/4,
         start_export_task/2,
         start_export_task/3,
         start_import_task/3,
         start_import_task/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_graph/3,
         update_graph/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_graph_snapshots_output() :: #{
%%   <<"graphSnapshots">> => list(graph_snapshot_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_graph_snapshots_output() :: #{binary() => any()}.


%% Example:
%% create_graph_using_import_task_input() :: #{
%%   <<"blankNodeHandling">> => list(any()),
%%   <<"deletionProtection">> => [boolean()],
%%   <<"failOnError">> => [boolean()],
%%   <<"format">> => list(any()),
%%   <<"graphName">> := string(),
%%   <<"importOptions">> => list(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"maxProvisionedMemory">> => integer(),
%%   <<"minProvisionedMemory">> => integer(),
%%   <<"parquetType">> => list(any()),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"roleArn">> := string(),
%%   <<"source">> := [string()],
%%   <<"tags">> => map(),
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type create_graph_using_import_task_input() :: #{binary() => any()}.

%% Example:
%% delete_private_graph_endpoint_input() :: #{}
-type delete_private_graph_endpoint_input() :: #{}.


%% Example:
%% export_filter_property_attributes() :: #{
%%   <<"multiValueHandling">> => list(any()),
%%   <<"outputType">> => string(),
%%   <<"sourcePropertyName">> => string()
%% }
-type export_filter_property_attributes() :: #{binary() => any()}.


%% Example:
%% create_private_graph_endpoint_output() :: #{
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcEndpointId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type create_private_graph_endpoint_output() :: #{binary() => any()}.

%% Example:
%% get_private_graph_endpoint_input() :: #{}
-type get_private_graph_endpoint_input() :: #{}.


%% Example:
%% delete_graph_snapshot_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"snapshotCreateTime">> => [non_neg_integer()],
%%   <<"sourceGraphId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_graph_snapshot_output() :: #{binary() => any()}.


%% Example:
%% export_task_details() :: #{
%%   <<"numEdgesWritten">> => [float()],
%%   <<"numVerticesWritten">> => [float()],
%%   <<"progressPercentage">> => [integer()],
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"timeElapsedSeconds">> => [float()]
%% }
-type export_task_details() :: #{binary() => any()}.


%% Example:
%% create_graph_using_import_task_output() :: #{
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"importOptions">> => list(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"source">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type create_graph_using_import_task_output() :: #{binary() => any()}.


%% Example:
%% update_graph_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"buildNumber">> => [string()],
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"sourceSnapshotId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type update_graph_output() :: #{binary() => any()}.


%% Example:
%% start_export_task_input() :: #{
%%   <<"destination">> := [string()],
%%   <<"exportFilter">> => export_filter(),
%%   <<"format">> := list(any()),
%%   <<"graphIdentifier">> := string(),
%%   <<"kmsKeyIdentifier">> := string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type start_export_task_input() :: #{binary() => any()}.


%% Example:
%% start_import_task_input() :: #{
%%   <<"blankNodeHandling">> => list(any()),
%%   <<"failOnError">> => [boolean()],
%%   <<"format">> => list(any()),
%%   <<"importOptions">> => list(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> := string(),
%%   <<"source">> := [string()]
%% }
-type start_import_task_input() :: #{binary() => any()}.


%% Example:
%% get_import_task_output() :: #{
%%   <<"attemptNumber">> => [integer()],
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"importOptions">> => list(),
%%   <<"importTaskDetails">> => import_task_details(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"source">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"taskId">> => string()
%% }
-type get_import_task_output() :: #{binary() => any()}.


%% Example:
%% delete_private_graph_endpoint_output() :: #{
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcEndpointId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type delete_private_graph_endpoint_output() :: #{binary() => any()}.


%% Example:
%% export_filter_element() :: #{
%%   <<"properties">> => map()
%% }
-type export_filter_element() :: #{binary() => any()}.


%% Example:
%% export_filter() :: #{
%%   <<"edgeFilter">> => map(),
%%   <<"vertexFilter">> => map()
%% }
-type export_filter() :: #{binary() => any()}.


%% Example:
%% cancel_import_task_output() :: #{
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"source">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type cancel_import_task_output() :: #{binary() => any()}.


%% Example:
%% unprocessable_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type unprocessable_exception() :: #{binary() => any()}.


%% Example:
%% list_export_tasks_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(export_task_summary()())
%% }
-type list_export_tasks_output() :: #{binary() => any()}.


%% Example:
%% list_graphs_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_graphs_input() :: #{binary() => any()}.


%% Example:
%% graph_snapshot_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"snapshotCreateTime">> => [non_neg_integer()],
%%   <<"sourceGraphId">> => string(),
%%   <<"status">> => list(any())
%% }
-type graph_snapshot_summary() :: #{binary() => any()}.


%% Example:
%% get_query_output() :: #{
%%   <<"elapsed">> => [integer()],
%%   <<"id">> => [string()],
%%   <<"queryString">> => [string()],
%%   <<"state">> => list(any()),
%%   <<"waited">> => [integer()]
%% }
-type get_query_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% list_queries_output() :: #{
%%   <<"queries">> => list(query_summary()())
%% }
-type list_queries_output() :: #{binary() => any()}.


%% Example:
%% cancel_export_task_output() :: #{
%%   <<"destination">> => [string()],
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"taskId">> => string()
%% }
-type cancel_export_task_output() :: #{binary() => any()}.


%% Example:
%% vector_search_configuration() :: #{
%%   <<"dimension">> => integer()
%% }
-type vector_search_configuration() :: #{binary() => any()}.


%% Example:
%% restore_graph_from_snapshot_input() :: #{
%%   <<"deletionProtection">> => [boolean()],
%%   <<"graphName">> := string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"tags">> => map()
%% }
-type restore_graph_from_snapshot_input() :: #{binary() => any()}.


%% Example:
%% export_task_summary() :: #{
%%   <<"destination">> => [string()],
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"taskId">> => string()
%% }
-type export_task_summary() :: #{binary() => any()}.


%% Example:
%% edge_structure() :: #{
%%   <<"count">> => [float()],
%%   <<"edgeProperties">> => list([string()]())
%% }
-type edge_structure() :: #{binary() => any()}.


%% Example:
%% create_graph_snapshot_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"snapshotCreateTime">> => [non_neg_integer()],
%%   <<"sourceGraphId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_graph_snapshot_output() :: #{binary() => any()}.


%% Example:
%% create_private_graph_endpoint_input() :: #{
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string(),
%%   <<"vpcSecurityGroupIds">> => list(string()())
%% }
-type create_private_graph_endpoint_input() :: #{binary() => any()}.


%% Example:
%% delete_graph_input() :: #{
%%   <<"skipSnapshot">> := [boolean()]
%% }
-type delete_graph_input() :: #{binary() => any()}.


%% Example:
%% list_graphs_output() :: #{
%%   <<"graphs">> => list(graph_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_graphs_output() :: #{binary() => any()}.


%% Example:
%% create_graph_input() :: #{
%%   <<"deletionProtection">> => [boolean()],
%%   <<"graphName">> := string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"provisionedMemory">> := integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"tags">> => map(),
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type create_graph_input() :: #{binary() => any()}.


%% Example:
%% delete_graph_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"buildNumber">> => [string()],
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"sourceSnapshotId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type delete_graph_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_queries_input() :: #{
%%   <<"graphIdentifier">> := string(),
%%   <<"maxResults">> := [integer()],
%%   <<"state">> => list(any())
%% }
-type list_queries_input() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% cancel_export_task_input() :: #{}
-type cancel_export_task_input() :: #{}.


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
%% cancel_import_task_input() :: #{}
-type cancel_import_task_input() :: #{}.


%% Example:
%% restore_graph_from_snapshot_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"buildNumber">> => [string()],
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"sourceSnapshotId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type restore_graph_from_snapshot_output() :: #{binary() => any()}.


%% Example:
%% start_export_task_output() :: #{
%%   <<"destination">> => [string()],
%%   <<"exportFilter">> => export_filter(),
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"taskId">> => string()
%% }
-type start_export_task_output() :: #{binary() => any()}.


%% Example:
%% graph_data_summary() :: #{
%%   <<"edgeLabels">> => list([string()]()),
%%   <<"edgeProperties">> => list(map()()),
%%   <<"edgeStructures">> => list(edge_structure()()),
%%   <<"nodeLabels">> => list([string()]()),
%%   <<"nodeProperties">> => list(map()()),
%%   <<"nodeStructures">> => list(node_structure()()),
%%   <<"numEdgeLabels">> => [float()],
%%   <<"numEdgeProperties">> => [float()],
%%   <<"numEdges">> => [float()],
%%   <<"numNodeLabels">> => [float()],
%%   <<"numNodeProperties">> => [float()],
%%   <<"numNodes">> => [float()],
%%   <<"totalEdgePropertyValues">> => [float()],
%%   <<"totalNodePropertyValues">> => [float()]
%% }
-type graph_data_summary() :: #{binary() => any()}.


%% Example:
%% create_graph_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"buildNumber">> => [string()],
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"sourceSnapshotId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type create_graph_output() :: #{binary() => any()}.


%% Example:
%% list_export_tasks_input() :: #{
%%   <<"graphIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_export_tasks_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% import_task_summary() :: #{
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"source">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type import_task_summary() :: #{binary() => any()}.


%% Example:
%% list_graph_snapshots_input() :: #{
%%   <<"graphIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_graph_snapshots_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% graph_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => [string()],
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"status">> => list(any())
%% }
-type graph_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_private_graph_endpoint_output() :: #{
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcEndpointId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type get_private_graph_endpoint_output() :: #{binary() => any()}.


%% Example:
%% query_summary() :: #{
%%   <<"elapsed">> => [integer()],
%%   <<"id">> => [string()],
%%   <<"queryString">> => [string()],
%%   <<"state">> => list(any()),
%%   <<"waited">> => [integer()]
%% }
-type query_summary() :: #{binary() => any()}.


%% Example:
%% cancel_query_input() :: #{
%%   <<"graphIdentifier">> := string()
%% }
-type cancel_query_input() :: #{binary() => any()}.


%% Example:
%% update_graph_input() :: #{
%%   <<"deletionProtection">> => [boolean()],
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()]
%% }
-type update_graph_input() :: #{binary() => any()}.


%% Example:
%% neptune_import_options() :: #{
%%   <<"preserveDefaultVertexLabels">> => [boolean()],
%%   <<"preserveEdgeIds">> => [boolean()],
%%   <<"s3ExportKmsKeyId">> => [string()],
%%   <<"s3ExportPath">> => [string()]
%% }
-type neptune_import_options() :: #{binary() => any()}.


%% Example:
%% import_task_details() :: #{
%%   <<"dictionaryEntryCount">> => [float()],
%%   <<"errorCount">> => [integer()],
%%   <<"errorDetails">> => [string()],
%%   <<"progressPercentage">> => [integer()],
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"statementCount">> => [float()],
%%   <<"status">> => [string()],
%%   <<"timeElapsedSeconds">> => [float()]
%% }
-type import_task_details() :: #{binary() => any()}.


%% Example:
%% get_query_input() :: #{
%%   <<"graphIdentifier">> := string()
%% }
-type get_query_input() :: #{binary() => any()}.


%% Example:
%% get_graph_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"buildNumber">> => [string()],
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"sourceSnapshotId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type get_graph_output() :: #{binary() => any()}.

%% Example:
%% delete_graph_snapshot_input() :: #{}
-type delete_graph_snapshot_input() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_export_task_input() :: #{}
-type get_export_task_input() :: #{}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% get_graph_summary_input() :: #{
%%   <<"graphIdentifier">> := string(),
%%   <<"mode">> => list(any())
%% }
-type get_graph_summary_input() :: #{binary() => any()}.


%% Example:
%% reset_graph_input() :: #{
%%   <<"skipSnapshot">> := [boolean()]
%% }
-type reset_graph_input() :: #{binary() => any()}.


%% Example:
%% execute_query_output() :: #{
%%   <<"payload">> => binary()
%% }
-type execute_query_output() :: #{binary() => any()}.

%% Example:
%% get_graph_snapshot_input() :: #{}
-type get_graph_snapshot_input() :: #{}.


%% Example:
%% start_import_task_output() :: #{
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"importOptions">> => list(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"source">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type start_import_task_output() :: #{binary() => any()}.


%% Example:
%% create_graph_snapshot_input() :: #{
%%   <<"graphIdentifier">> := string(),
%%   <<"snapshotName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_graph_snapshot_input() :: #{binary() => any()}.


%% Example:
%% node_structure() :: #{
%%   <<"count">> => [float()],
%%   <<"distinctOutgoingEdgeLabels">> => list([string()]()),
%%   <<"nodeProperties">> => list([string()]())
%% }
-type node_structure() :: #{binary() => any()}.

%% Example:
%% get_graph_input() :: #{}
-type get_graph_input() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% list_import_tasks_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(import_task_summary()())
%% }
-type list_import_tasks_output() :: #{binary() => any()}.


%% Example:
%% get_graph_summary_output() :: #{
%%   <<"graphSummary">> => graph_data_summary(),
%%   <<"lastStatisticsComputationTime">> => [non_neg_integer()],
%%   <<"version">> => [string()]
%% }
-type get_graph_summary_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_private_graph_endpoints_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_private_graph_endpoints_input() :: #{binary() => any()}.


%% Example:
%% list_private_graph_endpoints_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"privateGraphEndpoints">> => list(private_graph_endpoint_summary()())
%% }
-type list_private_graph_endpoints_output() :: #{binary() => any()}.


%% Example:
%% execute_query_input() :: #{
%%   <<"explainMode">> => list(any()),
%%   <<"graphIdentifier">> := string(),
%%   <<"language">> := list(any()),
%%   <<"parameters">> => map(),
%%   <<"planCache">> => list(any()),
%%   <<"queryString">> := [string()],
%%   <<"queryTimeoutMilliseconds">> => [integer()]
%% }
-type execute_query_input() :: #{binary() => any()}.

%% Example:
%% get_import_task_input() :: #{}
-type get_import_task_input() :: #{}.


%% Example:
%% private_graph_endpoint_summary() :: #{
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcEndpointId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type private_graph_endpoint_summary() :: #{binary() => any()}.


%% Example:
%% get_graph_snapshot_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"snapshotCreateTime">> => [non_neg_integer()],
%%   <<"sourceGraphId">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_graph_snapshot_output() :: #{binary() => any()}.


%% Example:
%% reset_graph_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"buildNumber">> => [string()],
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"deletionProtection">> => [boolean()],
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisionedMemory">> => integer(),
%%   <<"publicConnectivity">> => [boolean()],
%%   <<"replicaCount">> => integer(),
%%   <<"sourceSnapshotId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vectorSearchConfiguration">> => vector_search_configuration()
%% }
-type reset_graph_output() :: #{binary() => any()}.


%% Example:
%% get_export_task_output() :: #{
%%   <<"destination">> => [string()],
%%   <<"exportFilter">> => export_filter(),
%%   <<"exportTaskDetails">> => export_task_details(),
%%   <<"format">> => list(any()),
%%   <<"graphId">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"parquetType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"taskId">> => string()
%% }
-type get_export_task_output() :: #{binary() => any()}.


%% Example:
%% list_import_tasks_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_import_tasks_input() :: #{binary() => any()}.

-type cancel_export_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_graph_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_graph_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_graph_using_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_private_graph_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_graph_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_graph_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_private_graph_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type execute_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    unprocessable_exception().

-type get_export_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_graph_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_graph_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_graph_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_private_graph_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_export_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_graph_snapshots_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_graphs_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_import_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_private_graph_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_queries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reset_graph_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_graph_from_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_export_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_graph_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancel the specified export task.
-spec cancel_export_task(aws_client:aws_client(), binary() | list(), cancel_export_task_input()) ->
    {ok, cancel_export_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_export_task_errors(), tuple()}.
cancel_export_task(Client, TaskIdentifier, Input) ->
    cancel_export_task(Client, TaskIdentifier, Input, []).

-spec cancel_export_task(aws_client:aws_client(), binary() | list(), cancel_export_task_input(), proplists:proplist()) ->
    {ok, cancel_export_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_export_task_errors(), tuple()}.
cancel_export_task(Client, TaskIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/exporttasks/", aws_util:encode_uri(TaskIdentifier), ""],
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

%% @doc Deletes the specified import task.
-spec cancel_import_task(aws_client:aws_client(), binary() | list(), cancel_import_task_input()) ->
    {ok, cancel_import_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_import_task_errors(), tuple()}.
cancel_import_task(Client, TaskIdentifier, Input) ->
    cancel_import_task(Client, TaskIdentifier, Input, []).

-spec cancel_import_task(aws_client:aws_client(), binary() | list(), cancel_import_task_input(), proplists:proplist()) ->
    {ok, cancel_import_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_import_task_errors(), tuple()}.
cancel_import_task(Client, TaskIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/importtasks/", aws_util:encode_uri(TaskIdentifier), ""],
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

%% @doc Cancels a specified query.
-spec cancel_query(aws_client:aws_client(), binary() | list(), cancel_query_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_query_errors(), tuple()}.
cancel_query(Client, QueryId, Input) ->
    cancel_query(Client, QueryId, Input, []).

-spec cancel_query(aws_client:aws_client(), binary() | list(), cancel_query_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_query_errors(), tuple()}.
cancel_query(Client, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/queries/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"graphIdentifier">>, <<"graphIdentifier">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Neptune Analytics graph.
-spec create_graph(aws_client:aws_client(), create_graph_input()) ->
    {ok, create_graph_output(), tuple()} |
    {error, any()} |
    {error, create_graph_errors(), tuple()}.
create_graph(Client, Input) ->
    create_graph(Client, Input, []).

-spec create_graph(aws_client:aws_client(), create_graph_input(), proplists:proplist()) ->
    {ok, create_graph_output(), tuple()} |
    {error, any()} |
    {error, create_graph_errors(), tuple()}.
create_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graphs"],
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

%% @doc Creates a snapshot of the specific graph.
-spec create_graph_snapshot(aws_client:aws_client(), create_graph_snapshot_input()) ->
    {ok, create_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_graph_snapshot_errors(), tuple()}.
create_graph_snapshot(Client, Input) ->
    create_graph_snapshot(Client, Input, []).

-spec create_graph_snapshot(aws_client:aws_client(), create_graph_snapshot_input(), proplists:proplist()) ->
    {ok, create_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_graph_snapshot_errors(), tuple()}.
create_graph_snapshot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/snapshots"],
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

%% @doc Creates a new Neptune Analytics graph and imports data into it,
%% either from Amazon Simple Storage Service (S3) or from a Neptune database
%% or a Neptune database snapshot.
%%
%% The data can be loaded from files in S3 that in either the Gremlin CSV
%% format:
%% https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
%% or the openCypher
%% load format:
%% https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html.
-spec create_graph_using_import_task(aws_client:aws_client(), create_graph_using_import_task_input()) ->
    {ok, create_graph_using_import_task_output(), tuple()} |
    {error, any()} |
    {error, create_graph_using_import_task_errors(), tuple()}.
create_graph_using_import_task(Client, Input) ->
    create_graph_using_import_task(Client, Input, []).

-spec create_graph_using_import_task(aws_client:aws_client(), create_graph_using_import_task_input(), proplists:proplist()) ->
    {ok, create_graph_using_import_task_output(), tuple()} |
    {error, any()} |
    {error, create_graph_using_import_task_errors(), tuple()}.
create_graph_using_import_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/importtasks"],
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

%% @doc Create a private graph endpoint to allow private access from to the
%% graph from within
%% a VPC.
%%
%% You can attach security groups to the private graph endpoint.
%%
%% VPC endpoint charges apply.
-spec create_private_graph_endpoint(aws_client:aws_client(), binary() | list(), create_private_graph_endpoint_input()) ->
    {ok, create_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_private_graph_endpoint_errors(), tuple()}.
create_private_graph_endpoint(Client, GraphIdentifier, Input) ->
    create_private_graph_endpoint(Client, GraphIdentifier, Input, []).

-spec create_private_graph_endpoint(aws_client:aws_client(), binary() | list(), create_private_graph_endpoint_input(), proplists:proplist()) ->
    {ok, create_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_private_graph_endpoint_errors(), tuple()}.
create_private_graph_endpoint(Client, GraphIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), "/endpoints/"],
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

%% @doc Deletes the specified graph.
%%
%% Graphs cannot be deleted if delete-protection is enabled.
-spec delete_graph(aws_client:aws_client(), binary() | list(), delete_graph_input()) ->
    {ok, delete_graph_output(), tuple()} |
    {error, any()} |
    {error, delete_graph_errors(), tuple()}.
delete_graph(Client, GraphIdentifier, Input) ->
    delete_graph(Client, GraphIdentifier, Input, []).

-spec delete_graph(aws_client:aws_client(), binary() | list(), delete_graph_input(), proplists:proplist()) ->
    {ok, delete_graph_output(), tuple()} |
    {error, any()} |
    {error, delete_graph_errors(), tuple()}.
delete_graph(Client, GraphIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), ""],
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
                     {<<"skipSnapshot">>, <<"skipSnapshot">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specifed graph snapshot.
-spec delete_graph_snapshot(aws_client:aws_client(), binary() | list(), delete_graph_snapshot_input()) ->
    {ok, delete_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, delete_graph_snapshot_errors(), tuple()}.
delete_graph_snapshot(Client, SnapshotIdentifier, Input) ->
    delete_graph_snapshot(Client, SnapshotIdentifier, Input, []).

-spec delete_graph_snapshot(aws_client:aws_client(), binary() | list(), delete_graph_snapshot_input(), proplists:proplist()) ->
    {ok, delete_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, delete_graph_snapshot_errors(), tuple()}.
delete_graph_snapshot(Client, SnapshotIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotIdentifier), ""],
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

%% @doc Deletes a private graph endpoint.
-spec delete_private_graph_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_private_graph_endpoint_input()) ->
    {ok, delete_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, delete_private_graph_endpoint_errors(), tuple()}.
delete_private_graph_endpoint(Client, GraphIdentifier, VpcId, Input) ->
    delete_private_graph_endpoint(Client, GraphIdentifier, VpcId, Input, []).

-spec delete_private_graph_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_private_graph_endpoint_input(), proplists:proplist()) ->
    {ok, delete_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, delete_private_graph_endpoint_errors(), tuple()}.
delete_private_graph_endpoint(Client, GraphIdentifier, VpcId, Input0, Options0) ->
    Method = delete,
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), "/endpoints/", aws_util:encode_uri(VpcId), ""],
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

%% @doc Execute an openCypher query.
%%
%% When invoking this operation in a Neptune Analytics cluster, the IAM user
%% or role making the request must have a policy attached
%% that allows one of the following IAM actions in that cluster, depending on
%% the query:
%%
%% neptune-graph:ReadDataViaQuery
%%
%% neptune-graph:WriteDataViaQuery
%%
%% neptune-graph:DeleteDataViaQuery
-spec execute_query(aws_client:aws_client(), execute_query_input()) ->
    {ok, execute_query_output(), tuple()} |
    {error, any()} |
    {error, execute_query_errors(), tuple()}.
execute_query(Client, Input) ->
    execute_query(Client, Input, []).

-spec execute_query(aws_client:aws_client(), execute_query_input(), proplists:proplist()) ->
    {ok, execute_query_output(), tuple()} |
    {error, any()} |
    {error, execute_query_errors(), tuple()}.
execute_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/queries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"graphIdentifier">>, <<"graphIdentifier">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a specified export task.
-spec get_export_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_export_task_output(), tuple()} |
    {error, any()} |
    {error, get_export_task_errors(), tuple()}.
get_export_task(Client, TaskIdentifier)
  when is_map(Client) ->
    get_export_task(Client, TaskIdentifier, #{}, #{}).

-spec get_export_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_export_task_output(), tuple()} |
    {error, any()} |
    {error, get_export_task_errors(), tuple()}.
get_export_task(Client, TaskIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export_task(Client, TaskIdentifier, QueryMap, HeadersMap, []).

-spec get_export_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_export_task_output(), tuple()} |
    {error, any()} |
    {error, get_export_task_errors(), tuple()}.
get_export_task(Client, TaskIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/exporttasks/", aws_util:encode_uri(TaskIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified graph.
-spec get_graph(aws_client:aws_client(), binary() | list()) ->
    {ok, get_graph_output(), tuple()} |
    {error, any()} |
    {error, get_graph_errors(), tuple()}.
get_graph(Client, GraphIdentifier)
  when is_map(Client) ->
    get_graph(Client, GraphIdentifier, #{}, #{}).

-spec get_graph(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_graph_output(), tuple()} |
    {error, any()} |
    {error, get_graph_errors(), tuple()}.
get_graph(Client, GraphIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graph(Client, GraphIdentifier, QueryMap, HeadersMap, []).

-spec get_graph(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_graph_output(), tuple()} |
    {error, any()} |
    {error, get_graph_errors(), tuple()}.
get_graph(Client, GraphIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specified graph snapshot.
-spec get_graph_snapshot(aws_client:aws_client(), binary() | list()) ->
    {ok, get_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, get_graph_snapshot_errors(), tuple()}.
get_graph_snapshot(Client, SnapshotIdentifier)
  when is_map(Client) ->
    get_graph_snapshot(Client, SnapshotIdentifier, #{}, #{}).

-spec get_graph_snapshot(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, get_graph_snapshot_errors(), tuple()}.
get_graph_snapshot(Client, SnapshotIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graph_snapshot(Client, SnapshotIdentifier, QueryMap, HeadersMap, []).

-spec get_graph_snapshot(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_graph_snapshot_output(), tuple()} |
    {error, any()} |
    {error, get_graph_snapshot_errors(), tuple()}.
get_graph_snapshot(Client, SnapshotIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a graph summary for a property graph.
-spec get_graph_summary(aws_client:aws_client(), binary() | list()) ->
    {ok, get_graph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_graph_summary_errors(), tuple()}.
get_graph_summary(Client, GraphIdentifier)
  when is_map(Client) ->
    get_graph_summary(Client, GraphIdentifier, #{}, #{}).

-spec get_graph_summary(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_graph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_graph_summary_errors(), tuple()}.
get_graph_summary(Client, GraphIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graph_summary(Client, GraphIdentifier, QueryMap, HeadersMap, []).

-spec get_graph_summary(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_graph_summary_output(), tuple()} |
    {error, any()} |
    {error, get_graph_summary_errors(), tuple()}.
get_graph_summary(Client, GraphIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"graphIdentifier">>, GraphIdentifier}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"mode">>, maps:get(<<"mode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specified import task.
-spec get_import_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_import_task_output(), tuple()} |
    {error, any()} |
    {error, get_import_task_errors(), tuple()}.
get_import_task(Client, TaskIdentifier)
  when is_map(Client) ->
    get_import_task(Client, TaskIdentifier, #{}, #{}).

-spec get_import_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_import_task_output(), tuple()} |
    {error, any()} |
    {error, get_import_task_errors(), tuple()}.
get_import_task(Client, TaskIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_task(Client, TaskIdentifier, QueryMap, HeadersMap, []).

-spec get_import_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_task_output(), tuple()} |
    {error, any()} |
    {error, get_import_task_errors(), tuple()}.
get_import_task(Client, TaskIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/importtasks/", aws_util:encode_uri(TaskIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specified private endpoint.
-spec get_private_graph_endpoint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_private_graph_endpoint_errors(), tuple()}.
get_private_graph_endpoint(Client, GraphIdentifier, VpcId)
  when is_map(Client) ->
    get_private_graph_endpoint(Client, GraphIdentifier, VpcId, #{}, #{}).

-spec get_private_graph_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_private_graph_endpoint_errors(), tuple()}.
get_private_graph_endpoint(Client, GraphIdentifier, VpcId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_private_graph_endpoint(Client, GraphIdentifier, VpcId, QueryMap, HeadersMap, []).

-spec get_private_graph_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_private_graph_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_private_graph_endpoint_errors(), tuple()}.
get_private_graph_endpoint(Client, GraphIdentifier, VpcId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), "/endpoints/", aws_util:encode_uri(VpcId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status of a specified query.
%%
%% When invoking this operation in a Neptune Analytics cluster, the IAM user
%% or role making the request must have the
%% `neptune-graph:GetQueryStatus' IAM action attached.
-spec get_query(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_output(), tuple()} |
    {error, any()} |
    {error, get_query_errors(), tuple()}.
get_query(Client, QueryId, GraphIdentifier)
  when is_map(Client) ->
    get_query(Client, QueryId, GraphIdentifier, #{}, #{}).

-spec get_query(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_output(), tuple()} |
    {error, any()} |
    {error, get_query_errors(), tuple()}.
get_query(Client, QueryId, GraphIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query(Client, QueryId, GraphIdentifier, QueryMap, HeadersMap, []).

-spec get_query(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_output(), tuple()} |
    {error, any()} |
    {error, get_query_errors(), tuple()}.
get_query(Client, QueryId, GraphIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queries/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"graphIdentifier">>, GraphIdentifier}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of export tasks.
-spec list_export_tasks(aws_client:aws_client()) ->
    {ok, list_export_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_export_tasks_errors(), tuple()}.
list_export_tasks(Client)
  when is_map(Client) ->
    list_export_tasks(Client, #{}, #{}).

-spec list_export_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_export_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_export_tasks_errors(), tuple()}.
list_export_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_export_tasks(Client, QueryMap, HeadersMap, []).

-spec list_export_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_export_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_export_tasks_errors(), tuple()}.
list_export_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/exporttasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"graphIdentifier">>, maps:get(<<"graphIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists available snapshots of a specified Neptune Analytics graph.
-spec list_graph_snapshots(aws_client:aws_client()) ->
    {ok, list_graph_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_graph_snapshots_errors(), tuple()}.
list_graph_snapshots(Client)
  when is_map(Client) ->
    list_graph_snapshots(Client, #{}, #{}).

-spec list_graph_snapshots(aws_client:aws_client(), map(), map()) ->
    {ok, list_graph_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_graph_snapshots_errors(), tuple()}.
list_graph_snapshots(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_graph_snapshots(Client, QueryMap, HeadersMap, []).

-spec list_graph_snapshots(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_graph_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_graph_snapshots_errors(), tuple()}.
list_graph_snapshots(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/snapshots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"graphIdentifier">>, maps:get(<<"graphIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists available Neptune Analytics graphs.
-spec list_graphs(aws_client:aws_client()) ->
    {ok, list_graphs_output(), tuple()} |
    {error, any()} |
    {error, list_graphs_errors(), tuple()}.
list_graphs(Client)
  when is_map(Client) ->
    list_graphs(Client, #{}, #{}).

-spec list_graphs(aws_client:aws_client(), map(), map()) ->
    {ok, list_graphs_output(), tuple()} |
    {error, any()} |
    {error, list_graphs_errors(), tuple()}.
list_graphs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_graphs(Client, QueryMap, HeadersMap, []).

-spec list_graphs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_graphs_output(), tuple()} |
    {error, any()} |
    {error, list_graphs_errors(), tuple()}.
list_graphs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/graphs"],
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

%% @doc Lists import tasks.
-spec list_import_tasks(aws_client:aws_client()) ->
    {ok, list_import_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_import_tasks_errors(), tuple()}.
list_import_tasks(Client)
  when is_map(Client) ->
    list_import_tasks(Client, #{}, #{}).

-spec list_import_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_import_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_import_tasks_errors(), tuple()}.
list_import_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_import_tasks(Client, QueryMap, HeadersMap, []).

-spec list_import_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_import_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_import_tasks_errors(), tuple()}.
list_import_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/importtasks"],
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

%% @doc Lists private endpoints for a specified Neptune Analytics graph.
-spec list_private_graph_endpoints(aws_client:aws_client(), binary() | list()) ->
    {ok, list_private_graph_endpoints_output(), tuple()} |
    {error, any()} |
    {error, list_private_graph_endpoints_errors(), tuple()}.
list_private_graph_endpoints(Client, GraphIdentifier)
  when is_map(Client) ->
    list_private_graph_endpoints(Client, GraphIdentifier, #{}, #{}).

-spec list_private_graph_endpoints(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_private_graph_endpoints_output(), tuple()} |
    {error, any()} |
    {error, list_private_graph_endpoints_errors(), tuple()}.
list_private_graph_endpoints(Client, GraphIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_private_graph_endpoints(Client, GraphIdentifier, QueryMap, HeadersMap, []).

-spec list_private_graph_endpoints(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_private_graph_endpoints_output(), tuple()} |
    {error, any()} |
    {error, list_private_graph_endpoints_errors(), tuple()}.
list_private_graph_endpoints(Client, GraphIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), "/endpoints/"],
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

%% @doc Lists active openCypher queries.
-spec list_queries(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_queries_output(), tuple()} |
    {error, any()} |
    {error, list_queries_errors(), tuple()}.
list_queries(Client, MaxResults, GraphIdentifier)
  when is_map(Client) ->
    list_queries(Client, MaxResults, GraphIdentifier, #{}, #{}).

-spec list_queries(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_queries_output(), tuple()} |
    {error, any()} |
    {error, list_queries_errors(), tuple()}.
list_queries(Client, MaxResults, GraphIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queries(Client, MaxResults, GraphIdentifier, QueryMap, HeadersMap, []).

-spec list_queries(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queries_output(), tuple()} |
    {error, any()} |
    {error, list_queries_errors(), tuple()}.
list_queries(Client, MaxResults, GraphIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"graphIdentifier">>, GraphIdentifier}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags associated with a specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Empties the data from a specified Neptune Analytics graph.
-spec reset_graph(aws_client:aws_client(), binary() | list(), reset_graph_input()) ->
    {ok, reset_graph_output(), tuple()} |
    {error, any()} |
    {error, reset_graph_errors(), tuple()}.
reset_graph(Client, GraphIdentifier, Input) ->
    reset_graph(Client, GraphIdentifier, Input, []).

-spec reset_graph(aws_client:aws_client(), binary() | list(), reset_graph_input(), proplists:proplist()) ->
    {ok, reset_graph_output(), tuple()} |
    {error, any()} |
    {error, reset_graph_errors(), tuple()}.
reset_graph(Client, GraphIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), ""],
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

%% @doc Restores a graph from a snapshot.
-spec restore_graph_from_snapshot(aws_client:aws_client(), binary() | list(), restore_graph_from_snapshot_input()) ->
    {ok, restore_graph_from_snapshot_output(), tuple()} |
    {error, any()} |
    {error, restore_graph_from_snapshot_errors(), tuple()}.
restore_graph_from_snapshot(Client, SnapshotIdentifier, Input) ->
    restore_graph_from_snapshot(Client, SnapshotIdentifier, Input, []).

-spec restore_graph_from_snapshot(aws_client:aws_client(), binary() | list(), restore_graph_from_snapshot_input(), proplists:proplist()) ->
    {ok, restore_graph_from_snapshot_output(), tuple()} |
    {error, any()} |
    {error, restore_graph_from_snapshot_errors(), tuple()}.
restore_graph_from_snapshot(Client, SnapshotIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotIdentifier), "/restore"],
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

%% @doc Export data from an existing Neptune Analytics graph to Amazon S3.
%%
%% The graph state should be `AVAILABLE'.
-spec start_export_task(aws_client:aws_client(), start_export_task_input()) ->
    {ok, start_export_task_output(), tuple()} |
    {error, any()} |
    {error, start_export_task_errors(), tuple()}.
start_export_task(Client, Input) ->
    start_export_task(Client, Input, []).

-spec start_export_task(aws_client:aws_client(), start_export_task_input(), proplists:proplist()) ->
    {ok, start_export_task_output(), tuple()} |
    {error, any()} |
    {error, start_export_task_errors(), tuple()}.
start_export_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/exporttasks"],
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

%% @doc Import data into existing Neptune Analytics graph from Amazon Simple
%% Storage Service (S3).
%%
%% The graph needs to be empty and in the AVAILABLE state.
-spec start_import_task(aws_client:aws_client(), binary() | list(), start_import_task_input()) ->
    {ok, start_import_task_output(), tuple()} |
    {error, any()} |
    {error, start_import_task_errors(), tuple()}.
start_import_task(Client, GraphIdentifier, Input) ->
    start_import_task(Client, GraphIdentifier, Input, []).

-spec start_import_task(aws_client:aws_client(), binary() | list(), start_import_task_input(), proplists:proplist()) ->
    {ok, start_import_task_output(), tuple()} |
    {error, any()} |
    {error, start_import_task_errors(), tuple()}.
start_import_task(Client, GraphIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), "/importtasks"],
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

%% @doc Adds tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Removes the specified tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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

%% @doc Updates the configuration of a specified Neptune Analytics graph
-spec update_graph(aws_client:aws_client(), binary() | list(), update_graph_input()) ->
    {ok, update_graph_output(), tuple()} |
    {error, any()} |
    {error, update_graph_errors(), tuple()}.
update_graph(Client, GraphIdentifier, Input) ->
    update_graph(Client, GraphIdentifier, Input, []).

-spec update_graph(aws_client:aws_client(), binary() | list(), update_graph_input(), proplists:proplist()) ->
    {ok, update_graph_output(), tuple()} |
    {error, any()} |
    {error, update_graph_errors(), tuple()}.
update_graph(Client, GraphIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/graphs/", aws_util:encode_uri(GraphIdentifier), ""],
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
    Client1 = Client#{service => <<"neptune-graph">>},
    Host = build_host(<<"neptune-graph">>, Client1),
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
