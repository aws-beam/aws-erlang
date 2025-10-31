%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Service for Prometheus is a serverless,
%% Prometheus-compatible monitoring service for container metrics that makes
%% it easier to securely monitor container environments at scale.
%%
%% With Amazon Managed Service for Prometheus, you can use the same
%% open-source Prometheus data model and query language that you use today to
%% monitor the performance of your containerized workloads, and also enjoy
%% improved scalability, availability, and security without having to manage
%% the underlying infrastructure.
%%
%% For more information about Amazon Managed Service for Prometheus, see the
%% Amazon Managed Service for Prometheus:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/what-is-Amazon-Managed-Service-Prometheus.html
%% User Guide.
%%
%% Amazon Managed Service for Prometheus includes two APIs.
%%
%% Use the Amazon Web Services API described in this guide to manage Amazon
%% Managed Service for Prometheus resources, such as workspaces, rule groups,
%% and alert managers.
%%
%% Use the Prometheus-compatible API:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference.html#AMP-APIReference-Prometheus-Compatible-Apis
%% to work within your Prometheus workspace.
-module(aws_amp).

-export([create_alert_manager_definition/3,
         create_alert_manager_definition/4,
         create_anomaly_detector/3,
         create_anomaly_detector/4,
         create_logging_configuration/3,
         create_logging_configuration/4,
         create_query_logging_configuration/3,
         create_query_logging_configuration/4,
         create_rule_groups_namespace/3,
         create_rule_groups_namespace/4,
         create_scraper/2,
         create_scraper/3,
         create_workspace/2,
         create_workspace/3,
         delete_alert_manager_definition/3,
         delete_alert_manager_definition/4,
         delete_anomaly_detector/4,
         delete_anomaly_detector/5,
         delete_logging_configuration/3,
         delete_logging_configuration/4,
         delete_query_logging_configuration/3,
         delete_query_logging_configuration/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_rule_groups_namespace/4,
         delete_rule_groups_namespace/5,
         delete_scraper/3,
         delete_scraper/4,
         delete_scraper_logging_configuration/3,
         delete_scraper_logging_configuration/4,
         delete_workspace/3,
         delete_workspace/4,
         describe_alert_manager_definition/2,
         describe_alert_manager_definition/4,
         describe_alert_manager_definition/5,
         describe_anomaly_detector/3,
         describe_anomaly_detector/5,
         describe_anomaly_detector/6,
         describe_logging_configuration/2,
         describe_logging_configuration/4,
         describe_logging_configuration/5,
         describe_query_logging_configuration/2,
         describe_query_logging_configuration/4,
         describe_query_logging_configuration/5,
         describe_resource_policy/2,
         describe_resource_policy/4,
         describe_resource_policy/5,
         describe_rule_groups_namespace/3,
         describe_rule_groups_namespace/5,
         describe_rule_groups_namespace/6,
         describe_scraper/2,
         describe_scraper/4,
         describe_scraper/5,
         describe_scraper_logging_configuration/2,
         describe_scraper_logging_configuration/4,
         describe_scraper_logging_configuration/5,
         describe_workspace/2,
         describe_workspace/4,
         describe_workspace/5,
         describe_workspace_configuration/2,
         describe_workspace_configuration/4,
         describe_workspace_configuration/5,
         get_default_scraper_configuration/1,
         get_default_scraper_configuration/3,
         get_default_scraper_configuration/4,
         list_anomaly_detectors/2,
         list_anomaly_detectors/4,
         list_anomaly_detectors/5,
         list_rule_groups_namespaces/2,
         list_rule_groups_namespaces/4,
         list_rule_groups_namespaces/5,
         list_scrapers/1,
         list_scrapers/3,
         list_scrapers/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workspaces/1,
         list_workspaces/3,
         list_workspaces/4,
         put_alert_manager_definition/3,
         put_alert_manager_definition/4,
         put_anomaly_detector/4,
         put_anomaly_detector/5,
         put_resource_policy/3,
         put_resource_policy/4,
         put_rule_groups_namespace/4,
         put_rule_groups_namespace/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_logging_configuration/3,
         update_logging_configuration/4,
         update_query_logging_configuration/3,
         update_query_logging_configuration/4,
         update_scraper/3,
         update_scraper/4,
         update_scraper_logging_configuration/3,
         update_scraper_logging_configuration/4,
         update_workspace_alias/3,
         update_workspace_alias/4,
         update_workspace_configuration/3,
         update_workspace_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% query_logging_configuration_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"destinations">> => list(logging_destination()),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"status">> => query_logging_configuration_status(),
%%   <<"workspace">> => string()
%% }
-type query_logging_configuration_metadata() :: #{binary() => any()}.


%% Example:
%% delete_scraper_logging_configuration_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_scraper_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% put_alert_manager_definition_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"data">> => binary()
%% }
-type put_alert_manager_definition_request() :: #{binary() => any()}.


%% Example:
%% update_workspace_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"limitsPerLabelSet">> => list(limits_per_label_set()),
%%   <<"retentionPeriodInDays">> => [integer()]
%% }
-type update_workspace_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_query_logging_configuration_response() :: #{
%%   <<"queryLoggingConfiguration">> => query_logging_configuration_metadata()
%% }
-type describe_query_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_scraper_request() :: #{
%%   <<"alias">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"destination">> => list(),
%%   <<"roleConfiguration">> => role_configuration(),
%%   <<"scrapeConfiguration">> => list()
%% }
-type update_scraper_request() :: #{binary() => any()}.


%% Example:
%% list_rule_groups_namespaces_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"ruleGroupsNamespaces">> => list(rule_groups_namespace_summary())
%% }
-type list_rule_groups_namespaces_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_scrapers_request() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_scrapers_request() :: #{binary() => any()}.


%% Example:
%% create_query_logging_configuration_response() :: #{
%%   <<"status">> => query_logging_configuration_status()
%% }
-type create_query_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% rule_groups_namespace_status() :: #{
%%   <<"statusCode">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type rule_groups_namespace_status() :: #{binary() => any()}.

%% Example:
%% describe_query_logging_configuration_request() :: #{}
-type describe_query_logging_configuration_request() :: #{}.


%% Example:
%% rule_groups_namespace_description() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"data">> => binary(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => rule_groups_namespace_status(),
%%   <<"tags">> => map()
%% }
-type rule_groups_namespace_description() :: #{binary() => any()}.


%% Example:
%% workspace_status() :: #{
%%   <<"statusCode">> => string()
%% }
-type workspace_status() :: #{binary() => any()}.


