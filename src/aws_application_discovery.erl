%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Application Discovery Service
%%
%% Amazon Web Services Application Discovery Service (Application Discovery
%% Service) helps you plan application migration projects.
%%
%% It automatically
%% identifies servers, virtual machines (VMs), and network dependencies in
%% your on-premises data
%% centers. For more information, see the Amazon Web Services Application
%% Discovery Service FAQ: http://aws.amazon.com/application-discovery/faqs/.
%%
%% Application Discovery Service offers three ways of performing discovery
%% and collecting
%% data about your on-premises servers:
%%
%% Agentless discovery using
%% Amazon Web Services Application Discovery Service Agentless Collector
%% (Agentless Collector), which doesn't require you
%% to install an agent on each host.
%%
%% Agentless Collector gathers server information regardless of the
%% operating systems, which minimizes the time required for initial
%% on-premises
%% infrastructure assessment.
%%
%% Agentless Collector doesn't collect information about network
%% dependencies, only agent-based discovery collects that information.
%%
%% Agent-based discovery using the Amazon Web Services Application
%% Discovery Agent (Application Discovery Agent) collects a richer set of
%% data than agentless
%% discovery, which you install on one or more hosts in your data center.
%%
%% The agent captures infrastructure and application information, including
%% an
%% inventory of running processes, system performance information, resource
%% utilization,
%% and network dependencies.
%%
%% The information collected by agents is secured at rest and in transit to
%% the
%% Application Discovery Service database in the Amazon Web Services cloud.
%% For more information, see
%% Amazon Web Services Application
%% Discovery Agent:
%% https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-agent.html.
%%
%% Amazon Web Services Partner Network (APN) solutions integrate with
%% Application Discovery Service, enabling you to import details of your
%% on-premises
%% environment directly into Amazon Web Services Migration Hub (Migration
%% Hub) without using
%% Agentless Collector or Application Discovery Agent.
%%
%% Third-party application discovery tools can query Amazon Web Services
%% Application Discovery
%% Service, and they can write to the Application Discovery Service database
%% using the
%% public API.
%%
%% In this way, you can import data into Migration Hub and view it, so that
%% you can
%% associate applications with servers and track migrations.
%%
%% Working With This Guide
%%
%% This API reference provides descriptions, syntax, and usage examples for
%% each of the
%% actions and data types for Application Discovery Service. The topic for
%% each action shows the
%% API request parameters and the response. Alternatively, you can use one of
%% the Amazon Web Services SDKs to
%% access an API that is tailored to the programming language or platform
%% that you're using. For
%% more information, see Amazon Web Services SDKs:
%% http://aws.amazon.com/tools/#SDKs.
%%
%% Remember that you must set your Migration Hub home Region before you call
%% any of
%% these APIs.
%%
%% You must make API calls for write actions (create, notify, associate,
%% disassociate,
%% import, or put) while in your home Region, or a
%% `HomeRegionNotSetException'
%% error is returned.
%%
%% API calls for read actions (list, describe, stop, and delete) are
%% permitted outside
%% of your home Region.
%%
%% Although it is unlikely, the Migration Hub home Region could change. If
%% you call
%% APIs outside the home Region, an `InvalidInputException' is returned.
%%
%% You must call `GetHomeRegion' to obtain the latest Migration Hub home
%% Region.
%%
%% This guide is intended for use with the Amazon Web Services Application
%% Discovery Service User
%% Guide:
%% https://docs.aws.amazon.com/application-discovery/latest/userguide/.
%%
%% All data is handled according to the Amazon Web Services Privacy Policy:
%% https://aws.amazon.com/privacy/. You can operate Application Discovery
%% Service offline to
%% inspect collected data before it is shared with the service.
-module(aws_application_discovery).

-export([associate_configuration_items_to_application/2,
         associate_configuration_items_to_application/3,
         batch_delete_agents/2,
         batch_delete_agents/3,
         batch_delete_import_data/2,
         batch_delete_import_data/3,
         create_application/2,
         create_application/3,
         create_tags/2,
         create_tags/3,
         delete_applications/2,
         delete_applications/3,
         delete_tags/2,
         delete_tags/3,
         describe_agents/2,
         describe_agents/3,
         describe_batch_delete_configuration_task/2,
         describe_batch_delete_configuration_task/3,
         describe_configurations/2,
         describe_configurations/3,
         describe_continuous_exports/2,
         describe_continuous_exports/3,
         describe_export_configurations/2,
         describe_export_configurations/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_import_tasks/2,
         describe_import_tasks/3,
         describe_tags/2,
         describe_tags/3,
         disassociate_configuration_items_from_application/2,
         disassociate_configuration_items_from_application/3,
         export_configurations/2,
         export_configurations/3,
         get_discovery_summary/2,
         get_discovery_summary/3,
         list_configurations/2,
         list_configurations/3,
         list_server_neighbors/2,
         list_server_neighbors/3,
         start_batch_delete_configuration_task/2,
         start_batch_delete_configuration_task/3,
         start_continuous_export/2,
         start_continuous_export/3,
         start_data_collection_by_agent_ids/2,
         start_data_collection_by_agent_ids/3,
         start_export_task/2,
         start_export_task/3,
         start_import_task/2,
         start_import_task/3,
         stop_continuous_export/2,
         stop_continuous_export/3,
         stop_data_collection_by_agent_ids/2,
         stop_data_collection_by_agent_ids/3,
         update_application/2,
         update_application/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_continuous_exports_response() :: #{
%%   <<"descriptions">> => list(continuous_export_description()()),
%%   <<"nextToken">> => string()
%% }
-type describe_continuous_exports_response() :: #{binary() => any()}.

%% Example:
%% start_continuous_export_request() :: #{

%% }
-type start_continuous_export_request() :: #{binary() => any()}.

%% Example:
%% export_configurations_response() :: #{
%%   <<"exportId">> => string()
%% }
-type export_configurations_response() :: #{binary() => any()}.

%% Example:
%% configuration_tag() :: #{
%%   <<"configurationId">> => string(),
%%   <<"configurationType">> => list(any()),
%%   <<"key">> => string(),
%%   <<"timeOfCreation">> => non_neg_integer(),
%%   <<"value">> => string()
%% }
-type configuration_tag() :: #{binary() => any()}.

%% Example:
%% neighbor_connection_detail() :: #{
%%   <<"connectionsCount">> => float(),
%%   <<"destinationPort">> => integer(),
%%   <<"destinationServerId">> => string(),
%%   <<"sourceServerId">> => string(),
%%   <<"transportProtocol">> => string()
%% }
-type neighbor_connection_detail() :: #{binary() => any()}.

%% Example:
%% batch_delete_agents_request() :: #{
%%   <<"deleteAgents">> := list(delete_agent()())
%% }
-type batch_delete_agents_request() :: #{binary() => any()}.

%% Example:
%% delete_tags_request() :: #{
%%   <<"configurationIds">> := list(string()()),
%%   <<"tags">> => list(tag()())
%% }
-type delete_tags_request() :: #{binary() => any()}.

%% Example:
%% customer_connector_info() :: #{
%%   <<"activeConnectors">> => integer(),
%%   <<"blackListedConnectors">> => integer(),
%%   <<"healthyConnectors">> => integer(),
%%   <<"shutdownConnectors">> => integer(),
%%   <<"totalConnectors">> => integer(),
%%   <<"unhealthyConnectors">> => integer(),
%%   <<"unknownConnectors">> => integer()
%% }
-type customer_connector_info() :: #{binary() => any()}.

%% Example:
%% delete_applications_response() :: #{

%% }
-type delete_applications_response() :: #{binary() => any()}.

%% Example:
%% server_internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type server_internal_error_exception() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% start_import_task_response() :: #{
%%   <<"task">> => import_task()
%% }
-type start_import_task_response() :: #{binary() => any()}.

%% Example:
%% list_configurations_response() :: #{
%%   <<"configurations">> => list(map()()),
%%   <<"nextToken">> => string()
%% }
-type list_configurations_response() :: #{binary() => any()}.

%% Example:
%% list_server_neighbors_response() :: #{
%%   <<"knownDependencyCount">> => float(),
%%   <<"neighbors">> => list(neighbor_connection_detail()()),
%%   <<"nextToken">> => string()
%% }
-type list_server_neighbors_response() :: #{binary() => any()}.

%% Example:
%% failed_configuration() :: #{
%%   <<"configurationId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"errorStatusCode">> => integer()
%% }
-type failed_configuration() :: #{binary() => any()}.

%% Example:
%% describe_export_configurations_response() :: #{
%%   <<"exportsInfo">> => list(export_info()()),
%%   <<"nextToken">> => string()
%% }
-type describe_export_configurations_response() :: #{binary() => any()}.

%% Example:
%% export_filter() :: #{
%%   <<"condition">> => string(),
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type export_filter() :: #{binary() => any()}.

%% Example:
%% disassociate_configuration_items_from_application_request() :: #{
%%   <<"applicationConfigurationId">> := string(),
%%   <<"configurationIds">> := list(string()())
%% }
-type disassociate_configuration_items_from_application_request() :: #{binary() => any()}.

%% Example:
%% describe_export_tasks_response() :: #{
%%   <<"exportsInfo">> => list(export_info()()),
%%   <<"nextToken">> => string()
%% }
-type describe_export_tasks_response() :: #{binary() => any()}.

%% Example:
%% describe_configurations_request() :: #{
%%   <<"configurationIds">> := list(string()())
%% }
-type describe_configurations_request() :: #{binary() => any()}.

%% Example:
%% describe_agents_request() :: #{
%%   <<"agentIds">> => list(string()()),
%%   <<"filters">> => list(filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_agents_request() :: #{binary() => any()}.

%% Example:
%% reserved_instance_options() :: #{
%%   <<"offeringClass">> => list(any()),
%%   <<"purchasingOption">> => list(any()),
%%   <<"termLength">> => list(any())
%% }
-type reserved_instance_options() :: #{binary() => any()}.

%% Example:
%% associate_configuration_items_to_application_response() :: #{

%% }
-type associate_configuration_items_to_application_response() :: #{binary() => any()}.

%% Example:
%% describe_tags_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => list(configuration_tag()())
%% }
-type describe_tags_response() :: #{binary() => any()}.

%% Example:
%% start_batch_delete_configuration_task_request() :: #{
%%   <<"configurationIds">> := list(string()()),
%%   <<"configurationType">> := list(any())
%% }
-type start_batch_delete_configuration_task_request() :: #{binary() => any()}.

%% Example:
%% list_configurations_request() :: #{
%%   <<"configurationType">> := list(any()),
%%   <<"filters">> => list(filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"orderBy">> => list(order_by_element()())
%% }
-type list_configurations_request() :: #{binary() => any()}.

%% Example:
%% start_batch_delete_configuration_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type start_batch_delete_configuration_task_response() :: #{binary() => any()}.

%% Example:
%% create_tags_request() :: #{
%%   <<"configurationIds">> := list(string()()),
%%   <<"tags">> := list(tag()())
%% }
-type create_tags_request() :: #{binary() => any()}.

%% Example:
%% customer_agent_info() :: #{
%%   <<"activeAgents">> => integer(),
%%   <<"blackListedAgents">> => integer(),
%%   <<"healthyAgents">> => integer(),
%%   <<"shutdownAgents">> => integer(),
%%   <<"totalAgents">> => integer(),
%%   <<"unhealthyAgents">> => integer(),
%%   <<"unknownAgents">> => integer()
%% }
-type customer_agent_info() :: #{binary() => any()}.

%% Example:
%% agent_network_info() :: #{
%%   <<"ipAddress">> => string(),
%%   <<"macAddress">> => string()
%% }
-type agent_network_info() :: #{binary() => any()}.

%% Example:
%% delete_tags_response() :: #{

%% }
-type delete_tags_response() :: #{binary() => any()}.

%% Example:
%% stop_continuous_export_response() :: #{
%%   <<"startTime">> => non_neg_integer(),
%%   <<"stopTime">> => non_neg_integer()
%% }
-type stop_continuous_export_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% agent_info() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentNetworkInfoList">> => list(agent_network_info()()),
%%   <<"agentType">> => string(),
%%   <<"collectionStatus">> => string(),
%%   <<"connectorId">> => string(),
%%   <<"health">> => list(any()),
%%   <<"hostName">> => string(),
%%   <<"lastHealthPingTime">> => string(),
%%   <<"registeredTime">> => string(),
%%   <<"version">> => string()
%% }
-type agent_info() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_export_tasks_request() :: #{
%%   <<"exportIds">> => list(string()()),
%%   <<"filters">> => list(export_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_export_tasks_request() :: #{binary() => any()}.

%% Example:
%% start_continuous_export_response() :: #{
%%   <<"dataSource">> => list(any()),
%%   <<"exportId">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"schemaStorageConfig">> => map(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type start_continuous_export_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_import_data_response() :: #{
%%   <<"errors">> => list(batch_delete_import_data_error()())
%% }
-type batch_delete_import_data_response() :: #{binary() => any()}.

%% Example:
%% customer_agentless_collector_info() :: #{
%%   <<"activeAgentlessCollectors">> => integer(),
%%   <<"denyListedAgentlessCollectors">> => integer(),
%%   <<"healthyAgentlessCollectors">> => integer(),
%%   <<"shutdownAgentlessCollectors">> => integer(),
%%   <<"totalAgentlessCollectors">> => integer(),
%%   <<"unhealthyAgentlessCollectors">> => integer(),
%%   <<"unknownAgentlessCollectors">> => integer()
%% }
-type customer_agentless_collector_info() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% agent_configuration_status() :: #{
%%   <<"agentId">> => string(),
%%   <<"description">> => string(),
%%   <<"operationSucceeded">> => boolean()
%% }
-type agent_configuration_status() :: #{binary() => any()}.

%% Example:
%% batch_delete_agents_response() :: #{
%%   <<"errors">> => list(batch_delete_agent_error()())
%% }
-type batch_delete_agents_response() :: #{binary() => any()}.

%% Example:
%% delete_agent() :: #{
%%   <<"agentId">> => string(),
%%   <<"force">> => boolean()
%% }
-type delete_agent() :: #{binary() => any()}.

%% Example:
%% create_application_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"wave">> => string()
%% }
-type create_application_request() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.

%% Example:
%% create_application_response() :: #{
%%   <<"configurationId">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.

%% Example:
%% ec2_recommendations_export_preferences() :: #{
%%   <<"cpuPerformanceMetricBasis">> => usage_metric_basis(),
%%   <<"enabled">> => boolean(),
%%   <<"excludedInstanceTypes">> => list(string()()),
%%   <<"preferredRegion">> => string(),
%%   <<"ramPerformanceMetricBasis">> => usage_metric_basis(),
%%   <<"reservedInstanceOptions">> => reserved_instance_options(),
%%   <<"tenancy">> => list(any())
%% }
-type ec2_recommendations_export_preferences() :: #{binary() => any()}.

%% Example:
%% stop_data_collection_by_agent_ids_response() :: #{
%%   <<"agentsConfigurationStatus">> => list(agent_configuration_status()())
%% }
-type stop_data_collection_by_agent_ids_response() :: #{binary() => any()}.

%% Example:
%% describe_batch_delete_configuration_task_response() :: #{
%%   <<"task">> => batch_delete_configuration_task()
%% }
-type describe_batch_delete_configuration_task_response() :: #{binary() => any()}.

%% Example:
%% associate_configuration_items_to_application_request() :: #{
%%   <<"applicationConfigurationId">> := string(),
%%   <<"configurationIds">> := list(string()())
%% }
-type associate_configuration_items_to_application_request() :: #{binary() => any()}.

%% Example:
%% import_task() :: #{
%%   <<"applicationImportFailure">> => integer(),
%%   <<"applicationImportSuccess">> => integer(),
%%   <<"clientRequestToken">> => string(),
%%   <<"errorsAndFailedEntriesZip">> => string(),
%%   <<"fileClassification">> => list(any()),
%%   <<"importCompletionTime">> => non_neg_integer(),
%%   <<"importDeletedTime">> => non_neg_integer(),
%%   <<"importRequestTime">> => non_neg_integer(),
%%   <<"importTaskId">> => string(),
%%   <<"importUrl">> => string(),
%%   <<"name">> => string(),
%%   <<"serverImportFailure">> => integer(),
%%   <<"serverImportSuccess">> => integer(),
%%   <<"status">> => list(any())
%% }
-type import_task() :: #{binary() => any()}.

%% Example:
%% describe_configurations_response() :: #{
%%   <<"configurations">> => list(map()())
%% }
-type describe_configurations_response() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"condition">> => string(),
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% customer_me_collector_info() :: #{
%%   <<"activeMeCollectors">> => integer(),
%%   <<"denyListedMeCollectors">> => integer(),
%%   <<"healthyMeCollectors">> => integer(),
%%   <<"shutdownMeCollectors">> => integer(),
%%   <<"totalMeCollectors">> => integer(),
%%   <<"unhealthyMeCollectors">> => integer(),
%%   <<"unknownMeCollectors">> => integer()
%% }
-type customer_me_collector_info() :: #{binary() => any()}.

%% Example:
%% get_discovery_summary_request() :: #{

%% }
-type get_discovery_summary_request() :: #{binary() => any()}.

%% Example:
%% start_data_collection_by_agent_ids_request() :: #{
%%   <<"agentIds">> := list(string()())
%% }
-type start_data_collection_by_agent_ids_request() :: #{binary() => any()}.

%% Example:
%% update_application_request() :: #{
%%   <<"configurationId">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"wave">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{

%% }
-type update_application_response() :: #{binary() => any()}.

%% Example:
%% export_info() :: #{
%%   <<"configurationsDownloadUrl">> => string(),
%%   <<"exportId">> => string(),
%%   <<"exportRequestTime">> => non_neg_integer(),
%%   <<"exportStatus">> => list(any()),
%%   <<"isTruncated">> => boolean(),
%%   <<"requestedEndTime">> => non_neg_integer(),
%%   <<"requestedStartTime">> => non_neg_integer(),
%%   <<"statusMessage">> => string()
%% }
-type export_info() :: #{binary() => any()}.

%% Example:
%% stop_continuous_export_request() :: #{
%%   <<"exportId">> := string()
%% }
-type stop_continuous_export_request() :: #{binary() => any()}.

%% Example:
%% batch_delete_configuration_task() :: #{
%%   <<"configurationType">> => list(any()),
%%   <<"deletedConfigurations">> => list(string()()),
%%   <<"deletionWarnings">> => list(deletion_warning()()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"failedConfigurations">> => list(failed_configuration()()),
%%   <<"requestedConfigurations">> => list(string()()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type batch_delete_configuration_task() :: #{binary() => any()}.

%% Example:
%% batch_delete_import_data_request() :: #{
%%   <<"deleteHistory">> => boolean(),
%%   <<"importTaskIds">> := list(string()())
%% }
-type batch_delete_import_data_request() :: #{binary() => any()}.

%% Example:
%% conflict_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_error_exception() :: #{binary() => any()}.

%% Example:
%% describe_continuous_exports_request() :: #{
%%   <<"exportIds">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_continuous_exports_request() :: #{binary() => any()}.

%% Example:
%% stop_data_collection_by_agent_ids_request() :: #{
%%   <<"agentIds">> := list(string()())
%% }
-type stop_data_collection_by_agent_ids_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% describe_batch_delete_configuration_task_request() :: #{
%%   <<"taskId">> := string()
%% }
-type describe_batch_delete_configuration_task_request() :: #{binary() => any()}.

%% Example:
%% start_data_collection_by_agent_ids_response() :: #{
%%   <<"agentsConfigurationStatus">> => list(agent_configuration_status()())
%% }
-type start_data_collection_by_agent_ids_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_import_data_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorDescription">> => string(),
%%   <<"importTaskId">> => string()
%% }
-type batch_delete_import_data_error() :: #{binary() => any()}.

%% Example:
%% import_task_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type import_task_filter() :: #{binary() => any()}.

%% Example:
%% describe_agents_response() :: #{
%%   <<"agentsInfo">> => list(agent_info()()),
%%   <<"nextToken">> => string()
%% }
-type describe_agents_response() :: #{binary() => any()}.

%% Example:
%% start_export_task_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"exportDataFormat">> => list(list(any())()),
%%   <<"filters">> => list(export_filter()()),
%%   <<"preferences">> => list(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type start_export_task_request() :: #{binary() => any()}.

%% Example:
%% create_tags_response() :: #{

%% }
-type create_tags_response() :: #{binary() => any()}.

%% Example:
%% describe_export_configurations_request() :: #{
%%   <<"exportIds">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_export_configurations_request() :: #{binary() => any()}.

%% Example:
%% order_by_element() :: #{
%%   <<"fieldName">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type order_by_element() :: #{binary() => any()}.

%% Example:
%% start_import_task_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"importUrl">> := string(),
%%   <<"name">> := string()
%% }
-type start_import_task_request() :: #{binary() => any()}.

%% Example:
%% get_discovery_summary_response() :: #{
%%   <<"agentSummary">> => customer_agent_info(),
%%   <<"agentlessCollectorSummary">> => customer_agentless_collector_info(),
%%   <<"applications">> => float(),
%%   <<"connectorSummary">> => customer_connector_info(),
%%   <<"meCollectorSummary">> => customer_me_collector_info(),
%%   <<"servers">> => float(),
%%   <<"serversMappedToApplications">> => float(),
%%   <<"serversMappedtoTags">> => float()
%% }
-type get_discovery_summary_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_agent_error() :: #{
%%   <<"agentId">> => string(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type batch_delete_agent_error() :: #{binary() => any()}.

%% Example:
%% list_server_neighbors_request() :: #{
%%   <<"configurationId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"neighborConfigurationIds">> => list(string()()),
%%   <<"nextToken">> => string(),
%%   <<"portInformationNeeded">> => boolean()
%% }
-type list_server_neighbors_request() :: #{binary() => any()}.

%% Example:
%% deletion_warning() :: #{
%%   <<"configurationId">> => string(),
%%   <<"warningCode">> => integer(),
%%   <<"warningText">> => string()
%% }
-type deletion_warning() :: #{binary() => any()}.

%% Example:
%% home_region_not_set_exception() :: #{
%%   <<"message">> => string()
%% }
-type home_region_not_set_exception() :: #{binary() => any()}.

%% Example:
%% authorization_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type authorization_error_exception() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% continuous_export_description() :: #{
%%   <<"dataSource">> => list(any()),
%%   <<"exportId">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"schemaStorageConfig">> => map(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusDetail">> => string(),
%%   <<"stopTime">> => non_neg_integer()
%% }
-type continuous_export_description() :: #{binary() => any()}.

%% Example:
%% describe_tags_request() :: #{
%%   <<"filters">> => list(tag_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_tags_request() :: #{binary() => any()}.

%% Example:
%% tag_filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type tag_filter() :: #{binary() => any()}.

%% Example:
%% describe_import_tasks_request() :: #{
%%   <<"filters">> => list(import_task_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_import_tasks_request() :: #{binary() => any()}.

%% Example:
%% usage_metric_basis() :: #{
%%   <<"name">> => string(),
%%   <<"percentageAdjust">> => float()
%% }
-type usage_metric_basis() :: #{binary() => any()}.

%% Example:
%% start_export_task_response() :: #{
%%   <<"exportId">> => string()
%% }
-type start_export_task_response() :: #{binary() => any()}.

%% Example:
%% disassociate_configuration_items_from_application_response() :: #{

%% }
-type disassociate_configuration_items_from_application_response() :: #{binary() => any()}.

%% Example:
%% describe_import_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(import_task()())
%% }
-type describe_import_tasks_response() :: #{binary() => any()}.

%% Example:
%% delete_applications_request() :: #{
%%   <<"configurationIds">> := list(string()())
%% }
-type delete_applications_request() :: #{binary() => any()}.

-type associate_configuration_items_to_application_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type batch_delete_agents_errors() ::
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type batch_delete_import_data_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type create_application_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type create_tags_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    server_internal_error_exception().

-type delete_applications_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type delete_tags_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    server_internal_error_exception().

-type describe_agents_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type describe_batch_delete_configuration_task_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type describe_configurations_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type describe_continuous_exports_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    server_internal_error_exception().

-type describe_export_configurations_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    server_internal_error_exception().

-type describe_export_tasks_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type describe_import_tasks_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type describe_tags_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    server_internal_error_exception().

-type disassociate_configuration_items_from_application_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type export_configurations_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type get_discovery_summary_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type list_configurations_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    server_internal_error_exception().

-type list_server_neighbors_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type start_batch_delete_configuration_task_errors() ::
    limit_exceeded_exception() | 
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type start_continuous_export_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    conflict_error_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_value_exception() | 
    resource_in_use_exception() | 
    server_internal_error_exception().

-type start_data_collection_by_agent_ids_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type start_export_task_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type start_import_task_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    resource_in_use_exception() | 
    server_internal_error_exception().

-type stop_continuous_export_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    server_internal_error_exception().

-type stop_data_collection_by_agent_ids_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

-type update_application_errors() ::
    authorization_error_exception() | 
    home_region_not_set_exception() | 
    invalid_parameter_exception() | 
    invalid_parameter_value_exception() | 
    server_internal_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more configuration items with an application.
-spec associate_configuration_items_to_application(aws_client:aws_client(), associate_configuration_items_to_application_request()) ->
    {ok, associate_configuration_items_to_application_response(), tuple()} |
    {error, any()} |
    {error, associate_configuration_items_to_application_errors(), tuple()}.
associate_configuration_items_to_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_configuration_items_to_application(Client, Input, []).

-spec associate_configuration_items_to_application(aws_client:aws_client(), associate_configuration_items_to_application_request(), proplists:proplist()) ->
    {ok, associate_configuration_items_to_application_response(), tuple()} |
    {error, any()} |
    {error, associate_configuration_items_to_application_errors(), tuple()}.
associate_configuration_items_to_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConfigurationItemsToApplication">>, Input, Options).

%% @doc
%% Deletes one or more agents or collectors as specified by ID.
%%
%% Deleting an agent or collector does not
%% delete the previously discovered data.
%% To delete the data collected, use `StartBatchDeleteConfigurationTask'.
-spec batch_delete_agents(aws_client:aws_client(), batch_delete_agents_request()) ->
    {ok, batch_delete_agents_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_agents_errors(), tuple()}.
