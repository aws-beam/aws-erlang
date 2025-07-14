%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The FinSpace management service provides the APIs for managing
%% FinSpace environments.
-module(aws_finspace).

-export([create_environment/2,
         create_environment/3,
         create_kx_changeset/4,
         create_kx_changeset/5,
         create_kx_cluster/3,
         create_kx_cluster/4,
         create_kx_database/3,
         create_kx_database/4,
         create_kx_dataview/4,
         create_kx_dataview/5,
         create_kx_environment/2,
         create_kx_environment/3,
         create_kx_scaling_group/3,
         create_kx_scaling_group/4,
         create_kx_user/3,
         create_kx_user/4,
         create_kx_volume/3,
         create_kx_volume/4,
         delete_environment/3,
         delete_environment/4,
         delete_kx_cluster/4,
         delete_kx_cluster/5,
         delete_kx_cluster_node/5,
         delete_kx_cluster_node/6,
         delete_kx_database/4,
         delete_kx_database/5,
         delete_kx_dataview/5,
         delete_kx_dataview/6,
         delete_kx_environment/3,
         delete_kx_environment/4,
         delete_kx_scaling_group/4,
         delete_kx_scaling_group/5,
         delete_kx_user/4,
         delete_kx_user/5,
         delete_kx_volume/4,
         delete_kx_volume/5,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_kx_changeset/4,
         get_kx_changeset/6,
         get_kx_changeset/7,
         get_kx_cluster/3,
         get_kx_cluster/5,
         get_kx_cluster/6,
         get_kx_connection_string/4,
         get_kx_connection_string/6,
         get_kx_connection_string/7,
         get_kx_database/3,
         get_kx_database/5,
         get_kx_database/6,
         get_kx_dataview/4,
         get_kx_dataview/6,
         get_kx_dataview/7,
         get_kx_environment/2,
         get_kx_environment/4,
         get_kx_environment/5,
         get_kx_scaling_group/3,
         get_kx_scaling_group/5,
         get_kx_scaling_group/6,
         get_kx_user/3,
         get_kx_user/5,
         get_kx_user/6,
         get_kx_volume/3,
         get_kx_volume/5,
         get_kx_volume/6,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_kx_changesets/3,
         list_kx_changesets/5,
         list_kx_changesets/6,
         list_kx_cluster_nodes/3,
         list_kx_cluster_nodes/5,
         list_kx_cluster_nodes/6,
         list_kx_clusters/2,
         list_kx_clusters/4,
         list_kx_clusters/5,
         list_kx_databases/2,
         list_kx_databases/4,
         list_kx_databases/5,
         list_kx_dataviews/3,
         list_kx_dataviews/5,
         list_kx_dataviews/6,
         list_kx_environments/1,
         list_kx_environments/3,
         list_kx_environments/4,
         list_kx_scaling_groups/2,
         list_kx_scaling_groups/4,
         list_kx_scaling_groups/5,
         list_kx_users/2,
         list_kx_users/4,
         list_kx_users/5,
         list_kx_volumes/2,
         list_kx_volumes/4,
         list_kx_volumes/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_environment/3,
         update_environment/4,
         update_kx_cluster_code_configuration/4,
         update_kx_cluster_code_configuration/5,
         update_kx_cluster_databases/4,
         update_kx_cluster_databases/5,
         update_kx_database/4,
         update_kx_database/5,
         update_kx_dataview/5,
         update_kx_dataview/6,
         update_kx_environment/3,
         update_kx_environment/4,
         update_kx_environment_network/3,
         update_kx_environment_network/4,
         update_kx_user/4,
         update_kx_user/5,
         update_kx_volume/4,
         update_kx_volume/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_kx_volume_response() :: #{
%%   <<"attachedClusters">> => list(kx_attached_cluster()),
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"azMode">> => list(any()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"nas1Configuration">> => kx_n_a_s1_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"volumeArn">> => string(),
%%   <<"volumeName">> => string(),
%%   <<"volumeType">> => list(any())
%% }
-type get_kx_volume_response() :: #{binary() => any()}.


%% Example:
%% network_acl_entry() :: #{
%%   <<"cidrBlock">> => string(),
%%   <<"icmpTypeCode">> => icmp_type_code(),
%%   <<"portRange">> => port_range(),
%%   <<"protocol">> => string(),
%%   <<"ruleAction">> => list(any()),
%%   <<"ruleNumber">> => integer()
%% }
-type network_acl_entry() :: #{binary() => any()}.


%% Example:
%% kx_cluster_code_deployment_configuration() :: #{
%%   <<"deploymentStrategy">> => list(any())
%% }
-type kx_cluster_code_deployment_configuration() :: #{binary() => any()}.


%% Example:
%% kx_cache_storage_configuration() :: #{
%%   <<"size">> => integer(),
%%   <<"type">> => string()
%% }
-type kx_cache_storage_configuration() :: #{binary() => any()}.


%% Example:
%% update_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type update_environment_response() :: #{binary() => any()}.

%% Example:
%% get_kx_cluster_request() :: #{}
-type get_kx_cluster_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_kx_dataview_response() :: #{}
-type delete_kx_dataview_response() :: #{}.


%% Example:
%% get_kx_connection_string_response() :: #{
%%   <<"signedConnectionString">> => string()
%% }
-type get_kx_connection_string_response() :: #{binary() => any()}.


%% Example:
%% update_kx_environment_network_response() :: #{
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"awsAccountId">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"customDNSConfiguration">> => list(custom_dns_server()),
%%   <<"dedicatedServiceAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"dnsStatus">> => list(any()),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tgwStatus">> => list(any()),
%%   <<"transitGatewayConfiguration">> => transit_gateway_configuration(),
%%   <<"updateTimestamp">> => non_neg_integer()
%% }
-type update_kx_environment_network_response() :: #{binary() => any()}.


%% Example:
%% create_kx_user_response() :: #{
%%   <<"environmentId">> => string(),
%%   <<"iamRole">> => string(),
%%   <<"userArn">> => string(),
%%   <<"userName">> => string()
%% }
-type create_kx_user_response() :: #{binary() => any()}.


%% Example:
%% list_kx_dataviews_response() :: #{
%%   <<"kxDataviews">> => list(kx_dataview_list_entry()),
%%   <<"nextToken">> => string()
%% }
-type list_kx_dataviews_response() :: #{binary() => any()}.


%% Example:
%% code_configuration() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3Key">> => string(),
%%   <<"s3ObjectVersion">> => string()
%% }
-type code_configuration() :: #{binary() => any()}.


%% Example:
%% list_kx_environments_response() :: #{
%%   <<"environments">> => list(kx_environment()),
%%   <<"nextToken">> => string()
%% }
-type list_kx_environments_response() :: #{binary() => any()}.


%% Example:
%% vpc_configuration() :: #{
%%   <<"ipAddressType">> => list(any()),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type vpc_configuration() :: #{binary() => any()}.


%% Example:
%% list_kx_volumes_response() :: #{
%%   <<"kxVolumeSummaries">> => list(kx_volume()),
%%   <<"nextToken">> => string()
%% }
-type list_kx_volumes_response() :: #{binary() => any()}.


%% Example:
%% kx_cluster() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"clusterDescription">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"clusterType">> => list(any()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"executionRole">> => string(),
%%   <<"initializationScript">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"releaseLabel">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"volumes">> => list(volume())
%% }
-type kx_cluster() :: #{binary() => any()}.


%% Example:
%% kx_changeset_list_entry() :: #{
%%   <<"activeFromTimestamp">> => non_neg_integer(),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type kx_changeset_list_entry() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_kx_cluster_nodes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_cluster_nodes_request() :: #{binary() => any()}.


%% Example:
%% get_kx_connection_string_request() :: #{
%%   <<"clusterName">> := string(),
%%   <<"userArn">> := string()
%% }
-type get_kx_connection_string_request() :: #{binary() => any()}.


