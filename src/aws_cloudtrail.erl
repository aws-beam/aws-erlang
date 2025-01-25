%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CloudTrail
%%
%% This is the CloudTrail API Reference.
%%
%% It provides descriptions of actions, data
%% types, common parameters, and common errors for CloudTrail.
%%
%% CloudTrail is a web service that records Amazon Web Services API calls for
%% your
%% Amazon Web Services account and delivers log files to an Amazon S3 bucket.
%% The
%% recorded information includes the identity of the user, the start time of
%% the Amazon Web Services API call, the source IP address, the request
%% parameters, and the response
%% elements returned by the service.
%%
%% As an alternative to the API, you can use one of the Amazon Web Services
%% SDKs, which
%% consist of libraries and sample code for various programming languages and
%% platforms
%% (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide programmatic
%% access to CloudTrail. For example, the SDKs handle cryptographically
%% signing requests,
%% managing errors, and retrying requests automatically. For more information
%% about the
%% Amazon Web Services SDKs, including how to download and install them, see
%% Tools to Build on Amazon Web Services: http://aws.amazon.com/tools/.
%%
%% See the CloudTrail
%% User Guide:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html
%% for information about the data that is included with each Amazon Web
%% Services API call listed in the log files.
-module(aws_cloudtrail).

-export([add_tags/2,
         add_tags/3,
         cancel_query/2,
         cancel_query/3,
         create_channel/2,
         create_channel/3,
         create_dashboard/2,
         create_dashboard/3,
         create_event_data_store/2,
         create_event_data_store/3,
         create_trail/2,
         create_trail/3,
         delete_channel/2,
         delete_channel/3,
         delete_dashboard/2,
         delete_dashboard/3,
         delete_event_data_store/2,
         delete_event_data_store/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_trail/2,
         delete_trail/3,
         deregister_organization_delegated_admin/2,
         deregister_organization_delegated_admin/3,
         describe_query/2,
         describe_query/3,
         describe_trails/2,
         describe_trails/3,
         disable_federation/2,
         disable_federation/3,
         enable_federation/2,
         enable_federation/3,
         generate_query/2,
         generate_query/3,
         get_channel/2,
         get_channel/3,
         get_dashboard/2,
         get_dashboard/3,
         get_event_data_store/2,
         get_event_data_store/3,
         get_event_selectors/2,
         get_event_selectors/3,
         get_import/2,
         get_import/3,
         get_insight_selectors/2,
         get_insight_selectors/3,
         get_query_results/2,
         get_query_results/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_trail/2,
         get_trail/3,
         get_trail_status/2,
         get_trail_status/3,
         list_channels/2,
         list_channels/3,
         list_dashboards/2,
         list_dashboards/3,
         list_event_data_stores/2,
         list_event_data_stores/3,
         list_import_failures/2,
         list_import_failures/3,
         list_imports/2,
         list_imports/3,
         list_insights_metric_data/2,
         list_insights_metric_data/3,
         list_public_keys/2,
         list_public_keys/3,
         list_queries/2,
         list_queries/3,
         list_tags/2,
         list_tags/3,
         list_trails/2,
         list_trails/3,
         lookup_events/2,
         lookup_events/3,
         put_event_selectors/2,
         put_event_selectors/3,
         put_insight_selectors/2,
         put_insight_selectors/3,
         put_resource_policy/2,
         put_resource_policy/3,
         register_organization_delegated_admin/2,
         register_organization_delegated_admin/3,
         remove_tags/2,
         remove_tags/3,
         restore_event_data_store/2,
         restore_event_data_store/3,
         search_sample_queries/2,
         search_sample_queries/3,
         start_dashboard_refresh/2,
         start_dashboard_refresh/3,
         start_event_data_store_ingestion/2,
         start_event_data_store_ingestion/3,
         start_import/2,
         start_import/3,
         start_logging/2,
         start_logging/3,
         start_query/2,
         start_query/3,
         stop_event_data_store_ingestion/2,
         stop_event_data_store_ingestion/3,
         stop_import/2,
         stop_import/3,
         stop_logging/2,
         stop_logging/3,
         update_channel/2,
         update_channel/3,
         update_dashboard/2,
         update_dashboard/3,
         update_event_data_store/2,
         update_event_data_store/3,
         update_trail/2,
         update_trail/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% partition_key() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type partition_key() :: #{binary() => any()}.

%% Example:
%% list_dashboards_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type list_dashboards_request() :: #{binary() => any()}.

%% Example:
%% get_dashboard_request() :: #{
%%   <<"DashboardId">> := string()
%% }
-type get_dashboard_request() :: #{binary() => any()}.

%% Example:
%% get_trail_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_trail_request() :: #{binary() => any()}.

%% Example:
%% update_dashboard_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DashboardArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"RefreshSchedule">> => refresh_schedule(),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"Widgets">> => list(widget()())
%% }
-type update_dashboard_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_request() :: #{
%%   <<"Channel">> := string()
%% }
-type delete_channel_request() :: #{binary() => any()}.

%% Example:
%% update_dashboard_request() :: #{
%%   <<"DashboardId">> := string(),
%%   <<"RefreshSchedule">> => refresh_schedule(),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"Widgets">> => list(request_widget()())
%% }
-type update_dashboard_request() :: #{binary() => any()}.

%% Example:
%% invalid_max_results_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_max_results_exception() :: #{binary() => any()}.

%% Example:
%% disable_federation_request() :: #{
%%   <<"EventDataStore">> := string()
%% }
-type disable_federation_request() :: #{binary() => any()}.

%% Example:
%% get_channel_request() :: #{
%%   <<"Channel">> := string()
%% }
-type get_channel_request() :: #{binary() => any()}.

%% Example:
%% start_event_data_store_ingestion_response() :: #{

%% }
-type start_event_data_store_ingestion_response() :: #{binary() => any()}.

%% Example:
%% search_sample_queries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchPhrase">> := string()
%% }
-type search_sample_queries_request() :: #{binary() => any()}.

%% Example:
%% delete_trail_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_trail_request() :: #{binary() => any()}.

%% Example:
%% describe_query_response() :: #{
%%   <<"DeliveryS3Uri">> => string(),
%%   <<"DeliveryStatus">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"Prompt">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryStatistics">> => query_statistics_for_describe_query(),
%%   <<"QueryStatus">> => list(any()),
%%   <<"QueryString">> => string()
%% }
-type describe_query_response() :: #{binary() => any()}.

%% Example:
%% not_organization_management_account_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_organization_management_account_exception() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{

%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% resource_type_not_supported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_type_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% trail_not_provided_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trail_not_provided_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% account_registered_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_registered_exception() :: #{binary() => any()}.

%% Example:
%% stop_import_request() :: #{
%%   <<"ImportId">> := string()
%% }
-type stop_import_request() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_delivery_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_watch_logs_delivery_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% create_channel_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Destinations">> => list(destination()()),
%%   <<"Name">> => string(),
%%   <<"Source">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_channel_response() :: #{binary() => any()}.

%% Example:
%% disable_federation_response() :: #{
%%   <<"EventDataStoreArn">> => string(),
%%   <<"FederationStatus">> => list(any())
%% }
-type disable_federation_response() :: #{binary() => any()}.

%% Example:
%% delegated_admin_account_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delegated_admin_account_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% insufficient_encryption_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_encryption_policy_exception() :: #{binary() => any()}.

%% Example:
%% get_query_results_response() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"QueryResultRows">> => list(list(map()())()),
%%   <<"QueryStatistics">> => query_statistics(),
%%   <<"QueryStatus">> => list(any())
%% }
-type get_query_results_response() :: #{binary() => any()}.

%% Example:
%% stop_event_data_store_ingestion_request() :: #{
%%   <<"EventDataStore">> := string()
%% }
-type stop_event_data_store_ingestion_request() :: #{binary() => any()}.

%% Example:
%% deregister_organization_delegated_admin_request() :: #{
%%   <<"DelegatedAdminAccountId">> := string()
%% }
-type deregister_organization_delegated_admin_request() :: #{binary() => any()}.

%% Example:
%% register_organization_delegated_admin_response() :: #{

%% }
-type register_organization_delegated_admin_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_response() :: #{

%% }
-type delete_channel_response() :: #{binary() => any()}.

%% Example:
%% delete_event_data_store_response() :: #{

%% }
-type delete_event_data_store_response() :: #{binary() => any()}.

%% Example:
%% get_import_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Destinations">> => list(string()()),
%%   <<"EndEventTime">> => non_neg_integer(),
%%   <<"ImportId">> => string(),
%%   <<"ImportSource">> => import_source(),
%%   <<"ImportStatistics">> => import_statistics(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"StartEventTime">> => non_neg_integer(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type get_import_response() :: #{binary() => any()}.

%% Example:
%% channel_exists_for_e_d_s_exception() :: #{
%%   <<"Message">> => string()
%% }
-type channel_exists_for_e_d_s_exception() :: #{binary() => any()}.

%% Example:
%% list_public_keys_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PublicKeyList">> => list(public_key()())
%% }
-type list_public_keys_response() :: #{binary() => any()}.

%% Example:
%% query_id_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type query_id_not_found_exception() :: #{binary() => any()}.

%% Example:
%% kms_key_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type kms_key_not_found_exception() :: #{binary() => any()}.

%% Example:
%% s3_bucket_does_not_exist_exception() :: #{
%%   <<"Message">> => string()
%% }
-type s3_bucket_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% event_data_store_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% get_query_results_request() :: #{
%%   <<"EventDataStore">> => string(),
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"MaxQueryResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryId">> := string()
%% }
-type get_query_results_request() :: #{binary() => any()}.

%% Example:
%% create_trail_request() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"EnableLogFileValidation">> => boolean(),
%%   <<"IncludeGlobalServiceEvents">> => boolean(),
%%   <<"IsMultiRegionTrail">> => boolean(),
%%   <<"IsOrganizationTrail">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := string(),
%%   <<"S3BucketName">> := string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"SnsTopicName">> => string(),
%%   <<"TagsList">> => list(tag()())
%% }
-type create_trail_request() :: #{binary() => any()}.

%% Example:
%% describe_trails_request() :: #{
%%   <<"includeShadowTrails">> => boolean(),
%%   <<"trailNameList">> => list(string()())
%% }
-type describe_trails_request() :: #{binary() => any()}.

%% Example:
%% delete_trail_response() :: #{

%% }
-type delete_trail_response() :: #{binary() => any()}.

%% Example:
%% update_trail_response() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"IncludeGlobalServiceEvents">> => boolean(),
%%   <<"IsMultiRegionTrail">> => boolean(),
%%   <<"IsOrganizationTrail">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LogFileValidationEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"SnsTopicARN">> => string(),
%%   <<"SnsTopicName">> => string(),
%%   <<"TrailARN">> => string()
%% }
-type update_trail_response() :: #{binary() => any()}.

%% Example:
%% lookup_events_response() :: #{
%%   <<"Events">> => list(event()()),
%%   <<"NextToken">> => string()
%% }
-type lookup_events_response() :: #{binary() => any()}.

%% Example:
%% update_event_data_store_response() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EventDataStoreArn">> => string(),
%%   <<"FederationRoleArn">> => string(),
%%   <<"FederationStatus">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type update_event_data_store_response() :: #{binary() => any()}.

%% Example:
%% ingestion_status() :: #{
%%   <<"LatestIngestionAttemptEventID">> => string(),
%%   <<"LatestIngestionAttemptTime">> => non_neg_integer(),
%%   <<"LatestIngestionErrorCode">> => string(),
%%   <<"LatestIngestionSuccessEventID">> => string(),
%%   <<"LatestIngestionSuccessTime">> => non_neg_integer()
%% }
-type ingestion_status() :: #{binary() => any()}.

%% Example:
%% invalid_s3_bucket_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_s3_bucket_name_exception() :: #{binary() => any()}.

%% Example:
%% start_dashboard_refresh_request() :: #{
%%   <<"DashboardId">> := string(),
%%   <<"QueryParameterValues">> => map()
%% }
-type start_dashboard_refresh_request() :: #{binary() => any()}.

%% Example:
%% list_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceTagList">> => list(resource_tag()())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"DelegatedAdminResourcePolicy">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% event_data_store_arn_invalid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_arn_invalid_exception() :: #{binary() => any()}.

%% Example:
%% add_tags_response() :: #{

%% }
-type add_tags_response() :: #{binary() => any()}.

%% Example:
%% describe_query_request() :: #{
%%   <<"EventDataStore">> => string(),
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"QueryAlias">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"RefreshId">> => string()
%% }
-type describe_query_request() :: #{binary() => any()}.

