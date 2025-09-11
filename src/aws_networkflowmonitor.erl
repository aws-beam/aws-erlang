%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Network Flow Monitor is a feature of Amazon CloudWatch Network
%% Monitoring that provides visibility into the performance of network flows
%% for your Amazon Web Services workloads, between instances in subnets, as
%% well as to and from Amazon Web Services.
%%
%% Lightweight agents that you install on the instances capture performance
%% metrics for your network flows, such as packet loss and latency, and send
%% them to the Network Flow Monitor backend. Then, you can view and analyze
%% metrics from the top contributors for each metric type, to help
%% troubleshoot issues.
%%
%% In addition, when you create a monitor, Network Flow Monitor provides a
%% network health indicator (NHI) that informs you whether there were Amazon
%% Web Services network issues for one or more of the network flows tracked
%% by a monitor, during a time period that you choose. By using this value,
%% you can independently determine if the Amazon Web Services network is
%% impacting your workload during a specific time frame, to help you focus
%% troubleshooting efforts.
%%
%% To learn more about Network Flow Monitor, see the Network Flow Monitor
%% User Guide:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-NetworkFlowMonitor.html
%% in the Amazon CloudWatch User Guide.
-module(aws_networkflowmonitor).

-export([create_monitor/2,
         create_monitor/3,
         create_scope/2,
         create_scope/3,
         delete_monitor/3,
         delete_monitor/4,
         delete_scope/3,
         delete_scope/4,
         get_monitor/2,
         get_monitor/4,
         get_monitor/5,
         get_query_results_monitor_top_contributors/3,
         get_query_results_monitor_top_contributors/5,
         get_query_results_monitor_top_contributors/6,
         get_query_results_workload_insights_top_contributors/3,
         get_query_results_workload_insights_top_contributors/5,
         get_query_results_workload_insights_top_contributors/6,
         get_query_results_workload_insights_top_contributors_data/3,
         get_query_results_workload_insights_top_contributors_data/5,
         get_query_results_workload_insights_top_contributors_data/6,
         get_query_status_monitor_top_contributors/3,
         get_query_status_monitor_top_contributors/5,
         get_query_status_monitor_top_contributors/6,
         get_query_status_workload_insights_top_contributors/3,
         get_query_status_workload_insights_top_contributors/5,
         get_query_status_workload_insights_top_contributors/6,
         get_query_status_workload_insights_top_contributors_data/3,
         get_query_status_workload_insights_top_contributors_data/5,
         get_query_status_workload_insights_top_contributors_data/6,
         get_scope/2,
         get_scope/4,
         get_scope/5,
         list_monitors/1,
         list_monitors/3,
         list_monitors/4,
         list_scopes/1,
         list_scopes/3,
         list_scopes/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_query_monitor_top_contributors/3,
         start_query_monitor_top_contributors/4,
         start_query_workload_insights_top_contributors/3,
         start_query_workload_insights_top_contributors/4,
         start_query_workload_insights_top_contributors_data/3,
         start_query_workload_insights_top_contributors_data/4,
         stop_query_monitor_top_contributors/4,
         stop_query_monitor_top_contributors/5,
         stop_query_workload_insights_top_contributors/4,
         stop_query_workload_insights_top_contributors/5,
         stop_query_workload_insights_top_contributors_data/4,
         stop_query_workload_insights_top_contributors_data/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_monitor/3,
         update_monitor/4,
         update_scope/3,
         update_scope/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% monitor_local_resource() :: #{
%%   <<"identifier">> => [string()],
%%   <<"type">> => list(any())
%% }
-type monitor_local_resource() :: #{binary() => any()}.


%% Example:
%% list_monitors_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"monitorStatus">> => list(any()),
%%   <<"nextToken">> => [string()]
%% }
-type list_monitors_input() :: #{binary() => any()}.


%% Example:
%% list_scopes_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_scopes_input() :: #{binary() => any()}.


%% Example:
%% start_query_workload_insights_top_contributors_data_output() :: #{
%%   <<"queryId">> => [string()]
%% }
-type start_query_workload_insights_top_contributors_data_output() :: #{binary() => any()}.

%% Example:
%% get_query_status_monitor_top_contributors_input() :: #{}
-type get_query_status_monitor_top_contributors_input() :: #{}.

%% Example:
%% stop_query_workload_insights_top_contributors_output() :: #{}
-type stop_query_workload_insights_top_contributors_output() :: #{}.


%% Example:
%% get_monitor_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"localResources">> => list(monitor_local_resource()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"monitorStatus">> => list(any()),
%%   <<"remoteResources">> => list(monitor_remote_resource()),
%%   <<"tags">> => map()
%% }
-type get_monitor_output() :: #{binary() => any()}.