%% Example:
%% kx_dataview_list_entry() :: #{
%%   <<"activeVersions">> => list(kx_dataview_active_version()),
%%   <<"autoUpdate">> => boolean(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"dataviewName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"readWrite">> => boolean(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration()),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type kx_dataview_list_entry() :: #{binary() => any()}.


%% Example:
%% create_kx_database_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"databaseName">> := string(),
%%   <<"description">> => string(),
%%   <<"tags">> => map()
%% }
-type create_kx_database_request() :: #{binary() => any()}.


%% Example:
%% create_kx_database_response() :: #{
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseArn">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer()
%% }
-type create_kx_database_response() :: #{binary() => any()}.

%% Example:
%% get_kx_user_request() :: #{}
-type get_kx_user_request() :: #{}.


%% Example:
%% create_kx_changeset_request() :: #{
%%   <<"changeRequests">> := list(change_request()),
%%   <<"clientToken">> := string()
%% }
-type create_kx_changeset_request() :: #{binary() => any()}.


%% Example:
%% update_kx_volume_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"nas1Configuration">> => kx_n_a_s1_configuration()
%% }
-type update_kx_volume_request() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{}
-type get_environment_request() :: #{}.


%% Example:
%% list_kx_volumes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"volumeType">> => list(any())
%% }
-type list_kx_volumes_request() :: #{binary() => any()}.


%% Example:
%% kx_scaling_group_configuration() :: #{
%%   <<"cpu">> => float(),
%%   <<"memoryLimit">> => integer(),
%%   <<"memoryReservation">> => integer(),
%%   <<"nodeCount">> => integer(),
%%   <<"scalingGroupName">> => string()
%% }
-type kx_scaling_group_configuration() :: #{binary() => any()}.


%% Example:
%% list_kx_databases_response() :: #{
%%   <<"kxDatabases">> => list(kx_database_list_entry()),
%%   <<"nextToken">> => string()
%% }
-type list_kx_databases_response() :: #{binary() => any()}.


%% Example:
%% list_kx_environments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_environments_request() :: #{binary() => any()}.


%% Example:
%% create_kx_scaling_group_response() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"environmentId">> => string(),
%%   <<"hostType">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"scalingGroupName">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_kx_scaling_group_response() :: #{binary() => any()}.

%% Example:
%% delete_kx_database_response() :: #{}
-type delete_kx_database_response() :: #{}.


%% Example:
%% list_kx_scaling_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_scaling_groups_request() :: #{binary() => any()}.


%% Example:
%% create_kx_changeset_response() :: #{
%%   <<"changeRequests">> => list(change_request()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"errorInfo">> => error_info(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type create_kx_changeset_response() :: #{binary() => any()}.

%% Example:
%% delete_kx_user_response() :: #{}
-type delete_kx_user_response() :: #{}.


%% Example:
%% kx_volume() :: #{
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"azMode">> => list(any()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"volumeName">> => string(),
%%   <<"volumeType">> => list(any())
%% }
-type kx_volume() :: #{binary() => any()}.


%% Example:
%% tickerplant_log_configuration() :: #{
%%   <<"tickerplantLogVolumes">> => list(string())
%% }
-type tickerplant_log_configuration() :: #{binary() => any()}.


%% Example:
%% update_kx_dataview_request() :: #{
%%   <<"changesetId">> => string(),
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration())
%% }
-type update_kx_dataview_request() :: #{binary() => any()}.


%% Example:
%% update_kx_database_response() :: #{
%%   <<"databaseName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer()
%% }
-type update_kx_database_response() :: #{binary() => any()}.


%% Example:
%% create_kx_user_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"iamRole">> := string(),
%%   <<"tags">> => map(),
%%   <<"userName">> := string()
%% }
-type create_kx_user_request() :: #{binary() => any()}.


%% Example:
%% list_kx_users_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"users">> => list(kx_user())
%% }
-type list_kx_users_response() :: #{binary() => any()}.


%% Example:
%% list_kx_cluster_nodes_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"nodes">> => list(kx_node())
%% }
-type list_kx_cluster_nodes_response() :: #{binary() => any()}.


%% Example:
%% error_info() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"errorType">> => list(any())
%% }
-type error_info() :: #{binary() => any()}.


%% Example:
%% get_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type get_environment_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_kx_environment_response() :: #{
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"awsAccountId">> => string(),
%%   <<"certificateAuthorityArn">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"customDNSConfiguration">> => list(custom_dns_server()),
%%   <<"dedicatedServiceAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"dnsStatus">> => list(any()),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tgwStatus">> => list(any()),
%%   <<"transitGatewayConfiguration">> => transit_gateway_configuration(),
%%   <<"updateTimestamp">> => non_neg_integer()
%% }
-type get_kx_environment_response() :: #{binary() => any()}.

%% Example:
%% get_kx_volume_request() :: #{}
-type get_kx_volume_request() :: #{}.


%% Example:
%% delete_kx_environment_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_kx_environment_request() :: #{binary() => any()}.

%% Example:
%% update_kx_cluster_databases_response() :: #{}
-type update_kx_cluster_databases_response() :: #{}.


%% Example:
%% kx_n_a_s1_configuration() :: #{
%%   <<"size">> => integer(),
%%   <<"type">> => list(any())
%% }
-type kx_n_a_s1_configuration() :: #{binary() => any()}.


%% Example:
%% kx_database_cache_configuration() :: #{
%%   <<"cacheType">> => string(),
%%   <<"dataviewName">> => string(),
%%   <<"dbPaths">> => list(string())
%% }
-type kx_database_cache_configuration() :: #{binary() => any()}.


%% Example:
%% delete_kx_database_request() :: #{
%%   <<"clientToken">> := string()
%% }
-type delete_kx_database_request() :: #{binary() => any()}.

%% Example:
%% delete_kx_volume_response() :: #{}
-type delete_kx_volume_response() :: #{}.


%% Example:
%% get_kx_scaling_group_response() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"clusters">> => list(string()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"hostType">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"scalingGroupArn">> => string(),
%%   <<"scalingGroupName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type get_kx_scaling_group_response() :: #{binary() => any()}.


%% Example:
%% update_kx_user_response() :: #{
%%   <<"environmentId">> => string(),
%%   <<"iamRole">> => string(),
%%   <<"userArn">> => string(),
%%   <<"userName">> => string()
%% }
-type update_kx_user_response() :: #{binary() => any()}.


%% Example:
%% delete_kx_cluster_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_kx_cluster_request() :: #{binary() => any()}.


%% Example:
%% auto_scaling_configuration() :: #{
%%   <<"autoScalingMetric">> => list(any()),
%%   <<"maxNodeCount">> => integer(),
%%   <<"metricTarget">> => float(),
%%   <<"minNodeCount">> => integer(),
%%   <<"scaleInCooldownSeconds">> => float(),
%%   <<"scaleOutCooldownSeconds">> => float()
%% }
-type auto_scaling_configuration() :: #{binary() => any()}.


%% Example:
%% kx_user() :: #{
%%   <<"createTimestamp">> => non_neg_integer(),
%%   <<"iamRole">> => string(),
%%   <<"updateTimestamp">> => non_neg_integer(),
%%   <<"userArn">> => string(),
%%   <<"userName">> => string()
%% }
-type kx_user() :: #{binary() => any()}.

%% Example:
%% get_kx_environment_request() :: #{}
-type get_kx_environment_request() :: #{}.


%% Example:
%% kx_database_configuration() :: #{
%%   <<"cacheConfigurations">> => list(kx_database_cache_configuration()),
%%   <<"changesetId">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"dataviewConfiguration">> => kx_dataview_configuration(),
%%   <<"dataviewName">> => string()
%% }
-type kx_database_configuration() :: #{binary() => any()}.