%% Example:
%% update_trail_request() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"EnableLogFileValidation">> => boolean(),
%%   <<"IncludeGlobalServiceEvents">> => boolean(),
%%   <<"IsMultiRegionTrail">> => boolean(),
%%   <<"IsOrganizationTrail">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"SnsTopicName">> => string()
%% }
-type update_trail_request() :: #{binary() => any()}.

%% Example:
%% channel_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type channel_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% channel_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type channel_not_found_exception() :: #{binary() => any()}.

%% Example:
%% invalid_home_region_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_home_region_exception() :: #{binary() => any()}.

%% Example:
%% start_query_request() :: #{
%%   <<"DeliveryS3Uri">> => string(),
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"QueryAlias">> => string(),
%%   <<"QueryParameters">> => list(string()()),
%%   <<"QueryStatement">> => string()
%% }
-type start_query_request() :: #{binary() => any()}.

%% Example:
%% insufficient_sns_topic_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_sns_topic_policy_exception() :: #{binary() => any()}.

%% Example:
%% cancel_query_response() :: #{
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryStatus">> => list(any())
%% }
-type cancel_query_response() :: #{binary() => any()}.

%% Example:
%% imports_list_item() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Destinations">> => list(string()()),
%%   <<"ImportId">> => string(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type imports_list_item() :: #{binary() => any()}.

%% Example:
%% import_statistics() :: #{
%%   <<"EventsCompleted">> => float(),
%%   <<"FailedEntries">> => float(),
%%   <<"FilesCompleted">> => float(),
%%   <<"PrefixesCompleted">> => float(),
%%   <<"PrefixesFound">> => float()
%% }
-type import_statistics() :: #{binary() => any()}.

%% Example:
%% generate_query_response() :: #{
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"QueryAlias">> => string(),
%%   <<"QueryStatement">> => string()
%% }
-type generate_query_response() :: #{binary() => any()}.

%% Example:
%% list_queries_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Queries">> => list(query()())
%% }
-type list_queries_response() :: #{binary() => any()}.

%% Example:
%% invalid_tag_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_tag_parameter_exception() :: #{binary() => any()}.

%% Example:
%% list_insights_metric_data_response() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"EventName">> => string(),
%%   <<"EventSource">> => string(),
%%   <<"InsightType">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"Timestamps">> => list(non_neg_integer()()),
%%   <<"Values">> => list(float()())
%% }
-type list_insights_metric_data_response() :: #{binary() => any()}.

%% Example:
%% invalid_s3_prefix_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_s3_prefix_exception() :: #{binary() => any()}.

%% Example:
%% trail_info() :: #{
%%   <<"HomeRegion">> => string(),
%%   <<"Name">> => string(),
%%   <<"TrailARN">> => string()
%% }
-type trail_info() :: #{binary() => any()}.

%% Example:
%% maximum_number_of_trails_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type maximum_number_of_trails_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% no_management_account_s_l_r_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_management_account_s_l_r_exists_exception() :: #{binary() => any()}.

%% Example:
%% invalid_event_selectors_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_event_selectors_exception() :: #{binary() => any()}.

%% Example:
%% enable_federation_request() :: #{
%%   <<"EventDataStore">> := string(),
%%   <<"FederationRoleArn">> := string()
%% }
-type enable_federation_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.

%% Example:
%% advanced_event_selector() :: #{
%%   <<"FieldSelectors">> => list(advanced_field_selector()()),
%%   <<"Name">> => string()
%% }
-type advanced_event_selector() :: #{binary() => any()}.

%% Example:
%% list_public_keys_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type list_public_keys_request() :: #{binary() => any()}.

%% Example:
%% list_imports_response() :: #{
%%   <<"Imports">> => list(imports_list_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_imports_response() :: #{binary() => any()}.

%% Example:
%% restore_event_data_store_response() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EventDataStoreArn">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type restore_event_data_store_response() :: #{binary() => any()}.

%% Example:
%% invalid_query_status_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_query_status_exception() :: #{binary() => any()}.

%% Example:
%% invalid_source_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_source_exception() :: #{binary() => any()}.

%% Example:
%% add_tags_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagsList">> := list(tag()())
%% }
-type add_tags_request() :: #{binary() => any()}.

%% Example:
%% invalid_event_category_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_event_category_exception() :: #{binary() => any()}.

%% Example:
%% account_has_ongoing_import_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_has_ongoing_import_exception() :: #{binary() => any()}.

%% Example:
%% start_logging_request() :: #{
%%   <<"Name">> := string()
%% }
-type start_logging_request() :: #{binary() => any()}.

%% Example:
%% stop_logging_request() :: #{
%%   <<"Name">> := string()
%% }
-type stop_logging_request() :: #{binary() => any()}.

%% Example:
%% insight_not_enabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insight_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% inactive_query_exception() :: #{
%%   <<"Message">> => string()
%% }
-type inactive_query_exception() :: #{binary() => any()}.

%% Example:
%% cancel_query_request() :: #{
%%   <<"EventDataStore">> => string(),
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"QueryId">> := string()
%% }
-type cancel_query_request() :: #{binary() => any()}.

%% Example:
%% organization_not_in_all_features_mode_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organization_not_in_all_features_mode_exception() :: #{binary() => any()}.

%% Example:
%% start_event_data_store_ingestion_request() :: #{
%%   <<"EventDataStore">> := string()
%% }
-type start_event_data_store_ingestion_request() :: #{binary() => any()}.

%% Example:
%% invalid_time_range_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_time_range_exception() :: #{binary() => any()}.

%% Example:
%% insufficient_dependency_service_access_permission_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_dependency_service_access_permission_exception() :: #{binary() => any()}.

%% Example:
%% request_widget() :: #{
%%   <<"QueryParameters">> => list(string()()),
%%   <<"QueryStatement">> => string(),
%%   <<"ViewProperties">> => map()
%% }
-type request_widget() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_event_data_store_category_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_event_data_store_category_exception() :: #{binary() => any()}.

%% Example:
%% list_queries_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EventDataStore">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryStatus">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type list_queries_request() :: #{binary() => any()}.

%% Example:
%% event_selector() :: #{
%%   <<"DataResources">> => list(data_resource()()),
%%   <<"ExcludeManagementEventSources">> => list(string()()),
%%   <<"IncludeManagementEvents">> => boolean(),
%%   <<"ReadWriteType">> => list(any())
%% }
-type event_selector() :: #{binary() => any()}.

%% Example:
%% event_data_store_federation_enabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_federation_enabled_exception() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% lookup_attribute() :: #{
%%   <<"AttributeKey">> => list(any()),
%%   <<"AttributeValue">> => string()
%% }
-type lookup_attribute() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% account_not_registered_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_not_registered_exception() :: #{binary() => any()}.

%% Example:
%% create_event_data_store_response() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EventDataStoreArn">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TagsList">> => list(tag()()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type create_event_data_store_response() :: #{binary() => any()}.

%% Example:
%% update_event_data_store_request() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"EventDataStore">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"TerminationProtectionEnabled">> => boolean()
%% }
-type update_event_data_store_request() :: #{binary() => any()}.

%% Example:
%% trail_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trail_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% insight_selector() :: #{
%%   <<"InsightType">> => list(any())
%% }
-type insight_selector() :: #{binary() => any()}.

%% Example:
%% deregister_organization_delegated_admin_response() :: #{

%% }
-type deregister_organization_delegated_admin_response() :: #{binary() => any()}.

%% Example:
%% query_statistics_for_describe_query() :: #{
%%   <<"BytesScanned">> => float(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EventsMatched">> => float(),
%%   <<"EventsScanned">> => float(),
%%   <<"ExecutionTimeInMillis">> => integer()
%% }
-type query_statistics_for_describe_query() :: #{binary() => any()}.

%% Example:
%% list_trails_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_trails_request() :: #{binary() => any()}.

%% Example:
%% stop_event_data_store_ingestion_response() :: #{

%% }
-type stop_event_data_store_ingestion_response() :: #{binary() => any()}.

%% Example:
%% create_event_data_store_request() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"StartIngestion">> => boolean(),
%%   <<"TagsList">> => list(tag()()),
%%   <<"TerminationProtectionEnabled">> => boolean()
%% }
-type create_event_data_store_request() :: #{binary() => any()}.

%% Example:
%% generate_query_request() :: #{
%%   <<"EventDataStores">> := list(string()()),
%%   <<"Prompt">> := string()
%% }
-type generate_query_request() :: #{binary() => any()}.

%% Example:
%% create_channel_request() :: #{
%%   <<"Destinations">> := list(destination()()),
%%   <<"Name">> := string(),
%%   <<"Source">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_channel_request() :: #{binary() => any()}.

%% Example:
%% get_import_request() :: #{
%%   <<"ImportId">> := string()
%% }
-type get_import_request() :: #{binary() => any()}.

%% Example:
%% get_event_data_store_response() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EventDataStoreArn">> => string(),
%%   <<"FederationRoleArn">> => string(),
%%   <<"FederationStatus">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"PartitionKeys">> => list(partition_key()()),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type get_event_data_store_response() :: #{binary() => any()}.

%% Example:
%% invalid_cloud_watch_logs_role_arn_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_cloud_watch_logs_role_arn_exception() :: #{binary() => any()}.

%% Example:
%% get_trail_status_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_trail_status_request() :: #{binary() => any()}.

%% Example:
%% trail_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trail_not_found_exception() :: #{binary() => any()}.

%% Example:
%% remove_tags_response() :: #{

%% }
-type remove_tags_response() :: #{binary() => any()}.

%% Example:
%% list_event_data_stores_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_data_stores_request() :: #{binary() => any()}.

%% Example:
%% refresh_schedule_frequency() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type refresh_schedule_frequency() :: #{binary() => any()}.

%% Example:
%% account_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_insights_metric_data_request() :: #{
%%   <<"DataType">> => list(any()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorCode">> => string(),
%%   <<"EventName">> := string(),
%%   <<"EventSource">> := string(),
%%   <<"InsightType">> := list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Period">> => integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type list_insights_metric_data_request() :: #{binary() => any()}.

%% Example:
%% organizations_not_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organizations_not_in_use_exception() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.

%% Example:
%% list_channels_response() :: #{
%%   <<"Channels">> => list(channel()()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.

%% Example:
%% public_key() :: #{
%%   <<"Fingerprint">> => string(),
%%   <<"ValidityEndTime">> => non_neg_integer(),
%%   <<"ValidityStartTime">> => non_neg_integer(),
%%   <<"Value">> => binary()
%% }
-type public_key() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% resource_policy_not_valid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_policy_not_valid_exception() :: #{binary() => any()}.

%% Example:
%% tags_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type tags_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_channel_request() :: #{
%%   <<"Channel">> := string(),
%%   <<"Destinations">> => list(destination()()),
%%   <<"Name">> => string()
%% }
-type update_channel_request() :: #{binary() => any()}.

%% Example:
%% list_import_failures_request() :: #{
%%   <<"ImportId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_import_failures_request() :: #{binary() => any()}.

%% Example:
%% get_dashboard_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DashboardArn">> => string(),
%%   <<"LastRefreshFailureReason">> => string(),
%%   <<"LastRefreshId">> => string(),
%%   <<"RefreshSchedule">> => refresh_schedule(),
%%   <<"Status">> => list(any()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"Widgets">> => list(widget()())
%% }
-type get_dashboard_response() :: #{binary() => any()}.

%% Example:
%% delete_dashboard_request() :: #{
%%   <<"DashboardId">> := string()
%% }
-type delete_dashboard_request() :: #{binary() => any()}.

%% Example:
%% get_event_data_store_request() :: #{
%%   <<"EventDataStore">> := string()
%% }
-type get_event_data_store_request() :: #{binary() => any()}.

%% Example:
%% get_event_selectors_request() :: #{
%%   <<"TrailName">> := string()
%% }
-type get_event_selectors_request() :: #{binary() => any()}.

%% Example:
%% refresh_schedule() :: #{
%%   <<"Frequency">> => refresh_schedule_frequency(),
%%   <<"Status">> => list(any()),
%%   <<"TimeOfDay">> => string()
%% }
-type refresh_schedule() :: #{binary() => any()}.

%% Example:
%% delete_dashboard_response() :: #{

%% }
-type delete_dashboard_response() :: #{binary() => any()}.

%% Example:
%% start_logging_response() :: #{

%% }
-type start_logging_response() :: #{binary() => any()}.

%% Example:
%% list_import_failures_response() :: #{
%%   <<"Failures">> => list(import_failure_list_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_import_failures_response() :: #{binary() => any()}.

%% Example:
%% restore_event_data_store_request() :: #{
%%   <<"EventDataStore">> := string()
%% }
-type restore_event_data_store_request() :: #{binary() => any()}.