%% Example:
%% describe_scraper_logging_configuration_response() :: #{
%%   <<"loggingDestination">> => list(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"scraperComponents">> => list(scraper_component()),
%%   <<"scraperId">> => string(),
%%   <<"status">> => scraper_logging_configuration_status()
%% }
-type describe_scraper_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% scraper_status() :: #{
%%   <<"statusCode">> => string()
%% }
-type scraper_status() :: #{binary() => any()}.


%% Example:
%% workspace_summary() :: #{
%%   <<"alias">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"kmsKeyArn">> => string(),
%%   <<"status">> => workspace_status(),
%%   <<"tags">> => map(),
%%   <<"workspaceId">> => string()
%% }
-type workspace_summary() :: #{binary() => any()}.


%% Example:
%% create_scraper_response() :: #{
%%   <<"arn">> => string(),
%%   <<"scraperId">> => string(),
%%   <<"status">> => scraper_status(),
%%   <<"tags">> => map()
%% }
-type create_scraper_response() :: #{binary() => any()}.


%% Example:
%% logging_configuration_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"logGroupArn">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"status">> => logging_configuration_status(),
%%   <<"workspace">> => string()
%% }
-type logging_configuration_metadata() :: #{binary() => any()}.

%% Example:
%% describe_workspace_configuration_request() :: #{}
-type describe_workspace_configuration_request() :: #{}.


%% Example:
%% update_logging_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"logGroupArn">> => string()
%% }
-type update_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_scraper_logging_configuration_response() :: #{
%%   <<"status">> => scraper_logging_configuration_status()
%% }
-type update_scraper_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% anomaly_detector_description() :: #{
%%   <<"alias">> => string(),
%%   <<"anomalyDetectorId">> => string(),
%%   <<"arn">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"evaluationIntervalInSeconds">> => integer(),
%%   <<"labels">> => map(),
%%   <<"missingDataAction">> => list(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"status">> => anomaly_detector_status(),
%%   <<"tags">> => map()
%% }
-type anomaly_detector_description() :: #{binary() => any()}.


%% Example:
%% query_logging_configuration_status() :: #{
%%   <<"statusCode">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type query_logging_configuration_status() :: #{binary() => any()}.


%% Example:
%% create_rule_groups_namespace_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => rule_groups_namespace_status(),
%%   <<"tags">> => map()
%% }
-type create_rule_groups_namespace_response() :: #{binary() => any()}.


%% Example:
%% anomaly_detector_status() :: #{
%%   <<"statusCode">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type anomaly_detector_status() :: #{binary() => any()}.


%% Example:
%% delete_alert_manager_definition_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_alert_manager_definition_request() :: #{binary() => any()}.


%% Example:
%% create_logging_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"logGroupArn">> => string()
%% }
-type create_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_rule_groups_namespace_response() :: #{
%%   <<"ruleGroupsNamespace">> => rule_groups_namespace_description()
%% }
-type describe_rule_groups_namespace_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% put_rule_groups_namespace_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => rule_groups_namespace_status(),
%%   <<"tags">> => map()
%% }
-type put_rule_groups_namespace_response() :: #{binary() => any()}.


%% Example:
%% cloud_watch_log_destination() :: #{
%%   <<"logGroupArn">> => string()
%% }
-type cloud_watch_log_destination() :: #{binary() => any()}.


%% Example:
%% update_scraper_response() :: #{
%%   <<"arn">> => string(),
%%   <<"scraperId">> => string(),
%%   <<"status">> => scraper_status(),
%%   <<"tags">> => map()
%% }
-type update_scraper_response() :: #{binary() => any()}.


%% Example:
%% update_workspace_configuration_response() :: #{
%%   <<"status">> => workspace_configuration_status()
%% }
-type update_workspace_configuration_response() :: #{binary() => any()}.


%% Example:
%% put_anomaly_detector_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := list(),
%%   <<"evaluationIntervalInSeconds">> => integer(),
%%   <<"labels">> => map(),
%%   <<"missingDataAction">> => list()
%% }
-type put_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% update_workspace_alias_request() :: #{
%%   <<"alias">> => string(),
%%   <<"clientToken">> => string()
%% }
-type update_workspace_alias_request() :: #{binary() => any()}.


%% Example:
%% describe_workspace_response() :: #{
%%   <<"workspace">> => workspace_description()
%% }
-type describe_workspace_response() :: #{binary() => any()}.

%% Example:
%% get_default_scraper_configuration_request() :: #{}
-type get_default_scraper_configuration_request() :: #{}.


%% Example:
%% workspace_configuration_description() :: #{
%%   <<"limitsPerLabelSet">> => list(limits_per_label_set()),
%%   <<"retentionPeriodInDays">> => [integer()],
%%   <<"status">> => workspace_configuration_status()
%% }
-type workspace_configuration_description() :: #{binary() => any()}.


%% Example:
%% describe_workspace_configuration_response() :: #{
%%   <<"workspaceConfiguration">> => workspace_configuration_description()
%% }
-type describe_workspace_configuration_response() :: #{binary() => any()}.


%% Example:
%% delete_rule_groups_namespace_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_rule_groups_namespace_request() :: #{binary() => any()}.

%% Example:
%% describe_rule_groups_namespace_request() :: #{}
-type describe_rule_groups_namespace_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_logging_configuration_response() :: #{
%%   <<"status">> => logging_configuration_status()
%% }
-type create_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_detector_response() :: #{
%%   <<"anomalyDetector">> => anomaly_detector_description()
%% }
-type describe_anomaly_detector_response() :: #{binary() => any()}.

%% Example:
%% describe_logging_configuration_request() :: #{}
-type describe_logging_configuration_request() :: #{}.


%% Example:
%% logging_destination() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_log_destination(),
%%   <<"filters">> => logging_filter()
%% }
-type logging_destination() :: #{binary() => any()}.


%% Example:
%% logging_configuration_status() :: #{
%%   <<"statusCode">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type logging_configuration_status() :: #{binary() => any()}.


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
%% describe_scraper_response() :: #{
%%   <<"scraper">> => scraper_description()
%% }
-type describe_scraper_response() :: #{binary() => any()}.


%% Example:
%% component_config() :: #{
%%   <<"options">> => map()
%% }
-type component_config() :: #{binary() => any()}.


%% Example:
%% delete_query_logging_configuration_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_query_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_scraper_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_scraper_request() :: #{binary() => any()}.


%% Example:
%% eks_configuration() :: #{
%%   <<"clusterArn">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string())
%% }
-type eks_configuration() :: #{binary() => any()}.