%% Example:
%% get_kx_changeset_response() :: #{
%%   <<"activeFromTimestamp">> => non_neg_integer(),
%%   <<"changeRequests">> => list(change_request()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"errorInfo">> => error_info(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type get_kx_changeset_response() :: #{binary() => any()}.


%% Example:
%% kx_dataview_configuration() :: #{
%%   <<"changesetId">> => string(),
%%   <<"dataviewName">> => string(),
%%   <<"dataviewVersionId">> => string(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration())
%% }
-type kx_dataview_configuration() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_kx_database_request() :: #{}
-type get_kx_database_request() :: #{}.

%% Example:
%% delete_kx_environment_response() :: #{}
-type delete_kx_environment_response() :: #{}.


%% Example:
%% superuser_parameters() :: #{
%%   <<"emailAddress">> => string(),
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string()
%% }
-type superuser_parameters() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% icmp_type_code() :: #{
%%   <<"code">> => integer(),
%%   <<"type">> => integer()
%% }
-type icmp_type_code() :: #{binary() => any()}.


%% Example:
%% environment() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"dedicatedServiceAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"environmentUrl">> => string(),
%%   <<"federationMode">> => list(any()),
%%   <<"federationParameters">> => federation_parameters(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"sageMakerStudioDomainUrl">> => string(),
%%   <<"status">> => list(any())
%% }
-type environment() :: #{binary() => any()}.


%% Example:
%% create_kx_volume_request() :: #{
%%   <<"availabilityZoneIds">> := list(string()),
%%   <<"azMode">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"nas1Configuration">> => kx_n_a_s1_configuration(),
%%   <<"tags">> => map(),
%%   <<"volumeName">> := string(),
%%   <<"volumeType">> := list(any())
%% }
-type create_kx_volume_request() :: #{binary() => any()}.


%% Example:
%% kx_environment() :: #{
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"awsAccountId">> => string(),
%%   <<"certificateAuthorityArn">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"customDNSConfiguration">> => list(custom_dns_server()),
%%   <<"dedicatedServiceAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"dnsStatus">> => list(any()),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tgwStatus">> => list(any()),
%%   <<"transitGatewayConfiguration">> => transit_gateway_configuration(),
%%   <<"updateTimestamp">> => non_neg_integer()
%% }
-type kx_environment() :: #{binary() => any()}.


%% Example:
%% update_kx_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_kx_environment_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_kx_user_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"iamRole">> := string()
%% }
-type update_kx_user_request() :: #{binary() => any()}.


%% Example:
%% list_kx_users_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_users_request() :: #{binary() => any()}.

%% Example:
%% get_kx_scaling_group_request() :: #{}
-type get_kx_scaling_group_request() :: #{}.


%% Example:
%% get_kx_cluster_response() :: #{
%%   <<"autoScalingConfiguration">> => auto_scaling_configuration(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"cacheStorageConfigurations">> => list(kx_cache_storage_configuration()),
%%   <<"capacityConfiguration">> => capacity_configuration(),
%%   <<"clusterDescription">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"clusterType">> => list(any()),
%%   <<"code">> => code_configuration(),
%%   <<"commandLineArguments">> => list(kx_command_line_argument()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databases">> => list(kx_database_configuration()),
%%   <<"executionRole">> => string(),
%%   <<"initializationScript">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"releaseLabel">> => string(),
%%   <<"savedownStorageConfiguration">> => kx_savedown_storage_configuration(),
%%   <<"scalingGroupConfiguration">> => kx_scaling_group_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tickerplantLogConfiguration">> => tickerplant_log_configuration(),
%%   <<"volumes">> => list(volume()),
%%   <<"vpcConfiguration">> => vpc_configuration()
%% }
-type get_kx_cluster_response() :: #{binary() => any()}.


%% Example:
%% create_kx_dataview_request() :: #{
%%   <<"autoUpdate">> => boolean(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> := list(any()),
%%   <<"changesetId">> => string(),
%%   <<"clientToken">> := string(),
%%   <<"dataviewName">> := string(),
%%   <<"description">> => string(),
%%   <<"readWrite">> => boolean(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration()),
%%   <<"tags">> => map()
%% }
-type create_kx_dataview_request() :: #{binary() => any()}.


%% Example:
%% kx_scaling_group() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"clusters">> => list(string()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"hostType">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"scalingGroupName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type kx_scaling_group() :: #{binary() => any()}.


%% Example:
%% list_kx_clusters_request() :: #{
%%   <<"clusterType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_clusters_request() :: #{binary() => any()}.


%% Example:
%% kx_command_line_argument() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type kx_command_line_argument() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_environments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environments_request() :: #{binary() => any()}.


%% Example:
%% kx_deployment_configuration() :: #{
%%   <<"deploymentStrategy">> => list(any())
%% }
-type kx_deployment_configuration() :: #{binary() => any()}.


%% Example:
%% kx_database_list_entry() :: #{
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer()
%% }
-type kx_database_list_entry() :: #{binary() => any()}.


%% Example:
%% list_kx_clusters_response() :: #{
%%   <<"kxClusterSummaries">> => list(kx_cluster()),
%%   <<"nextToken">> => string()
%% }
-type list_kx_clusters_response() :: #{binary() => any()}.


%% Example:
%% list_kx_dataviews_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_dataviews_request() :: #{binary() => any()}.


%% Example:
%% create_environment_response() :: #{
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"environmentUrl">> => string()
%% }
-type create_environment_response() :: #{binary() => any()}.

%% Example:
%% delete_kx_cluster_node_response() :: #{}
-type delete_kx_cluster_node_response() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_kx_dataview_response() :: #{
%%   <<"autoUpdate">> => boolean(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"dataviewName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"readWrite">> => boolean(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration()),
%%   <<"status">> => list(any())
%% }
-type create_kx_dataview_response() :: #{binary() => any()}.

%% Example:
%% delete_environment_request() :: #{}
-type delete_environment_request() :: #{}.


%% Example:
%% port_range() :: #{
%%   <<"from">> => integer(),
%%   <<"to">> => integer()
%% }
-type port_range() :: #{binary() => any()}.


%% Example:
%% update_kx_volume_response() :: #{
%%   <<"attachedClusters">> => list(kx_attached_cluster()),
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"azMode">> => list(any()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"nas1Configuration">> => kx_n_a_s1_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"volumeArn">> => string(),
%%   <<"volumeName">> => string(),
%%   <<"volumeType">> => list(any())
%% }
-type update_kx_volume_response() :: #{binary() => any()}.


%% Example:
%% kx_savedown_storage_configuration() :: #{
%%   <<"size">> => integer(),
%%   <<"type">> => list(any()),
%%   <<"volumeName">> => string()
%% }
-type kx_savedown_storage_configuration() :: #{binary() => any()}.


%% Example:
%% update_kx_cluster_code_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"code">> := code_configuration(),
%%   <<"commandLineArguments">> => list(kx_command_line_argument()),
%%   <<"deploymentConfiguration">> => kx_cluster_code_deployment_configuration(),
%%   <<"initializationScript">> => string()
%% }
-type update_kx_cluster_code_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_kx_scaling_group_request() :: #{
%%   <<"availabilityZoneId">> := string(),
%%   <<"clientToken">> := string(),
%%   <<"hostType">> := string(),
%%   <<"scalingGroupName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_kx_scaling_group_request() :: #{binary() => any()}.

%% Example:
%% update_kx_cluster_code_configuration_response() :: #{}
-type update_kx_cluster_code_configuration_response() :: #{}.


%% Example:
%% delete_kx_dataview_request() :: #{
%%   <<"clientToken">> := string()
%% }
-type delete_kx_dataview_request() :: #{binary() => any()}.


%% Example:
%% volume() :: #{
%%   <<"volumeName">> => string(),
%%   <<"volumeType">> => list(any())
%% }
-type volume() :: #{binary() => any()}.


%% Example:
%% federation_parameters() :: #{
%%   <<"applicationCallBackURL">> => string(),
%%   <<"attributeMap">> => map(),
%%   <<"federationProviderName">> => string(),
%%   <<"federationURN">> => string(),
%%   <<"samlMetadataDocument">> => string(),
%%   <<"samlMetadataURL">> => string()
%% }
-type federation_parameters() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% get_kx_database_response() :: #{
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseArn">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastCompletedChangesetId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"numBytes">> => float(),
%%   <<"numChangesets">> => integer(),
%%   <<"numFiles">> => integer()
%% }
-type get_kx_database_response() :: #{binary() => any()}.