%% Example:
%% list_monitors_output() :: #{
%%   <<"monitors">> => list(monitor_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_monitors_output() :: #{binary() => any()}.


%% Example:
%% get_query_results_workload_insights_top_contributors_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type get_query_results_workload_insights_top_contributors_input() :: #{binary() => any()}.


%% Example:
%% start_query_workload_insights_top_contributors_input() :: #{
%%   <<"destinationCategory">> := list(any()),
%%   <<"endTime">> := [non_neg_integer()],
%%   <<"limit">> => integer(),
%%   <<"metricName">> := list(any()),
%%   <<"startTime">> := [non_neg_integer()]
%% }
-type start_query_workload_insights_top_contributors_input() :: #{binary() => any()}.


%% Example:
%% workload_insights_top_contributors_row() :: #{
%%   <<"accountId">> => string(),
%%   <<"localAz">> => string(),
%%   <<"localRegion">> => string(),
%%   <<"localSubnetArn">> => string(),
%%   <<"localSubnetId">> => string(),
%%   <<"localVpcArn">> => string(),
%%   <<"localVpcId">> => string(),
%%   <<"remoteIdentifier">> => [string()],
%%   <<"value">> => [float()]
%% }
-type workload_insights_top_contributors_row() :: #{binary() => any()}.


%% Example:
%% monitor_remote_resource() :: #{
%%   <<"identifier">> => [string()],
%%   <<"type">> => list(any())
%% }
-type monitor_remote_resource() :: #{binary() => any()}.

%% Example:
%% stop_query_monitor_top_contributors_input() :: #{}
-type stop_query_monitor_top_contributors_input() :: #{}.


%% Example:
%% get_query_results_workload_insights_top_contributors_data_output() :: #{
%%   <<"datapoints">> => list(workload_insights_top_contributors_data_point()),
%%   <<"nextToken">> => [string()],
%%   <<"unit">> => list(any())
%% }
-type get_query_results_workload_insights_top_contributors_data_output() :: #{binary() => any()}.

%% Example:
%% delete_monitor_output() :: #{}
-type delete_monitor_output() :: #{}.


%% Example:
%% start_query_monitor_top_contributors_output() :: #{
%%   <<"queryId">> => [string()]
%% }
-type start_query_monitor_top_contributors_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% target_identifier() :: #{
%%   <<"targetId">> => list(),
%%   <<"targetType">> => list(any())
%% }
-type target_identifier() :: #{binary() => any()}.


%% Example:
%% target_resource() :: #{
%%   <<"region">> => string(),
%%   <<"targetIdentifier">> => target_identifier()
%% }
-type target_resource() :: #{binary() => any()}.


%% Example:
%% get_query_results_workload_insights_top_contributors_data_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type get_query_results_workload_insights_top_contributors_data_input() :: #{binary() => any()}.


%% Example:
%% workload_insights_top_contributors_data_point() :: #{
%%   <<"label">> => [string()],
%%   <<"timestamps">> => list([non_neg_integer()]()),
%%   <<"values">> => list([float()]())
%% }
-type workload_insights_top_contributors_data_point() :: #{binary() => any()}.

%% Example:
%% delete_monitor_input() :: #{}
-type delete_monitor_input() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stop_query_workload_insights_top_contributors_input() :: #{}
-type stop_query_workload_insights_top_contributors_input() :: #{}.


%% Example:
%% update_scope_input() :: #{
%%   <<"resourcesToAdd">> => list(target_resource()),
%%   <<"resourcesToDelete">> => list(target_resource())
%% }
-type update_scope_input() :: #{binary() => any()}.


%% Example:
%% create_scope_output() :: #{
%%   <<"scopeArn">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_scope_output() :: #{binary() => any()}.


%% Example:
%% traversed_component() :: #{
%%   <<"componentArn">> => string(),
%%   <<"componentId">> => string(),
%%   <<"componentType">> => string(),
%%   <<"serviceName">> => [string()]
%% }
-type traversed_component() :: #{binary() => any()}.

%% Example:
%% get_query_status_workload_insights_top_contributors_data_input() :: #{}
-type get_query_status_workload_insights_top_contributors_data_input() :: #{}.

%% Example:
%% get_monitor_input() :: #{}
-type get_monitor_input() :: #{}.


%% Example:
%% start_query_workload_insights_top_contributors_output() :: #{
%%   <<"queryId">> => [string()]
%% }
-type start_query_workload_insights_top_contributors_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% get_query_status_monitor_top_contributors_output() :: #{
%%   <<"status">> => list(any())
%% }
-type get_query_status_monitor_top_contributors_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% get_query_status_workload_insights_top_contributors_input() :: #{}
-type get_query_status_workload_insights_top_contributors_input() :: #{}.


%% Example:
%% get_query_status_workload_insights_top_contributors_output() :: #{
%%   <<"status">> => list(any())
%% }
-type get_query_status_workload_insights_top_contributors_output() :: #{binary() => any()}.