%% Example:
%% create_dashboard_response() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"RefreshSchedule">> => refresh_schedule(),
%%   <<"TagsList">> => list(tag()()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"Type">> => list(any()),
%%   <<"Widgets">> => list(widget()())
%% }
-type create_dashboard_response() :: #{binary() => any()}.

%% Example:
%% import_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type import_not_found_exception() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"TagsList">> => list(tag()())
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% not_organization_master_account_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_organization_master_account_exception() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"CloudTrailEvent">> => string(),
%%   <<"EventId">> => string(),
%%   <<"EventName">> => string(),
%%   <<"EventSource">> => string(),
%%   <<"EventTime">> => non_neg_integer(),
%%   <<"ReadOnly">> => string(),
%%   <<"Resources">> => list(resource()()),
%%   <<"Username">> => string()
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% invalid_trail_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_trail_name_exception() :: #{binary() => any()}.

%% Example:
%% insufficient_s3_bucket_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_s3_bucket_policy_exception() :: #{binary() => any()}.

%% Example:
%% s3_import_source() :: #{
%%   <<"S3BucketAccessRoleArn">> => string(),
%%   <<"S3BucketRegion">> => string(),
%%   <<"S3LocationUri">> => string()
%% }
-type s3_import_source() :: #{binary() => any()}.

%% Example:
%% start_query_response() :: #{
%%   <<"EventDataStoreOwnerAccountId">> => string(),
%%   <<"QueryId">> => string()
%% }
-type start_query_response() :: #{binary() => any()}.

%% Example:
%% invalid_cloud_watch_logs_log_group_arn_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_cloud_watch_logs_log_group_arn_exception() :: #{binary() => any()}.

%% Example:
%% get_insight_selectors_response() :: #{
%%   <<"EventDataStoreArn">> => string(),
%%   <<"InsightSelectors">> => list(insight_selector()()),
%%   <<"InsightsDestination">> => string(),
%%   <<"TrailARN">> => string()
%% }
-type get_insight_selectors_response() :: #{binary() => any()}.

%% Example:
%% put_insight_selectors_response() :: #{
%%   <<"EventDataStoreArn">> => string(),
%%   <<"InsightSelectors">> => list(insight_selector()()),
%%   <<"InsightsDestination">> => string(),
%%   <<"TrailARN">> => string()
%% }
-type put_insight_selectors_response() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourcePolicy">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% cloud_trail_invalid_client_token_id_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_trail_invalid_client_token_id_exception() :: #{binary() => any()}.

%% Example:
%% inactive_event_data_store_exception() :: #{
%%   <<"Message">> => string()
%% }
-type inactive_event_data_store_exception() :: #{binary() => any()}.

%% Example:
%% stop_import_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Destinations">> => list(string()()),
%%   <<"EndEventTime">> => non_neg_integer(),
%%   <<"ImportId">> => string(),
%%   <<"ImportSource">> => import_source(),
%%   <<"ImportStatistics">> => import_statistics(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"StartEventTime">> => non_neg_integer(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type stop_import_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_import_source_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_import_source_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% start_dashboard_refresh_response() :: #{
%%   <<"RefreshId">> => string()
%% }
-type start_dashboard_refresh_response() :: #{binary() => any()}.

%% Example:
%% stop_logging_response() :: #{

%% }
-type stop_logging_response() :: #{binary() => any()}.

%% Example:
%% max_concurrent_queries_exception() :: #{
%%   <<"Message">> => string()
%% }
-type max_concurrent_queries_exception() :: #{binary() => any()}.

%% Example:
%% kms_key_disabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type kms_key_disabled_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% channel_arn_invalid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type channel_arn_invalid_exception() :: #{binary() => any()}.

%% Example:
%% search_sample_queries_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SearchResults">> => list(search_sample_queries_search_result()())
%% }
-type search_sample_queries_response() :: #{binary() => any()}.

%% Example:
%% event_data_store() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EventDataStoreArn">> => string(),
%%   <<"MultiRegionEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationEnabled">> => boolean(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type event_data_store() :: #{binary() => any()}.

%% Example:
%% kms_exception() :: #{
%%   <<"Message">> => string()
%% }
-type kms_exception() :: #{binary() => any()}.

%% Example:
%% put_event_selectors_response() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"EventSelectors">> => list(event_selector()()),
%%   <<"TrailARN">> => string()
%% }
-type put_event_selectors_response() :: #{binary() => any()}.

%% Example:
%% destination() :: #{
%%   <<"Location">> => string(),
%%   <<"Type">> => list(any())
%% }
-type destination() :: #{binary() => any()}.

%% Example:
%% lookup_events_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EventCategory">> => list(any()),
%%   <<"LookupAttributes">> => list(lookup_attribute()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type lookup_events_request() :: #{binary() => any()}.

%% Example:
%% register_organization_delegated_admin_request() :: #{
%%   <<"MemberAccountId">> := string()
%% }
-type register_organization_delegated_admin_request() :: #{binary() => any()}.

%% Example:
%% event_data_store_termination_protected_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_termination_protected_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% invalid_kms_key_id_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_kms_key_id_exception() :: #{binary() => any()}.

%% Example:
%% get_insight_selectors_request() :: #{
%%   <<"EventDataStore">> => string(),
%%   <<"TrailName">> => string()
%% }
-type get_insight_selectors_request() :: #{binary() => any()}.

%% Example:
%% channel() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Name">> => string()
%% }
-type channel() :: #{binary() => any()}.

%% Example:
%% event_data_store_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_dashboard_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RefreshSchedule">> => refresh_schedule(),
%%   <<"TagsList">> => list(tag()()),
%%   <<"TerminationProtectionEnabled">> => boolean(),
%%   <<"Widgets">> => list(request_widget()())
%% }
-type create_dashboard_request() :: #{binary() => any()}.

%% Example:
%% list_imports_request() :: #{
%%   <<"Destination">> => string(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_imports_request() :: #{binary() => any()}.

%% Example:
%% put_insight_selectors_request() :: #{
%%   <<"EventDataStore">> => string(),
%%   <<"InsightSelectors">> := list(insight_selector()()),
%%   <<"InsightsDestination">> => string(),
%%   <<"TrailName">> => string()
%% }
-type put_insight_selectors_request() :: #{binary() => any()}.

%% Example:
%% advanced_field_selector() :: #{
%%   <<"EndsWith">> => list(string()()),
%%   <<"Equals">> => list(string()()),
%%   <<"Field">> => string(),
%%   <<"NotEndsWith">> => list(string()()),
%%   <<"NotEquals">> => list(string()()),
%%   <<"NotStartsWith">> => list(string()()),
%%   <<"StartsWith">> => list(string()())
%% }
-type advanced_field_selector() :: #{binary() => any()}.

%% Example:
%% list_event_data_stores_response() :: #{
%%   <<"EventDataStores">> => list(event_data_store()()),
%%   <<"NextToken">> => string()
%% }
-type list_event_data_stores_response() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"DelegatedAdminResourcePolicy">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% list_trails_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Trails">> => list(trail_info()())
%% }
-type list_trails_response() :: #{binary() => any()}.

%% Example:
%% widget() :: #{
%%   <<"QueryAlias">> => string(),
%%   <<"QueryParameters">> => list(string()()),
%%   <<"QueryStatement">> => string(),
%%   <<"ViewProperties">> => map()
%% }
-type widget() :: #{binary() => any()}.

%% Example:
%% data_resource() :: #{
%%   <<"Type">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type data_resource() :: #{binary() => any()}.

%% Example:
%% cannot_delegate_management_account_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cannot_delegate_management_account_exception() :: #{binary() => any()}.

%% Example:
%% query_statistics() :: #{
%%   <<"BytesScanned">> => float(),
%%   <<"ResultsCount">> => integer(),
%%   <<"TotalResultsCount">> => integer()
%% }
-type query_statistics() :: #{binary() => any()}.

%% Example:
%% event_data_store_has_ongoing_import_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_has_ongoing_import_exception() :: #{binary() => any()}.

%% Example:
%% source_config() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"ApplyToAllRegions">> => boolean()
%% }
-type source_config() :: #{binary() => any()}.

%% Example:
%% get_channel_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Destinations">> => list(destination()()),
%%   <<"IngestionStatus">> => ingestion_status(),
%%   <<"Name">> => string(),
%%   <<"Source">> => string(),
%%   <<"SourceConfig">> => source_config()
%% }
-type get_channel_response() :: #{binary() => any()}.

%% Example:
%% channel_max_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type channel_max_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% put_event_selectors_request() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"EventSelectors">> => list(event_selector()()),
%%   <<"TrailName">> := string()
%% }
-type put_event_selectors_request() :: #{binary() => any()}.

%% Example:
%% invalid_date_range_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_date_range_exception() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% import_source() :: #{
%%   <<"S3">> => s3_import_source()
%% }
-type import_source() :: #{binary() => any()}.

%% Example:
%% import_failure_list_item() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Location">> => string(),
%%   <<"Status">> => list(any())
%% }
-type import_failure_list_item() :: #{binary() => any()}.

%% Example:
%% invalid_lookup_attributes_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_lookup_attributes_exception() :: #{binary() => any()}.

%% Example:
%% event_data_store_max_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type event_data_store_max_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% trail() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"HasCustomEventSelectors">> => boolean(),
%%   <<"HasInsightSelectors">> => boolean(),
%%   <<"HomeRegion">> => string(),
%%   <<"IncludeGlobalServiceEvents">> => boolean(),
%%   <<"IsMultiRegionTrail">> => boolean(),
%%   <<"IsOrganizationTrail">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LogFileValidationEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"SnsTopicARN">> => string(),
%%   <<"SnsTopicName">> => string(),
%%   <<"TrailARN">> => string()
%% }
-type trail() :: #{binary() => any()}.

%% Example:
%% query() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"QueryId">> => string(),
%%   <<"QueryStatus">> => list(any())
%% }
-type query() :: #{binary() => any()}.

%% Example:
%% generate_response_exception() :: #{
%%   <<"Message">> => string()
%% }
-type generate_response_exception() :: #{binary() => any()}.

%% Example:
%% invalid_event_data_store_status_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_event_data_store_status_exception() :: #{binary() => any()}.

%% Example:
%% cloud_trail_access_not_enabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_trail_access_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% update_channel_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Destinations">> => list(destination()()),
%%   <<"Name">> => string(),
%%   <<"Source">> => string()
%% }
-type update_channel_response() :: #{binary() => any()}.

%% Example:
%% delete_event_data_store_request() :: #{
%%   <<"EventDataStore">> := string()
%% }
-type delete_event_data_store_request() :: #{binary() => any()}.

%% Example:
%% cloud_trail_arn_invalid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_trail_arn_invalid_exception() :: #{binary() => any()}.

%% Example:
%% remove_tags_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagsList">> := list(tag()())
%% }
-type remove_tags_request() :: #{binary() => any()}.

%% Example:
%% resource_policy_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdList">> := list(string()())
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% list_dashboards_response() :: #{
%%   <<"Dashboards">> => list(dashboard_detail()()),
%%   <<"NextToken">> => string()
%% }
-type list_dashboards_response() :: #{binary() => any()}.

%% Example:
%% search_sample_queries_search_result() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Relevance">> => float(),
%%   <<"SQL">> => string()
%% }
-type search_sample_queries_search_result() :: #{binary() => any()}.

%% Example:
%% resource_arn_not_valid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_arn_not_valid_exception() :: #{binary() => any()}.

%% Example:
%% invalid_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_token_exception() :: #{binary() => any()}.

%% Example:
%% invalid_insight_selectors_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_insight_selectors_exception() :: #{binary() => any()}.

%% Example:
%% list_channels_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_request() :: #{binary() => any()}.

%% Example:
%% invalid_sns_topic_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_sns_topic_name_exception() :: #{binary() => any()}.

%% Example:
%% invalid_query_statement_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_query_statement_exception() :: #{binary() => any()}.

%% Example:
%% get_trail_status_response() :: #{
%%   <<"IsLogging">> => boolean(),
%%   <<"LatestCloudWatchLogsDeliveryError">> => string(),
%%   <<"LatestCloudWatchLogsDeliveryTime">> => non_neg_integer(),
%%   <<"LatestDeliveryAttemptSucceeded">> => string(),
%%   <<"LatestDeliveryAttemptTime">> => string(),
%%   <<"LatestDeliveryError">> => string(),
%%   <<"LatestDeliveryTime">> => non_neg_integer(),
%%   <<"LatestDigestDeliveryError">> => string(),
%%   <<"LatestDigestDeliveryTime">> => non_neg_integer(),
%%   <<"LatestNotificationAttemptSucceeded">> => string(),
%%   <<"LatestNotificationAttemptTime">> => string(),
%%   <<"LatestNotificationError">> => string(),
%%   <<"LatestNotificationTime">> => non_neg_integer(),
%%   <<"StartLoggingTime">> => non_neg_integer(),
%%   <<"StopLoggingTime">> => non_neg_integer(),
%%   <<"TimeLoggingStarted">> => string(),
%%   <<"TimeLoggingStopped">> => string()
%% }
-type get_trail_status_response() :: #{binary() => any()}.