%% Example:
%% describe_workspace_request() :: #{}
-type describe_workspace_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% update_query_logging_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"destinations">> := list(logging_destination())
%% }
-type update_query_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_anomaly_detector_response() :: #{
%%   <<"anomalyDetectorId">> => string(),
%%   <<"arn">> => string(),
%%   <<"status">> => anomaly_detector_status(),
%%   <<"tags">> => map()
%% }
-type create_anomaly_detector_response() :: #{binary() => any()}.


%% Example:
%% delete_workspace_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_workspace_request() :: #{binary() => any()}.


%% Example:
%% rule_groups_namespace_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => rule_groups_namespace_status(),
%%   <<"tags">> => map()
%% }
-type rule_groups_namespace_summary() :: #{binary() => any()}.


%% Example:
%% create_rule_groups_namespace_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"data">> => binary(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_rule_groups_namespace_request() :: #{binary() => any()}.


%% Example:
%% create_alert_manager_definition_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"data">> => binary()
%% }
-type create_alert_manager_definition_request() :: #{binary() => any()}.


%% Example:
%% workspace_description() :: #{
%%   <<"alias">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"kmsKeyArn">> => string(),
%%   <<"prometheusEndpoint">> => string(),
%%   <<"status">> => workspace_status(),
%%   <<"tags">> => map(),
%%   <<"workspaceId">> => string()
%% }
-type workspace_description() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_workspace_response() :: #{
%%   <<"arn">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"status">> => workspace_status(),
%%   <<"tags">> => map(),
%%   <<"workspaceId">> => string()
%% }
-type create_workspace_response() :: #{binary() => any()}.


%% Example:
%% anomaly_detector_summary() :: #{
%%   <<"alias">> => string(),
%%   <<"anomalyDetectorId">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"status">> => anomaly_detector_status(),
%%   <<"tags">> => map()
%% }
-type anomaly_detector_summary() :: #{binary() => any()}.


%% Example:
%% list_workspaces_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workspaces">> => list(workspace_summary())
%% }
-type list_workspaces_response() :: #{binary() => any()}.


%% Example:
%% update_query_logging_configuration_response() :: #{
%%   <<"status">> => query_logging_configuration_status()
%% }
-type update_query_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_default_scraper_configuration_response() :: #{
%%   <<"configuration">> => [binary()]
%% }
-type get_default_scraper_configuration_response() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"policyDocument">> := [string()],
%%   <<"revisionId">> => [string()]
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% scraper_description() :: #{
%%   <<"alias">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"destination">> => list(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"roleArn">> => string(),
%%   <<"roleConfiguration">> => role_configuration(),
%%   <<"scrapeConfiguration">> => list(),
%%   <<"scraperId">> => string(),
%%   <<"source">> => list(),
%%   <<"status">> => scraper_status(),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map()
%% }
-type scraper_description() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_scraper_logging_configuration_request() :: #{}
-type describe_scraper_logging_configuration_request() :: #{}.


%% Example:
%% workspace_configuration_status() :: #{
%%   <<"statusCode">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type workspace_configuration_status() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% role_configuration() :: #{
%%   <<"sourceRoleArn">> => string(),
%%   <<"targetRoleArn">> => string()
%% }
-type role_configuration() :: #{binary() => any()}.


%% Example:
%% put_alert_manager_definition_response() :: #{
%%   <<"status">> => alert_manager_definition_status()
%% }
-type put_alert_manager_definition_response() :: #{binary() => any()}.


%% Example:
%% logging_filter() :: #{
%%   <<"qspThreshold">> => [float()]
%% }
-type logging_filter() :: #{binary() => any()}.


%% Example:
%% alert_manager_definition_description() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"data">> => binary(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"status">> => alert_manager_definition_status()
%% }
-type alert_manager_definition_description() :: #{binary() => any()}.


%% Example:
%% delete_scraper_response() :: #{
%%   <<"scraperId">> => string(),
%%   <<"status">> => scraper_status()
%% }
-type delete_scraper_response() :: #{binary() => any()}.


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
%% list_workspaces_request() :: #{
%%   <<"alias">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_workspaces_request() :: #{binary() => any()}.


%% Example:
%% list_anomaly_detectors_request() :: #{
%%   <<"alias">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_anomaly_detectors_request() :: #{binary() => any()}.


%% Example:
%% scraper_logging_configuration_status() :: #{
%%   <<"statusCode">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type scraper_logging_configuration_status() :: #{binary() => any()}.


%% Example:
%% delete_anomaly_detector_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_scraper_logging_configuration_request() :: #{
%%   <<"loggingDestination">> := list(),
%%   <<"scraperComponents">> => list(scraper_component())
%% }
-type update_scraper_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_logging_configuration_response() :: #{
%%   <<"loggingConfiguration">> => logging_configuration_metadata()
%% }
-type describe_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% describe_resource_policy_response() :: #{
%%   <<"policyDocument">> => [string()],
%%   <<"policyStatus">> => string(),
%%   <<"revisionId">> => [string()]
%% }
-type describe_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% amp_configuration() :: #{
%%   <<"workspaceArn">> => string()
%% }
-type amp_configuration() :: #{binary() => any()}.


%% Example:
%% create_scraper_request() :: #{
%%   <<"alias">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"destination">> := list(),
%%   <<"roleConfiguration">> => role_configuration(),
%%   <<"scrapeConfiguration">> := list(),
%%   <<"source">> := list(),
%%   <<"tags">> => map()
%% }
-type create_scraper_request() :: #{binary() => any()}.


%% Example:
%% create_alert_manager_definition_response() :: #{
%%   <<"status">> => alert_manager_definition_status()
%% }
-type create_alert_manager_definition_response() :: #{binary() => any()}.


%% Example:
%% scraper_component() :: #{
%%   <<"config">> => component_config(),
%%   <<"type">> => string()
%% }
-type scraper_component() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_response() :: #{
%%   <<"policyStatus">> => string(),
%%   <<"revisionId">> => [string()]
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_alert_manager_definition_request() :: #{}
-type describe_alert_manager_definition_request() :: #{}.


%% Example:
%% describe_alert_manager_definition_response() :: #{
%%   <<"alertManagerDefinition">> => alert_manager_definition_description()
%% }
-type describe_alert_manager_definition_response() :: #{binary() => any()}.


%% Example:
%% limits_per_label_set_entry() :: #{
%%   <<"maxSeries">> => [float()]
%% }
-type limits_per_label_set_entry() :: #{binary() => any()}.