%% Example:
%% create_kx_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_kx_environment_request() :: #{binary() => any()}.


%% Example:
%% create_kx_cluster_request() :: #{
%%   <<"autoScalingConfiguration">> => auto_scaling_configuration(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> := list(any()),
%%   <<"cacheStorageConfigurations">> => list(kx_cache_storage_configuration()),
%%   <<"capacityConfiguration">> => capacity_configuration(),
%%   <<"clientToken">> => string(),
%%   <<"clusterDescription">> => string(),
%%   <<"clusterName">> := string(),
%%   <<"clusterType">> := list(any()),
%%   <<"code">> => code_configuration(),
%%   <<"commandLineArguments">> => list(kx_command_line_argument()),
%%   <<"databases">> => list(kx_database_configuration()),
%%   <<"executionRole">> => string(),
%%   <<"initializationScript">> => string(),
%%   <<"releaseLabel">> := string(),
%%   <<"savedownStorageConfiguration">> => kx_savedown_storage_configuration(),
%%   <<"scalingGroupConfiguration">> => kx_scaling_group_configuration(),
%%   <<"tags">> => map(),
%%   <<"tickerplantLogConfiguration">> => tickerplant_log_configuration(),
%%   <<"vpcConfiguration">> := vpc_configuration()
%% }
-type create_kx_cluster_request() :: #{binary() => any()}.


%% Example:
%% kx_attached_cluster() :: #{
%%   <<"clusterName">> => string(),
%%   <<"clusterStatus">> => list(any()),
%%   <<"clusterType">> => list(any())
%% }
-type kx_attached_cluster() :: #{binary() => any()}.

%% Example:
%% get_kx_dataview_request() :: #{}
-type get_kx_dataview_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% get_kx_changeset_request() :: #{}
-type get_kx_changeset_request() :: #{}.


%% Example:
%% kx_dataview_active_version() :: #{
%%   <<"attachedClusters">> => list(string()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration()),
%%   <<"versionId">> => string()
%% }
-type kx_dataview_active_version() :: #{binary() => any()}.


%% Example:
%% list_kx_scaling_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scalingGroups">> => list(kx_scaling_group())
%% }
-type list_kx_scaling_groups_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% custom_dns_server() :: #{
%%   <<"customDNSServerIP">> => string(),
%%   <<"customDNSServerName">> => string()
%% }
-type custom_dns_server() :: #{binary() => any()}.


%% Example:
%% list_environments_response() :: #{
%%   <<"environments">> => list(environment()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_response() :: #{binary() => any()}.


%% Example:
%% list_kx_changesets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_changesets_request() :: #{binary() => any()}.


%% Example:
%% get_kx_user_response() :: #{
%%   <<"environmentId">> => string(),
%%   <<"iamRole">> => string(),
%%   <<"userArn">> => string(),
%%   <<"userName">> => string()
%% }
-type get_kx_user_response() :: #{binary() => any()}.


%% Example:
%% update_kx_dataview_response() :: #{
%%   <<"activeVersions">> => list(kx_dataview_active_version()),
%%   <<"autoUpdate">> => boolean(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"dataviewName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"readWrite">> => boolean(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration()),
%%   <<"status">> => list(any())
%% }
-type update_kx_dataview_response() :: #{binary() => any()}.


%% Example:
%% update_kx_cluster_databases_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"databases">> := list(kx_database_configuration()),
%%   <<"deploymentConfiguration">> => kx_deployment_configuration()
%% }
-type update_kx_cluster_databases_request() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_kx_dataview_response() :: #{
%%   <<"activeVersions">> => list(kx_dataview_active_version()),
%%   <<"autoUpdate">> => boolean(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"changesetId">> => string(),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databaseName">> => string(),
%%   <<"dataviewName">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"readWrite">> => boolean(),
%%   <<"segmentConfigurations">> => list(kx_dataview_segment_configuration()),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type get_kx_dataview_response() :: #{binary() => any()}.


%% Example:
%% delete_kx_volume_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_kx_volume_request() :: #{binary() => any()}.

%% Example:
%% delete_kx_scaling_group_response() :: #{}
-type delete_kx_scaling_group_response() :: #{}.

%% Example:
%% delete_kx_cluster_node_request() :: #{}
-type delete_kx_cluster_node_request() :: #{}.


%% Example:
%% update_kx_database_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string()
%% }
-type update_kx_database_request() :: #{binary() => any()}.


%% Example:
%% capacity_configuration() :: #{
%%   <<"nodeCount">> => integer(),
%%   <<"nodeType">> => string()
%% }
-type capacity_configuration() :: #{binary() => any()}.


%% Example:
%% change_request() :: #{
%%   <<"changeType">> => list(any()),
%%   <<"dbPath">> => string(),
%%   <<"s3Path">> => string()
%% }
-type change_request() :: #{binary() => any()}.


%% Example:
%% kx_dataview_segment_configuration() :: #{
%%   <<"dbPaths">> => list(string()),
%%   <<"onDemand">> => boolean(),
%%   <<"volumeName">> => string()
%% }
-type kx_dataview_segment_configuration() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% create_environment_request() :: #{
%%   <<"dataBundles">> => list(string()),
%%   <<"description">> => string(),
%%   <<"federationMode">> => list(any()),
%%   <<"federationParameters">> => federation_parameters(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"superuserParameters">> => superuser_parameters(),
%%   <<"tags">> => map()
%% }
-type create_environment_request() :: #{binary() => any()}.


%% Example:
%% create_kx_environment_response() :: #{
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_kx_environment_response() :: #{binary() => any()}.


%% Example:
%% delete_kx_scaling_group_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_kx_scaling_group_request() :: #{binary() => any()}.


%% Example:
%% list_kx_changesets_response() :: #{
%%   <<"kxChangesets">> => list(kx_changeset_list_entry()),
%%   <<"nextToken">> => string()
%% }
-type list_kx_changesets_response() :: #{binary() => any()}.


%% Example:
%% update_kx_environment_network_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"customDNSConfiguration">> => list(custom_dns_server()),
%%   <<"transitGatewayConfiguration">> => transit_gateway_configuration()
%% }
-type update_kx_environment_network_request() :: #{binary() => any()}.


%% Example:
%% update_environment_request() :: #{
%%   <<"description">> => string(),
%%   <<"federationMode">> => list(any()),
%%   <<"federationParameters">> => federation_parameters(),
%%   <<"name">> => string()
%% }
-type update_environment_request() :: #{binary() => any()}.


%% Example:
%% delete_kx_user_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_kx_user_request() :: #{binary() => any()}.


%% Example:
%% transit_gateway_configuration() :: #{
%%   <<"attachmentNetworkAclConfiguration">> => list(network_acl_entry()),
%%   <<"routableCIDRSpace">> => string(),
%%   <<"transitGatewayID">> => string()
%% }
-type transit_gateway_configuration() :: #{binary() => any()}.

%% Example:
%% delete_kx_cluster_response() :: #{}
-type delete_kx_cluster_response() :: #{}.


%% Example:
%% create_kx_volume_response() :: #{
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"azMode">> => list(any()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"nas1Configuration">> => kx_n_a_s1_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"volumeArn">> => string(),
%%   <<"volumeName">> => string(),
%%   <<"volumeType">> => list(any())
%% }
-type create_kx_volume_response() :: #{binary() => any()}.


%% Example:
%% kx_node() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"launchTime">> => non_neg_integer(),
%%   <<"nodeId">> => string(),
%%   <<"status">> => list(any())
%% }
-type kx_node() :: #{binary() => any()}.