%% Example:
%% start_import_request() :: #{
%%   <<"Destinations">> => list(string()()),
%%   <<"EndEventTime">> => non_neg_integer(),
%%   <<"ImportId">> => string(),
%%   <<"ImportSource">> => import_source(),
%%   <<"StartEventTime">> => non_neg_integer()
%% }
-type start_import_request() :: #{binary() => any()}.

%% Example:
%% start_import_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Destinations">> => list(string()()),
%%   <<"EndEventTime">> => non_neg_integer(),
%%   <<"ImportId">> => string(),
%%   <<"ImportSource">> => import_source(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"StartEventTime">> => non_neg_integer(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type start_import_response() :: #{binary() => any()}.

%% Example:
%% get_event_selectors_response() :: #{
%%   <<"AdvancedEventSelectors">> => list(advanced_event_selector()()),
%%   <<"EventSelectors">> => list(event_selector()()),
%%   <<"TrailARN">> => string()
%% }
-type get_event_selectors_response() :: #{binary() => any()}.

%% Example:
%% create_trail_response() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"IncludeGlobalServiceEvents">> => boolean(),
%%   <<"IsMultiRegionTrail">> => boolean(),
%%   <<"IsOrganizationTrail">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LogFileValidationEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"SnsTopicARN">> => string(),
%%   <<"SnsTopicName">> => string(),
%%   <<"TrailARN">> => string()
%% }
-type create_trail_response() :: #{binary() => any()}.

%% Example:
%% describe_trails_response() :: #{
%%   <<"trailList">> => list(trail()())
%% }
-type describe_trails_response() :: #{binary() => any()}.

%% Example:
%% dashboard_detail() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"Type">> => list(any())
%% }
-type dashboard_detail() :: #{binary() => any()}.

%% Example:
%% get_trail_response() :: #{
%%   <<"Trail">> => trail()
%% }
-type get_trail_response() :: #{binary() => any()}.

%% Example:
%% enable_federation_response() :: #{
%%   <<"EventDataStoreArn">> => string(),
%%   <<"FederationRoleArn">> => string(),
%%   <<"FederationStatus">> => list(any())
%% }
-type enable_federation_response() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type add_tags_errors() ::
    cloud_trail_arn_invalid_exception() | 
    event_data_store_not_found_exception() | 
    channel_arn_invalid_exception() | 
    inactive_event_data_store_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    tags_limit_exceeded_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_tag_parameter_exception() | 
    channel_not_found_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception() | 
    resource_type_not_supported_exception().

-type cancel_query_errors() ::
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    operation_not_permitted_exception() | 
    inactive_query_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    query_id_not_found_exception() | 
    unsupported_operation_exception().

-type create_channel_errors() ::
    channel_max_limit_exceeded_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    tags_limit_exceeded_exception() | 
    operation_not_permitted_exception() | 
    invalid_event_data_store_category_exception() | 
    invalid_source_exception() | 
    invalid_tag_parameter_exception() | 
    channel_already_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type create_dashboard_errors() ::
    invalid_query_statement_exception() | 
    event_data_store_not_found_exception() | 
    inactive_event_data_store_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    invalid_tag_parameter_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type create_event_data_store_errors() ::
    cloud_trail_access_not_enabled_exception() | 
    event_data_store_max_limit_exceeded_exception() | 
    invalid_kms_key_id_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    conflict_exception() | 
    invalid_event_selectors_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_tag_parameter_exception() | 
    event_data_store_already_exists_exception() | 
    kms_key_not_found_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type create_trail_errors() ::
    invalid_sns_topic_name_exception() | 
    cloud_trail_access_not_enabled_exception() | 
    invalid_kms_key_id_exception() | 
    throttling_exception() | 
    kms_exception() | 
    kms_key_disabled_exception() | 
    invalid_parameter_exception() | 
    cloud_trail_invalid_client_token_id_exception() | 
    invalid_cloud_watch_logs_log_group_arn_exception() | 
    insufficient_s3_bucket_policy_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    tags_limit_exceeded_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    invalid_cloud_watch_logs_role_arn_exception() | 
    trail_already_exists_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    conflict_exception() | 
    invalid_parameter_combination_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    maximum_number_of_trails_exceeded_exception() | 
    invalid_s3_prefix_exception() | 
    invalid_tag_parameter_exception() | 
    insufficient_sns_topic_policy_exception() | 
    invalid_s3_bucket_name_exception() | 
    s3_bucket_does_not_exist_exception() | 
    kms_key_not_found_exception() | 
    insufficient_encryption_policy_exception() | 
    cloud_watch_logs_delivery_unavailable_exception() | 
    unsupported_operation_exception() | 
    trail_not_provided_exception().

-type delete_channel_errors() ::
    channel_arn_invalid_exception() | 
    operation_not_permitted_exception() | 
    channel_not_found_exception() | 
    unsupported_operation_exception().

-type delete_dashboard_errors() ::
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_operation_exception().

-type delete_event_data_store_errors() ::
    event_data_store_has_ongoing_import_exception() | 
    event_data_store_not_found_exception() | 
    event_data_store_termination_protected_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    event_data_store_federation_enabled_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    channel_exists_for_e_d_s_exception() | 
    unsupported_operation_exception().

-type delete_resource_policy_errors() ::
    resource_arn_not_valid_exception() | 
    resource_policy_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_operation_exception() | 
    resource_type_not_supported_exception().

-type delete_trail_errors() ::
    cloud_trail_arn_invalid_exception() | 
    throttling_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_home_region_exception() | 
    unsupported_operation_exception().

-type deregister_organization_delegated_admin_errors() ::
    cloud_trail_access_not_enabled_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    account_not_found_exception() | 
    account_not_registered_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    conflict_exception() | 
    unsupported_operation_exception() | 
    not_organization_management_account_exception().

-type describe_query_errors() ::
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    operation_not_permitted_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    query_id_not_found_exception() | 
    unsupported_operation_exception().

-type describe_trails_errors() ::
    cloud_trail_arn_invalid_exception() | 
    invalid_trail_name_exception() | 
    operation_not_permitted_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    unsupported_operation_exception().

-type disable_federation_errors() ::
    cloud_trail_access_not_enabled_exception() | 
    event_data_store_not_found_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    inactive_event_data_store_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type enable_federation_errors() ::
    cloud_trail_access_not_enabled_exception() | 
    event_data_store_not_found_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    inactive_event_data_store_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    event_data_store_federation_enabled_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type generate_query_errors() ::
    generate_response_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    operation_not_permitted_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type get_channel_errors() ::
    channel_arn_invalid_exception() | 
    operation_not_permitted_exception() | 
    channel_not_found_exception() | 
    unsupported_operation_exception().

-type get_dashboard_errors() ::
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type get_event_data_store_errors() ::
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type get_event_selectors_errors() ::
    cloud_trail_arn_invalid_exception() | 
    invalid_trail_name_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    unsupported_operation_exception().

-type get_import_errors() ::
    invalid_parameter_exception() | 
    import_not_found_exception() | 
    operation_not_permitted_exception() | 
    unsupported_operation_exception().

-type get_insight_selectors_errors() ::
    cloud_trail_arn_invalid_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_trail_name_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    insight_not_enabled_exception() | 
    invalid_parameter_combination_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    unsupported_operation_exception().

-type get_query_results_errors() ::
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    query_id_not_found_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception() | 
    invalid_max_results_exception().

-type get_resource_policy_errors() ::
    resource_arn_not_valid_exception() | 
    resource_policy_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception() | 
    resource_type_not_supported_exception().

-type get_trail_errors() ::
    cloud_trail_arn_invalid_exception() | 
    invalid_trail_name_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    unsupported_operation_exception().

-type get_trail_status_errors() ::
    cloud_trail_arn_invalid_exception() | 
    invalid_trail_name_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    unsupported_operation_exception().

-type list_channels_errors() ::
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    unsupported_operation_exception().

-type list_dashboards_errors() ::
    unsupported_operation_exception().

-type list_event_data_stores_errors() ::
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    unsupported_operation_exception() | 
    invalid_max_results_exception().

-type list_import_failures_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    unsupported_operation_exception().

-type list_imports_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type list_insights_metric_data_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    unsupported_operation_exception().

-type list_public_keys_errors() ::
    invalid_token_exception() | 
    operation_not_permitted_exception() | 
    invalid_time_range_exception() | 
    unsupported_operation_exception().

-type list_queries_errors() ::
    invalid_date_range_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    invalid_query_status_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception() | 
    invalid_max_results_exception().

-type list_tags_errors() ::
    invalid_token_exception() | 
    cloud_trail_arn_invalid_exception() | 
    event_data_store_not_found_exception() | 
    channel_arn_invalid_exception() | 
    inactive_event_data_store_exception() | 
    invalid_trail_name_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception() | 
    resource_type_not_supported_exception().

-type list_trails_errors() ::
    operation_not_permitted_exception() | 
    unsupported_operation_exception().

-type lookup_events_errors() ::
    invalid_lookup_attributes_exception() | 
    operation_not_permitted_exception() | 
    invalid_next_token_exception() | 
    invalid_time_range_exception() | 
    invalid_event_category_exception() | 
    unsupported_operation_exception() | 
    invalid_max_results_exception().

-type put_event_selectors_errors() ::
    cloud_trail_arn_invalid_exception() | 
    throttling_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    conflict_exception() | 
    invalid_event_selectors_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_home_region_exception() | 
    unsupported_operation_exception().

-type put_insight_selectors_errors() ::
    invalid_insight_selectors_exception() | 
    cloud_trail_arn_invalid_exception() | 
    throttling_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    insufficient_s3_bucket_policy_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_home_region_exception() | 
    s3_bucket_does_not_exist_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type put_resource_policy_errors() ::
    resource_arn_not_valid_exception() | 
    resource_policy_not_valid_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_operation_exception() | 
    resource_type_not_supported_exception().

-type register_organization_delegated_admin_errors() ::
    cloud_trail_access_not_enabled_exception() | 
    cannot_delegate_management_account_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    account_not_found_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    conflict_exception() | 
    delegated_admin_account_limit_exceeded_exception() | 
    account_registered_exception() | 
    unsupported_operation_exception() | 
    not_organization_management_account_exception().

-type remove_tags_errors() ::
    cloud_trail_arn_invalid_exception() | 
    event_data_store_not_found_exception() | 
    channel_arn_invalid_exception() | 
    inactive_event_data_store_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_tag_parameter_exception() | 
    channel_not_found_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception() | 
    resource_type_not_supported_exception().

-type restore_event_data_store_errors() ::
    cloud_trail_access_not_enabled_exception() | 
    invalid_event_data_store_status_exception() | 
    event_data_store_max_limit_exceeded_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type search_sample_queries_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    unsupported_operation_exception().

-type start_dashboard_refresh_errors() ::
    event_data_store_not_found_exception() | 
    inactive_event_data_store_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type start_event_data_store_ingestion_errors() ::
    invalid_event_data_store_status_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    invalid_event_data_store_category_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type start_import_errors() ::
    invalid_event_data_store_status_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_import_source_exception() | 
    inactive_event_data_store_exception() | 
    import_not_found_exception() | 
    operation_not_permitted_exception() | 
    invalid_event_data_store_category_exception() | 
    account_has_ongoing_import_exception() | 
    event_data_store_arn_invalid_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type start_logging_errors() ::
    cloud_trail_arn_invalid_exception() | 
    throttling_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_home_region_exception() | 
    unsupported_operation_exception().

-type start_query_errors() ::
    invalid_query_statement_exception() | 
    event_data_store_not_found_exception() | 
    max_concurrent_queries_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    insufficient_s3_bucket_policy_exception() | 
    operation_not_permitted_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_s3_prefix_exception() | 
    event_data_store_arn_invalid_exception() | 
    invalid_s3_bucket_name_exception() | 
    s3_bucket_does_not_exist_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type stop_event_data_store_ingestion_errors() ::
    invalid_event_data_store_status_exception() | 
    event_data_store_not_found_exception() | 
    invalid_parameter_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    invalid_event_data_store_category_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type stop_import_errors() ::
    invalid_parameter_exception() | 
    import_not_found_exception() | 
    operation_not_permitted_exception() | 
    unsupported_operation_exception().