%% Example:
%% get_query_status_workload_insights_top_contributors_data_output() :: #{
%%   <<"status">> => list(any())
%% }
-type get_query_status_workload_insights_top_contributors_data_output() :: #{binary() => any()}.


%% Example:
%% get_query_results_workload_insights_top_contributors_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"topContributors">> => list(workload_insights_top_contributors_row())
%% }
-type get_query_results_workload_insights_top_contributors_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% get_query_results_monitor_top_contributors_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"topContributors">> => list(monitor_top_contributors_row()),
%%   <<"unit">> => list(any())
%% }
-type get_query_results_monitor_top_contributors_output() :: #{binary() => any()}.


%% Example:
%% update_monitor_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"localResourcesToAdd">> => list(monitor_local_resource()),
%%   <<"localResourcesToRemove">> => list(monitor_local_resource()),
%%   <<"remoteResourcesToAdd">> => list(monitor_remote_resource()),
%%   <<"remoteResourcesToRemove">> => list(monitor_remote_resource())
%% }
-type update_monitor_input() :: #{binary() => any()}.


%% Example:
%% start_query_monitor_top_contributors_input() :: #{
%%   <<"destinationCategory">> := list(any()),
%%   <<"endTime">> := [non_neg_integer()],
%%   <<"limit">> => integer(),
%%   <<"metricName">> := list(any()),
%%   <<"startTime">> := [non_neg_integer()]
%% }
-type start_query_monitor_top_contributors_input() :: #{binary() => any()}.


%% Example:
%% create_scope_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map(),
%%   <<"targets">> := list(target_resource())
%% }
-type create_scope_input() :: #{binary() => any()}.


%% Example:
%% get_scope_output() :: #{
%%   <<"scopeArn">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"targets">> => list(target_resource())
%% }
-type get_scope_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_scope_output() :: #{}
-type delete_scope_output() :: #{}.

%% Example:
%% stop_query_workload_insights_top_contributors_data_output() :: #{}
-type stop_query_workload_insights_top_contributors_data_output() :: #{}.


%% Example:
%% kubernetes_metadata() :: #{
%%   <<"localPodName">> => [string()],
%%   <<"localPodNamespace">> => [string()],
%%   <<"localServiceName">> => [string()],
%%   <<"remotePodName">> => [string()],
%%   <<"remotePodNamespace">> => [string()],
%%   <<"remoteServiceName">> => [string()]
%% }
-type kubernetes_metadata() :: #{binary() => any()}.


%% Example:
%% start_query_workload_insights_top_contributors_data_input() :: #{
%%   <<"destinationCategory">> := list(any()),
%%   <<"endTime">> := [non_neg_integer()],
%%   <<"metricName">> := list(any()),
%%   <<"startTime">> := [non_neg_integer()]
%% }
-type start_query_workload_insights_top_contributors_data_input() :: #{binary() => any()}.


%% Example:
%% update_scope_output() :: #{
%%   <<"scopeArn">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type update_scope_output() :: #{binary() => any()}.


%% Example:
%% create_monitor_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"localResources">> => list(monitor_local_resource()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"monitorStatus">> => list(any()),
%%   <<"remoteResources">> => list(monitor_remote_resource()),
%%   <<"tags">> => map()
%% }
-type create_monitor_output() :: #{binary() => any()}.


%% Example:
%% get_query_results_monitor_top_contributors_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type get_query_results_monitor_top_contributors_input() :: #{binary() => any()}.

%% Example:
%% stop_query_monitor_top_contributors_output() :: #{}
-type stop_query_monitor_top_contributors_output() :: #{}.


%% Example:
%% list_scopes_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"scopes">> => list(scope_summary())
%% }
-type list_scopes_output() :: #{binary() => any()}.

%% Example:
%% get_scope_input() :: #{}
-type get_scope_input() :: #{}.


%% Example:
%% monitor_top_contributors_row() :: #{
%%   <<"destinationCategory">> => list(any()),
%%   <<"dnatIp">> => [string()],
%%   <<"kubernetesMetadata">> => kubernetes_metadata(),
%%   <<"localAz">> => string(),
%%   <<"localInstanceArn">> => string(),
%%   <<"localInstanceId">> => string(),
%%   <<"localIp">> => [string()],
%%   <<"localRegion">> => string(),
%%   <<"localSubnetArn">> => string(),
%%   <<"localSubnetId">> => string(),
%%   <<"localVpcArn">> => string(),
%%   <<"localVpcId">> => string(),
%%   <<"remoteAz">> => string(),
%%   <<"remoteInstanceArn">> => string(),
%%   <<"remoteInstanceId">> => string(),
%%   <<"remoteIp">> => [string()],
%%   <<"remoteRegion">> => string(),
%%   <<"remoteSubnetArn">> => string(),
%%   <<"remoteSubnetId">> => string(),
%%   <<"remoteVpcArn">> => string(),
%%   <<"remoteVpcId">> => string(),
%%   <<"snatIp">> => [string()],
%%   <<"targetPort">> => [integer()],
%%   <<"traversedConstructs">> => list(traversed_component()),
%%   <<"value">> => [float()]
%% }
-type monitor_top_contributors_row() :: #{binary() => any()}.