%% Example:
%% update_kx_environment_response() :: #{
%%   <<"availabilityZoneIds">> => list(string()),
%%   <<"awsAccountId">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"customDNSConfiguration">> => list(custom_dns_server()),
%%   <<"dedicatedServiceAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"dnsStatus">> => list(any()),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tgwStatus">> => list(any()),
%%   <<"transitGatewayConfiguration">> => transit_gateway_configuration(),
%%   <<"updateTimestamp">> => non_neg_integer()
%% }
-type update_kx_environment_response() :: #{binary() => any()}.


%% Example:
%% list_kx_databases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_kx_databases_request() :: #{binary() => any()}.

%% Example:
%% delete_environment_response() :: #{}
-type delete_environment_response() :: #{}.


%% Example:
%% create_kx_cluster_response() :: #{
%%   <<"autoScalingConfiguration">> => auto_scaling_configuration(),
%%   <<"availabilityZoneId">> => string(),
%%   <<"azMode">> => list(any()),
%%   <<"cacheStorageConfigurations">> => list(kx_cache_storage_configuration()),
%%   <<"capacityConfiguration">> => capacity_configuration(),
%%   <<"clusterDescription">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"clusterType">> => list(any()),
%%   <<"code">> => code_configuration(),
%%   <<"commandLineArguments">> => list(kx_command_line_argument()),
%%   <<"createdTimestamp">> => non_neg_integer(),
%%   <<"databases">> => list(kx_database_configuration()),
%%   <<"environmentId">> => string(),
%%   <<"executionRole">> => string(),
%%   <<"initializationScript">> => string(),
%%   <<"lastModifiedTimestamp">> => non_neg_integer(),
%%   <<"releaseLabel">> => string(),
%%   <<"savedownStorageConfiguration">> => kx_savedown_storage_configuration(),
%%   <<"scalingGroupConfiguration">> => kx_scaling_group_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tickerplantLogConfiguration">> => tickerplant_log_configuration(),
%%   <<"volumes">> => list(volume()),
%%   <<"vpcConfiguration">> => vpc_configuration()
%% }
-type create_kx_cluster_response() :: #{binary() => any()}.

-type create_environment_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_kx_changeset_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_kx_cluster_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_kx_database_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_kx_dataview_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_kx_environment_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_kx_scaling_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_kx_user_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_kx_volume_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_kx_cluster_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_kx_cluster_node_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_kx_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_kx_dataview_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_kx_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_kx_scaling_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_kx_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_kx_volume_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_environment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kx_changeset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kx_cluster_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_kx_connection_string_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kx_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kx_dataview_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kx_environment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_kx_scaling_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_kx_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kx_volume_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_environments_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_kx_changesets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_kx_cluster_nodes_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_kx_clusters_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_kx_databases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_kx_dataviews_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_kx_environments_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_kx_scaling_groups_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_kx_users_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_kx_volumes_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_kx_cluster_code_configuration_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_cluster_databases_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_dataview_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_environment_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_user_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_kx_volume_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a new FinSpace environment.
-spec create_environment(aws_client:aws_client(), create_environment_request()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_request(), proplists:proplist()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environment"],
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

%% @doc
%% Creates a changeset for a kdb database.
%%
%% A changeset allows you to add and delete existing files by using an
%% ordered list of change requests.
-spec create_kx_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), create_kx_changeset_request()) ->
    {ok, create_kx_changeset_response(), tuple()} |
    {error, any()} |
    {error, create_kx_changeset_errors(), tuple()}.
create_kx_changeset(Client, DatabaseName, EnvironmentId, Input) ->
    create_kx_changeset(Client, DatabaseName, EnvironmentId, Input, []).

-spec create_kx_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), create_kx_changeset_request(), proplists:proplist()) ->
    {ok, create_kx_changeset_response(), tuple()} |
    {error, any()} |
    {error, create_kx_changeset_errors(), tuple()}.
create_kx_changeset(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/changesets"],
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

%% @doc Creates a new kdb cluster.
-spec create_kx_cluster(aws_client:aws_client(), binary() | list(), create_kx_cluster_request()) ->
    {ok, create_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_kx_cluster_errors(), tuple()}.
create_kx_cluster(Client, EnvironmentId, Input) ->
    create_kx_cluster(Client, EnvironmentId, Input, []).

-spec create_kx_cluster(aws_client:aws_client(), binary() | list(), create_kx_cluster_request(), proplists:proplist()) ->
    {ok, create_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_kx_cluster_errors(), tuple()}.
create_kx_cluster(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters"],
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

%% @doc Creates a new kdb database in the environment.
-spec create_kx_database(aws_client:aws_client(), binary() | list(), create_kx_database_request()) ->
    {ok, create_kx_database_response(), tuple()} |
    {error, any()} |
    {error, create_kx_database_errors(), tuple()}.
create_kx_database(Client, EnvironmentId, Input) ->
    create_kx_database(Client, EnvironmentId, Input, []).

-spec create_kx_database(aws_client:aws_client(), binary() | list(), create_kx_database_request(), proplists:proplist()) ->
    {ok, create_kx_database_response(), tuple()} |
    {error, any()} |
    {error, create_kx_database_errors(), tuple()}.
create_kx_database(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases"],
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

%% @doc
%% Creates a snapshot of kdb database with tiered storage capabilities and a
%% pre-warmed cache, ready for mounting on kdb clusters.
%%
%% Dataviews are only available for clusters running on a scaling group. They
%% are not supported on dedicated clusters.
-spec create_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), create_kx_dataview_request()) ->
    {ok, create_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, create_kx_dataview_errors(), tuple()}.
create_kx_dataview(Client, DatabaseName, EnvironmentId, Input) ->
    create_kx_dataview(Client, DatabaseName, EnvironmentId, Input, []).

-spec create_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), create_kx_dataview_request(), proplists:proplist()) ->
    {ok, create_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, create_kx_dataview_errors(), tuple()}.