-type stop_logging_errors() ::
    cloud_trail_arn_invalid_exception() | 
    throttling_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    trail_not_found_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    conflict_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_home_region_exception() | 
    unsupported_operation_exception().

-type update_channel_errors() ::
    event_data_store_not_found_exception() | 
    channel_arn_invalid_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    operation_not_permitted_exception() | 
    invalid_event_data_store_category_exception() | 
    channel_not_found_exception() | 
    channel_already_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    unsupported_operation_exception().

-type update_dashboard_errors() ::
    invalid_query_statement_exception() | 
    event_data_store_not_found_exception() | 
    inactive_event_data_store_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type update_event_data_store_errors() ::
    invalid_insight_selectors_exception() | 
    cloud_trail_access_not_enabled_exception() | 
    event_data_store_has_ongoing_import_exception() | 
    event_data_store_not_found_exception() | 
    invalid_kms_key_id_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    inactive_event_data_store_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    invalid_event_selectors_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    event_data_store_arn_invalid_exception() | 
    event_data_store_already_exists_exception() | 
    kms_key_not_found_exception() | 
    insufficient_encryption_policy_exception() | 
    unsupported_operation_exception().

-type update_trail_errors() ::
    invalid_sns_topic_name_exception() | 
    cloud_trail_arn_invalid_exception() | 
    cloud_trail_access_not_enabled_exception() | 
    invalid_kms_key_id_exception() | 
    throttling_exception() | 
    kms_exception() | 
    kms_key_disabled_exception() | 
    invalid_parameter_exception() | 
    cloud_trail_invalid_client_token_id_exception() | 
    invalid_cloud_watch_logs_log_group_arn_exception() | 
    insufficient_s3_bucket_policy_exception() | 
    invalid_trail_name_exception() | 
    not_organization_master_account_exception() | 
    operation_not_permitted_exception() | 
    organizations_not_in_use_exception() | 
    trail_not_found_exception() | 
    invalid_cloud_watch_logs_role_arn_exception() | 
    insufficient_dependency_service_access_permission_exception() | 
    organization_not_in_all_features_mode_exception() | 
    conflict_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_event_selectors_exception() | 
    no_management_account_s_l_r_exists_exception() | 
    invalid_s3_prefix_exception() | 
    insufficient_sns_topic_policy_exception() | 
    invalid_home_region_exception() | 
    invalid_s3_bucket_name_exception() | 
    s3_bucket_does_not_exist_exception() | 
    kms_key_not_found_exception() | 
    insufficient_encryption_policy_exception() | 
    cloud_watch_logs_delivery_unavailable_exception() | 
    unsupported_operation_exception() | 
    trail_not_provided_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to a trail, event data store, dashboard, or