%% Example:
%% scope_summary() :: #{
%%   <<"scopeArn">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"status">> => list(any())
%% }
-type scope_summary() :: #{binary() => any()}.


%% Example:
%% monitor_summary() :: #{
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"monitorStatus">> => list(any())
%% }
-type monitor_summary() :: #{binary() => any()}.

%% Example:
%% stop_query_workload_insights_top_contributors_data_input() :: #{}
-type stop_query_workload_insights_top_contributors_data_input() :: #{}.


%% Example:
%% update_monitor_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"localResources">> => list(monitor_local_resource()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"monitorStatus">> => list(any()),
%%   <<"remoteResources">> => list(monitor_remote_resource()),
%%   <<"tags">> => map()
%% }
-type update_monitor_output() :: #{binary() => any()}.


%% Example:
%% create_monitor_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"localResources">> := list(monitor_local_resource()),
%%   <<"monitorName">> := string(),
%%   <<"remoteResources">> => list(monitor_remote_resource()),
%%   <<"scopeArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_monitor_input() :: #{binary() => any()}.

%% Example:
%% delete_scope_input() :: #{}
-type delete_scope_input() :: #{}.

-type create_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_query_results_monitor_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_query_results_workload_insights_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_query_results_workload_insights_top_contributors_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_query_status_monitor_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type get_query_status_workload_insights_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type get_query_status_workload_insights_top_contributors_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type get_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_monitors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_scopes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_query_monitor_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type start_query_workload_insights_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type start_query_workload_insights_top_contributors_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type stop_query_monitor_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type stop_query_workload_insights_top_contributors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type stop_query_workload_insights_top_contributors_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a monitor for specific network flows between local and remote
%% resources, so that you can monitor network performance for one or several
%% of your workloads.
%%
%% For each monitor, Network Flow Monitor publishes detailed end-to-end
%% performance metrics and a network health indicator (NHI) that informs you
%% whether there were Amazon Web Services network issues for one or more of
%% the network flows tracked by a monitor, during a time period that you
%% choose.
-spec create_monitor(aws_client:aws_client(), create_monitor_input()) ->
    {ok, create_monitor_output(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input) ->
    create_monitor(Client, Input, []).

-spec create_monitor(aws_client:aws_client(), create_monitor_input(), proplists:proplist()) ->
    {ok, create_monitor_output(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/monitors"],
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

%% @doc In Network Flow Monitor, you specify a scope for the service to
%% generate metrics for.
%%
%% By using the scope, Network Flow Monitor can generate a topology of all
%% the resources to measure performance metrics for. When you create a scope,
%% you enable permissions for Network Flow Monitor.
%%
%% A scope is a Region-account pair or multiple Region-account pairs. Network
%% Flow Monitor uses your scope to determine all the resources (the topology)
%% where Network Flow Monitor will gather network flow performance metrics
%% for you. To provide performance metrics, Network Flow Monitor uses the
%% data that is sent by the Network Flow Monitor agents you install on the
%% resources.
%%
%% To define the Region-account pairs for your scope, the Network Flow
%% Monitor API uses the following constucts, which allow for future
%% flexibility in defining scopes:
%%
%% Targets, which are arrays of targetResources.
%%
%% Target resources, which are Region-targetIdentifier pairs.
%%
%% Target identifiers, made up of a targetID (currently always an account ID)
%% and a targetType (currently always an account).
-spec create_scope(aws_client:aws_client(), create_scope_input()) ->
    {ok, create_scope_output(), tuple()} |
    {error, any()} |
    {error, create_scope_errors(), tuple()}.
create_scope(Client, Input) ->
    create_scope(Client, Input, []).

-spec create_scope(aws_client:aws_client(), create_scope_input(), proplists:proplist()) ->
    {ok, create_scope_output(), tuple()} |
    {error, any()} |
    {error, create_scope_errors(), tuple()}.
create_scope(Client, Input0, Options0) ->
    Method = post,
    Path = ["/scopes"],
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

%% @doc Deletes a monitor in Network Flow Monitor.
-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_input()) ->
    {ok, delete_monitor_output(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorName, Input) ->
    delete_monitor(Client, MonitorName, Input, []).

-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_input(), proplists:proplist()) ->
    {ok, delete_monitor_output(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), ""],
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

%% @doc Deletes a scope that has been defined.
-spec delete_scope(aws_client:aws_client(), binary() | list(), delete_scope_input()) ->
    {ok, delete_scope_output(), tuple()} |
    {error, any()} |
    {error, delete_scope_errors(), tuple()}.
delete_scope(Client, ScopeId, Input) ->
    delete_scope(Client, ScopeId, Input, []).

-spec delete_scope(aws_client:aws_client(), binary() | list(), delete_scope_input(), proplists:proplist()) ->
    {ok, delete_scope_output(), tuple()} |
    {error, any()} |
    {error, delete_scope_errors(), tuple()}.
delete_scope(Client, ScopeId, Input0, Options0) ->
    Method = delete,
    Path = ["/scopes/", aws_util:encode_uri(ScopeId), ""],
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

%% @doc Gets information about a monitor in Network Flow Monitor based on a
%% monitor name.
%%
%% The information returned includes the Amazon Resource Name (ARN), create
%% time, modified time, resources included in the monitor, and status
%% information.
-spec get_monitor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName)
  when is_map(Client) ->
    get_monitor(Client, MonitorName, #{}, #{}).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitor(Client, MonitorName, QueryMap, HeadersMap, []).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Return the data for a query with the Network Flow Monitor query
%% interface.
%%
%% You specify the query that you want to return results for by providing a
%% query ID and a monitor name. This query returns the top contributors for a
%% specific monitor.
%%
%% Create a query ID for this call by calling the corresponding API call to
%% start the query, `StartQueryMonitorTopContributors'. Use the scope ID
%% that was returned for your account by `CreateScope'.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec get_query_results_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_results_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_monitor_top_contributors_errors(), tuple()}.
get_query_results_monitor_top_contributors(Client, MonitorName, QueryId)
  when is_map(Client) ->
    get_query_results_monitor_top_contributors(Client, MonitorName, QueryId, #{}, #{}).

-spec get_query_results_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_results_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_monitor_top_contributors_errors(), tuple()}.
get_query_results_monitor_top_contributors(Client, MonitorName, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_results_monitor_top_contributors(Client, MonitorName, QueryId, QueryMap, HeadersMap, []).

-spec get_query_results_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_results_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_monitor_top_contributors_errors(), tuple()}.
get_query_results_monitor_top_contributors(Client, MonitorName, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/topContributorsQueries/", aws_util:encode_uri(QueryId), "/results"],
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

%% @doc Return the data for a query with the Network Flow Monitor query
%% interface.
%%
%% You specify the query that you want to return results for by providing a
%% query ID and a monitor name.
%%
%% This query returns the top contributors for a scope for workload insights.
%% Workload insights provide a high level view of network flow performance
%% data collected by agents. To return the data for the top contributors, see
%% `GetQueryResultsWorkloadInsightsTopContributorsData'.
%%
%% Create a query ID for this call by calling the corresponding API call to
%% start the query, `StartQueryWorkloadInsightsTopContributors'. Use the
%% scope ID that was returned for your account by `CreateScope'.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec get_query_results_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_results_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_workload_insights_top_contributors_errors(), tuple()}.
get_query_results_workload_insights_top_contributors(Client, QueryId, ScopeId)
  when is_map(Client) ->
    get_query_results_workload_insights_top_contributors(Client, QueryId, ScopeId, #{}, #{}).

-spec get_query_results_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_results_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_workload_insights_top_contributors_errors(), tuple()}.
get_query_results_workload_insights_top_contributors(Client, QueryId, ScopeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_results_workload_insights_top_contributors(Client, QueryId, ScopeId, QueryMap, HeadersMap, []).

-spec get_query_results_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_results_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_workload_insights_top_contributors_errors(), tuple()}.
get_query_results_workload_insights_top_contributors(Client, QueryId, ScopeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsQueries/", aws_util:encode_uri(QueryId), "/results"],
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

%% @doc Return the data for a query with the Network Flow Monitor query
%% interface.
%%
%% Specify the query that you want to return results for by providing a query
%% ID and a scope ID.
%%
%% This query returns the data for top contributors for workload insights for
%% a specific scope. Workload insights provide a high level view of network
%% flow performance data collected by agents for a scope. To return just the
%% top contributors, see
%% `GetQueryResultsWorkloadInsightsTopContributors'.
%%
%% Create a query ID for this call by calling the corresponding API call to
%% start the query, `StartQueryWorkloadInsightsTopContributorsData'. Use
%% the scope ID that was returned for your account by `CreateScope'.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
%%
%% The top contributor network flows overall are for a specific metric type,
%% for example, the number of retransmissions.
-spec get_query_results_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_results_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_workload_insights_top_contributors_data_errors(), tuple()}.
get_query_results_workload_insights_top_contributors_data(Client, QueryId, ScopeId)
  when is_map(Client) ->
    get_query_results_workload_insights_top_contributors_data(Client, QueryId, ScopeId, #{}, #{}).

-spec get_query_results_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_results_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_workload_insights_top_contributors_data_errors(), tuple()}.
get_query_results_workload_insights_top_contributors_data(Client, QueryId, ScopeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_results_workload_insights_top_contributors_data(Client, QueryId, ScopeId, QueryMap, HeadersMap, []).

-spec get_query_results_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_results_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_workload_insights_top_contributors_data_errors(), tuple()}.
get_query_results_workload_insights_top_contributors_data(Client, QueryId, ScopeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsDataQueries/", aws_util:encode_uri(QueryId), "/results"],
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

%% @doc Returns the current status of a query for the Network Flow Monitor
%% query interface, for a specified query ID and monitor.
%%
%% This call returns the query status for the top contributors for a monitor.
%%
%% When you create a query, use this call to check the status of the query to
%% make sure that it has has `SUCCEEDED' before you review the results.
%% Use the same query ID that you used for the corresponding API call to
%% start (create) the query, `StartQueryMonitorTopContributors'.
%%
%% When you run a query, use this call to check the status of the query to
%% make sure that the query has `SUCCEEDED' before you review the
%% results.
-spec get_query_status_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_status_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_monitor_top_contributors_errors(), tuple()}.
get_query_status_monitor_top_contributors(Client, MonitorName, QueryId)
  when is_map(Client) ->
    get_query_status_monitor_top_contributors(Client, MonitorName, QueryId, #{}, #{}).

-spec get_query_status_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_status_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_monitor_top_contributors_errors(), tuple()}.
get_query_status_monitor_top_contributors(Client, MonitorName, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_status_monitor_top_contributors(Client, MonitorName, QueryId, QueryMap, HeadersMap, []).

-spec get_query_status_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_status_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_monitor_top_contributors_errors(), tuple()}.
get_query_status_monitor_top_contributors(Client, MonitorName, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/topContributorsQueries/", aws_util:encode_uri(QueryId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Return the data for a query with the Network Flow Monitor query
%% interface.
%%
%% Specify the query that you want to return results for by providing a query
%% ID and a monitor name. This query returns the top contributors for
%% workload insights.
%%
%% When you start a query, use this call to check the status of the query to
%% make sure that it has has `SUCCEEDED' before you review the results.
%% Use the same query ID that you used for the corresponding API call to
%% start the query, `StartQueryWorkloadInsightsTopContributors'.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec get_query_status_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_status_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_workload_insights_top_contributors_errors(), tuple()}.
get_query_status_workload_insights_top_contributors(Client, QueryId, ScopeId)
  when is_map(Client) ->
    get_query_status_workload_insights_top_contributors(Client, QueryId, ScopeId, #{}, #{}).

-spec get_query_status_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_status_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_workload_insights_top_contributors_errors(), tuple()}.
get_query_status_workload_insights_top_contributors(Client, QueryId, ScopeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_status_workload_insights_top_contributors(Client, QueryId, ScopeId, QueryMap, HeadersMap, []).

-spec get_query_status_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_status_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_workload_insights_top_contributors_errors(), tuple()}.
get_query_status_workload_insights_top_contributors(Client, QueryId, ScopeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsQueries/", aws_util:encode_uri(QueryId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current status of a query for the Network Flow Monitor
%% query interface, for a specified query ID and monitor.
%%
%% This call returns the query status for the top contributors data for
%% workload insights.
%%
%% When you start a query, use this call to check the status of the query to
%% make sure that it has has `SUCCEEDED' before you review the results.
%% Use the same query ID that you used for the corresponding API call to
%% start the query, `StartQueryWorkloadInsightsTopContributorsData'.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
%%
%% The top contributor network flows overall are for a specific metric type,
%% for example, the number of retransmissions.
-spec get_query_status_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_status_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_workload_insights_top_contributors_data_errors(), tuple()}.
get_query_status_workload_insights_top_contributors_data(Client, QueryId, ScopeId)
  when is_map(Client) ->
    get_query_status_workload_insights_top_contributors_data(Client, QueryId, ScopeId, #{}, #{}).

-spec get_query_status_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_status_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_workload_insights_top_contributors_data_errors(), tuple()}.
get_query_status_workload_insights_top_contributors_data(Client, QueryId, ScopeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_status_workload_insights_top_contributors_data(Client, QueryId, ScopeId, QueryMap, HeadersMap, []).

-spec get_query_status_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_status_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_workload_insights_top_contributors_data_errors(), tuple()}.
get_query_status_workload_insights_top_contributors_data(Client, QueryId, ScopeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsDataQueries/", aws_util:encode_uri(QueryId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a scope, including the name, status, tags, and
%% target details.
%%
%% The scope in Network Flow Monitor is an account.
-spec get_scope(aws_client:aws_client(), binary() | list()) ->
    {ok, get_scope_output(), tuple()} |
    {error, any()} |
    {error, get_scope_errors(), tuple()}.
get_scope(Client, ScopeId)
  when is_map(Client) ->
    get_scope(Client, ScopeId, #{}, #{}).

-spec get_scope(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_scope_output(), tuple()} |
    {error, any()} |
    {error, get_scope_errors(), tuple()}.
get_scope(Client, ScopeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_scope(Client, ScopeId, QueryMap, HeadersMap, []).

-spec get_scope(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_scope_output(), tuple()} |
    {error, any()} |
    {error, get_scope_errors(), tuple()}.
get_scope(Client, ScopeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scopes/", aws_util:encode_uri(ScopeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all monitors in an account.
%%
%% Optionally, you can list only monitors that have a specific status, by
%% using the `STATUS' parameter.
-spec list_monitors(aws_client:aws_client()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client)
  when is_map(Client) ->
    list_monitors(Client, #{}, #{}).

-spec list_monitors(aws_client:aws_client(), map(), map()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_monitors(Client, QueryMap, HeadersMap, []).

-spec list_monitors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors"],
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
        {<<"monitorStatus">>, maps:get(<<"monitorStatus">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the scopes for an account.
-spec list_scopes(aws_client:aws_client()) ->
    {ok, list_scopes_output(), tuple()} |
    {error, any()} |
    {error, list_scopes_errors(), tuple()}.
list_scopes(Client)
  when is_map(Client) ->
    list_scopes(Client, #{}, #{}).

-spec list_scopes(aws_client:aws_client(), map(), map()) ->
    {ok, list_scopes_output(), tuple()} |
    {error, any()} |
    {error, list_scopes_errors(), tuple()}.
list_scopes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scopes(Client, QueryMap, HeadersMap, []).

-spec list_scopes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_scopes_output(), tuple()} |
    {error, any()} |
    {error, list_scopes_errors(), tuple()}.
list_scopes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scopes"],
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

%% @doc Returns all the tags for a resource.
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

%% @doc Create a query that you can use with the Network Flow Monitor query
%% interface to return the top contributors for a monitor.
%%
%% Specify the monitor that you want to create the query for.
%%
%% The call returns a query ID that you can use with
%% GetQueryResultsMonitorTopContributors:
%% https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsMonitorTopContributors.html
%% to run the query and return the top contributors for a specific monitor.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable APIs for the top contributors that you want to be returned.
-spec start_query_monitor_top_contributors(aws_client:aws_client(), binary() | list(), start_query_monitor_top_contributors_input()) ->
    {ok, start_query_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, start_query_monitor_top_contributors_errors(), tuple()}.
start_query_monitor_top_contributors(Client, MonitorName, Input) ->
    start_query_monitor_top_contributors(Client, MonitorName, Input, []).

-spec start_query_monitor_top_contributors(aws_client:aws_client(), binary() | list(), start_query_monitor_top_contributors_input(), proplists:proplist()) ->
    {ok, start_query_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, start_query_monitor_top_contributors_errors(), tuple()}.
start_query_monitor_top_contributors(Client, MonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/topContributorsQueries"],
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

%% @doc Create a query with the Network Flow Monitor query interface that you
%% can run to return workload insights top contributors.
%%
%% Specify the scope that you want to create a query for.
%%
%% The call returns a query ID that you can use with
%% GetQueryResultsWorkloadInsightsTopContributors:
%% https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributors.html
%% to run the query and return the top contributors for the workload insights
%% for a scope.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable APIs for the top contributors that you want to be returned.
-spec start_query_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), start_query_workload_insights_top_contributors_input()) ->
    {ok, start_query_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, start_query_workload_insights_top_contributors_errors(), tuple()}.
start_query_workload_insights_top_contributors(Client, ScopeId, Input) ->
    start_query_workload_insights_top_contributors(Client, ScopeId, Input, []).

-spec start_query_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), start_query_workload_insights_top_contributors_input(), proplists:proplist()) ->
    {ok, start_query_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, start_query_workload_insights_top_contributors_errors(), tuple()}.
start_query_workload_insights_top_contributors(Client, ScopeId, Input0, Options0) ->
    Method = post,
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsQueries"],
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

%% @doc Create a query with the Network Flow Monitor query interface that you
%% can run to return data for workload insights top contributors.
%%
%% Specify the scope that you want to create a query for.
%%
%% The call returns a query ID that you can use with
%% GetQueryResultsWorkloadInsightsTopContributorsData:
%% https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributorsData.html
%% to run the query and return the data for the top contributors for the
%% workload insights for a scope.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec start_query_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), start_query_workload_insights_top_contributors_data_input()) ->
    {ok, start_query_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, start_query_workload_insights_top_contributors_data_errors(), tuple()}.
start_query_workload_insights_top_contributors_data(Client, ScopeId, Input) ->
    start_query_workload_insights_top_contributors_data(Client, ScopeId, Input, []).

-spec start_query_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), start_query_workload_insights_top_contributors_data_input(), proplists:proplist()) ->
    {ok, start_query_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, start_query_workload_insights_top_contributors_data_errors(), tuple()}.