create_kx_dataview(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews"],
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

%% @doc Creates a managed kdb environment for the account.
-spec create_kx_environment(aws_client:aws_client(), create_kx_environment_request()) ->
    {ok, create_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, create_kx_environment_errors(), tuple()}.
create_kx_environment(Client, Input) ->
    create_kx_environment(Client, Input, []).

-spec create_kx_environment(aws_client:aws_client(), create_kx_environment_request(), proplists:proplist()) ->
    {ok, create_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, create_kx_environment_errors(), tuple()}.
create_kx_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments"],
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

%% @doc Creates a new scaling group.
-spec create_kx_scaling_group(aws_client:aws_client(), binary() | list(), create_kx_scaling_group_request()) ->
    {ok, create_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, create_kx_scaling_group_errors(), tuple()}.
create_kx_scaling_group(Client, EnvironmentId, Input) ->
    create_kx_scaling_group(Client, EnvironmentId, Input, []).

-spec create_kx_scaling_group(aws_client:aws_client(), binary() | list(), create_kx_scaling_group_request(), proplists:proplist()) ->
    {ok, create_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, create_kx_scaling_group_errors(), tuple()}.
create_kx_scaling_group(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups"],
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

%% @doc Creates a user in FinSpace kdb environment with an associated IAM
%% role.
-spec create_kx_user(aws_client:aws_client(), binary() | list(), create_kx_user_request()) ->
    {ok, create_kx_user_response(), tuple()} |
    {error, any()} |
    {error, create_kx_user_errors(), tuple()}.
create_kx_user(Client, EnvironmentId, Input) ->
    create_kx_user(Client, EnvironmentId, Input, []).

-spec create_kx_user(aws_client:aws_client(), binary() | list(), create_kx_user_request(), proplists:proplist()) ->
    {ok, create_kx_user_response(), tuple()} |
    {error, any()} |
    {error, create_kx_user_errors(), tuple()}.
create_kx_user(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users"],
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

%% @doc
%% Creates a new volume with a specific amount of throughput and storage
%% capacity.
-spec create_kx_volume(aws_client:aws_client(), binary() | list(), create_kx_volume_request()) ->
    {ok, create_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, create_kx_volume_errors(), tuple()}.
create_kx_volume(Client, EnvironmentId, Input) ->
    create_kx_volume(Client, EnvironmentId, Input, []).

-spec create_kx_volume(aws_client:aws_client(), binary() | list(), create_kx_volume_request(), proplists:proplist()) ->
    {ok, create_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, create_kx_volume_errors(), tuple()}.
create_kx_volume(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes"],
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

%% @doc Delete an FinSpace environment.
-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentId, Input) ->
    delete_environment(Client, EnvironmentId, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request(), proplists:proplist()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/environment/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Deletes a kdb cluster.
-spec delete_kx_cluster(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_cluster_request()) ->
    {ok, delete_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_cluster_errors(), tuple()}.
delete_kx_cluster(Client, ClusterName, EnvironmentId, Input) ->
    delete_kx_cluster(Client, ClusterName, EnvironmentId, Input, []).

-spec delete_kx_cluster(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_cluster_request(), proplists:proplist()) ->
    {ok, delete_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_cluster_errors(), tuple()}.
delete_kx_cluster(Client, ClusterName, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified nodes from a cluster.
-spec delete_kx_cluster_node(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_kx_cluster_node_request()) ->
    {ok, delete_kx_cluster_node_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_cluster_node_errors(), tuple()}.
delete_kx_cluster_node(Client, ClusterName, EnvironmentId, NodeId, Input) ->
    delete_kx_cluster_node(Client, ClusterName, EnvironmentId, NodeId, Input, []).

-spec delete_kx_cluster_node(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_kx_cluster_node_request(), proplists:proplist()) ->
    {ok, delete_kx_cluster_node_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_cluster_node_errors(), tuple()}.
delete_kx_cluster_node(Client, ClusterName, EnvironmentId, NodeId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/nodes/", aws_util:encode_uri(NodeId), ""],
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

%% @doc Deletes the specified database and all of its associated data.
%%
%% This action is irreversible. You must copy any data out of the database
%% before deleting it if the data is to be retained.
-spec delete_kx_database(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_database_request()) ->
    {ok, delete_kx_database_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_database_errors(), tuple()}.
delete_kx_database(Client, DatabaseName, EnvironmentId, Input) ->
    delete_kx_database(Client, DatabaseName, EnvironmentId, Input, []).

-spec delete_kx_database(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_database_request(), proplists:proplist()) ->
    {ok, delete_kx_database_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_database_errors(), tuple()}.
delete_kx_database(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the specified dataview.
%%
%% Before deleting a dataview, make sure that it is not in use by any
%% cluster.
-spec delete_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_kx_dataview_request()) ->
    {ok, delete_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_dataview_errors(), tuple()}.
delete_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input) ->
    delete_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input, []).

-spec delete_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_kx_dataview_request(), proplists:proplist()) ->
    {ok, delete_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_dataview_errors(), tuple()}.
delete_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews/", aws_util:encode_uri(DataviewName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the kdb environment.
%%
%% This action is irreversible. Deleting a kdb environment will remove all
%% the associated data and any services running in it.
-spec delete_kx_environment(aws_client:aws_client(), binary() | list(), delete_kx_environment_request()) ->
    {ok, delete_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_environment_errors(), tuple()}.
delete_kx_environment(Client, EnvironmentId, Input) ->
    delete_kx_environment(Client, EnvironmentId, Input, []).

-spec delete_kx_environment(aws_client:aws_client(), binary() | list(), delete_kx_environment_request(), proplists:proplist()) ->
    {ok, delete_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_environment_errors(), tuple()}.
delete_kx_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the specified scaling group.
%%
%% This action is irreversible. You cannot delete a scaling group until all
%% the clusters running on it have been deleted.
-spec delete_kx_scaling_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_scaling_group_request()) ->
    {ok, delete_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_scaling_group_errors(), tuple()}.
delete_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, Input) ->
    delete_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, Input, []).

-spec delete_kx_scaling_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_scaling_group_request(), proplists:proplist()) ->
    {ok, delete_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_scaling_group_errors(), tuple()}.
delete_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups/", aws_util:encode_uri(ScalingGroupName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user in the specified kdb environment.
-spec delete_kx_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_user_request()) ->
    {ok, delete_kx_user_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_user_errors(), tuple()}.
delete_kx_user(Client, EnvironmentId, UserName, Input) ->
    delete_kx_user(Client, EnvironmentId, UserName, Input, []).

-spec delete_kx_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_user_request(), proplists:proplist()) ->
    {ok, delete_kx_user_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_user_errors(), tuple()}.
delete_kx_user(Client, EnvironmentId, UserName, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users/", aws_util:encode_uri(UserName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes a volume.
%%
%% You can only delete a volume if it's not attached to a cluster or a
%% dataview. When a volume is deleted, any data on the volume is lost. This
%% action is irreversible.
-spec delete_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_volume_request()) ->
    {ok, delete_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_volume_errors(), tuple()}.
delete_kx_volume(Client, EnvironmentId, VolumeName, Input) ->
    delete_kx_volume(Client, EnvironmentId, VolumeName, Input, []).

-spec delete_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list(), delete_kx_volume_request(), proplists:proplist()) ->
    {ok, delete_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, delete_kx_volume_errors(), tuple()}.
delete_kx_volume(Client, EnvironmentId, VolumeName, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes/", aws_util:encode_uri(VolumeName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the FinSpace environment object.
-spec get_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, EnvironmentId, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environment/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a kdb changeset.
-spec get_kx_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_kx_changeset_response(), tuple()} |
    {error, any()} |
    {error, get_kx_changeset_errors(), tuple()}.
get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, #{}, #{}).

-spec get_kx_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_changeset_response(), tuple()} |
    {error, any()} |
    {error, get_kx_changeset_errors(), tuple()}.
get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_kx_changeset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_changeset_response(), tuple()} |
    {error, any()} |
    {error, get_kx_changeset_errors(), tuple()}.
get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/changesets/", aws_util:encode_uri(ChangesetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a kdb cluster.
-spec get_kx_cluster(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, get_kx_cluster_errors(), tuple()}.
get_kx_cluster(Client, ClusterName, EnvironmentId)
  when is_map(Client) ->
    get_kx_cluster(Client, ClusterName, EnvironmentId, #{}, #{}).

-spec get_kx_cluster(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, get_kx_cluster_errors(), tuple()}.
get_kx_cluster(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_cluster(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_kx_cluster(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_cluster_response(), tuple()} |
    {error, any()} |
    {error, get_kx_cluster_errors(), tuple()}.
get_kx_cluster(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a connection string for a user to connect to a kdb cluster.
%%
%% You must call this API using the same role that you have defined while
%% creating a user.
-spec get_kx_connection_string(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_kx_connection_string_response(), tuple()} |
    {error, any()} |
    {error, get_kx_connection_string_errors(), tuple()}.
get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn)
  when is_map(Client) ->
    get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, #{}, #{}).

-spec get_kx_connection_string(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_connection_string_response(), tuple()} |
    {error, any()} |
    {error, get_kx_connection_string_errors(), tuple()}.
get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, QueryMap, HeadersMap, []).

-spec get_kx_connection_string(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_connection_string_response(), tuple()} |
    {error, any()} |
    {error, get_kx_connection_string_errors(), tuple()}.
get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/connectionString"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterName">>, ClusterName},
        {<<"userArn">>, UserArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns database information for the specified environment ID.
-spec get_kx_database(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_kx_database_response(), tuple()} |
    {error, any()} |
    {error, get_kx_database_errors(), tuple()}.
get_kx_database(Client, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    get_kx_database(Client, DatabaseName, EnvironmentId, #{}, #{}).

-spec get_kx_database(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_database_response(), tuple()} |
    {error, any()} |
    {error, get_kx_database_errors(), tuple()}.
get_kx_database(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_database(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_kx_database(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_database_response(), tuple()} |
    {error, any()} |
    {error, get_kx_database_errors(), tuple()}.
get_kx_database(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves details of the dataview.
-spec get_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, get_kx_dataview_errors(), tuple()}.
get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId)
  when is_map(Client) ->
    get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, #{}, #{}).

-spec get_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, get_kx_dataview_errors(), tuple()}.
get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, get_kx_dataview_errors(), tuple()}.
get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews/", aws_util:encode_uri(DataviewName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all the information for the specified kdb environment.
-spec get_kx_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, get_kx_environment_errors(), tuple()}.
get_kx_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_kx_environment(Client, EnvironmentId, #{}, #{}).

-spec get_kx_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, get_kx_environment_errors(), tuple()}.
get_kx_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_kx_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, get_kx_environment_errors(), tuple()}.
get_kx_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves details of a scaling group.
-spec get_kx_scaling_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, get_kx_scaling_group_errors(), tuple()}.
get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName)
  when is_map(Client) ->
    get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, #{}, #{}).