batch_delete_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_agents(Client, Input, []).

-spec batch_delete_agents(aws_client:aws_client(), batch_delete_agents_request(), proplists:proplist()) ->
    {ok, batch_delete_agents_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_agents_errors(), tuple()}.
batch_delete_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteAgents">>, Input, Options).

%% @doc Deletes one or more import tasks, each identified by their import ID.
%%
%% Each import task has
%% a number of records that can identify servers or applications.
%%
%% Amazon Web Services Application Discovery Service has built-in matching
%% logic that will identify when
%% discovered servers match existing entries that you've previously
%% discovered, the information
%% for the already-existing discovered server is updated. When you delete an
%% import task that
%% contains records that were used to match, the information in those matched
%% records that comes
%% from the deleted records will also be deleted.
-spec batch_delete_import_data(aws_client:aws_client(), batch_delete_import_data_request()) ->
    {ok, batch_delete_import_data_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_import_data_errors(), tuple()}.
batch_delete_import_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_import_data(Client, Input, []).

-spec batch_delete_import_data(aws_client:aws_client(), batch_delete_import_data_request(), proplists:proplist()) ->
    {ok, batch_delete_import_data_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_import_data_errors(), tuple()}.
batch_delete_import_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteImportData">>, Input, Options).

%% @doc Creates an application with the given name and description.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates one or more tags for configuration items.
%%
%% Tags are metadata that help you
%% categorize IT assets. This API accepts a list of multiple configuration
%% items.
%%
%% Do not store sensitive information (like personal data) in tags.
-spec create_tags(aws_client:aws_client(), create_tags_request()) ->
    {ok, create_tags_response(), tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).