start_query_workload_insights_top_contributors_data(Client, ScopeId, Input0, Options0) ->
    Method = post,
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsDataQueries"],
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

%% @doc Stop a top contributors query for a monitor.
%%
%% Specify the query that you want to stop by providing a query ID and a
%% monitor name.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec stop_query_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_monitor_top_contributors_input()) ->
    {ok, stop_query_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, stop_query_monitor_top_contributors_errors(), tuple()}.
stop_query_monitor_top_contributors(Client, MonitorName, QueryId, Input) ->
    stop_query_monitor_top_contributors(Client, MonitorName, QueryId, Input, []).

-spec stop_query_monitor_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_monitor_top_contributors_input(), proplists:proplist()) ->
    {ok, stop_query_monitor_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, stop_query_monitor_top_contributors_errors(), tuple()}.
stop_query_monitor_top_contributors(Client, MonitorName, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/topContributorsQueries/", aws_util:encode_uri(QueryId), ""],
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

%% @doc Stop a top contributors query for workload insights.
%%
%% Specify the query that you want to stop by providing a query ID and a
%% scope ID.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec stop_query_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_workload_insights_top_contributors_input()) ->
    {ok, stop_query_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, stop_query_workload_insights_top_contributors_errors(), tuple()}.
stop_query_workload_insights_top_contributors(Client, QueryId, ScopeId, Input) ->
    stop_query_workload_insights_top_contributors(Client, QueryId, ScopeId, Input, []).