%% channel, up to a limit of 50.
%%
%% Overwrites an
%% existing tag's value when a new value is specified for an existing tag
%% key. Tag key names
%% must be unique; you cannot have two keys with the same name but different
%% values. If you specify a key without a value, the tag will be created with
%% the specified
%% key and a value of null. You can tag a trail or event data store that
%% applies to all
%% Amazon Web Services Regions only from the Region in which the trail or
%% event data store
%% was created (also known as its home Region).
-spec add_tags(aws_client:aws_client(), add_tags_request()) ->
    {ok, add_tags_response(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).

-spec add_tags(aws_client:aws_client(), add_tags_request(), proplists:proplist()) ->
    {ok, add_tags_response(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Cancels a query if the query is not in a terminated state, such as
%% `CANCELLED', `FAILED', `TIMED_OUT', or
%% `FINISHED'.
%%
%% You must specify an ARN value for `EventDataStore'.
%% The ID of the query that you want to cancel is also required. When you run
%% `CancelQuery', the query status might show as `CANCELLED' even if
%% the operation is not yet finished.
-spec cancel_query(aws_client:aws_client(), cancel_query_request()) ->
    {ok, cancel_query_response(), tuple()} |
    {error, any()} |
    {error, cancel_query_errors(), tuple()}.
cancel_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_query(Client, Input, []).

-spec cancel_query(aws_client:aws_client(), cancel_query_request(), proplists:proplist()) ->
    {ok, cancel_query_response(), tuple()} |
    {error, any()} |
    {error, cancel_query_errors(), tuple()}.
cancel_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelQuery">>, Input, Options).

%% @doc Creates a channel for CloudTrail to ingest events from a partner or
%% external source.
%%
%% After you create a channel, a CloudTrail Lake event data store can log
%% events
%% from the partner or source that you specify.
-spec create_channel(aws_client:aws_client(), create_channel_request()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_channel(Client, Input, []).

-spec create_channel(aws_client:aws_client(), create_channel_request(), proplists:proplist()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateChannel">>, Input, Options).

%% @doc
%% Creates a custom dashboard or the Highlights dashboard.
%%
%% Custom dashboards - Custom dashboards allow you to query
%% events in any event data store type. You can add up to 10 widgets to a
%% custom dashboard. You can manually refresh a custom dashboard, or you can
%% set a refresh schedule.
%%
%% Highlights dashboard - You can create
%% the Highlights dashboard to see a summary of key user activities and API
%% usage across all your event data stores.
%% CloudTrail Lake manages the Highlights dashboard and refreshes the
%% dashboard every 6 hours. To create the Highlights dashboard, you must set
%% and enable a refresh schedule.
%%
%% CloudTrail runs queries to populate the dashboard's widgets during a
%% manual or scheduled refresh. CloudTrail must be granted permissions to run
%% the `StartQuery' operation on your behalf. To provide permissions, run
%% the `PutResourcePolicy' operation to attach a resource-based policy to
%% each event data store. For more information,
%% see Example: Allow CloudTrail to run queries to populate a dashboard:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard
%% in the CloudTrail User Guide.
%%
%% To set a refresh schedule, CloudTrail must be granted permissions to run
%% the `StartDashboardRefresh' operation to refresh the dashboard on your
%% behalf. To provide permissions, run the `PutResourcePolicy' operation
%% to attach a resource-based policy to the dashboard. For more information,
%% see
%% Resource-based policy example for a dashboard:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards
%% in the CloudTrail User Guide.
%%
%% For more information about dashboards, see CloudTrail Lake dashboards:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-dashboard.html
%% in the CloudTrail User Guide.
-spec create_dashboard(aws_client:aws_client(), create_dashboard_request()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dashboard(Client, Input, []).

-spec create_dashboard(aws_client:aws_client(), create_dashboard_request(), proplists:proplist()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDashboard">>, Input, Options).

%% @doc Creates a new event data store.
-spec create_event_data_store(aws_client:aws_client(), create_event_data_store_request()) ->
    {ok, create_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, create_event_data_store_errors(), tuple()}.
create_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_data_store(Client, Input, []).

-spec create_event_data_store(aws_client:aws_client(), create_event_data_store_request(), proplists:proplist()) ->
    {ok, create_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, create_event_data_store_errors(), tuple()}.
create_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventDataStore">>, Input, Options).

%% @doc Creates a trail that specifies the settings for delivery of log data
%% to an Amazon S3 bucket.
-spec create_trail(aws_client:aws_client(), create_trail_request()) ->
    {ok, create_trail_response(), tuple()} |
    {error, any()} |
    {error, create_trail_errors(), tuple()}.
create_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trail(Client, Input, []).

-spec create_trail(aws_client:aws_client(), create_trail_request(), proplists:proplist()) ->
    {ok, create_trail_response(), tuple()} |
    {error, any()} |
    {error, create_trail_errors(), tuple()}.
create_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrail">>, Input, Options).

%% @doc Deletes a channel.
-spec delete_channel(aws_client:aws_client(), delete_channel_request()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_channel(Client, Input, []).

-spec delete_channel(aws_client:aws_client(), delete_channel_request(), proplists:proplist()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteChannel">>, Input, Options).

%% @doc
%% Deletes the specified dashboard.
%%
%% You cannot delete a dashboard that has termination protection enabled.
-spec delete_dashboard(aws_client:aws_client(), delete_dashboard_request()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dashboard(Client, Input, []).

-spec delete_dashboard(aws_client:aws_client(), delete_dashboard_request(), proplists:proplist()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDashboard">>, Input, Options).

%% @doc Disables the event data store specified by `EventDataStore',
%% which accepts an
%% event data store ARN.
%%
%% After you run `DeleteEventDataStore', the event data store
%% enters a `PENDING_DELETION' state, and is automatically deleted after
%% a wait
%% period of seven days. `TerminationProtectionEnabled' must be set to
%% `False' on the event data store and the `FederationStatus' must be
%% `DISABLED'.
%% You cannot delete an event data store if
%% `TerminationProtectionEnabled'
%% is `True' or the `FederationStatus' is `ENABLED'.
%%
%% After you run `DeleteEventDataStore' on an event data store, you
%% cannot run
%% `ListQueries', `DescribeQuery', or `GetQueryResults' on
%% queries that are using an event data store in a `PENDING_DELETION'
%% state. An
%% event data store in the `PENDING_DELETION' state does not incur costs.
-spec delete_event_data_store(aws_client:aws_client(), delete_event_data_store_request()) ->
    {ok, delete_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, delete_event_data_store_errors(), tuple()}.
delete_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_data_store(Client, Input, []).

-spec delete_event_data_store(aws_client:aws_client(), delete_event_data_store_request(), proplists:proplist()) ->
    {ok, delete_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, delete_event_data_store_errors(), tuple()}.
delete_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventDataStore">>, Input, Options).

%% @doc
%% Deletes the resource-based policy attached to the CloudTrail event data
%% store, dashboard, or channel.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a trail.
%%
%% This operation must be called from the Region in which the trail was
%% created. `DeleteTrail' cannot be called on the shadow trails
%% (replicated trails
%% in other Regions) of a trail that is enabled in all Regions.
-spec delete_trail(aws_client:aws_client(), delete_trail_request()) ->
    {ok, delete_trail_response(), tuple()} |
    {error, any()} |
    {error, delete_trail_errors(), tuple()}.
delete_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trail(Client, Input, []).

-spec delete_trail(aws_client:aws_client(), delete_trail_request(), proplists:proplist()) ->
    {ok, delete_trail_response(), tuple()} |
    {error, any()} |
    {error, delete_trail_errors(), tuple()}.
delete_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrail">>, Input, Options).

%% @doc Removes CloudTrail delegated administrator permissions from a member
%% account in
%% an organization.
-spec deregister_organization_delegated_admin(aws_client:aws_client(), deregister_organization_delegated_admin_request()) ->
    {ok, deregister_organization_delegated_admin_response(), tuple()} |
    {error, any()} |
    {error, deregister_organization_delegated_admin_errors(), tuple()}.
deregister_organization_delegated_admin(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_organization_delegated_admin(Client, Input, []).

-spec deregister_organization_delegated_admin(aws_client:aws_client(), deregister_organization_delegated_admin_request(), proplists:proplist()) ->
    {ok, deregister_organization_delegated_admin_response(), tuple()} |
    {error, any()} |
    {error, deregister_organization_delegated_admin_errors(), tuple()}.
deregister_organization_delegated_admin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterOrganizationDelegatedAdmin">>, Input, Options).

%% @doc Returns metadata about a query, including query run time in
%% milliseconds, number of
%% events scanned and matched, and query status.
%%
%% If the query results were delivered to an S3 bucket,
%% the response also provides the S3 URI and the delivery status.
%%
%% You must specify either `QueryId' or `QueryAlias'. Specifying the
%% `QueryAlias' parameter
%% returns information about the last query run for the alias. You can
%% provide
%% `RefreshId' along with `QueryAlias' to view the query results
%% of a dashboard query for the specified `RefreshId'.
-spec describe_query(aws_client:aws_client(), describe_query_request()) ->
    {ok, describe_query_response(), tuple()} |
    {error, any()} |
    {error, describe_query_errors(), tuple()}.
describe_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query(Client, Input, []).

-spec describe_query(aws_client:aws_client(), describe_query_request(), proplists:proplist()) ->
    {ok, describe_query_response(), tuple()} |
    {error, any()} |
    {error, describe_query_errors(), tuple()}.
describe_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuery">>, Input, Options).

%% @doc Retrieves settings for one or more trails associated with the current
%% Region for your
%% account.
-spec describe_trails(aws_client:aws_client(), describe_trails_request()) ->
    {ok, describe_trails_response(), tuple()} |
    {error, any()} |
    {error, describe_trails_errors(), tuple()}.
describe_trails(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trails(Client, Input, []).

-spec describe_trails(aws_client:aws_client(), describe_trails_request(), proplists:proplist()) ->
    {ok, describe_trails_response(), tuple()} |
    {error, any()} |
    {error, describe_trails_errors(), tuple()}.
describe_trails(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrails">>, Input, Options).

%% @doc
%% Disables Lake query federation on the specified event data store.
%%
%% When you disable federation, CloudTrail disables
%% the integration with Glue, Lake Formation, and Amazon Athena.
%% After disabling Lake query federation, you can no longer query your event
%% data in Amazon Athena.
%%
%% No CloudTrail Lake data is deleted when you disable federation and you can
%% continue to run queries in CloudTrail Lake.
-spec disable_federation(aws_client:aws_client(), disable_federation_request()) ->
    {ok, disable_federation_response(), tuple()} |
    {error, any()} |
    {error, disable_federation_errors(), tuple()}.
disable_federation(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_federation(Client, Input, []).

-spec disable_federation(aws_client:aws_client(), disable_federation_request(), proplists:proplist()) ->
    {ok, disable_federation_response(), tuple()} |
    {error, any()} |
    {error, disable_federation_errors(), tuple()}.
disable_federation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableFederation">>, Input, Options).

%% @doc
%% Enables Lake query federation on the specified event data store.
%%
%% Federating an event data store lets you view the metadata associated with
%% the event data store in the Glue
%% Data Catalog:
%% https://docs.aws.amazon.com/glue/latest/dg/components-overview.html#data-catalog-intro
%% and run
%% SQL queries against your event data using Amazon Athena. The table
%% metadata stored in the Glue Data Catalog
%% lets the Athena query engine know how to find, read, and process the data
%% that you want to query.
%%
%% When you enable Lake query federation, CloudTrail
%% creates a managed database named `aws:cloudtrail' (if the database
%% doesn't already exist) and a managed federated table in
%% the Glue Data Catalog. The event data store ID is used for the table name.
%% CloudTrail registers the role ARN and event data store in
%% Lake Formation:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation-lake-formation.html,
%% the service responsible for allowing fine-grained access control
%% of the federated resources in the Glue Data Catalog.
%%
%% For more information about Lake query federation, see Federate an event
%% data store:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html.
-spec enable_federation(aws_client:aws_client(), enable_federation_request()) ->
    {ok, enable_federation_response(), tuple()} |
    {error, any()} |
    {error, enable_federation_errors(), tuple()}.
enable_federation(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_federation(Client, Input, []).

-spec enable_federation(aws_client:aws_client(), enable_federation_request(), proplists:proplist()) ->
    {ok, enable_federation_response(), tuple()} |
    {error, any()} |
    {error, enable_federation_errors(), tuple()}.
enable_federation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableFederation">>, Input, Options).

%% @doc
%% Generates a query from a natural language prompt.
%%
%% This operation uses generative artificial intelligence
%% (generative AI) to produce a ready-to-use SQL query from the prompt.
%%
%% The prompt can be a question or a statement about the event data
%% in your event data store. For example, you can enter prompts like
%% &quot;What are my
%% top errors in the past month?&quot; and “Give me a list of users that used
%% SNS.”
%%
%% The prompt must be in English. For information about limitations,
%% permissions, and supported Regions, see
%% Create CloudTrail Lake queries from natural language prompts:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html
%% in the CloudTrail user guide.
%%
%% Do not include any personally identifying, confidential, or sensitive
%% information
%% in your prompts.
%%
%% This feature uses generative AI large language models (LLMs); we recommend
%% double-checking the
%% LLM response.
-spec generate_query(aws_client:aws_client(), generate_query_request()) ->
    {ok, generate_query_response(), tuple()} |
    {error, any()} |
    {error, generate_query_errors(), tuple()}.
generate_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_query(Client, Input, []).

-spec generate_query(aws_client:aws_client(), generate_query_request(), proplists:proplist()) ->
    {ok, generate_query_response(), tuple()} |
    {error, any()} |
    {error, generate_query_errors(), tuple()}.
generate_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateQuery">>, Input, Options).

%% @doc Returns information about a specific channel.
-spec get_channel(aws_client:aws_client(), get_channel_request()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_channel(Client, Input, []).

-spec get_channel(aws_client:aws_client(), get_channel_request(), proplists:proplist()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChannel">>, Input, Options).

%% @doc
%% Returns the specified dashboard.
-spec get_dashboard(aws_client:aws_client(), get_dashboard_request()) ->
    {ok, get_dashboard_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_errors(), tuple()}.
get_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dashboard(Client, Input, []).

-spec get_dashboard(aws_client:aws_client(), get_dashboard_request(), proplists:proplist()) ->
    {ok, get_dashboard_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_errors(), tuple()}.
get_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDashboard">>, Input, Options).

%% @doc Returns information about an event data store specified as either an
%% ARN or the ID
%% portion of the ARN.
-spec get_event_data_store(aws_client:aws_client(), get_event_data_store_request()) ->
    {ok, get_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, get_event_data_store_errors(), tuple()}.
get_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_data_store(Client, Input, []).

-spec get_event_data_store(aws_client:aws_client(), get_event_data_store_request(), proplists:proplist()) ->
    {ok, get_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, get_event_data_store_errors(), tuple()}.
get_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventDataStore">>, Input, Options).

%% @doc Describes the settings for the event selectors that you configured
%% for your trail.
%%
%% The
%% information returned for your event selectors includes the following:
%%
%% If your event selector includes read-only events, write-only events, or
%% all
%% events. This applies to management events, data events, and network
%% activity events.
%%
%% If your event selector includes management events.
%%
%% If your event selector includes network activity events, the event sources
%% for which you are logging network activity events.
%%
%% If your event selector includes data events, the resources on which you
%% are
%% logging data events.
%%
%% For more information about logging management, data, and network activity
%% events, see the following topics
%% in the CloudTrail User Guide:
%%
%% Logging management events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html
%%
%% Logging data events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
%%
%% Logging network activity events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html
-spec get_event_selectors(aws_client:aws_client(), get_event_selectors_request()) ->
    {ok, get_event_selectors_response(), tuple()} |
    {error, any()} |
    {error, get_event_selectors_errors(), tuple()}.
get_event_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_selectors(Client, Input, []).

-spec get_event_selectors(aws_client:aws_client(), get_event_selectors_request(), proplists:proplist()) ->
    {ok, get_event_selectors_response(), tuple()} |
    {error, any()} |
    {error, get_event_selectors_errors(), tuple()}.
get_event_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventSelectors">>, Input, Options).

%% @doc Returns information about a specific import.
-spec get_import(aws_client:aws_client(), get_import_request()) ->
    {ok, get_import_response(), tuple()} |
    {error, any()} |
    {error, get_import_errors(), tuple()}.
get_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_import(Client, Input, []).

-spec get_import(aws_client:aws_client(), get_import_request(), proplists:proplist()) ->
    {ok, get_import_response(), tuple()} |
    {error, any()} |
    {error, get_import_errors(), tuple()}.
get_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetImport">>, Input, Options).

%% @doc Describes the settings for the Insights event selectors that you
%% configured for your
%% trail or event data store.
%%
%% `GetInsightSelectors' shows if CloudTrail Insights event logging
%% is enabled on the trail or event data store, and if it is, which Insights
%% types are enabled. If you run
%% `GetInsightSelectors' on a trail or event data store that does not
%% have Insights events enabled,
%% the operation throws the exception `InsightNotEnabledException'
%%
%% Specify either the `EventDataStore' parameter to get Insights event
%% selectors for an event data store,
%% or the `TrailName' parameter to the get Insights event selectors for a
%% trail. You cannot specify these parameters together.
%%
%% For more information, see Working with CloudTrail Insights:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
%% in the CloudTrail User Guide.
-spec get_insight_selectors(aws_client:aws_client(), get_insight_selectors_request()) ->
    {ok, get_insight_selectors_response(), tuple()} |
    {error, any()} |
    {error, get_insight_selectors_errors(), tuple()}.
get_insight_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_insight_selectors(Client, Input, []).

-spec get_insight_selectors(aws_client:aws_client(), get_insight_selectors_request(), proplists:proplist()) ->
    {ok, get_insight_selectors_response(), tuple()} |
    {error, any()} |
    {error, get_insight_selectors_errors(), tuple()}.
get_insight_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInsightSelectors">>, Input, Options).

%% @doc Gets event data results of a query.
%%
%% You must specify the `QueryID' value
%% returned by the `StartQuery' operation.
-spec get_query_results(aws_client:aws_client(), get_query_results_request()) ->
    {ok, get_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_results(Client, Input, []).

-spec get_query_results(aws_client:aws_client(), get_query_results_request(), proplists:proplist()) ->
    {ok, get_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryResults">>, Input, Options).

%% @doc
%% Retrieves the JSON text of the resource-based policy document attached to
%% the CloudTrail event data store, dashboard, or channel.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Returns settings information for a specified trail.
-spec get_trail(aws_client:aws_client(), get_trail_request()) ->
    {ok, get_trail_response(), tuple()} |
    {error, any()} |
    {error, get_trail_errors(), tuple()}.
get_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trail(Client, Input, []).

-spec get_trail(aws_client:aws_client(), get_trail_request(), proplists:proplist()) ->
    {ok, get_trail_response(), tuple()} |
    {error, any()} |
    {error, get_trail_errors(), tuple()}.
get_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrail">>, Input, Options).

%% @doc Returns a JSON-formatted list of information about the specified
%% trail.
%%
%% Fields include
%% information on delivery errors, Amazon SNS and Amazon S3 errors, and start
%% and stop logging times for each trail. This operation returns trail status
%% from a single
%% Region. To return trail status from all Regions, you must call the
%% operation on each
%% Region.
-spec get_trail_status(aws_client:aws_client(), get_trail_status_request()) ->
    {ok, get_trail_status_response(), tuple()} |
    {error, any()} |
    {error, get_trail_status_errors(), tuple()}.
get_trail_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trail_status(Client, Input, []).

-spec get_trail_status(aws_client:aws_client(), get_trail_status_request(), proplists:proplist()) ->
    {ok, get_trail_status_response(), tuple()} |
    {error, any()} |
    {error, get_trail_status_errors(), tuple()}.
get_trail_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrailStatus">>, Input, Options).

%% @doc Lists the channels in the current account, and their source names.
-spec list_channels(aws_client:aws_client(), list_channels_request()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_channels(Client, Input, []).

-spec list_channels(aws_client:aws_client(), list_channels_request(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChannels">>, Input, Options).

%% @doc
%% Returns information about all dashboards in the account, in the current
%% Region.
-spec list_dashboards(aws_client:aws_client(), list_dashboards_request()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dashboards(Client, Input, []).

-spec list_dashboards(aws_client:aws_client(), list_dashboards_request(), proplists:proplist()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDashboards">>, Input, Options).

%% @doc Returns information about all event data stores in the account, in
%% the current
%% Region.
-spec list_event_data_stores(aws_client:aws_client(), list_event_data_stores_request()) ->
    {ok, list_event_data_stores_response(), tuple()} |
    {error, any()} |
    {error, list_event_data_stores_errors(), tuple()}.
list_event_data_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_data_stores(Client, Input, []).

-spec list_event_data_stores(aws_client:aws_client(), list_event_data_stores_request(), proplists:proplist()) ->
    {ok, list_event_data_stores_response(), tuple()} |
    {error, any()} |
    {error, list_event_data_stores_errors(), tuple()}.
list_event_data_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventDataStores">>, Input, Options).

%% @doc Returns a list of failures for the specified import.
-spec list_import_failures(aws_client:aws_client(), list_import_failures_request()) ->
    {ok, list_import_failures_response(), tuple()} |
    {error, any()} |
    {error, list_import_failures_errors(), tuple()}.
list_import_failures(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_import_failures(Client, Input, []).

-spec list_import_failures(aws_client:aws_client(), list_import_failures_request(), proplists:proplist()) ->
    {ok, list_import_failures_response(), tuple()} |
    {error, any()} |
    {error, list_import_failures_errors(), tuple()}.
list_import_failures(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImportFailures">>, Input, Options).

%% @doc Returns information on all imports, or a select set of imports by
%% `ImportStatus' or `Destination'.
-spec list_imports(aws_client:aws_client(), list_imports_request()) ->
    {ok, list_imports_response(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_imports(Client, Input, []).

-spec list_imports(aws_client:aws_client(), list_imports_request(), proplists:proplist()) ->
    {ok, list_imports_response(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImports">>, Input, Options).

%% @doc Returns Insights metrics data for trails that have enabled Insights.
%%
%% The request must include the `EventSource',
%% `EventName', and `InsightType' parameters.
%%
%% If the `InsightType' is set to `ApiErrorRateInsight', the request
%% must also include the `ErrorCode' parameter.
%%
%% The following are the available time periods for
%% `ListInsightsMetricData'. Each cutoff is inclusive.
%%
%% Data points with a period of 60 seconds (1-minute) are available for 15
%% days.
%%
%% Data points with a period of 300 seconds (5-minute) are available for 63
%% days.
%%
%% Data points with a period of 3600 seconds (1 hour) are available for 90
%% days.
%%
%% Access to the `ListInsightsMetricData' API operation is linked to the
%% `cloudtrail:LookupEvents' action. To use this operation,
%% you must have permissions to perform the `cloudtrail:LookupEvents'
%% action.
-spec list_insights_metric_data(aws_client:aws_client(), list_insights_metric_data_request()) ->
    {ok, list_insights_metric_data_response(), tuple()} |
    {error, any()} |
    {error, list_insights_metric_data_errors(), tuple()}.
list_insights_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_insights_metric_data(Client, Input, []).

-spec list_insights_metric_data(aws_client:aws_client(), list_insights_metric_data_request(), proplists:proplist()) ->
    {ok, list_insights_metric_data_response(), tuple()} |
    {error, any()} |
    {error, list_insights_metric_data_errors(), tuple()}.
list_insights_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInsightsMetricData">>, Input, Options).

%% @doc Returns all public keys whose private keys were used to sign the
%% digest files within the
%% specified time range.
%%
%% The public key is needed to validate digest files that were signed
%% with its corresponding private key.
%%
%% CloudTrail uses different private and public key pairs per Region. Each
%% digest
%% file is signed with a private key unique to its Region. When you validate
%% a digest file
%% from a specific Region, you must look in the same Region for its
%% corresponding public
%% key.
-spec list_public_keys(aws_client:aws_client(), list_public_keys_request()) ->
    {ok, list_public_keys_response(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_public_keys(Client, Input, []).

-spec list_public_keys(aws_client:aws_client(), list_public_keys_request(), proplists:proplist()) ->
    {ok, list_public_keys_response(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPublicKeys">>, Input, Options).

%% @doc Returns a list of queries and query statuses for the past seven days.
%%
%% You must specify
%% an ARN value for `EventDataStore'. Optionally, to shorten the list of
%% results,
%% you can specify a time range, formatted as timestamps, by adding
%% `StartTime' and
%% `EndTime' parameters, and a `QueryStatus' value. Valid values for
%% `QueryStatus' include `QUEUED', `RUNNING',
%% `FINISHED', `FAILED', `TIMED_OUT', or
%% `CANCELLED'.
-spec list_queries(aws_client:aws_client(), list_queries_request()) ->
    {ok, list_queries_response(), tuple()} |
    {error, any()} |
    {error, list_queries_errors(), tuple()}.
list_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queries(Client, Input, []).

-spec list_queries(aws_client:aws_client(), list_queries_request(), proplists:proplist()) ->
    {ok, list_queries_response(), tuple()} |
    {error, any()} |
    {error, list_queries_errors(), tuple()}.
list_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueries">>, Input, Options).

%% @doc Lists the tags for the specified trails, event data stores,
%% dashboards, or channels in the current Region.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Lists trails that are in the current account.
-spec list_trails(aws_client:aws_client(), list_trails_request()) ->
    {ok, list_trails_response(), tuple()} |
    {error, any()} |
    {error, list_trails_errors(), tuple()}.
list_trails(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trails(Client, Input, []).

-spec list_trails(aws_client:aws_client(), list_trails_request(), proplists:proplist()) ->
    {ok, list_trails_response(), tuple()} |
    {error, any()} |
    {error, list_trails_errors(), tuple()}.
list_trails(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrails">>, Input, Options).

%% @doc Looks up management events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events
%% or CloudTrail Insights events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events
%% that are captured by CloudTrail.
%%
%% You can look up events that occurred in a Region within the last 90 days.
%%
%% `LookupEvents' returns recent Insights events for trails that enable
%% Insights. To view Insights events for an event data store, you can run
%% queries on your
%% Insights event data store, and you can also view the Lake dashboard for
%% Insights.
%%
%% Lookup supports the following attributes for management events:
%%
%% Amazon Web Services access key
%%
%% Event ID
%%
%% Event name
%%
%% Event source
%%
%% Read only
%%
%% Resource name
%%
%% Resource type
%%
%% User name
%%
%% Lookup supports the following attributes for Insights events:
%%
%% Event ID
%%
%% Event name
%%
%% Event source
%%
%% All attributes are optional. The default number of results returned is 50,
%% with a
%% maximum of 50 possible. The response includes a token that you can use to
%% get the next page
%% of results.
%%
%% The rate of lookup requests is limited to two per second, per account, per
%% Region. If
%% this limit is exceeded, a throttling error occurs.
-spec lookup_events(aws_client:aws_client(), lookup_events_request()) ->
    {ok, lookup_events_response(), tuple()} |
    {error, any()} |
    {error, lookup_events_errors(), tuple()}.
lookup_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    lookup_events(Client, Input, []).

-spec lookup_events(aws_client:aws_client(), lookup_events_request(), proplists:proplist()) ->
    {ok, lookup_events_response(), tuple()} |
    {error, any()} |
    {error, lookup_events_errors(), tuple()}.
lookup_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LookupEvents">>, Input, Options).

%% @doc Configures event selectors (also referred to as basic event
%% selectors) or advanced event selectors for your trail.
%%
%% You can use
%% either `AdvancedEventSelectors' or `EventSelectors', but not both.
%% If
%% you apply `AdvancedEventSelectors' to a trail, any existing
%% `EventSelectors' are overwritten.
%%
%% You can use `AdvancedEventSelectors' to
%% log management events, data events for all resource types, and network
%% activity events.
%%
%% You can use `EventSelectors' to log management events and data events
%% for the following resource types:
%%
%% `AWS::DynamoDB::Table'
%%
%% `AWS::Lambda::Function'
%%
%% `AWS::S3::Object'
%%
%% You can't use `EventSelectors' to log network activity events.
%%
%% If you want your trail to log Insights events, be sure the event selector
%% or advanced event selector enables
%% logging of the Insights event types you want configured for your trail.
%% For more information about logging Insights events, see Working with
%% CloudTrail Insights:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
%% in the CloudTrail User Guide.
%% By default, trails created without specific event selectors are configured
%% to
%% log all read and write management events, and no data events or network
%% activity events.
%%
%% When an event occurs in your account, CloudTrail evaluates the event
%% selectors or
%% advanced event selectors in all trails. For each trail, if the event
%% matches any event
%% selector, the trail processes and logs the event. If the event doesn't
%% match any event
%% selector, the trail doesn't log the event.
%%
%% Example
%%
%% You create an event selector for a trail and specify that you want to log
%% write-only
%% events.
%%
%% The EC2 `GetConsoleOutput' and `RunInstances' API operations
%% occur in your account.
%%
%% CloudTrail evaluates whether the events match your event selectors.
%%
%% The `RunInstances' is a write-only event and it matches your event
%% selector. The trail logs the event.
%%
%% The `GetConsoleOutput' is a read-only event that doesn't match
%% your
%% event selector. The trail doesn't log the event.
%%
%% The `PutEventSelectors' operation must be called from the Region in
%% which the
%% trail was created; otherwise, an `InvalidHomeRegionException'
%% exception is
%% thrown.
%%
%% You can configure up to five event selectors for each trail.
%%
%% You can add advanced event selectors, and conditions for your advanced
%% event selectors,
%% up to a maximum of 500 values for all conditions and selectors on a trail.
%% For more information, see
%% Logging management events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html,
%% Logging
%% data events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html,
%% Logging
%% network activity events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html,
%% and Quotas in CloudTrail:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html
%% in the CloudTrail User
%% Guide.
-spec put_event_selectors(aws_client:aws_client(), put_event_selectors_request()) ->
    {ok, put_event_selectors_response(), tuple()} |
    {error, any()} |
    {error, put_event_selectors_errors(), tuple()}.
put_event_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_event_selectors(Client, Input, []).

-spec put_event_selectors(aws_client:aws_client(), put_event_selectors_request(), proplists:proplist()) ->
    {ok, put_event_selectors_response(), tuple()} |
    {error, any()} |
    {error, put_event_selectors_errors(), tuple()}.
put_event_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEventSelectors">>, Input, Options).

%% @doc Lets you enable Insights event logging by specifying the Insights
%% selectors that you
%% want to enable on an existing trail or event data store.
%%
%% You also use `PutInsightSelectors' to turn
%% off Insights event logging, by passing an empty list of Insights types.
%% The valid Insights
%% event types are `ApiErrorRateInsight' and
%% `ApiCallRateInsight'.
%%
%% To enable Insights on an event data store, you must specify the ARNs (or
%% ID suffix of the ARNs) for the source event data store
%% (`EventDataStore') and the destination event data store
%% (`InsightsDestination'). The source event data store logs management
%% events and enables Insights.
%% The destination event data store logs Insights events based upon the
%% management event activity of the source event data store. The source and
%% destination event data stores must belong to the same Amazon Web Services
%% account.
%%
%% To log Insights events for a trail, you must specify the name
%% (`TrailName') of the CloudTrail trail for which you want to change or
%% add Insights
%% selectors.
%%
%% To log CloudTrail Insights events on API call volume, the trail or event
%% data store
%% must log `write' management events. To log CloudTrail
%% Insights events on API error rate, the trail or event data store must log
%% `read' or
%% `write' management events. You can call `GetEventSelectors' on a
%% trail
%% to check whether the trail logs management events. You can call
%% `GetEventDataStore' on an
%% event data store to check whether the event data store logs management
%% events.
%%
%% For more information, see Working with CloudTrail Insights:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
%% in the CloudTrail User Guide.
-spec put_insight_selectors(aws_client:aws_client(), put_insight_selectors_request()) ->
    {ok, put_insight_selectors_response(), tuple()} |
    {error, any()} |
    {error, put_insight_selectors_errors(), tuple()}.
put_insight_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_insight_selectors(Client, Input, []).

-spec put_insight_selectors(aws_client:aws_client(), put_insight_selectors_request(), proplists:proplist()) ->
    {ok, put_insight_selectors_response(), tuple()} |
    {error, any()} |
    {error, put_insight_selectors_errors(), tuple()}.
put_insight_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInsightSelectors">>, Input, Options).

%% @doc
%% Attaches a resource-based permission policy to a CloudTrail event data
%% store, dashboard, or channel.
%%
%% For more information about resource-based policies, see
%% CloudTrail resource-based policy examples:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html
%% in the CloudTrail User Guide.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Registers an organization’s member account as the CloudTrail
%% delegated administrator:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-delegated-administrator.html.
-spec register_organization_delegated_admin(aws_client:aws_client(), register_organization_delegated_admin_request()) ->
    {ok, register_organization_delegated_admin_response(), tuple()} |
    {error, any()} |
    {error, register_organization_delegated_admin_errors(), tuple()}.
register_organization_delegated_admin(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_organization_delegated_admin(Client, Input, []).

-spec register_organization_delegated_admin(aws_client:aws_client(), register_organization_delegated_admin_request(), proplists:proplist()) ->
    {ok, register_organization_delegated_admin_response(), tuple()} |
    {error, any()} |
    {error, register_organization_delegated_admin_errors(), tuple()}.
register_organization_delegated_admin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterOrganizationDelegatedAdmin">>, Input, Options).

%% @doc Removes the specified tags from a trail, event data store, dashboard,
%% or channel.
-spec remove_tags(aws_client:aws_client(), remove_tags_request()) ->
    {ok, remove_tags_response(), tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).

-spec remove_tags(aws_client:aws_client(), remove_tags_request(), proplists:proplist()) ->
    {ok, remove_tags_response(), tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Restores a deleted event data store specified by
%% `EventDataStore', which
%% accepts an event data store ARN.
%%
%% You can only restore a deleted event data store within the
%% seven-day wait period after deletion. Restoring an event data store can
%% take several
%% minutes, depending on the size of the event data store.
-spec restore_event_data_store(aws_client:aws_client(), restore_event_data_store_request()) ->
    {ok, restore_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, restore_event_data_store_errors(), tuple()}.
restore_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_event_data_store(Client, Input, []).

-spec restore_event_data_store(aws_client:aws_client(), restore_event_data_store_request(), proplists:proplist()) ->
    {ok, restore_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, restore_event_data_store_errors(), tuple()}.
restore_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreEventDataStore">>, Input, Options).

%% @doc
%% Searches sample queries and returns a list of sample queries that are
%% sorted by relevance.
%%
%% To search for sample queries, provide a natural language
%% `SearchPhrase' in English.
-spec search_sample_queries(aws_client:aws_client(), search_sample_queries_request()) ->
    {ok, search_sample_queries_response(), tuple()} |
    {error, any()} |
    {error, search_sample_queries_errors(), tuple()}.
search_sample_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_sample_queries(Client, Input, []).

-spec search_sample_queries(aws_client:aws_client(), search_sample_queries_request(), proplists:proplist()) ->
    {ok, search_sample_queries_response(), tuple()} |
    {error, any()} |
    {error, search_sample_queries_errors(), tuple()}.
search_sample_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSampleQueries">>, Input, Options).

%% @doc
%% Starts a refresh of the specified dashboard.
%%
%% Each time a dashboard is refreshed, CloudTrail runs queries to populate
%% the dashboard's widgets. CloudTrail must be granted permissions to run
%% the `StartQuery' operation on your behalf. To provide permissions, run
%% the `PutResourcePolicy' operation to attach a resource-based policy to
%% each event data store. For more information,
%% see Example: Allow CloudTrail to run queries to populate a dashboard:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard
%% in the CloudTrail User Guide.
-spec start_dashboard_refresh(aws_client:aws_client(), start_dashboard_refresh_request()) ->
    {ok, start_dashboard_refresh_response(), tuple()} |
    {error, any()} |
    {error, start_dashboard_refresh_errors(), tuple()}.
start_dashboard_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_dashboard_refresh(Client, Input, []).

-spec start_dashboard_refresh(aws_client:aws_client(), start_dashboard_refresh_request(), proplists:proplist()) ->
    {ok, start_dashboard_refresh_response(), tuple()} |
    {error, any()} |
    {error, start_dashboard_refresh_errors(), tuple()}.
start_dashboard_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDashboardRefresh">>, Input, Options).

%% @doc Starts the ingestion of live events on an event data store specified
%% as either an ARN or the ID portion of the ARN.
%%
%% To start ingestion, the event data store `Status' must be
%% `STOPPED_INGESTION'
%% and the `eventCategory' must be `Management', `Data',
%% `NetworkActivity', or `ConfigurationItem'.
-spec start_event_data_store_ingestion(aws_client:aws_client(), start_event_data_store_ingestion_request()) ->
    {ok, start_event_data_store_ingestion_response(), tuple()} |
    {error, any()} |
    {error, start_event_data_store_ingestion_errors(), tuple()}.
start_event_data_store_ingestion(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_event_data_store_ingestion(Client, Input, []).

-spec start_event_data_store_ingestion(aws_client:aws_client(), start_event_data_store_ingestion_request(), proplists:proplist()) ->
    {ok, start_event_data_store_ingestion_response(), tuple()} |
    {error, any()} |
    {error, start_event_data_store_ingestion_errors(), tuple()}.
start_event_data_store_ingestion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEventDataStoreIngestion">>, Input, Options).

%% @doc Starts an import of logged trail events from a source S3 bucket to a
%% destination event
%% data store.
%%
%% By default, CloudTrail only imports events contained in the S3
%% bucket's
%% `CloudTrail' prefix and the prefixes inside the `CloudTrail'
%% prefix, and does not check prefixes for other Amazon Web Services
%% services. If you want to import CloudTrail events contained in another
%% prefix, you
%% must include the prefix in the `S3LocationUri'. For more
%% considerations about
%% importing trail events, see Considerations for copying trail events:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations
%% in the CloudTrail User Guide.
%%
%% When you start a new import, the `Destinations' and
%% `ImportSource' parameters are required. Before starting a new import,
%% disable
%% any access control lists (ACLs) attached to the source S3 bucket. For more
%% information
%% about disabling ACLs, see Controlling ownership of
%% objects and disabling ACLs for your bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html.
%%
%% When you retry an import, the `ImportID' parameter is required.
%%
%% If the destination event data store is for an organization, you must use
%% the
%% management account to import trail events. You cannot use the delegated
%% administrator
%% account for the organization.
-spec start_import(aws_client:aws_client(), start_import_request()) ->
    {ok, start_import_response(), tuple()} |
    {error, any()} |
    {error, start_import_errors(), tuple()}.
start_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_import(Client, Input, []).

-spec start_import(aws_client:aws_client(), start_import_request(), proplists:proplist()) ->
    {ok, start_import_response(), tuple()} |
    {error, any()} |
    {error, start_import_errors(), tuple()}.
start_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImport">>, Input, Options).

%% @doc Starts the recording of Amazon Web Services API calls and log file
%% delivery for a trail.
%%
%% For a trail that is enabled in all Regions, this operation must be called
%% from the Region
%% in which the trail was created. This operation cannot be called on the
%% shadow trails
%% (replicated trails in other Regions) of a trail that is enabled in all
%% Regions.
-spec start_logging(aws_client:aws_client(), start_logging_request()) ->
    {ok, start_logging_response(), tuple()} |
    {error, any()} |
    {error, start_logging_errors(), tuple()}.
start_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_logging(Client, Input, []).

-spec start_logging(aws_client:aws_client(), start_logging_request(), proplists:proplist()) ->
    {ok, start_logging_response(), tuple()} |
    {error, any()} |
    {error, start_logging_errors(), tuple()}.
start_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLogging">>, Input, Options).

%% @doc Starts a CloudTrail Lake query.
%%
%% Use the `QueryStatement'
%% parameter to provide your SQL query, enclosed in single quotation marks.
%% Use the optional
%% `DeliveryS3Uri' parameter to deliver the query results to an S3
%% bucket.
%%
%% `StartQuery' requires you specify either the `QueryStatement'
%% parameter, or a `QueryAlias' and any `QueryParameters'. In the
%% current release,
%% the `QueryAlias' and `QueryParameters' parameters are used only
%% for the queries that populate the CloudTrail Lake dashboards.
-spec start_query(aws_client:aws_client(), start_query_request()) ->
    {ok, start_query_response(), tuple()} |
    {error, any()} |
    {error, start_query_errors(), tuple()}.
start_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_query(Client, Input, []).

-spec start_query(aws_client:aws_client(), start_query_request(), proplists:proplist()) ->
    {ok, start_query_response(), tuple()} |
    {error, any()} |
    {error, start_query_errors(), tuple()}.
start_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartQuery">>, Input, Options).

%% @doc Stops the ingestion of live events on an event data store specified
%% as either an ARN or the ID portion of the ARN.
%%
%% To stop ingestion, the event data store `Status' must be `ENABLED'
%% and the `eventCategory' must be `Management', `Data',
%% `NetworkActivity', or `ConfigurationItem'.
-spec stop_event_data_store_ingestion(aws_client:aws_client(), stop_event_data_store_ingestion_request()) ->
    {ok, stop_event_data_store_ingestion_response(), tuple()} |
    {error, any()} |
    {error, stop_event_data_store_ingestion_errors(), tuple()}.
stop_event_data_store_ingestion(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_event_data_store_ingestion(Client, Input, []).

-spec stop_event_data_store_ingestion(aws_client:aws_client(), stop_event_data_store_ingestion_request(), proplists:proplist()) ->
    {ok, stop_event_data_store_ingestion_response(), tuple()} |
    {error, any()} |
    {error, stop_event_data_store_ingestion_errors(), tuple()}.
stop_event_data_store_ingestion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEventDataStoreIngestion">>, Input, Options).

%% @doc Stops a specified import.
-spec stop_import(aws_client:aws_client(), stop_import_request()) ->
    {ok, stop_import_response(), tuple()} |
    {error, any()} |
    {error, stop_import_errors(), tuple()}.
stop_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_import(Client, Input, []).

-spec stop_import(aws_client:aws_client(), stop_import_request(), proplists:proplist()) ->
    {ok, stop_import_response(), tuple()} |
    {error, any()} |
    {error, stop_import_errors(), tuple()}.
stop_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopImport">>, Input, Options).

%% @doc Suspends the recording of Amazon Web Services API calls and log file
%% delivery for the
%% specified trail.
%%
%% Under most circumstances, there is no need to use this action. You can
%% update a trail without stopping it first. This action is the only way to
%% stop recording.
%% For a trail enabled in all Regions, this operation must be called from the
%% Region in which
%% the trail was created, or an `InvalidHomeRegionException' will occur.
%% This
%% operation cannot be called on the shadow trails (replicated trails in
%% other Regions) of a
%% trail enabled in all Regions.
-spec stop_logging(aws_client:aws_client(), stop_logging_request()) ->
    {ok, stop_logging_response(), tuple()} |
    {error, any()} |
    {error, stop_logging_errors(), tuple()}.
stop_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_logging(Client, Input, []).

-spec stop_logging(aws_client:aws_client(), stop_logging_request(), proplists:proplist()) ->
    {ok, stop_logging_response(), tuple()} |
    {error, any()} |
    {error, stop_logging_errors(), tuple()}.
stop_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopLogging">>, Input, Options).

%% @doc Updates a channel specified by a required channel ARN or UUID.
-spec update_channel(aws_client:aws_client(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_channel(Client, Input, []).

-spec update_channel(aws_client:aws_client(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateChannel">>, Input, Options).

%% @doc
%% Updates the specified dashboard.
%%
%% To set a refresh schedule, CloudTrail must be granted permissions to run
%% the `StartDashboardRefresh' operation to refresh the dashboard on your
%% behalf. To provide permissions, run the `PutResourcePolicy' operation
%% to attach a resource-based policy to the dashboard. For more information,
%% see
%% Resource-based policy example for a dashboard:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards
%% in the CloudTrail User Guide.
%%
%% CloudTrail runs queries to populate the dashboard's widgets during a
%% manual or scheduled refresh. CloudTrail must be granted permissions to run
%% the `StartQuery' operation on your behalf. To provide permissions, run
%% the `PutResourcePolicy' operation to attach a resource-based policy to
%% each event data store. For more information,
%% see Example: Allow CloudTrail to run queries to populate a dashboard:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard
%% in the CloudTrail User Guide.
-spec update_dashboard(aws_client:aws_client(), update_dashboard_request()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dashboard(Client, Input, []).

-spec update_dashboard(aws_client:aws_client(), update_dashboard_request(), proplists:proplist()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDashboard">>, Input, Options).

%% @doc Updates an event data store.
%%
%% The required `EventDataStore' value is an ARN or
%% the ID portion of the ARN. Other parameters are optional, but at least one
%% optional
%% parameter must be specified, or CloudTrail throws an error.
%% `RetentionPeriod' is in days, and valid values are integers between 7
%% and
%% 3653 if the `BillingMode' is set to
%% `EXTENDABLE_RETENTION_PRICING', or between 7 and 2557 if
%% `BillingMode' is set to `FIXED_RETENTION_PRICING'. By default,
%% `TerminationProtection' is enabled.
%%
%% For event data stores for CloudTrail events, `AdvancedEventSelectors'
%% includes or excludes management, data, or network activity events in your
%% event data store. For more
%% information about `AdvancedEventSelectors', see
%% AdvancedEventSelectors:
%% https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html.
%%
%% For event data stores for CloudTrail Insights events, Config configuration
%% items, Audit Manager evidence, or non-Amazon Web Services events,
%% `AdvancedEventSelectors' includes events of that type in your event
%% data store.
-spec update_event_data_store(aws_client:aws_client(), update_event_data_store_request()) ->
    {ok, update_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, update_event_data_store_errors(), tuple()}.
update_event_data_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_data_store(Client, Input, []).

-spec update_event_data_store(aws_client:aws_client(), update_event_data_store_request(), proplists:proplist()) ->
    {ok, update_event_data_store_response(), tuple()} |
    {error, any()} |
    {error, update_event_data_store_errors(), tuple()}.
update_event_data_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventDataStore">>, Input, Options).

%% @doc Updates trail settings that control what events you are logging, and
%% how to handle log
%% files.
%%
%% Changes to a trail do not require stopping the CloudTrail service. Use
%% this
%% action to designate an existing bucket for log delivery. If the existing
%% bucket has
%% previously been a target for CloudTrail log files, an IAM policy
%% exists for the bucket. `UpdateTrail' must be called from the Region in
%% which the
%% trail was created; otherwise, an `InvalidHomeRegionException' is
%% thrown.
-spec update_trail(aws_client:aws_client(), update_trail_request()) ->
    {ok, update_trail_response(), tuple()} |
    {error, any()} |
    {error, update_trail_errors(), tuple()}.
update_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trail(Client, Input, []).

-spec update_trail(aws_client:aws_client(), update_trail_request(), proplists:proplist()) ->
    {ok, update_trail_response(), tuple()} |
    {error, any()} |
    {error, update_trail_errors(), tuple()}.
update_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrail">>, Input, Options).

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
    Client1 = Client#{service => <<"cloudtrail">>},
    Host = build_host(<<"cloudtrail">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CloudTrail_20131101.", Action/binary>>}
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