-spec create_tags(aws_client:aws_client(), create_tags_request(), proplists:proplist()) ->
    {ok, create_tags_response(), tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Deletes a list of applications and their associations with
%% configuration
%% items.
-spec delete_applications(aws_client:aws_client(), delete_applications_request()) ->
    {ok, delete_applications_response(), tuple()} |
    {error, any()} |
    {error, delete_applications_errors(), tuple()}.
delete_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_applications(Client, Input, []).

-spec delete_applications(aws_client:aws_client(), delete_applications_request(), proplists:proplist()) ->
    {ok, delete_applications_response(), tuple()} |
    {error, any()} |
    {error, delete_applications_errors(), tuple()}.
delete_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplications">>, Input, Options).

%% @doc Deletes the association between configuration items and one or more
%% tags.
%%
%% This API
%% accepts a list of multiple configuration items.
-spec delete_tags(aws_client:aws_client(), delete_tags_request()) ->
    {ok, delete_tags_response(), tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).

-spec delete_tags(aws_client:aws_client(), delete_tags_request(), proplists:proplist()) ->
    {ok, delete_tags_response(), tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Lists agents or collectors as specified by ID or other filters.
%%
%% All agents/collectors
%% associated with your user can be listed if you call `DescribeAgents'
%% as is
%% without passing any parameters.
-spec describe_agents(aws_client:aws_client(), describe_agents_request()) ->
    {ok, describe_agents_response(), tuple()} |
    {error, any()} |
    {error, describe_agents_errors(), tuple()}.
describe_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agents(Client, Input, []).

-spec describe_agents(aws_client:aws_client(), describe_agents_request(), proplists:proplist()) ->
    {ok, describe_agents_response(), tuple()} |
    {error, any()} |
    {error, describe_agents_errors(), tuple()}.
describe_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgents">>, Input, Options).

%% @doc
%% Takes a unique deletion task identifier as input and returns metadata
%% about a configuration deletion task.
-spec describe_batch_delete_configuration_task(aws_client:aws_client(), describe_batch_delete_configuration_task_request()) ->
    {ok, describe_batch_delete_configuration_task_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_delete_configuration_task_errors(), tuple()}.
describe_batch_delete_configuration_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_delete_configuration_task(Client, Input, []).

-spec describe_batch_delete_configuration_task(aws_client:aws_client(), describe_batch_delete_configuration_task_request(), proplists:proplist()) ->
    {ok, describe_batch_delete_configuration_task_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_delete_configuration_task_errors(), tuple()}.
describe_batch_delete_configuration_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchDeleteConfigurationTask">>, Input, Options).

%% @doc Retrieves attributes for a list of configuration item IDs.
%%
%% All of the supplied IDs must be for the same asset type from one of the
%% following:
%%
%% server
%%
%% application
%%
%% process
%%
%% connection
%%
%% Output fields are specific to the asset type specified. For example, the
%% output for a
%% server configuration item includes a list of attributes about the
%% server, such as host name, operating system, number of network cards, etc.
%%
%% For a complete list of outputs for each asset type, see Using the
%% DescribeConfigurations Action:
%% https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations
%% in the Amazon Web Services Application
%% Discovery Service User Guide.
-spec describe_configurations(aws_client:aws_client(), describe_configurations_request()) ->
    {ok, describe_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_configurations_errors(), tuple()}.
describe_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configurations(Client, Input, []).

-spec describe_configurations(aws_client:aws_client(), describe_configurations_request(), proplists:proplist()) ->
    {ok, describe_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_configurations_errors(), tuple()}.
describe_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurations">>, Input, Options).

%% @doc Lists exports as specified by ID.
%%
%% All continuous exports associated with your user
%% can be listed if you call `DescribeContinuousExports' as is without
%% passing
%% any parameters.
-spec describe_continuous_exports(aws_client:aws_client(), describe_continuous_exports_request()) ->
    {ok, describe_continuous_exports_response(), tuple()} |
    {error, any()} |
    {error, describe_continuous_exports_errors(), tuple()}.
describe_continuous_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_continuous_exports(Client, Input, []).

-spec describe_continuous_exports(aws_client:aws_client(), describe_continuous_exports_request(), proplists:proplist()) ->
    {ok, describe_continuous_exports_response(), tuple()} |
    {error, any()} |
    {error, describe_continuous_exports_errors(), tuple()}.
describe_continuous_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContinuousExports">>, Input, Options).

%% @doc
%% `DescribeExportConfigurations' is deprecated.
%%
%% Use DescribeExportTasks:
%% https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html,
%% instead.
-spec describe_export_configurations(aws_client:aws_client(), describe_export_configurations_request()) ->
    {ok, describe_export_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_export_configurations_errors(), tuple()}.
describe_export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_configurations(Client, Input, []).

-spec describe_export_configurations(aws_client:aws_client(), describe_export_configurations_request(), proplists:proplist()) ->
    {ok, describe_export_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_export_configurations_errors(), tuple()}.
describe_export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportConfigurations">>, Input, Options).

%% @doc Retrieve status of one or more export tasks.
%%
%% You can retrieve the status of up to 100
%% export tasks.
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

%% @doc Returns an array of import tasks for your account, including status
%% information, times,
%% IDs, the Amazon S3 Object URL for the import file, and more.
-spec describe_import_tasks(aws_client:aws_client(), describe_import_tasks_request()) ->
    {ok, describe_import_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_import_tasks_errors(), tuple()}.
describe_import_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_import_tasks(Client, Input, []).

-spec describe_import_tasks(aws_client:aws_client(), describe_import_tasks_request(), proplists:proplist()) ->
    {ok, describe_import_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_import_tasks_errors(), tuple()}.
describe_import_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImportTasks">>, Input, Options).

%% @doc Retrieves a list of configuration items that have tags as specified
%% by the key-value
%% pairs, name and value, passed to the optional parameter `filters'.
%%
%% There are three valid tag filter names:
%%
%% tagKey
%%
%% tagValue
%%
%% configurationId
%%
%% Also, all configuration items associated with your user that have tags can
%% be
%% listed if you call `DescribeTags' as is without passing any
%% parameters.
-spec describe_tags(aws_client:aws_client(), describe_tags_request()) ->
    {ok, describe_tags_response(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_request(), proplists:proplist()) ->
    {ok, describe_tags_response(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Disassociates one or more configuration items from an application.
-spec disassociate_configuration_items_from_application(aws_client:aws_client(), disassociate_configuration_items_from_application_request()) ->
    {ok, disassociate_configuration_items_from_application_response(), tuple()} |
    {error, any()} |
    {error, disassociate_configuration_items_from_application_errors(), tuple()}.
disassociate_configuration_items_from_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_configuration_items_from_application(Client, Input, []).

-spec disassociate_configuration_items_from_application(aws_client:aws_client(), disassociate_configuration_items_from_application_request(), proplists:proplist()) ->
    {ok, disassociate_configuration_items_from_application_response(), tuple()} |
    {error, any()} |
    {error, disassociate_configuration_items_from_application_errors(), tuple()}.
disassociate_configuration_items_from_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConfigurationItemsFromApplication">>, Input, Options).

%% @doc Deprecated.
%%
%% Use `StartExportTask' instead.
%%
%% Exports all discovered configuration data to an Amazon S3 bucket or an
%% application that
%% enables you to view and evaluate the data. Data includes tags and tag
%% associations, processes,
%% connections, servers, and system performance. This API returns an export
%% ID that you can query
%% using the DescribeExportConfigurations API. The system imposes a limit of
%% two configuration exports in six hours.
-spec export_configurations(aws_client:aws_client(), #{}) ->
    {ok, export_configurations_response(), tuple()} |
    {error, any()} |
    {error, export_configurations_errors(), tuple()}.
export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_configurations(Client, Input, []).

-spec export_configurations(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, export_configurations_response(), tuple()} |
    {error, any()} |
    {error, export_configurations_errors(), tuple()}.
export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportConfigurations">>, Input, Options).

%% @doc Retrieves a short summary of discovered assets.
%%
%% This API operation takes no request parameters and is called as is at the
%% command
%% prompt as shown in the example.
-spec get_discovery_summary(aws_client:aws_client(), get_discovery_summary_request()) ->
    {ok, get_discovery_summary_response(), tuple()} |
    {error, any()} |
    {error, get_discovery_summary_errors(), tuple()}.
get_discovery_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_discovery_summary(Client, Input, []).

-spec get_discovery_summary(aws_client:aws_client(), get_discovery_summary_request(), proplists:proplist()) ->
    {ok, get_discovery_summary_response(), tuple()} |
    {error, any()} |
    {error, get_discovery_summary_errors(), tuple()}.
get_discovery_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiscoverySummary">>, Input, Options).

%% @doc Retrieves a list of configuration items as specified by the value
%% passed to the
%% required parameter `configurationType'.
%%
%% Optional filtering may be applied to refine
%% search results.
-spec list_configurations(aws_client:aws_client(), list_configurations_request()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configurations(Client, Input, []).

-spec list_configurations(aws_client:aws_client(), list_configurations_request(), proplists:proplist()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurations">>, Input, Options).

%% @doc Retrieves a list of servers that are one network hop away from a
%% specified
%% server.
-spec list_server_neighbors(aws_client:aws_client(), list_server_neighbors_request()) ->
    {ok, list_server_neighbors_response(), tuple()} |
    {error, any()} |
    {error, list_server_neighbors_errors(), tuple()}.
list_server_neighbors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_neighbors(Client, Input, []).

-spec list_server_neighbors(aws_client:aws_client(), list_server_neighbors_request(), proplists:proplist()) ->
    {ok, list_server_neighbors_response(), tuple()} |
    {error, any()} |
    {error, list_server_neighbors_errors(), tuple()}.
list_server_neighbors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerNeighbors">>, Input, Options).

%% @doc
%% Takes a list of configurationId as input and starts an asynchronous
%% deletion
%% task to remove the configurationItems.
%%
%% Returns a unique deletion task identifier.
-spec start_batch_delete_configuration_task(aws_client:aws_client(), start_batch_delete_configuration_task_request()) ->
    {ok, start_batch_delete_configuration_task_response(), tuple()} |
    {error, any()} |
    {error, start_batch_delete_configuration_task_errors(), tuple()}.
start_batch_delete_configuration_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_batch_delete_configuration_task(Client, Input, []).

-spec start_batch_delete_configuration_task(aws_client:aws_client(), start_batch_delete_configuration_task_request(), proplists:proplist()) ->
    {ok, start_batch_delete_configuration_task_response(), tuple()} |
    {error, any()} |
    {error, start_batch_delete_configuration_task_errors(), tuple()}.
start_batch_delete_configuration_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBatchDeleteConfigurationTask">>, Input, Options).

%% @doc Start the continuous flow of agent's discovered data into Amazon
%% Athena.
-spec start_continuous_export(aws_client:aws_client(), start_continuous_export_request()) ->
    {ok, start_continuous_export_response(), tuple()} |
    {error, any()} |
    {error, start_continuous_export_errors(), tuple()}.
start_continuous_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_continuous_export(Client, Input, []).

-spec start_continuous_export(aws_client:aws_client(), start_continuous_export_request(), proplists:proplist()) ->
    {ok, start_continuous_export_response(), tuple()} |
    {error, any()} |
    {error, start_continuous_export_errors(), tuple()}.
start_continuous_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartContinuousExport">>, Input, Options).

%% @doc Instructs the specified agents to start collecting data.
-spec start_data_collection_by_agent_ids(aws_client:aws_client(), start_data_collection_by_agent_ids_request()) ->
    {ok, start_data_collection_by_agent_ids_response(), tuple()} |
    {error, any()} |
    {error, start_data_collection_by_agent_ids_errors(), tuple()}.
start_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_collection_by_agent_ids(Client, Input, []).

-spec start_data_collection_by_agent_ids(aws_client:aws_client(), start_data_collection_by_agent_ids_request(), proplists:proplist()) ->
    {ok, start_data_collection_by_agent_ids_response(), tuple()} |
    {error, any()} |
    {error, start_data_collection_by_agent_ids_errors(), tuple()}.
start_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataCollectionByAgentIds">>, Input, Options).

%% @doc Begins the export of a discovered data report to an Amazon S3 bucket
%% managed by Amazon Web Services.
%%
%% Exports might provide an estimate of fees and savings based on certain
%% information
%% that you provide. Fee estimates do not include any taxes that might apply.
%% Your actual fees and savings depend on a variety of factors, including
%% your actual usage of Amazon Web Services
%% services, which might vary from the estimates provided in this report.
%%
%% If you do not specify `preferences' or `agentIds' in the filter, a
%% summary of all servers, applications, tags, and performance is generated.
%% This data is an
%% aggregation of all server data collected through on-premises tooling, file
%% import, application
%% grouping and applying tags.
%%
%% If you specify `agentIds' in a filter, the task exports up to 72 hours
%% of
%% detailed data collected by the identified Application Discovery Agent,
%% including network,
%% process, and performance details. A time range for exported agent data may
%% be set by using
%% `startTime' and `endTime'. Export of detailed agent data is
%% limited to
%% five concurrently running exports.
%% Export of detailed agent data is limited to two exports per day.
%%
%% If you enable `ec2RecommendationsPreferences' in `preferences'
%% , an
%% Amazon EC2 instance matching the characteristics of each server in
%% Application Discovery Service is generated.
%% Changing the attributes of the `ec2RecommendationsPreferences' changes
%% the
%% criteria of the recommendation.
-spec start_export_task(aws_client:aws_client(), start_export_task_request()) ->
    {ok, start_export_task_response(), tuple()} |
    {error, any()} |
    {error, start_export_task_errors(), tuple()}.
start_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_task(Client, Input, []).

-spec start_export_task(aws_client:aws_client(), start_export_task_request(), proplists:proplist()) ->
    {ok, start_export_task_response(), tuple()} |
    {error, any()} |
    {error, start_export_task_errors(), tuple()}.
start_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportTask">>, Input, Options).

%% @doc Starts an import task, which allows you to import details of your
%% on-premises environment
%% directly into Amazon Web Services Migration Hub without having to use the
%% Amazon Web Services Application Discovery
%% Service (Application Discovery Service) tools such as the Amazon Web
%% Services Application Discovery Service Agentless Collector
%% or Application Discovery Agent.
%%
%% This gives you the option to
%% perform migration assessment and planning directly from your imported
%% data, including the
%% ability to group your devices as applications and track their migration
%% status.
%%
%% To start an import request, do this:
%%
%% Download the specially formatted comma separated value (CSV) import
%% template, which
%% you can find here:
%% [https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv].
%%
%% Fill out the template with your server and application data.
%%
%% Upload your import file to an Amazon S3 bucket, and make a note of
%% it's Object URL.
%% Your import file must be in the CSV format.
%%
%% Use the console or the `StartImportTask' command with the Amazon Web
%% Services CLI or one
%% of the Amazon Web Services SDKs to import the records from your file.
%%
%% For more information, including step-by-step procedures, see Migration Hub
%% Import:
%% https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html
%% in the Amazon Web Services Application Discovery Service User
%% Guide.
%%
%% There are limits to the number of import tasks you can create (and delete)
%% in an Amazon Web Services
%% account. For more information, see Amazon Web Services Application
%% Discovery Service Limits:
%% https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html
%% in the Amazon Web Services Application Discovery Service User
%% Guide.
-spec start_import_task(aws_client:aws_client(), start_import_task_request()) ->
    {ok, start_import_task_response(), tuple()} |
    {error, any()} |
    {error, start_import_task_errors(), tuple()}.
start_import_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_import_task(Client, Input, []).

-spec start_import_task(aws_client:aws_client(), start_import_task_request(), proplists:proplist()) ->
    {ok, start_import_task_response(), tuple()} |
    {error, any()} |
    {error, start_import_task_errors(), tuple()}.
start_import_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImportTask">>, Input, Options).

%% @doc Stop the continuous flow of agent's discovered data into Amazon
%% Athena.
-spec stop_continuous_export(aws_client:aws_client(), stop_continuous_export_request()) ->
    {ok, stop_continuous_export_response(), tuple()} |
    {error, any()} |
    {error, stop_continuous_export_errors(), tuple()}.
stop_continuous_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_continuous_export(Client, Input, []).

-spec stop_continuous_export(aws_client:aws_client(), stop_continuous_export_request(), proplists:proplist()) ->
    {ok, stop_continuous_export_response(), tuple()} |
    {error, any()} |
    {error, stop_continuous_export_errors(), tuple()}.
stop_continuous_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopContinuousExport">>, Input, Options).

%% @doc Instructs the specified agents to stop collecting data.
-spec stop_data_collection_by_agent_ids(aws_client:aws_client(), stop_data_collection_by_agent_ids_request()) ->
    {ok, stop_data_collection_by_agent_ids_response(), tuple()} |
    {error, any()} |
    {error, stop_data_collection_by_agent_ids_errors(), tuple()}.
stop_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_collection_by_agent_ids(Client, Input, []).

-spec stop_data_collection_by_agent_ids(aws_client:aws_client(), stop_data_collection_by_agent_ids_request(), proplists:proplist()) ->
    {ok, stop_data_collection_by_agent_ids_response(), tuple()} |
    {error, any()} |
    {error, stop_data_collection_by_agent_ids_errors(), tuple()}.
stop_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataCollectionByAgentIds">>, Input, Options).

%% @doc Updates metadata about an application.
-spec update_application(aws_client:aws_client(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

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
    Client1 = Client#{service => <<"discovery">>},
    Host = build_host(<<"discovery">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSPoseidonService_V2015_11_01.", Action/binary>>}
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