%% Example:
%% describe_scraper_request() :: #{}
-type describe_scraper_request() :: #{}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"revisionId">> => [string()]
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% delete_logging_configuration_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% put_anomaly_detector_response() :: #{
%%   <<"anomalyDetectorId">> => string(),
%%   <<"arn">> => string(),
%%   <<"status">> => anomaly_detector_status(),
%%   <<"tags">> => map()
%% }
-type put_anomaly_detector_response() :: #{binary() => any()}.


%% Example:
%% list_anomaly_detectors_response() :: #{
%%   <<"anomalyDetectors">> => list(anomaly_detector_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_anomaly_detectors_response() :: #{binary() => any()}.


%% Example:
%% put_rule_groups_namespace_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"data">> => binary()
%% }
-type put_rule_groups_namespace_request() :: #{binary() => any()}.


%% Example:
%% create_query_logging_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"destinations">> := list(logging_destination())
%% }
-type create_query_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% random_cut_forest_configuration() :: #{
%%   <<"ignoreNearExpectedFromAbove">> => list(),
%%   <<"ignoreNearExpectedFromBelow">> => list(),
%%   <<"query">> => string(),
%%   <<"sampleSize">> => [integer()],
%%   <<"shingleSize">> => [integer()]
%% }
-type random_cut_forest_configuration() :: #{binary() => any()}.


%% Example:
%% list_scrapers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scrapers">> => list(scraper_summary())
%% }
-type list_scrapers_response() :: #{binary() => any()}.


%% Example:
%% update_logging_configuration_response() :: #{
%%   <<"status">> => logging_configuration_status()
%% }
-type update_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_anomaly_detector_request() :: #{
%%   <<"alias">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := list(),
%%   <<"evaluationIntervalInSeconds">> => integer(),
%%   <<"labels">> => map(),
%%   <<"missingDataAction">> => list(),
%%   <<"tags">> => map()
%% }
-type create_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% list_rule_groups_namespaces_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_rule_groups_namespaces_request() :: #{binary() => any()}.


%% Example:
%% alert_manager_definition_status() :: #{
%%   <<"statusCode">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type alert_manager_definition_status() :: #{binary() => any()}.

%% Example:
%% describe_anomaly_detector_request() :: #{}
-type describe_anomaly_detector_request() :: #{}.


%% Example:
%% limits_per_label_set() :: #{
%%   <<"labelSet">> => map(),
%%   <<"limits">> => limits_per_label_set_entry()
%% }
-type limits_per_label_set() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_request() :: #{}
-type describe_resource_policy_request() :: #{}.


%% Example:
%% create_workspace_request() :: #{
%%   <<"alias">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_workspace_request() :: #{binary() => any()}.


%% Example:
%% scraper_summary() :: #{
%%   <<"alias">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"destination">> => list(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"roleArn">> => string(),
%%   <<"roleConfiguration">> => role_configuration(),
%%   <<"scraperId">> => string(),
%%   <<"source">> => list(),
%%   <<"status">> => scraper_status(),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map()
%% }
-type scraper_summary() :: #{binary() => any()}.

-type create_alert_manager_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_anomaly_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_query_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_rule_groups_namespace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_scraper_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_alert_manager_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_anomaly_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_query_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_rule_groups_namespace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_scraper_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_scraper_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_alert_manager_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_anomaly_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_query_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_rule_groups_namespace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_scraper_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_scraper_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_workspace_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_default_scraper_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_anomaly_detectors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_rule_groups_namespaces_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_scrapers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workspaces_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type put_alert_manager_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_anomaly_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_rule_groups_namespace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_query_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_scraper_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_scraper_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workspace_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workspace_configuration_errors() ::
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

%% @doc The `CreateAlertManagerDefinition' operation creates the alert
%% manager definition in a workspace.
%%
%% If a workspace already has an alert manager definition, don't use this
%% operation to update it. Instead, use `PutAlertManagerDefinition'.
-spec create_alert_manager_definition(aws_client:aws_client(), binary() | list(), create_alert_manager_definition_request()) ->
    {ok, create_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, create_alert_manager_definition_errors(), tuple()}.
create_alert_manager_definition(Client, WorkspaceId, Input) ->
    create_alert_manager_definition(Client, WorkspaceId, Input, []).

-spec create_alert_manager_definition(aws_client:aws_client(), binary() | list(), create_alert_manager_definition_request(), proplists:proplist()) ->
    {ok, create_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, create_alert_manager_definition_errors(), tuple()}.
create_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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

%% @doc Creates an anomaly detector within a workspace using the Random Cut
%% Forest algorithm for time-series analysis.
%%
%% The anomaly detector analyzes Amazon Managed Service for Prometheus
%% metrics to identify unusual patterns and behaviors.
-spec create_anomaly_detector(aws_client:aws_client(), binary() | list(), create_anomaly_detector_request()) ->
    {ok, create_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_detector_errors(), tuple()}.
create_anomaly_detector(Client, WorkspaceId, Input) ->
    create_anomaly_detector(Client, WorkspaceId, Input, []).

-spec create_anomaly_detector(aws_client:aws_client(), binary() | list(), create_anomaly_detector_request(), proplists:proplist()) ->
    {ok, create_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_detector_errors(), tuple()}.