-spec get_kx_scaling_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, get_kx_scaling_group_errors(), tuple()}.
get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, QueryMap, HeadersMap, []).

-spec get_kx_scaling_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_scaling_group_response(), tuple()} |
    {error, any()} |
    {error, get_kx_scaling_group_errors(), tuple()}.
get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups/", aws_util:encode_uri(ScalingGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified kdb user.
-spec get_kx_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_kx_user_response(), tuple()} |
    {error, any()} |
    {error, get_kx_user_errors(), tuple()}.
get_kx_user(Client, EnvironmentId, UserName)
  when is_map(Client) ->
    get_kx_user(Client, EnvironmentId, UserName, #{}, #{}).

-spec get_kx_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_user_response(), tuple()} |
    {error, any()} |
    {error, get_kx_user_errors(), tuple()}.
get_kx_user(Client, EnvironmentId, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_user(Client, EnvironmentId, UserName, QueryMap, HeadersMap, []).

-spec get_kx_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_user_response(), tuple()} |
    {error, any()} |
    {error, get_kx_user_errors(), tuple()}.
get_kx_user(Client, EnvironmentId, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves the information about the volume.
-spec get_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, get_kx_volume_errors(), tuple()}.
get_kx_volume(Client, EnvironmentId, VolumeName)
  when is_map(Client) ->
    get_kx_volume(Client, EnvironmentId, VolumeName, #{}, #{}).

-spec get_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, get_kx_volume_errors(), tuple()}.
get_kx_volume(Client, EnvironmentId, VolumeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_volume(Client, EnvironmentId, VolumeName, QueryMap, HeadersMap, []).

-spec get_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, get_kx_volume_errors(), tuple()}.
get_kx_volume(Client, EnvironmentId, VolumeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes/", aws_util:encode_uri(VolumeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of all of your FinSpace environments.
-spec list_environments(aws_client:aws_client()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

-spec list_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environment"],
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

%% @doc Returns a list of all the changesets for a database.
-spec list_kx_changesets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_kx_changesets_response(), tuple()} |
    {error, any()} |
    {error, list_kx_changesets_errors(), tuple()}.
list_kx_changesets(Client, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    list_kx_changesets(Client, DatabaseName, EnvironmentId, #{}, #{}).

-spec list_kx_changesets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_kx_changesets_response(), tuple()} |
    {error, any()} |
    {error, list_kx_changesets_errors(), tuple()}.
list_kx_changesets(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_changesets(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_changesets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_changesets_response(), tuple()} |
    {error, any()} |
    {error, list_kx_changesets_errors(), tuple()}.
list_kx_changesets(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/changesets"],
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

%% @doc Lists all the nodes in a kdb cluster.
-spec list_kx_cluster_nodes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_kx_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_kx_cluster_nodes_errors(), tuple()}.
list_kx_cluster_nodes(Client, ClusterName, EnvironmentId)
  when is_map(Client) ->
    list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, #{}, #{}).

-spec list_kx_cluster_nodes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_kx_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_kx_cluster_nodes_errors(), tuple()}.
list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_cluster_nodes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_kx_cluster_nodes_errors(), tuple()}.
list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/nodes"],
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

%% @doc Returns a list of clusters.
-spec list_kx_clusters(aws_client:aws_client(), binary() | list()) ->
    {ok, list_kx_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_kx_clusters_errors(), tuple()}.
list_kx_clusters(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_clusters(Client, EnvironmentId, #{}, #{}).

-spec list_kx_clusters(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_kx_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_kx_clusters_errors(), tuple()}.
list_kx_clusters(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_clusters(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_clusters(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_kx_clusters_errors(), tuple()}.
list_kx_clusters(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterType">>, maps:get(<<"clusterType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the databases in the kdb environment.
-spec list_kx_databases(aws_client:aws_client(), binary() | list()) ->
    {ok, list_kx_databases_response(), tuple()} |
    {error, any()} |
    {error, list_kx_databases_errors(), tuple()}.
list_kx_databases(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_databases(Client, EnvironmentId, #{}, #{}).

-spec list_kx_databases(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_kx_databases_response(), tuple()} |
    {error, any()} |
    {error, list_kx_databases_errors(), tuple()}.
list_kx_databases(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_databases(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_databases(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_databases_response(), tuple()} |
    {error, any()} |
    {error, list_kx_databases_errors(), tuple()}.
list_kx_databases(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases"],
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
%% Returns a list of all the dataviews in the database.
-spec list_kx_dataviews(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_kx_dataviews_response(), tuple()} |
    {error, any()} |
    {error, list_kx_dataviews_errors(), tuple()}.
list_kx_dataviews(Client, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    list_kx_dataviews(Client, DatabaseName, EnvironmentId, #{}, #{}).

-spec list_kx_dataviews(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_kx_dataviews_response(), tuple()} |
    {error, any()} |
    {error, list_kx_dataviews_errors(), tuple()}.
list_kx_dataviews(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_dataviews(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_dataviews(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_dataviews_response(), tuple()} |
    {error, any()} |
    {error, list_kx_dataviews_errors(), tuple()}.
list_kx_dataviews(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews"],
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

%% @doc Returns a list of kdb environments created in an account.
-spec list_kx_environments(aws_client:aws_client()) ->
    {ok, list_kx_environments_response(), tuple()} |
    {error, any()} |
    {error, list_kx_environments_errors(), tuple()}.
list_kx_environments(Client)
  when is_map(Client) ->
    list_kx_environments(Client, #{}, #{}).

-spec list_kx_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_kx_environments_response(), tuple()} |
    {error, any()} |
    {error, list_kx_environments_errors(), tuple()}.
list_kx_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_environments(Client, QueryMap, HeadersMap, []).

-spec list_kx_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_environments_response(), tuple()} |
    {error, any()} |
    {error, list_kx_environments_errors(), tuple()}.
list_kx_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments"],
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
%% Returns a list of scaling groups in a kdb environment.
-spec list_kx_scaling_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_kx_scaling_groups_response(), tuple()} |
    {error, any()} |
    {error, list_kx_scaling_groups_errors(), tuple()}.
list_kx_scaling_groups(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_scaling_groups(Client, EnvironmentId, #{}, #{}).

-spec list_kx_scaling_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_kx_scaling_groups_response(), tuple()} |
    {error, any()} |
    {error, list_kx_scaling_groups_errors(), tuple()}.
list_kx_scaling_groups(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_scaling_groups(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_scaling_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_scaling_groups_response(), tuple()} |
    {error, any()} |
    {error, list_kx_scaling_groups_errors(), tuple()}.
list_kx_scaling_groups(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups"],
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

%% @doc Lists all the users in a kdb environment.
-spec list_kx_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_kx_users_response(), tuple()} |
    {error, any()} |
    {error, list_kx_users_errors(), tuple()}.
list_kx_users(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_users(Client, EnvironmentId, #{}, #{}).

-spec list_kx_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_kx_users_response(), tuple()} |
    {error, any()} |
    {error, list_kx_users_errors(), tuple()}.
list_kx_users(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_users(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_users_response(), tuple()} |
    {error, any()} |
    {error, list_kx_users_errors(), tuple()}.
list_kx_users(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users"],
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
%% Lists all the volumes in a kdb environment.
-spec list_kx_volumes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_kx_volumes_response(), tuple()} |
    {error, any()} |
    {error, list_kx_volumes_errors(), tuple()}.
list_kx_volumes(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_volumes(Client, EnvironmentId, #{}, #{}).

-spec list_kx_volumes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_kx_volumes_response(), tuple()} |
    {error, any()} |
    {error, list_kx_volumes_errors(), tuple()}.
list_kx_volumes(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_volumes(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_kx_volumes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_kx_volumes_response(), tuple()} |
    {error, any()} |
    {error, list_kx_volumes_errors(), tuple()}.
list_kx_volumes(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes"],
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
        {<<"volumeType">>, maps:get(<<"volumeType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of all tags for a resource.
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

%% @doc Adds metadata tags to a FinSpace resource.
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

%% @doc Removes metadata tags from a FinSpace resource.
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

%% @doc Update your FinSpace environment.
-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_request()) ->
    {ok, update_environment_response(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, EnvironmentId, Input) ->
    update_environment(Client, EnvironmentId, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_request(), proplists:proplist()) ->
    {ok, update_environment_response(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/environment/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc
%% Allows you to update code configuration on a running cluster.
%%
%% By using this API you can update the code, the initialization script path,
%% and the command line arguments for a specific cluster.
%% The configuration that you want to update will override any existing
%% configurations on the cluster.
-spec update_kx_cluster_code_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_cluster_code_configuration_request()) ->
    {ok, update_kx_cluster_code_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_kx_cluster_code_configuration_errors(), tuple()}.
update_kx_cluster_code_configuration(Client, ClusterName, EnvironmentId, Input) ->
    update_kx_cluster_code_configuration(Client, ClusterName, EnvironmentId, Input, []).

-spec update_kx_cluster_code_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_cluster_code_configuration_request(), proplists:proplist()) ->
    {ok, update_kx_cluster_code_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_kx_cluster_code_configuration_errors(), tuple()}.
update_kx_cluster_code_configuration(Client, ClusterName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/configuration/code"],
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

%% @doc Updates the databases mounted on a kdb cluster, which includes the
%% `changesetId' and all the dbPaths to be cached.
%%
%% This API does not allow you to change a database name or add a database if
%% you created a cluster without one.
%%
%% Using this API you can point a cluster to a different changeset and modify
%% a list of partitions being cached.
-spec update_kx_cluster_databases(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_cluster_databases_request()) ->
    {ok, update_kx_cluster_databases_response(), tuple()} |
    {error, any()} |
    {error, update_kx_cluster_databases_errors(), tuple()}.
update_kx_cluster_databases(Client, ClusterName, EnvironmentId, Input) ->
    update_kx_cluster_databases(Client, ClusterName, EnvironmentId, Input, []).

-spec update_kx_cluster_databases(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_cluster_databases_request(), proplists:proplist()) ->
    {ok, update_kx_cluster_databases_response(), tuple()} |
    {error, any()} |
    {error, update_kx_cluster_databases_errors(), tuple()}.
update_kx_cluster_databases(Client, ClusterName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/configuration/databases"],
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

%% @doc Updates information for the given kdb database.
-spec update_kx_database(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_database_request()) ->
    {ok, update_kx_database_response(), tuple()} |
    {error, any()} |
    {error, update_kx_database_errors(), tuple()}.
update_kx_database(Client, DatabaseName, EnvironmentId, Input) ->
    update_kx_database(Client, DatabaseName, EnvironmentId, Input, []).

-spec update_kx_database(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_database_request(), proplists:proplist()) ->
    {ok, update_kx_database_response(), tuple()} |
    {error, any()} |
    {error, update_kx_database_errors(), tuple()}.
update_kx_database(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), ""],
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

%% @doc
%% Updates the specified dataview.
%%
%% The dataviews get automatically updated when any new changesets are
%% ingested. Each update of the dataview creates a new version, including
%% changeset details and cache configurations
-spec update_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_kx_dataview_request()) ->
    {ok, update_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, update_kx_dataview_errors(), tuple()}.
update_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input) ->
    update_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input, []).

-spec update_kx_dataview(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_kx_dataview_request(), proplists:proplist()) ->
    {ok, update_kx_dataview_response(), tuple()} |
    {error, any()} |
    {error, update_kx_dataview_errors(), tuple()}.
update_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews/", aws_util:encode_uri(DataviewName), ""],
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

%% @doc Updates information for the given kdb environment.
-spec update_kx_environment(aws_client:aws_client(), binary() | list(), update_kx_environment_request()) ->
    {ok, update_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, update_kx_environment_errors(), tuple()}.
update_kx_environment(Client, EnvironmentId, Input) ->
    update_kx_environment(Client, EnvironmentId, Input, []).

-spec update_kx_environment(aws_client:aws_client(), binary() | list(), update_kx_environment_request(), proplists:proplist()) ->
    {ok, update_kx_environment_response(), tuple()} |
    {error, any()} |
    {error, update_kx_environment_errors(), tuple()}.
update_kx_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Updates environment network to connect to your internal network by
%% using a transit gateway.
%%
%% This API supports request to create a transit gateway attachment from
%% FinSpace VPC to your transit gateway ID and create a custom Route-53
%% outbound resolvers.
%%
%% Once you send a request to update a network, you cannot change it again.
%% Network update might require termination of any clusters that are running
%% in the existing network.
-spec update_kx_environment_network(aws_client:aws_client(), binary() | list(), update_kx_environment_network_request()) ->
    {ok, update_kx_environment_network_response(), tuple()} |
    {error, any()} |
    {error, update_kx_environment_network_errors(), tuple()}.
update_kx_environment_network(Client, EnvironmentId, Input) ->
    update_kx_environment_network(Client, EnvironmentId, Input, []).

-spec update_kx_environment_network(aws_client:aws_client(), binary() | list(), update_kx_environment_network_request(), proplists:proplist()) ->
    {ok, update_kx_environment_network_response(), tuple()} |
    {error, any()} |
    {error, update_kx_environment_network_errors(), tuple()}.
update_kx_environment_network(Client, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/network"],
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

%% @doc Updates the user details.
%%
%% You can only update the IAM role associated with a user.
-spec update_kx_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_user_request()) ->
    {ok, update_kx_user_response(), tuple()} |
    {error, any()} |
    {error, update_kx_user_errors(), tuple()}.
update_kx_user(Client, EnvironmentId, UserName, Input) ->
    update_kx_user(Client, EnvironmentId, UserName, Input, []).

-spec update_kx_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_user_request(), proplists:proplist()) ->
    {ok, update_kx_user_response(), tuple()} |
    {error, any()} |
    {error, update_kx_user_errors(), tuple()}.
update_kx_user(Client, EnvironmentId, UserName, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users/", aws_util:encode_uri(UserName), ""],
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

%% @doc
%% Updates the throughput or capacity of a volume.
%%
%% During the update process, the filesystem
%% might be unavailable for a few minutes. You can retry any operations after
%% the update is complete.
-spec update_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_volume_request()) ->
    {ok, update_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, update_kx_volume_errors(), tuple()}.
update_kx_volume(Client, EnvironmentId, VolumeName, Input) ->
    update_kx_volume(Client, EnvironmentId, VolumeName, Input, []).

-spec update_kx_volume(aws_client:aws_client(), binary() | list(), binary() | list(), update_kx_volume_request(), proplists:proplist()) ->
    {ok, update_kx_volume_response(), tuple()} |
    {error, any()} |
    {error, update_kx_volume_errors(), tuple()}.
update_kx_volume(Client, EnvironmentId, VolumeName, Input0, Options0) ->
    Method = patch,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes/", aws_util:encode_uri(VolumeName), ""],
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
    Client1 = Client#{service => <<"finspace">>},
    Host = build_host(<<"finspace">>, Client1),
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