-spec stop_query_workload_insights_top_contributors(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_workload_insights_top_contributors_input(), proplists:proplist()) ->
    {ok, stop_query_workload_insights_top_contributors_output(), tuple()} |
    {error, any()} |
    {error, stop_query_workload_insights_top_contributors_errors(), tuple()}.
stop_query_workload_insights_top_contributors(Client, QueryId, ScopeId, Input0, Options0) ->
    Method = delete,
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsQueries/", aws_util:encode_uri(QueryId), ""],
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

%% @doc Stop a top contributors data query for workload insights.
%%
%% Specify the query that you want to stop by providing a query ID and a
%% scope ID.
%%
%% Top contributors in Network Flow Monitor are network flows with the
%% highest values for a specific metric type. Top contributors can be across
%% all workload insights, for a given scope, or for a specific monitor. Use
%% the applicable call for the top contributors that you want to be returned.
-spec stop_query_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_workload_insights_top_contributors_data_input()) ->
    {ok, stop_query_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, stop_query_workload_insights_top_contributors_data_errors(), tuple()}.
stop_query_workload_insights_top_contributors_data(Client, QueryId, ScopeId, Input) ->
    stop_query_workload_insights_top_contributors_data(Client, QueryId, ScopeId, Input, []).

-spec stop_query_workload_insights_top_contributors_data(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_workload_insights_top_contributors_data_input(), proplists:proplist()) ->
    {ok, stop_query_workload_insights_top_contributors_data_output(), tuple()} |
    {error, any()} |
    {error, stop_query_workload_insights_top_contributors_data_errors(), tuple()}.