create_anomaly_detector(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/anomalydetectors"],
    SuccessStatusCode = 202,
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

%% @doc The `CreateLoggingConfiguration' operation creates rules and
%% alerting logging configuration for the workspace.
%%
%% Use this operation to set the CloudWatch log group to which the logs will
%% be published to.
%%
%% These logging configurations are only for rules and alerting logs.
-spec create_logging_configuration(aws_client:aws_client(), binary() | list(), create_logging_configuration_request()) ->
    {ok, create_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_logging_configuration_errors(), tuple()}.
create_logging_configuration(Client, WorkspaceId, Input) ->
    create_logging_configuration(Client, WorkspaceId, Input, []).

-spec create_logging_configuration(aws_client:aws_client(), binary() | list(), create_logging_configuration_request(), proplists:proplist()) ->
    {ok, create_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_logging_configuration_errors(), tuple()}.
create_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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

%% @doc Creates a query logging configuration for the specified workspace.
%%
%% This operation enables logging of queries that exceed the specified QSP
%% threshold.
-spec create_query_logging_configuration(aws_client:aws_client(), binary() | list(), create_query_logging_configuration_request()) ->
    {ok, create_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_query_logging_configuration_errors(), tuple()}.
create_query_logging_configuration(Client, WorkspaceId, Input) ->
    create_query_logging_configuration(Client, WorkspaceId, Input, []).

-spec create_query_logging_configuration(aws_client:aws_client(), binary() | list(), create_query_logging_configuration_request(), proplists:proplist()) ->
    {ok, create_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_query_logging_configuration_errors(), tuple()}.
create_query_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging/query"],
    SuccessStatusCode = 202,
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

%% @doc The `CreateRuleGroupsNamespace' operation creates a rule groups
%% namespace within a workspace.
%%
%% A rule groups namespace is associated with exactly one rules file. A
%% workspace can have multiple rule groups namespaces.
%%
%% Use this operation only to create new rule groups namespaces. To update an
%% existing rule groups namespace, use `PutRuleGroupsNamespace'.
-spec create_rule_groups_namespace(aws_client:aws_client(), binary() | list(), create_rule_groups_namespace_request()) ->
    {ok, create_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_rule_groups_namespace_errors(), tuple()}.
create_rule_groups_namespace(Client, WorkspaceId, Input) ->
    create_rule_groups_namespace(Client, WorkspaceId, Input, []).

-spec create_rule_groups_namespace(aws_client:aws_client(), binary() | list(), create_rule_groups_namespace_request(), proplists:proplist()) ->
    {ok, create_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_rule_groups_namespace_errors(), tuple()}.
create_rule_groups_namespace(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces"],
    SuccessStatusCode = 202,
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

%% @doc The `CreateScraper' operation creates a scraper to collect
%% metrics.
%%
%% A scraper pulls metrics from Prometheus-compatible sources within an
%% Amazon EKS cluster, and sends them to your Amazon Managed Service for
%% Prometheus workspace. Scrapers are flexible, and can be configured to
%% control what metrics are collected, the frequency of collection, what
%% transformations are applied to the metrics, and more.
%%
%% An IAM role will be created for you that Amazon Managed Service for
%% Prometheus uses to access the metrics in your cluster. You must configure
%% this role with a policy that allows it to scrape metrics from your
%% cluster. For more information, see Configuring your Amazon EKS cluster:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup
%% in the Amazon Managed Service for Prometheus User Guide.
%%
%% The `scrapeConfiguration' parameter contains the base-64 encoded YAML
%% configuration for the scraper.
%%
%% When creating a scraper, the service creates a `Network Interface' in
%% each Availability Zone that are passed into `CreateScraper' through
%% subnets. These network interfaces are used to connect to the Amazon EKS
%% cluster within the VPC for scraping metrics.
%%
%% For more information about collectors, including what metrics are
%% collected, and how to configure the scraper, see Using an Amazon Web
%% Services managed collector:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html
%% in the Amazon Managed Service for Prometheus User Guide.
-spec create_scraper(aws_client:aws_client(), create_scraper_request()) ->
    {ok, create_scraper_response(), tuple()} |
    {error, any()} |
    {error, create_scraper_errors(), tuple()}.
create_scraper(Client, Input) ->
    create_scraper(Client, Input, []).

-spec create_scraper(aws_client:aws_client(), create_scraper_request(), proplists:proplist()) ->
    {ok, create_scraper_response(), tuple()} |
    {error, any()} |
    {error, create_scraper_errors(), tuple()}.
create_scraper(Client, Input0, Options0) ->
    Method = post,
    Path = ["/scrapers"],
    SuccessStatusCode = 202,
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

%% @doc Creates a Prometheus workspace.
%%
%% A workspace is a logical space dedicated to the storage and querying of
%% Prometheus metrics. You can have one or more workspaces in each Region in
%% your account.
-spec create_workspace(aws_client:aws_client(), create_workspace_request()) ->
    {ok, create_workspace_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_errors(), tuple()}.
create_workspace(Client, Input) ->
    create_workspace(Client, Input, []).

-spec create_workspace(aws_client:aws_client(), create_workspace_request(), proplists:proplist()) ->
    {ok, create_workspace_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_errors(), tuple()}.
create_workspace(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces"],
    SuccessStatusCode = 202,
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

%% @doc Deletes the alert manager definition from a workspace.
-spec delete_alert_manager_definition(aws_client:aws_client(), binary() | list(), delete_alert_manager_definition_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_alert_manager_definition_errors(), tuple()}.
delete_alert_manager_definition(Client, WorkspaceId, Input) ->
    delete_alert_manager_definition(Client, WorkspaceId, Input, []).

-spec delete_alert_manager_definition(aws_client:aws_client(), binary() | list(), delete_alert_manager_definition_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_alert_manager_definition_errors(), tuple()}.
delete_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an anomaly detector from a workspace.
%%
%% This operation is idempotent.
-spec delete_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list(), delete_anomaly_detector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_anomaly_detector_errors(), tuple()}.
delete_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, Input) ->
    delete_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, Input, []).

-spec delete_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list(), delete_anomaly_detector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_anomaly_detector_errors(), tuple()}.
delete_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/anomalydetectors/", aws_util:encode_uri(AnomalyDetectorId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the rules and alerting logging configuration for a workspace.
%%
%% These logging configurations are only for rules and alerting logs.
-spec delete_logging_configuration(aws_client:aws_client(), binary() | list(), delete_logging_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_logging_configuration_errors(), tuple()}.
delete_logging_configuration(Client, WorkspaceId, Input) ->
    delete_logging_configuration(Client, WorkspaceId, Input, []).

-spec delete_logging_configuration(aws_client:aws_client(), binary() | list(), delete_logging_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_logging_configuration_errors(), tuple()}.
delete_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the query logging configuration for the specified workspace.
-spec delete_query_logging_configuration(aws_client:aws_client(), binary() | list(), delete_query_logging_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_query_logging_configuration_errors(), tuple()}.
delete_query_logging_configuration(Client, WorkspaceId, Input) ->
    delete_query_logging_configuration(Client, WorkspaceId, Input, []).

-spec delete_query_logging_configuration(aws_client:aws_client(), binary() | list(), delete_query_logging_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_query_logging_configuration_errors(), tuple()}.
delete_query_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging/query"],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource-based policy attached to an Amazon Managed
%% Service for Prometheus workspace.
-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, WorkspaceId, Input) ->
    delete_resource_policy(Client, WorkspaceId, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/policy"],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"revisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one rule groups namespace and its associated rule groups
%% definition.
-spec delete_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_rule_groups_namespace_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_groups_namespace_errors(), tuple()}.
delete_rule_groups_namespace(Client, Name, WorkspaceId, Input) ->
    delete_rule_groups_namespace(Client, Name, WorkspaceId, Input, []).

-spec delete_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_rule_groups_namespace_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_groups_namespace_errors(), tuple()}.
delete_rule_groups_namespace(Client, Name, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The `DeleteScraper' operation deletes one scraper, and stops any
%% metrics collection that the scraper performs.
-spec delete_scraper(aws_client:aws_client(), binary() | list(), delete_scraper_request()) ->
    {ok, delete_scraper_response(), tuple()} |
    {error, any()} |
    {error, delete_scraper_errors(), tuple()}.
delete_scraper(Client, ScraperId, Input) ->
    delete_scraper(Client, ScraperId, Input, []).

-spec delete_scraper(aws_client:aws_client(), binary() | list(), delete_scraper_request(), proplists:proplist()) ->
    {ok, delete_scraper_response(), tuple()} |
    {error, any()} |
    {error, delete_scraper_errors(), tuple()}.
delete_scraper(Client, ScraperId, Input0, Options0) ->
    Method = delete,
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the logging configuration for a Amazon Managed Service for
%% Prometheus scraper.
-spec delete_scraper_logging_configuration(aws_client:aws_client(), binary() | list(), delete_scraper_logging_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scraper_logging_configuration_errors(), tuple()}.
delete_scraper_logging_configuration(Client, ScraperId, Input) ->
    delete_scraper_logging_configuration(Client, ScraperId, Input, []).

-spec delete_scraper_logging_configuration(aws_client:aws_client(), binary() | list(), delete_scraper_logging_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scraper_logging_configuration_errors(), tuple()}.
delete_scraper_logging_configuration(Client, ScraperId, Input0, Options0) ->
    Method = delete,
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), "/logging-configuration"],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing workspace.
%%
%% When you delete a workspace, the data that has been ingested into it is
%% not immediately deleted. It will be permanently deleted within one month.
-spec delete_workspace(aws_client:aws_client(), binary() | list(), delete_workspace_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workspace_errors(), tuple()}.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).

-spec delete_workspace(aws_client:aws_client(), binary() | list(), delete_workspace_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workspace_errors(), tuple()}.
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the full information about the alert manager definition for
%% a workspace.
-spec describe_alert_manager_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_alert_manager_definition_errors(), tuple()}.
describe_alert_manager_definition(Client, WorkspaceId)
  when is_map(Client) ->
    describe_alert_manager_definition(Client, WorkspaceId, #{}, #{}).

-spec describe_alert_manager_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_alert_manager_definition_errors(), tuple()}.
describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_alert_manager_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_alert_manager_definition_errors(), tuple()}.
describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specific anomaly detector,
%% including its status and configuration.
-spec describe_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detector_errors(), tuple()}.
describe_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId)
  when is_map(Client) ->
    describe_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, #{}, #{}).

-spec describe_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detector_errors(), tuple()}.
describe_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detector_errors(), tuple()}.
describe_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/anomalydetectors/", aws_util:encode_uri(AnomalyDetectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns complete information about the current rules and alerting
%% logging configuration of the workspace.
%%
%% These logging configurations are only for rules and alerting logs.
-spec describe_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_configuration_errors(), tuple()}.
describe_logging_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_logging_configuration(Client, WorkspaceId, #{}, #{}).

-spec describe_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_configuration_errors(), tuple()}.
describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_configuration_errors(), tuple()}.
describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the query logging configuration for the
%% specified workspace.
-spec describe_query_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_query_logging_configuration_errors(), tuple()}.
describe_query_logging_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_query_logging_configuration(Client, WorkspaceId, #{}, #{}).

-spec describe_query_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_query_logging_configuration_errors(), tuple()}.
describe_query_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_query_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_query_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_query_logging_configuration_errors(), tuple()}.
describe_query_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging/query"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the resource-based policy attached to an
%% Amazon Managed Service for Prometheus workspace.
-spec describe_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, WorkspaceId)
  when is_map(Client) ->
    describe_resource_policy(Client, WorkspaceId, #{}, #{}).

-spec describe_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_policy(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns complete information about one rule groups namespace.
%%
%% To retrieve a list of rule groups namespaces, use
%% `ListRuleGroupsNamespaces'.
-spec describe_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_groups_namespace_errors(), tuple()}.
describe_rule_groups_namespace(Client, Name, WorkspaceId)
  when is_map(Client) ->
    describe_rule_groups_namespace(Client, Name, WorkspaceId, #{}, #{}).

-spec describe_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_groups_namespace_errors(), tuple()}.
describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_groups_namespace_errors(), tuple()}.
describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `DescribeScraper' operation displays information about an
%% existing scraper.
-spec describe_scraper(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_scraper_response(), tuple()} |
    {error, any()} |
    {error, describe_scraper_errors(), tuple()}.
describe_scraper(Client, ScraperId)
  when is_map(Client) ->
    describe_scraper(Client, ScraperId, #{}, #{}).

-spec describe_scraper(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_scraper_response(), tuple()} |
    {error, any()} |
    {error, describe_scraper_errors(), tuple()}.
describe_scraper(Client, ScraperId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_scraper(Client, ScraperId, QueryMap, HeadersMap, []).

-spec describe_scraper(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_scraper_response(), tuple()} |
    {error, any()} |
    {error, describe_scraper_errors(), tuple()}.
describe_scraper(Client, ScraperId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the logging configuration for a Amazon Managed Service for
%% Prometheus scraper.
-spec describe_scraper_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_scraper_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_scraper_logging_configuration_errors(), tuple()}.
describe_scraper_logging_configuration(Client, ScraperId)
  when is_map(Client) ->
    describe_scraper_logging_configuration(Client, ScraperId, #{}, #{}).

-spec describe_scraper_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_scraper_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_scraper_logging_configuration_errors(), tuple()}.
describe_scraper_logging_configuration(Client, ScraperId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_scraper_logging_configuration(Client, ScraperId, QueryMap, HeadersMap, []).

-spec describe_scraper_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_scraper_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_scraper_logging_configuration_errors(), tuple()}.
describe_scraper_logging_configuration(Client, ScraperId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an existing workspace.
-spec describe_workspace(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_workspace_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_errors(), tuple()}.
describe_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace(Client, WorkspaceId, #{}, #{}).

-spec describe_workspace(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_workspace_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_errors(), tuple()}.
describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_workspace(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_workspace_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_errors(), tuple()}.
describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use this operation to return information about the configuration of a
%% workspace.
%%
%% The configuration details returned include workspace configuration status,
%% label set limits, and retention period.
-spec describe_workspace_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_configuration_errors(), tuple()}.
describe_workspace_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace_configuration(Client, WorkspaceId, #{}, #{}).

-spec describe_workspace_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_configuration_errors(), tuple()}.
describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_workspace_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_configuration_errors(), tuple()}.
describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `GetDefaultScraperConfiguration' operation returns the
%% default scraper configuration used when Amazon EKS creates a scraper for
%% you.
-spec get_default_scraper_configuration(aws_client:aws_client()) ->
    {ok, get_default_scraper_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_default_scraper_configuration_errors(), tuple()}.
get_default_scraper_configuration(Client)
  when is_map(Client) ->
    get_default_scraper_configuration(Client, #{}, #{}).

-spec get_default_scraper_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_default_scraper_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_default_scraper_configuration_errors(), tuple()}.
get_default_scraper_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_default_scraper_configuration(Client, QueryMap, HeadersMap, []).

-spec get_default_scraper_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_default_scraper_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_default_scraper_configuration_errors(), tuple()}.
get_default_scraper_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scraperconfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of anomaly detectors for a workspace with
%% optional filtering by alias.
-spec list_anomaly_detectors(aws_client:aws_client(), binary() | list()) ->
    {ok, list_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_detectors_errors(), tuple()}.
list_anomaly_detectors(Client, WorkspaceId)
  when is_map(Client) ->
    list_anomaly_detectors(Client, WorkspaceId, #{}, #{}).

-spec list_anomaly_detectors(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_detectors_errors(), tuple()}.
list_anomaly_detectors(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_anomaly_detectors(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec list_anomaly_detectors(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_detectors_errors(), tuple()}.
list_anomaly_detectors(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/anomalydetectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of rule groups namespaces in a workspace.
-spec list_rule_groups_namespaces(aws_client:aws_client(), binary() | list()) ->
    {ok, list_rule_groups_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_namespaces_errors(), tuple()}.
list_rule_groups_namespaces(Client, WorkspaceId)
  when is_map(Client) ->
    list_rule_groups_namespaces(Client, WorkspaceId, #{}, #{}).

-spec list_rule_groups_namespaces(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_rule_groups_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_namespaces_errors(), tuple()}.
list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec list_rule_groups_namespaces(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rule_groups_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_namespaces_errors(), tuple()}.
list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces"],
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
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListScrapers' operation lists all of the scrapers in your
%% account.
%%
%% This includes scrapers being created or deleted. You can optionally filter
%% the returned list.
-spec list_scrapers(aws_client:aws_client()) ->
    {ok, list_scrapers_response(), tuple()} |
    {error, any()} |
    {error, list_scrapers_errors(), tuple()}.
list_scrapers(Client)
  when is_map(Client) ->
    list_scrapers(Client, #{}, #{}).

-spec list_scrapers(aws_client:aws_client(), map(), map()) ->
    {ok, list_scrapers_response(), tuple()} |
    {error, any()} |
    {error, list_scrapers_errors(), tuple()}.
list_scrapers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scrapers(Client, QueryMap, HeadersMap, []).

-spec list_scrapers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_scrapers_response(), tuple()} |
    {error, any()} |
    {error, list_scrapers_errors(), tuple()}.
list_scrapers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scrapers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filters">>, maps:get(<<"filters">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListTagsForResource' operation returns the tags that are
%% associated with an Amazon Managed Service for Prometheus resource.
%%
%% Currently, the only resources that can be tagged are scrapers, workspaces,
%% and rule groups namespaces.
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

%% @doc Lists all of the Amazon Managed Service for Prometheus workspaces in
%% your account.
%%
%% This includes workspaces being created or deleted.
-spec list_workspaces(aws_client:aws_client()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client)
  when is_map(Client) ->
    list_workspaces(Client, #{}, #{}).

-spec list_workspaces(aws_client:aws_client(), map(), map()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspaces(Client, QueryMap, HeadersMap, []).

-spec list_workspaces(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates an existing alert manager definition in a workspace.
%%
%% If the workspace does not already have an alert manager definition,
%% don't use this operation to create it. Instead, use
%% `CreateAlertManagerDefinition'.
-spec put_alert_manager_definition(aws_client:aws_client(), binary() | list(), put_alert_manager_definition_request()) ->
    {ok, put_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, put_alert_manager_definition_errors(), tuple()}.
put_alert_manager_definition(Client, WorkspaceId, Input) ->
    put_alert_manager_definition(Client, WorkspaceId, Input, []).

-spec put_alert_manager_definition(aws_client:aws_client(), binary() | list(), put_alert_manager_definition_request(), proplists:proplist()) ->
    {ok, put_alert_manager_definition_response(), tuple()} |
    {error, any()} |
    {error, put_alert_manager_definition_errors(), tuple()}.
put_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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

%% @doc When you call `PutAnomalyDetector', the operation creates a new
%% anomaly detector if one doesn't exist, or updates an existing one.
%%
%% Each call to this operation triggers a complete retraining of the
%% detector, which includes querying the minimum required samples and
%% backfilling the detector with historical data. This process occurs
%% regardless of whether you're making a minor change like updating the
%% evaluation interval or making more substantial modifications. The
%% operation serves as the single method for creating, updating, and
%% retraining anomaly detectors.
-spec put_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list(), put_anomaly_detector_request()) ->
    {ok, put_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, put_anomaly_detector_errors(), tuple()}.
put_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, Input) ->
    put_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, Input, []).

-spec put_anomaly_detector(aws_client:aws_client(), binary() | list(), binary() | list(), put_anomaly_detector_request(), proplists:proplist()) ->
    {ok, put_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, put_anomaly_detector_errors(), tuple()}.
put_anomaly_detector(Client, AnomalyDetectorId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/anomalydetectors/", aws_util:encode_uri(AnomalyDetectorId), ""],
    SuccessStatusCode = 202,
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

%% @doc Creates or updates a resource-based policy for an Amazon Managed
%% Service for Prometheus workspace.
%%
%% Use resource-based policies to grant permissions to other AWS accounts or
%% services to access your workspace.
%%
%% Only Prometheus-compatible APIs can be used for workspace sharing. You can
%% add non-Prometheus-compatible APIs to the policy, but they will be
%% ignored. For more information, see Prometheus-compatible APIs:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference-Prometheus-Compatible-Apis.html
%% in the Amazon Managed Service for Prometheus User Guide.
%%
%% If your workspace uses customer-managed KMS keys for encryption, you must
%% grant the principals in your resource-based policy access to those KMS
%% keys. You can do this by creating KMS grants. For more information, see
%% CreateGrant:
%% https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html
%% in the AWS Key Management Service API Reference and Encryption at rest:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html
%% in the Amazon Managed Service for Prometheus User Guide.
%%
%% For more information about working with IAM, see Using Amazon Managed
%% Service for Prometheus with IAM:
%% https://docs.aws.amazon.com/prometheus/latest/userguide/security_iam_service-with-iam.html
%% in the Amazon Managed Service for Prometheus User Guide.
-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, WorkspaceId, Input) ->
    put_resource_policy(Client, WorkspaceId, Input, []).

-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/policy"],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing rule groups namespace within a workspace.
%%
%% A rule groups namespace is associated with exactly one rules file. A
%% workspace can have multiple rule groups namespaces.
%%
%% Use this operation only to update existing rule groups namespaces. To
%% create a new rule groups namespace, use `CreateRuleGroupsNamespace'.
%%
%% You can't use this operation to add tags to an existing rule groups
%% namespace. Instead, use `TagResource'.
-spec put_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), put_rule_groups_namespace_request()) ->
    {ok, put_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, put_rule_groups_namespace_errors(), tuple()}.
put_rule_groups_namespace(Client, Name, WorkspaceId, Input) ->
    put_rule_groups_namespace(Client, Name, WorkspaceId, Input, []).

-spec put_rule_groups_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), put_rule_groups_namespace_request(), proplists:proplist()) ->
    {ok, put_rule_groups_namespace_response(), tuple()} |
    {error, any()} |
    {error, put_rule_groups_namespace_errors(), tuple()}.
put_rule_groups_namespace(Client, Name, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc The `TagResource' operation associates tags with an Amazon
%% Managed Service for Prometheus resource.
%%
%% The only resources that can be tagged are rule groups namespaces,
%% scrapers, and workspaces.
%%
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of tags associated with the resource. If you specify a tag key that
%% is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag. To remove a tag, use
%% `UntagResource'.
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

%% @doc Removes the specified tags from an Amazon Managed Service for
%% Prometheus resource.
%%
%% The only resources that can be tagged are rule groups namespaces,
%% scrapers, and workspaces.
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

%% @doc Updates the log group ARN or the workspace ID of the current rules
%% and alerting logging configuration.
%%
%% These logging configurations are only for rules and alerting logs.
-spec update_logging_configuration(aws_client:aws_client(), binary() | list(), update_logging_configuration_request()) ->
    {ok, update_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_logging_configuration_errors(), tuple()}.
update_logging_configuration(Client, WorkspaceId, Input) ->
    update_logging_configuration(Client, WorkspaceId, Input, []).

-spec update_logging_configuration(aws_client:aws_client(), binary() | list(), update_logging_configuration_request(), proplists:proplist()) ->
    {ok, update_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_logging_configuration_errors(), tuple()}.
update_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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

%% @doc Updates the query logging configuration for the specified workspace.
-spec update_query_logging_configuration(aws_client:aws_client(), binary() | list(), update_query_logging_configuration_request()) ->
    {ok, update_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_query_logging_configuration_errors(), tuple()}.
update_query_logging_configuration(Client, WorkspaceId, Input) ->
    update_query_logging_configuration(Client, WorkspaceId, Input, []).

-spec update_query_logging_configuration(aws_client:aws_client(), binary() | list(), update_query_logging_configuration_request(), proplists:proplist()) ->
    {ok, update_query_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_query_logging_configuration_errors(), tuple()}.
update_query_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging/query"],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing scraper.
%%
%% You can't use this function to update the source from which the
%% scraper is collecting metrics. To change the source, delete the scraper
%% and create a new one.
-spec update_scraper(aws_client:aws_client(), binary() | list(), update_scraper_request()) ->
    {ok, update_scraper_response(), tuple()} |
    {error, any()} |
    {error, update_scraper_errors(), tuple()}.
update_scraper(Client, ScraperId, Input) ->
    update_scraper(Client, ScraperId, Input, []).

-spec update_scraper(aws_client:aws_client(), binary() | list(), update_scraper_request(), proplists:proplist()) ->
    {ok, update_scraper_response(), tuple()} |
    {error, any()} |
    {error, update_scraper_errors(), tuple()}.
update_scraper(Client, ScraperId, Input0, Options0) ->
    Method = put,
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates the logging configuration for a Amazon Managed Service for
%% Prometheus scraper.
-spec update_scraper_logging_configuration(aws_client:aws_client(), binary() | list(), update_scraper_logging_configuration_request()) ->
    {ok, update_scraper_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_scraper_logging_configuration_errors(), tuple()}.
update_scraper_logging_configuration(Client, ScraperId, Input) ->
    update_scraper_logging_configuration(Client, ScraperId, Input, []).

-spec update_scraper_logging_configuration(aws_client:aws_client(), binary() | list(), update_scraper_logging_configuration_request(), proplists:proplist()) ->
    {ok, update_scraper_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_scraper_logging_configuration_errors(), tuple()}.
update_scraper_logging_configuration(Client, ScraperId, Input0, Options0) ->
    Method = put,
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), "/logging-configuration"],
    SuccessStatusCode = 202,
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

%% @doc Updates the alias of an existing workspace.
-spec update_workspace_alias(aws_client:aws_client(), binary() | list(), update_workspace_alias_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_workspace_alias_errors(), tuple()}.
update_workspace_alias(Client, WorkspaceId, Input) ->
    update_workspace_alias(Client, WorkspaceId, Input, []).

-spec update_workspace_alias(aws_client:aws_client(), binary() | list(), update_workspace_alias_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_workspace_alias_errors(), tuple()}.
update_workspace_alias(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alias"],
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

%% @doc Use this operation to create or update the label sets, label set
%% limits, and retention period of a workspace.
%%
%% You must specify at least one of `limitsPerLabelSet' or
%% `retentionPeriodInDays' for the request to be valid.
-spec update_workspace_configuration(aws_client:aws_client(), binary() | list(), update_workspace_configuration_request()) ->
    {ok, update_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_configuration_errors(), tuple()}.
update_workspace_configuration(Client, WorkspaceId, Input) ->
    update_workspace_configuration(Client, WorkspaceId, Input, []).

-spec update_workspace_configuration(aws_client:aws_client(), binary() | list(), update_workspace_configuration_request(), proplists:proplist()) ->
    {ok, update_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_configuration_errors(), tuple()}.
update_workspace_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/configuration"],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"aps">>},
    Host = build_host(<<"aps">>, Client1),
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