stop_query_workload_insights_top_contributors_data(Client, QueryId, ScopeId, Input0, Options0) ->
    Method = delete,
    Path = ["/workloadInsights/", aws_util:encode_uri(ScopeId), "/topContributorsDataQueries/", aws_util:encode_uri(QueryId), ""],
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

%% @doc Adds a tag to a resource.
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

%% @doc Removes a tag from a resource.
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

%% @doc Update a monitor to add or remove local or remote resources.
-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_input()) ->
    {ok, update_monitor_output(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorName, Input) ->
    update_monitor(Client, MonitorName, Input, []).

-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_input(), proplists:proplist()) ->
    {ok, update_monitor_output(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorName, Input0, Options0) ->
    Method = patch,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), ""],
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

%% @doc Update a scope to add or remove resources that you want to be
%% available for Network Flow Monitor to generate metrics for, when you have
%% active agents on those resources sending metrics reports to the Network
%% Flow Monitor backend.
-spec update_scope(aws_client:aws_client(), binary() | list(), update_scope_input()) ->
    {ok, update_scope_output(), tuple()} |
    {error, any()} |
    {error, update_scope_errors(), tuple()}.
update_scope(Client, ScopeId, Input) ->
    update_scope(Client, ScopeId, Input, []).

-spec update_scope(aws_client:aws_client(), binary() | list(), update_scope_input(), proplists:proplist()) ->
    {ok, update_scope_output(), tuple()} |
    {error, any()} |
    {error, update_scope_errors(), tuple()}.
update_scope(Client, ScopeId, Input0, Options0) ->
    Method = patch,
    Path = ["/scopes/", aws_util:encode_uri(ScopeId), ""],
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
    Client1 = Client#{service => <<"networkflowmonitor">>},
    Host = build_host(<<"networkflowmonitor">>, Client1),
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
