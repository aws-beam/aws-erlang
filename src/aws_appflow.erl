%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon AppFlow API reference.
%%
%% This guide is for developers who need
%% detailed information about the Amazon AppFlow API operations, data types,
%% and errors.
%%
%% Amazon AppFlow is a fully managed integration service that enables you to
%% securely
%% transfer data between software as a service (SaaS) applications like
%% Salesforce, Marketo,
%% Slack, and ServiceNow, and Amazon Web Services like Amazon S3 and Amazon
%% Redshift.
%%
%% Use the following links to get started on the Amazon AppFlow API:
%%
%% Actions:
%% https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html:
%% An alphabetical list of all Amazon AppFlow API operations.
%%
%% Data
%% types:
%% https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html: An
%% alphabetical list of all Amazon AppFlow data types.
%%
%% Common parameters:
%% https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html:
%% Parameters that all Query operations can use.
%%
%% Common
%% errors:
%% https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html:
%% Client and server errors that all operations can return.
%%
%% If you're new to Amazon AppFlow, we recommend that you review the
%% Amazon AppFlow
%% User Guide:
%% https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html.
%%
%% Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and
%% include
%% applicable OAuth attributes (such as `auth-code' and
%% `redirecturi') with
%% the connector-specific `ConnectorProfileProperties' when creating a
%% new connector
%% profile using Amazon AppFlow API operations. For example, Salesforce users
%% can refer to
%% the
%% Authorize Apps with OAuth
%% : https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm
%% documentation.
-module(aws_appflow).

-export([cancel_flow_executions/2,
         cancel_flow_executions/3,
         create_connector_profile/2,
         create_connector_profile/3,
         create_flow/2,
         create_flow/3,
         delete_connector_profile/2,
         delete_connector_profile/3,
         delete_flow/2,
         delete_flow/3,
         describe_connector/2,
         describe_connector/3,
         describe_connector_entity/2,
         describe_connector_entity/3,
         describe_connector_profiles/2,
         describe_connector_profiles/3,
         describe_connectors/2,
         describe_connectors/3,
         describe_flow/2,
         describe_flow/3,
         describe_flow_execution_records/2,
         describe_flow_execution_records/3,
         list_connector_entities/2,
         list_connector_entities/3,
         list_connectors/2,
         list_connectors/3,
         list_flows/2,
         list_flows/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_connector/2,
         register_connector/3,
         reset_connector_metadata_cache/2,
         reset_connector_metadata_cache/3,
         start_flow/2,
         start_flow/3,
         stop_flow/2,
         stop_flow/3,
         tag_resource/3,
         tag_resource/4,
         unregister_connector/2,
         unregister_connector/3,
         untag_resource/3,
         untag_resource/4,
         update_connector_profile/2,
         update_connector_profile/3,
         update_connector_registration/2,
         update_connector_registration/3,
         update_flow/2,
         update_flow/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% event_bridge_destination_properties() :: #{
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"object">> => string()
%% }
-type event_bridge_destination_properties() :: #{binary() => any()}.


%% Example:
%% update_flow_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"destinationFlowConfigList">> := list(destination_flow_config()),
%%   <<"flowName">> := string(),
%%   <<"metadataCatalogConfig">> => metadata_catalog_config(),
%%   <<"sourceFlowConfig">> := source_flow_config(),
%%   <<"tasks">> := list(task()),
%%   <<"triggerConfig">> := trigger_config()
%% }
-type update_flow_request() :: #{binary() => any()}.


%% Example:
%% basic_auth_credentials() :: #{
%%   <<"password">> => string(),
%%   <<"username">> => string()
%% }
-type basic_auth_credentials() :: #{binary() => any()}.


%% Example:
%% dynatrace_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type dynatrace_source_properties() :: #{binary() => any()}.


%% Example:
%% connector_profile() :: #{
%%   <<"connectionMode">> => list(any()),
%%   <<"connectorLabel">> => string(),
%%   <<"connectorProfileArn">> => string(),
%%   <<"connectorProfileName">> => string(),
%%   <<"connectorProfileProperties">> => connector_profile_properties(),
%%   <<"connectorType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialsArn">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"privateConnectionProvisioningState">> => private_connection_provisioning_state()
%% }
-type connector_profile() :: #{binary() => any()}.


%% Example:
%% task() :: #{
%%   <<"connectorOperator">> => connector_operator(),
%%   <<"destinationField">> => string(),
%%   <<"sourceFields">> => list(string()),
%%   <<"taskProperties">> => map(),
%%   <<"taskType">> => list(any())
%% }
-type task() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% scheduled_trigger_properties() :: #{
%%   <<"dataPullMode">> => list(any()),
%%   <<"firstExecutionFrom">> => non_neg_integer(),
%%   <<"flowErrorDeactivationThreshold">> => integer(),
%%   <<"scheduleEndTime">> => non_neg_integer(),
%%   <<"scheduleExpression">> => string(),
%%   <<"scheduleOffset">> => float(),
%%   <<"scheduleStartTime">> => non_neg_integer(),
%%   <<"timezone">> => string()
%% }
-type scheduled_trigger_properties() :: #{binary() => any()}.

%% Example:
%% honeycode_connector_profile_properties() :: #{}
-type honeycode_connector_profile_properties() :: #{}.


%% Example:
%% range() :: #{
%%   <<"maximum">> => float(),
%%   <<"minimum">> => float()
%% }
-type range() :: #{binary() => any()}.


%% Example:
%% snowflake_metadata() :: #{
%%   <<"supportedRegions">> => list(string())
%% }
-type snowflake_metadata() :: #{binary() => any()}.


%% Example:
%% s_a_p_o_data_source_properties() :: #{
%%   <<"objectPath">> => string(),
%%   <<"paginationConfig">> => s_a_p_o_data_pagination_config(),
%%   <<"parallelismConfig">> => s_a_p_o_data_parallelism_config()
%% }
-type s_a_p_o_data_source_properties() :: #{binary() => any()}.


%% Example:
%% honeycode_metadata() :: #{
%%   <<"oAuthScopes">> => list(string())
%% }
-type honeycode_metadata() :: #{binary() => any()}.


%% Example:
%% snowflake_connector_profile_credentials() :: #{
%%   <<"password">> => string(),
%%   <<"username">> => string()
%% }
-type snowflake_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% redshift_connector_profile_credentials() :: #{
%%   <<"password">> => string(),
%%   <<"username">> => string()
%% }
-type redshift_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% marketo_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type marketo_source_properties() :: #{binary() => any()}.


%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% lookout_metrics_destination_properties() :: #{}
-type lookout_metrics_destination_properties() :: #{}.

%% Example:
%% trendmicro_connector_profile_properties() :: #{}
-type trendmicro_connector_profile_properties() :: #{}.


%% Example:
%% list_connectors_response() :: #{
%%   <<"connectors">> => list(connector_detail()),
%%   <<"nextToken">> => string()
%% }
-type list_connectors_response() :: #{binary() => any()}.


%% Example:
%% pardot_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type pardot_source_properties() :: #{binary() => any()}.


%% Example:
%% destination_connector_properties() :: #{
%%   <<"CustomConnector">> => custom_connector_destination_properties(),
%%   <<"CustomerProfiles">> => customer_profiles_destination_properties(),
%%   <<"EventBridge">> => event_bridge_destination_properties(),
%%   <<"Honeycode">> => honeycode_destination_properties(),
%%   <<"LookoutMetrics">> => lookout_metrics_destination_properties(),
%%   <<"Marketo">> => marketo_destination_properties(),
%%   <<"Redshift">> => redshift_destination_properties(),
%%   <<"S3">> => s3_destination_properties(),
%%   <<"SAPOData">> => s_a_p_o_data_destination_properties(),
%%   <<"Salesforce">> => salesforce_destination_properties(),
%%   <<"Snowflake">> => snowflake_destination_properties(),
%%   <<"Upsolver">> => upsolver_destination_properties(),
%%   <<"Zendesk">> => zendesk_destination_properties()
%% }
-type destination_connector_properties() :: #{binary() => any()}.


%% Example:
%% slack_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type slack_source_properties() :: #{binary() => any()}.

%% Example:
%% reset_connector_metadata_cache_response() :: #{}
-type reset_connector_metadata_cache_response() :: #{}.


%% Example:
%% create_flow_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"destinationFlowConfigList">> := list(destination_flow_config()),
%%   <<"flowName">> := string(),
%%   <<"kmsArn">> => string(),
%%   <<"metadataCatalogConfig">> => metadata_catalog_config(),
%%   <<"sourceFlowConfig">> := source_flow_config(),
%%   <<"tags">> => map(),
%%   <<"tasks">> := list(task()),
%%   <<"triggerConfig">> := trigger_config()
%% }
-type create_flow_request() :: #{binary() => any()}.


%% Example:
%% zendesk_destination_properties() :: #{
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"idFieldNames">> => list(string()),
%%   <<"object">> => string(),
%%   <<"writeOperationType">> => list(any())
%% }
-type zendesk_destination_properties() :: #{binary() => any()}.


%% Example:
%% list_connector_entities_response() :: #{
%%   <<"connectorEntityMap">> => map(),
%%   <<"nextToken">> => string()
%% }
-type list_connector_entities_response() :: #{binary() => any()}.

%% Example:
%% amplitude_metadata() :: #{}
-type amplitude_metadata() :: #{}.


%% Example:
%% execution_details() :: #{
%%   <<"mostRecentExecutionMessage">> => string(),
%%   <<"mostRecentExecutionStatus">> => list(any()),
%%   <<"mostRecentExecutionTime">> => non_neg_integer()
%% }
-type execution_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% amplitude_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type amplitude_source_properties() :: #{binary() => any()}.


%% Example:
%% list_connector_entities_request() :: #{
%%   <<"apiVersion">> => string(),
%%   <<"connectorProfileName">> => string(),
%%   <<"connectorType">> => list(any()),
%%   <<"entitiesPath">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_connector_entities_request() :: #{binary() => any()}.


%% Example:
%% describe_connector_response() :: #{
%%   <<"connectorConfiguration">> => connector_configuration()
%% }
-type describe_connector_response() :: #{binary() => any()}.


%% Example:
%% o_auth2_defaults() :: #{
%%   <<"authCodeUrls">> => list(string()),
%%   <<"oauth2CustomProperties">> => list(o_auth2_custom_parameter()),
%%   <<"oauth2GrantTypesSupported">> => list(list(any())()),
%%   <<"oauthScopes">> => list(string()),
%%   <<"tokenUrls">> => list(string())
%% }
-type o_auth2_defaults() :: #{binary() => any()}.


%% Example:
%% snowflake_destination_properties() :: #{
%%   <<"bucketPrefix">> => string(),
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"intermediateBucketName">> => string(),
%%   <<"object">> => string()
%% }
-type snowflake_destination_properties() :: #{binary() => any()}.

%% Example:
%% google_analytics_connector_profile_properties() :: #{}
-type google_analytics_connector_profile_properties() :: #{}.


%% Example:
%% s3_source_properties() :: #{
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string(),
%%   <<"s3InputFormatConfig">> => s3_input_format_config()
%% }
-type s3_source_properties() :: #{binary() => any()}.


%% Example:
%% aggregation_config() :: #{
%%   <<"aggregationType">> => list(any()),
%%   <<"targetFileSize">> => float()
%% }
-type aggregation_config() :: #{binary() => any()}.


%% Example:
%% connector_profile_credentials() :: #{
%%   <<"Amplitude">> => amplitude_connector_profile_credentials(),
%%   <<"CustomConnector">> => custom_connector_profile_credentials(),
%%   <<"Datadog">> => datadog_connector_profile_credentials(),
%%   <<"Dynatrace">> => dynatrace_connector_profile_credentials(),
%%   <<"GoogleAnalytics">> => google_analytics_connector_profile_credentials(),
%%   <<"Honeycode">> => honeycode_connector_profile_credentials(),
%%   <<"InforNexus">> => infor_nexus_connector_profile_credentials(),
%%   <<"Marketo">> => marketo_connector_profile_credentials(),
%%   <<"Pardot">> => pardot_connector_profile_credentials(),
%%   <<"Redshift">> => redshift_connector_profile_credentials(),
%%   <<"SAPOData">> => s_a_p_o_data_connector_profile_credentials(),
%%   <<"Salesforce">> => salesforce_connector_profile_credentials(),
%%   <<"ServiceNow">> => service_now_connector_profile_credentials(),
%%   <<"Singular">> => singular_connector_profile_credentials(),
%%   <<"Slack">> => slack_connector_profile_credentials(),
%%   <<"Snowflake">> => snowflake_connector_profile_credentials(),
%%   <<"Trendmicro">> => trendmicro_connector_profile_credentials(),
%%   <<"Veeva">> => veeva_connector_profile_credentials(),
%%   <<"Zendesk">> => zendesk_connector_profile_credentials()
%% }
-type connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% describe_connector_entity_response() :: #{
%%   <<"connectorEntityFields">> => list(connector_entity_field())
%% }
-type describe_connector_entity_response() :: #{binary() => any()}.


%% Example:
%% describe_connector_profiles_response() :: #{
%%   <<"connectorProfileDetails">> => list(connector_profile()),
%%   <<"nextToken">> => string()
%% }
-type describe_connector_profiles_response() :: #{binary() => any()}.


%% Example:
%% s3_input_format_config() :: #{
%%   <<"s3InputFileType">> => list(any())
%% }
-type s3_input_format_config() :: #{binary() => any()}.


%% Example:
%% connector_provisioning_config() :: #{
%%   <<"lambda">> => lambda_connector_provisioning_config()
%% }
-type connector_provisioning_config() :: #{binary() => any()}.


%% Example:
%% upsolver_s3_output_format_config() :: #{
%%   <<"aggregationConfig">> => aggregation_config(),
%%   <<"fileType">> => list(any()),
%%   <<"prefixConfig">> => prefix_config()
%% }
-type upsolver_s3_output_format_config() :: #{binary() => any()}.


%% Example:
%% destination_flow_config() :: #{
%%   <<"apiVersion">> => string(),
%%   <<"connectorProfileName">> => string(),
%%   <<"connectorType">> => list(any()),
%%   <<"destinationConnectorProperties">> => destination_connector_properties()
%% }
-type destination_flow_config() :: #{binary() => any()}.


%% Example:
%% google_analytics_metadata() :: #{
%%   <<"oAuthScopes">> => list(string())
%% }
-type google_analytics_metadata() :: #{binary() => any()}.


%% Example:
%% delete_flow_request() :: #{
%%   <<"flowName">> := string(),
%%   <<"forceDelete">> => boolean()
%% }
-type delete_flow_request() :: #{binary() => any()}.

%% Example:
%% redshift_metadata() :: #{}
-type redshift_metadata() :: #{}.


%% Example:
%% s3_destination_properties() :: #{
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string(),
%%   <<"s3OutputFormatConfig">> => s3_output_format_config()
%% }
-type s3_destination_properties() :: #{binary() => any()}.


%% Example:
%% infor_nexus_connector_profile_credentials() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"datakey">> => string(),
%%   <<"secretAccessKey">> => string(),
%%   <<"userId">> => string()
%% }
-type infor_nexus_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% redshift_destination_properties() :: #{
%%   <<"bucketPrefix">> => string(),
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"intermediateBucketName">> => string(),
%%   <<"object">> => string()
%% }
-type redshift_destination_properties() :: #{binary() => any()}.


%% Example:
%% s_a_p_o_data_pagination_config() :: #{
%%   <<"maxPageSize">> => integer()
%% }
-type s_a_p_o_data_pagination_config() :: #{binary() => any()}.


%% Example:
%% destination_field_properties() :: #{
%%   <<"isCreatable">> => boolean(),
%%   <<"isDefaultedOnCreate">> => boolean(),
%%   <<"isNullable">> => boolean(),
%%   <<"isUpdatable">> => boolean(),
%%   <<"isUpsertable">> => boolean(),
%%   <<"supportedWriteOperations">> => list(list(any())())
%% }
-type destination_field_properties() :: #{binary() => any()}.


%% Example:
%% flow_definition() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"destinationConnectorLabel">> => string(),
%%   <<"destinationConnectorType">> => list(any()),
%%   <<"flowArn">> => string(),
%%   <<"flowName">> => string(),
%%   <<"flowStatus">> => list(any()),
%%   <<"lastRunExecutionDetails">> => execution_details(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"sourceConnectorLabel">> => string(),
%%   <<"sourceConnectorType">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"triggerType">> => list(any())
%% }
-type flow_definition() :: #{binary() => any()}.


%% Example:
%% slack_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request()
%% }
-type slack_connector_profile_credentials() :: #{binary() => any()}.

%% Example:
%% s3_metadata() :: #{}
-type s3_metadata() :: #{}.


%% Example:
%% describe_connectors_response() :: #{
%%   <<"connectorConfigurations">> => map(),
%%   <<"connectors">> => list(connector_detail()),
%%   <<"nextToken">> => string()
%% }
-type describe_connectors_response() :: #{binary() => any()}.


%% Example:
%% zendesk_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type zendesk_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% o_auth_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request(),
%%   <<"refreshToken">> => string()
%% }
-type o_auth_credentials() :: #{binary() => any()}.


%% Example:
%% infor_nexus_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type infor_nexus_source_properties() :: #{binary() => any()}.


%% Example:
%% service_now_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type service_now_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% describe_connector_entity_request() :: #{
%%   <<"apiVersion">> => string(),
%%   <<"connectorEntityName">> := string(),
%%   <<"connectorProfileName">> => string(),
%%   <<"connectorType">> => list(any())
%% }
-type describe_connector_entity_request() :: #{binary() => any()}.


%% Example:
%% salesforce_destination_properties() :: #{
%%   <<"dataTransferApi">> => list(any()),
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"idFieldNames">> => list(string()),
%%   <<"object">> => string(),
%%   <<"writeOperationType">> => list(any())
%% }
-type salesforce_destination_properties() :: #{binary() => any()}.


%% Example:
%% list_connectors_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_connectors_request() :: #{binary() => any()}.


%% Example:
%% source_field_properties() :: #{
%%   <<"isQueryable">> => boolean(),
%%   <<"isRetrievable">> => boolean(),
%%   <<"isTimestampFieldForIncrementalQueries">> => boolean()
%% }
-type source_field_properties() :: #{binary() => any()}.


%% Example:
%% update_connector_profile_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"connectionMode">> := list(any()),
%%   <<"connectorProfileConfig">> := connector_profile_config(),
%%   <<"connectorProfileName">> := string()
%% }
-type update_connector_profile_request() :: #{binary() => any()}.


%% Example:
%% salesforce_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string(),
%%   <<"isSandboxEnvironment">> => boolean(),
%%   <<"usePrivateLinkForMetadataAndAuthorization">> => boolean()
%% }
-type salesforce_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% metadata_catalog_detail() :: #{
%%   <<"catalogType">> => list(any()),
%%   <<"partitionRegistrationOutput">> => registration_output(),
%%   <<"tableName">> => string(),
%%   <<"tableRegistrationOutput">> => registration_output()
%% }
-type metadata_catalog_detail() :: #{binary() => any()}.


%% Example:
%% api_key_credentials() :: #{
%%   <<"apiKey">> => string(),
%%   <<"apiSecretKey">> => string()
%% }
-type api_key_credentials() :: #{binary() => any()}.


%% Example:
%% create_flow_response() :: #{
%%   <<"flowArn">> => string(),
%%   <<"flowStatus">> => list(any())
%% }
-type create_flow_response() :: #{binary() => any()}.


%% Example:
%% honeycode_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request(),
%%   <<"refreshToken">> => string()
%% }
-type honeycode_connector_profile_credentials() :: #{binary() => any()}.

%% Example:
%% delete_flow_response() :: #{}
-type delete_flow_response() :: #{}.


%% Example:
%% error_info() :: #{
%%   <<"executionMessage">> => string(),
%%   <<"putFailuresCount">> => float()
%% }
-type error_info() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% connector_entity_field() :: #{
%%   <<"customProperties">> => map(),
%%   <<"defaultValue">> => string(),
%%   <<"description">> => string(),
%%   <<"destinationProperties">> => destination_field_properties(),
%%   <<"identifier">> => string(),
%%   <<"isDeprecated">> => boolean(),
%%   <<"isPrimaryKey">> => boolean(),
%%   <<"label">> => string(),
%%   <<"parentIdentifier">> => string(),
%%   <<"sourceProperties">> => source_field_properties(),
%%   <<"supportedFieldTypeDetails">> => supported_field_type_details()
%% }
-type connector_entity_field() :: #{binary() => any()}.


%% Example:
%% connector_authentication_exception() :: #{
%%   <<"message">> => string()
%% }
-type connector_authentication_exception() :: #{binary() => any()}.


%% Example:
%% s_a_p_o_data_connector_profile_properties() :: #{
%%   <<"applicationHostUrl">> => string(),
%%   <<"applicationServicePath">> => string(),
%%   <<"clientNumber">> => string(),
%%   <<"disableSSO">> => boolean(),
%%   <<"logonLanguage">> => string(),
%%   <<"oAuthProperties">> => o_auth_properties(),
%%   <<"portNumber">> => integer(),
%%   <<"privateLinkServiceName">> => string()
%% }
-type s_a_p_o_data_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% private_connection_provisioning_state() :: #{
%%   <<"failureCause">> => list(any()),
%%   <<"failureMessage">> => string(),
%%   <<"status">> => list(any())
%% }
-type private_connection_provisioning_state() :: #{binary() => any()}.

%% Example:
%% marketo_metadata() :: #{}
-type marketo_metadata() :: #{}.


%% Example:
%% zendesk_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type zendesk_source_properties() :: #{binary() => any()}.


%% Example:
%% trigger_properties() :: #{
%%   <<"Scheduled">> => scheduled_trigger_properties()
%% }
-type trigger_properties() :: #{binary() => any()}.


%% Example:
%% s3_output_format_config() :: #{
%%   <<"aggregationConfig">> => aggregation_config(),
%%   <<"fileType">> => list(any()),
%%   <<"prefixConfig">> => prefix_config(),
%%   <<"preserveSourceDataTyping">> => boolean()
%% }
-type s3_output_format_config() :: #{binary() => any()}.


%% Example:
%% marketo_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request()
%% }
-type marketo_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% marketo_destination_properties() :: #{
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"object">> => string()
%% }
-type marketo_destination_properties() :: #{binary() => any()}.


%% Example:
%% trendmicro_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type trendmicro_source_properties() :: #{binary() => any()}.

%% Example:
%% amplitude_connector_profile_properties() :: #{}
-type amplitude_connector_profile_properties() :: #{}.


%% Example:
%% singular_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type singular_source_properties() :: #{binary() => any()}.


%% Example:
%% custom_auth_config() :: #{
%%   <<"authParameters">> => list(auth_parameter()),
%%   <<"customAuthenticationType">> => string()
%% }
-type custom_auth_config() :: #{binary() => any()}.


%% Example:
%% update_connector_registration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"connectorLabel">> := string(),
%%   <<"connectorProvisioningConfig">> => connector_provisioning_config(),
%%   <<"description">> => string()
%% }
-type update_connector_registration_request() :: #{binary() => any()}.


%% Example:
%% cancel_flow_executions_response() :: #{
%%   <<"invalidExecutions">> => list(string())
%% }
-type cancel_flow_executions_response() :: #{binary() => any()}.


%% Example:
%% o_auth_properties() :: #{
%%   <<"authCodeUrl">> => string(),
%%   <<"oAuthScopes">> => list(string()),
%%   <<"tokenUrl">> => string()
%% }
-type o_auth_properties() :: #{binary() => any()}.


%% Example:
%% describe_connectors_request() :: #{
%%   <<"connectorTypes">> => list(list(any())()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_connectors_request() :: #{binary() => any()}.


%% Example:
%% salesforce_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientCredentialsArn">> => string(),
%%   <<"jwtToken">> => string(),
%%   <<"oAuth2GrantType">> => list(any()),
%%   <<"oAuthRequest">> => connector_o_auth_request(),
%%   <<"refreshToken">> => string()
%% }
-type salesforce_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% list_flows_response() :: #{
%%   <<"flows">> => list(flow_definition()),
%%   <<"nextToken">> => string()
%% }
-type list_flows_response() :: #{binary() => any()}.

%% Example:
%% s_a_p_o_data_metadata() :: #{}
-type s_a_p_o_data_metadata() :: #{}.


%% Example:
%% zendesk_metadata() :: #{
%%   <<"oAuthScopes">> => list(string())
%% }
-type zendesk_metadata() :: #{binary() => any()}.


%% Example:
%% prefix_config() :: #{
%%   <<"pathPrefixHierarchy">> => list(list(any())()),
%%   <<"prefixFormat">> => list(any()),
%%   <<"prefixType">> => list(any())
%% }
-type prefix_config() :: #{binary() => any()}.


%% Example:
%% execution_result() :: #{
%%   <<"bytesProcessed">> => float(),
%%   <<"bytesWritten">> => float(),
%%   <<"errorInfo">> => error_info(),
%%   <<"maxPageSize">> => float(),
%%   <<"numParallelProcesses">> => float(),
%%   <<"recordsProcessed">> => float()
%% }
-type execution_result() :: #{binary() => any()}.

%% Example:
%% unregister_connector_response() :: #{}
-type unregister_connector_response() :: #{}.


%% Example:
%% pardot_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientCredentialsArn">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request(),
%%   <<"refreshToken">> => string()
%% }
-type pardot_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% custom_auth_credentials() :: #{
%%   <<"credentialsMap">> => map(),
%%   <<"customAuthenticationType">> => string()
%% }
-type custom_auth_credentials() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% start_flow_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"flowName">> := string()
%% }
-type start_flow_request() :: #{binary() => any()}.


%% Example:
%% slack_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type slack_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% datadog_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type datadog_source_properties() :: #{binary() => any()}.


%% Example:
%% describe_connector_profiles_request() :: #{
%%   <<"connectorLabel">> => string(),
%%   <<"connectorProfileNames">> => list(string()),
%%   <<"connectorType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_connector_profiles_request() :: #{binary() => any()}.


%% Example:
%% service_now_connector_profile_credentials() :: #{
%%   <<"oAuth2Credentials">> => o_auth2_credentials(),
%%   <<"password">> => string(),
%%   <<"username">> => string()
%% }
-type service_now_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% veeva_connector_profile_credentials() :: #{
%%   <<"password">> => string(),
%%   <<"username">> => string()
%% }
-type veeva_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% datadog_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type datadog_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% s_a_p_o_data_destination_properties() :: #{
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"idFieldNames">> => list(string()),
%%   <<"objectPath">> => string(),
%%   <<"successResponseHandlingConfig">> => success_response_handling_config(),
%%   <<"writeOperationType">> => list(any())
%% }
-type s_a_p_o_data_destination_properties() :: #{binary() => any()}.


%% Example:
%% honeycode_destination_properties() :: #{
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"object">> => string()
%% }
-type honeycode_destination_properties() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% unregister_connector_request() :: #{
%%   <<"connectorLabel">> := string(),
%%   <<"forceDelete">> => boolean()
%% }
-type unregister_connector_request() :: #{binary() => any()}.


%% Example:
%% registration_output() :: #{
%%   <<"message">> => string(),
%%   <<"result">> => string(),
%%   <<"status">> => list(any())
%% }
-type registration_output() :: #{binary() => any()}.


%% Example:
%% singular_connector_profile_credentials() :: #{
%%   <<"apiKey">> => string()
%% }
-type singular_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% glue_data_catalog_config() :: #{
%%   <<"databaseName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"tablePrefix">> => string()
%% }
-type glue_data_catalog_config() :: #{binary() => any()}.


%% Example:
%% amplitude_connector_profile_credentials() :: #{
%%   <<"apiKey">> => string(),
%%   <<"secretKey">> => string()
%% }
-type amplitude_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% trendmicro_connector_profile_credentials() :: #{
%%   <<"apiSecretKey">> => string()
%% }
-type trendmicro_connector_profile_credentials() :: #{binary() => any()}.

%% Example:
%% customer_profiles_metadata() :: #{}
-type customer_profiles_metadata() :: #{}.


%% Example:
%% describe_flow_request() :: #{
%%   <<"flowName">> := string()
%% }
-type describe_flow_request() :: #{binary() => any()}.


%% Example:
%% connector_entity() :: #{
%%   <<"hasNestedEntities">> => boolean(),
%%   <<"label">> => string(),
%%   <<"name">> => string()
%% }
-type connector_entity() :: #{binary() => any()}.


%% Example:
%% start_flow_response() :: #{
%%   <<"executionId">> => string(),
%%   <<"flowArn">> => string(),
%%   <<"flowStatus">> => list(any())
%% }
-type start_flow_response() :: #{binary() => any()}.


%% Example:
%% stop_flow_response() :: #{
%%   <<"flowArn">> => string(),
%%   <<"flowStatus">> => list(any())
%% }
-type stop_flow_response() :: #{binary() => any()}.


%% Example:
%% data_transfer_api() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type data_transfer_api() :: #{binary() => any()}.


%% Example:
%% metadata_catalog_config() :: #{
%%   <<"glueDataCatalog">> => glue_data_catalog_config()
%% }
-type metadata_catalog_config() :: #{binary() => any()}.


%% Example:
%% describe_flow_execution_records_response() :: #{
%%   <<"flowExecutions">> => list(execution_record()),
%%   <<"nextToken">> => string()
%% }
-type describe_flow_execution_records_response() :: #{binary() => any()}.

%% Example:
%% trendmicro_metadata() :: #{}
-type trendmicro_metadata() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% source_connector_properties() :: #{
%%   <<"Amplitude">> => amplitude_source_properties(),
%%   <<"CustomConnector">> => custom_connector_source_properties(),
%%   <<"Datadog">> => datadog_source_properties(),
%%   <<"Dynatrace">> => dynatrace_source_properties(),
%%   <<"GoogleAnalytics">> => google_analytics_source_properties(),
%%   <<"InforNexus">> => infor_nexus_source_properties(),
%%   <<"Marketo">> => marketo_source_properties(),
%%   <<"Pardot">> => pardot_source_properties(),
%%   <<"S3">> => s3_source_properties(),
%%   <<"SAPOData">> => s_a_p_o_data_source_properties(),
%%   <<"Salesforce">> => salesforce_source_properties(),
%%   <<"ServiceNow">> => service_now_source_properties(),
%%   <<"Singular">> => singular_source_properties(),
%%   <<"Slack">> => slack_source_properties(),
%%   <<"Trendmicro">> => trendmicro_source_properties(),
%%   <<"Veeva">> => veeva_source_properties(),
%%   <<"Zendesk">> => zendesk_source_properties()
%% }
-type source_connector_properties() :: #{binary() => any()}.


%% Example:
%% connector_metadata() :: #{
%%   <<"Amplitude">> => amplitude_metadata(),
%%   <<"CustomerProfiles">> => customer_profiles_metadata(),
%%   <<"Datadog">> => datadog_metadata(),
%%   <<"Dynatrace">> => dynatrace_metadata(),
%%   <<"EventBridge">> => event_bridge_metadata(),
%%   <<"GoogleAnalytics">> => google_analytics_metadata(),
%%   <<"Honeycode">> => honeycode_metadata(),
%%   <<"InforNexus">> => infor_nexus_metadata(),
%%   <<"Marketo">> => marketo_metadata(),
%%   <<"Pardot">> => pardot_metadata(),
%%   <<"Redshift">> => redshift_metadata(),
%%   <<"S3">> => s3_metadata(),
%%   <<"SAPOData">> => s_a_p_o_data_metadata(),
%%   <<"Salesforce">> => salesforce_metadata(),
%%   <<"ServiceNow">> => service_now_metadata(),
%%   <<"Singular">> => singular_metadata(),
%%   <<"Slack">> => slack_metadata(),
%%   <<"Snowflake">> => snowflake_metadata(),
%%   <<"Trendmicro">> => trendmicro_metadata(),
%%   <<"Upsolver">> => upsolver_metadata(),
%%   <<"Veeva">> => veeva_metadata(),
%%   <<"Zendesk">> => zendesk_metadata()
%% }
-type connector_metadata() :: #{binary() => any()}.

%% Example:
%% infor_nexus_metadata() :: #{}
-type infor_nexus_metadata() :: #{}.


%% Example:
%% create_connector_profile_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"connectionMode">> := list(any()),
%%   <<"connectorLabel">> => string(),
%%   <<"connectorProfileConfig">> := connector_profile_config(),
%%   <<"connectorProfileName">> := string(),
%%   <<"connectorType">> := list(any()),
%%   <<"kmsArn">> => string()
%% }
-type create_connector_profile_request() :: #{binary() => any()}.


%% Example:
%% connector_detail() :: #{
%%   <<"applicationType">> => string(),
%%   <<"connectorDescription">> => string(),
%%   <<"connectorLabel">> => string(),
%%   <<"connectorModes">> => list(string()),
%%   <<"connectorName">> => string(),
%%   <<"connectorOwner">> => string(),
%%   <<"connectorProvisioningType">> => list(any()),
%%   <<"connectorType">> => list(any()),
%%   <<"connectorVersion">> => string(),
%%   <<"registeredAt">> => non_neg_integer(),
%%   <<"registeredBy">> => string(),
%%   <<"supportedDataTransferTypes">> => list(list(any())())
%% }
-type connector_detail() :: #{binary() => any()}.


%% Example:
%% describe_flow_execution_records_request() :: #{
%%   <<"flowName">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_flow_execution_records_request() :: #{binary() => any()}.


%% Example:
%% list_flows_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_flows_request() :: #{binary() => any()}.


%% Example:
%% describe_connector_request() :: #{
%%   <<"connectorLabel">> => string(),
%%   <<"connectorType">> := list(any())
%% }
-type describe_connector_request() :: #{binary() => any()}.

%% Example:
%% upsolver_metadata() :: #{}
-type upsolver_metadata() :: #{}.


%% Example:
%% custom_connector_profile_credentials() :: #{
%%   <<"apiKey">> => api_key_credentials(),
%%   <<"authenticationType">> => list(any()),
%%   <<"basic">> => basic_auth_credentials(),
%%   <<"custom">> => custom_auth_credentials(),
%%   <<"oauth2">> => o_auth2_credentials()
%% }
-type custom_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% connector_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type connector_server_exception() :: #{binary() => any()}.


%% Example:
%% register_connector_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"connectorLabel">> => string(),
%%   <<"connectorProvisioningConfig">> => connector_provisioning_config(),
%%   <<"connectorProvisioningType">> => list(any()),
%%   <<"description">> => string()
%% }
-type register_connector_request() :: #{binary() => any()}.


%% Example:
%% custom_connector_destination_properties() :: #{
%%   <<"customProperties">> => map(),
%%   <<"entityName">> => string(),
%%   <<"errorHandlingConfig">> => error_handling_config(),
%%   <<"idFieldNames">> => list(string()),
%%   <<"writeOperationType">> => list(any())
%% }
-type custom_connector_destination_properties() :: #{binary() => any()}.


%% Example:
%% auth_parameter() :: #{
%%   <<"connectorSuppliedValues">> => list(string()),
%%   <<"description">> => string(),
%%   <<"isRequired">> => boolean(),
%%   <<"isSensitiveField">> => boolean(),
%%   <<"key">> => string(),
%%   <<"label">> => string()
%% }
-type auth_parameter() :: #{binary() => any()}.


%% Example:
%% source_flow_config() :: #{
%%   <<"apiVersion">> => string(),
%%   <<"connectorProfileName">> => string(),
%%   <<"connectorType">> => list(any()),
%%   <<"incrementalPullConfig">> => incremental_pull_config(),
%%   <<"sourceConnectorProperties">> => source_connector_properties()
%% }
-type source_flow_config() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% update_connector_profile_response() :: #{
%%   <<"connectorProfileArn">> => string()
%% }
-type update_connector_profile_response() :: #{binary() => any()}.


%% Example:
%% slack_metadata() :: #{
%%   <<"oAuthScopes">> => list(string())
%% }
-type slack_metadata() :: #{binary() => any()}.

%% Example:
%% singular_metadata() :: #{}
-type singular_metadata() :: #{}.


%% Example:
%% register_connector_response() :: #{
%%   <<"connectorArn">> => string()
%% }
-type register_connector_response() :: #{binary() => any()}.


%% Example:
%% o_auth2_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request(),
%%   <<"refreshToken">> => string()
%% }
-type o_auth2_credentials() :: #{binary() => any()}.


%% Example:
%% salesforce_source_properties() :: #{
%%   <<"dataTransferApi">> => list(any()),
%%   <<"enableDynamicFieldUpdate">> => boolean(),
%%   <<"includeDeletedRecords">> => boolean(),
%%   <<"object">> => string()
%% }
-type salesforce_source_properties() :: #{binary() => any()}.


%% Example:
%% datadog_connector_profile_credentials() :: #{
%%   <<"apiKey">> => string(),
%%   <<"applicationKey">> => string()
%% }
-type datadog_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% reset_connector_metadata_cache_request() :: #{
%%   <<"apiVersion">> => string(),
%%   <<"connectorEntityName">> => string(),
%%   <<"connectorProfileName">> => string(),
%%   <<"connectorType">> => list(any()),
%%   <<"entitiesPath">> => string()
%% }
-type reset_connector_metadata_cache_request() :: #{binary() => any()}.


%% Example:
%% veeva_source_properties() :: #{
%%   <<"documentType">> => string(),
%%   <<"includeAllVersions">> => boolean(),
%%   <<"includeRenditions">> => boolean(),
%%   <<"includeSourceFiles">> => boolean(),
%%   <<"object">> => string()
%% }
-type veeva_source_properties() :: #{binary() => any()}.

%% Example:
%% pardot_metadata() :: #{}
-type pardot_metadata() :: #{}.


%% Example:
%% delete_connector_profile_request() :: #{
%%   <<"connectorProfileName">> := string(),
%%   <<"forceDelete">> => boolean()
%% }
-type delete_connector_profile_request() :: #{binary() => any()}.


%% Example:
%% connector_profile_config() :: #{
%%   <<"connectorProfileCredentials">> => connector_profile_credentials(),
%%   <<"connectorProfileProperties">> => connector_profile_properties()
%% }
-type connector_profile_config() :: #{binary() => any()}.


%% Example:
%% connector_o_auth_request() :: #{
%%   <<"authCode">> => string(),
%%   <<"redirectUri">> => string()
%% }
-type connector_o_auth_request() :: #{binary() => any()}.


%% Example:
%% zendesk_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request()
%% }
-type zendesk_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% execution_record() :: #{
%%   <<"dataPullEndTime">> => non_neg_integer(),
%%   <<"dataPullStartTime">> => non_neg_integer(),
%%   <<"executionId">> => string(),
%%   <<"executionResult">> => execution_result(),
%%   <<"executionStatus">> => list(any()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"metadataCatalogDetails">> => list(metadata_catalog_detail()),
%%   <<"startedAt">> => non_neg_integer()
%% }
-type execution_record() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% google_analytics_connector_profile_credentials() :: #{
%%   <<"accessToken">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oAuthRequest">> => connector_o_auth_request(),
%%   <<"refreshToken">> => string()
%% }
-type google_analytics_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% o_auth2_custom_parameter() :: #{
%%   <<"connectorSuppliedValues">> => list(string()),
%%   <<"description">> => string(),
%%   <<"isRequired">> => boolean(),
%%   <<"isSensitiveField">> => boolean(),
%%   <<"key">> => string(),
%%   <<"label">> => string(),
%%   <<"type">> => list(any())
%% }
-type o_auth2_custom_parameter() :: #{binary() => any()}.


%% Example:
%% create_connector_profile_response() :: #{
%%   <<"connectorProfileArn">> => string()
%% }
-type create_connector_profile_response() :: #{binary() => any()}.


%% Example:
%% custom_connector_profile_properties() :: #{
%%   <<"oAuth2Properties">> => o_auth2_properties(),
%%   <<"profileProperties">> => map()
%% }
-type custom_connector_profile_properties() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% singular_connector_profile_properties() :: #{}
-type singular_connector_profile_properties() :: #{}.


%% Example:
%% veeva_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type veeva_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% success_response_handling_config() :: #{
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string()
%% }
-type success_response_handling_config() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% dynatrace_connector_profile_credentials() :: #{
%%   <<"apiToken">> => string()
%% }
-type dynatrace_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% error_handling_config() :: #{
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string(),
%%   <<"failOnFirstDestinationError">> => boolean()
%% }
-type error_handling_config() :: #{binary() => any()}.


%% Example:
%% update_connector_registration_response() :: #{
%%   <<"connectorArn">> => string()
%% }
-type update_connector_registration_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% google_analytics_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type google_analytics_source_properties() :: #{binary() => any()}.


%% Example:
%% upsolver_destination_properties() :: #{
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string(),
%%   <<"s3OutputFormatConfig">> => upsolver_s3_output_format_config()
%% }
-type upsolver_destination_properties() :: #{binary() => any()}.


%% Example:
%% s_a_p_o_data_parallelism_config() :: #{
%%   <<"maxParallelism">> => integer()
%% }
-type s_a_p_o_data_parallelism_config() :: #{binary() => any()}.


%% Example:
%% supported_field_type_details() :: #{
%%   <<"v1">> => field_type_details()
%% }
-type supported_field_type_details() :: #{binary() => any()}.


%% Example:
%% pardot_connector_profile_properties() :: #{
%%   <<"businessUnitId">> => string(),
%%   <<"instanceUrl">> => string(),
%%   <<"isSandboxEnvironment">> => boolean()
%% }
-type pardot_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% dynatrace_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type dynatrace_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% s_a_p_o_data_connector_profile_credentials() :: #{
%%   <<"basicAuthCredentials">> => basic_auth_credentials(),
%%   <<"oAuthCredentials">> => o_auth_credentials()
%% }
-type s_a_p_o_data_connector_profile_credentials() :: #{binary() => any()}.


%% Example:
%% custom_connector_source_properties() :: #{
%%   <<"customProperties">> => map(),
%%   <<"dataTransferApi">> => data_transfer_api(),
%%   <<"entityName">> => string()
%% }
-type custom_connector_source_properties() :: #{binary() => any()}.


%% Example:
%% o_auth2_properties() :: #{
%%   <<"oAuth2GrantType">> => list(any()),
%%   <<"tokenUrl">> => string(),
%%   <<"tokenUrlCustomProperties">> => map()
%% }
-type o_auth2_properties() :: #{binary() => any()}.


%% Example:
%% marketo_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type marketo_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% field_type_details() :: #{
%%   <<"fieldLengthRange">> => range(),
%%   <<"fieldType">> => string(),
%%   <<"fieldValueRange">> => range(),
%%   <<"filterOperators">> => list(list(any())()),
%%   <<"supportedDateFormat">> => string(),
%%   <<"supportedValues">> => list(string()),
%%   <<"valueRegexPattern">> => string()
%% }
-type field_type_details() :: #{binary() => any()}.

%% Example:
%% dynatrace_metadata() :: #{}
-type dynatrace_metadata() :: #{}.


%% Example:
%% connector_operator() :: #{
%%   <<"Amplitude">> => list(any()),
%%   <<"CustomConnector">> => list(any()),
%%   <<"Datadog">> => list(any()),
%%   <<"Dynatrace">> => list(any()),
%%   <<"GoogleAnalytics">> => list(any()),
%%   <<"InforNexus">> => list(any()),
%%   <<"Marketo">> => list(any()),
%%   <<"Pardot">> => list(any()),
%%   <<"S3">> => list(any()),
%%   <<"SAPOData">> => list(any()),
%%   <<"Salesforce">> => list(any()),
%%   <<"ServiceNow">> => list(any()),
%%   <<"Singular">> => list(any()),
%%   <<"Slack">> => list(any()),
%%   <<"Trendmicro">> => list(any()),
%%   <<"Veeva">> => list(any()),
%%   <<"Zendesk">> => list(any())
%% }
-type connector_operator() :: #{binary() => any()}.


%% Example:
%% update_flow_response() :: #{
%%   <<"flowStatus">> => list(any())
%% }
-type update_flow_response() :: #{binary() => any()}.


%% Example:
%% snowflake_connector_profile_properties() :: #{
%%   <<"accountName">> => string(),
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string(),
%%   <<"privateLinkServiceName">> => string(),
%%   <<"region">> => string(),
%%   <<"stage">> => string(),
%%   <<"warehouse">> => string()
%% }
-type snowflake_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% infor_nexus_connector_profile_properties() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type infor_nexus_connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% cancel_flow_executions_request() :: #{
%%   <<"executionIds">> => list(string()),
%%   <<"flowName">> := string()
%% }
-type cancel_flow_executions_request() :: #{binary() => any()}.


%% Example:
%% describe_flow_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"destinationFlowConfigList">> => list(destination_flow_config()),
%%   <<"flowArn">> => string(),
%%   <<"flowName">> => string(),
%%   <<"flowStatus">> => list(any()),
%%   <<"flowStatusMessage">> => string(),
%%   <<"kmsArn">> => string(),
%%   <<"lastRunExecutionDetails">> => execution_details(),
%%   <<"lastRunMetadataCatalogDetails">> => list(metadata_catalog_detail()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"metadataCatalogConfig">> => metadata_catalog_config(),
%%   <<"schemaVersion">> => float(),
%%   <<"sourceFlowConfig">> => source_flow_config(),
%%   <<"tags">> => map(),
%%   <<"tasks">> => list(task()),
%%   <<"triggerConfig">> => trigger_config()
%% }
-type describe_flow_response() :: #{binary() => any()}.


%% Example:
%% lambda_connector_provisioning_config() :: #{
%%   <<"lambdaArn">> => string()
%% }
-type lambda_connector_provisioning_config() :: #{binary() => any()}.

%% Example:
%% event_bridge_metadata() :: #{}
-type event_bridge_metadata() :: #{}.


%% Example:
%% redshift_connector_profile_properties() :: #{
%%   <<"bucketName">> => string(),
%%   <<"bucketPrefix">> => string(),
%%   <<"clusterIdentifier">> => string(),
%%   <<"dataApiRoleArn">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"databaseUrl">> => string(),
%%   <<"isRedshiftServerless">> => boolean(),
%%   <<"roleArn">> => string(),
%%   <<"workgroupName">> => string()
%% }
-type redshift_connector_profile_properties() :: #{binary() => any()}.

%% Example:
%% veeva_metadata() :: #{}
-type veeva_metadata() :: #{}.

%% Example:
%% service_now_metadata() :: #{}
-type service_now_metadata() :: #{}.

%% Example:
%% delete_connector_profile_response() :: #{}
-type delete_connector_profile_response() :: #{}.


%% Example:
%% customer_profiles_destination_properties() :: #{
%%   <<"domainName">> => string(),
%%   <<"objectTypeName">> => string()
%% }
-type customer_profiles_destination_properties() :: #{binary() => any()}.


%% Example:
%% salesforce_metadata() :: #{
%%   <<"dataTransferApis">> => list(list(any())()),
%%   <<"oAuthScopes">> => list(string()),
%%   <<"oauth2GrantTypesSupported">> => list(list(any())())
%% }
-type salesforce_metadata() :: #{binary() => any()}.


%% Example:
%% service_now_source_properties() :: #{
%%   <<"object">> => string()
%% }
-type service_now_source_properties() :: #{binary() => any()}.


%% Example:
%% connector_profile_properties() :: #{
%%   <<"Amplitude">> => amplitude_connector_profile_properties(),
%%   <<"CustomConnector">> => custom_connector_profile_properties(),
%%   <<"Datadog">> => datadog_connector_profile_properties(),
%%   <<"Dynatrace">> => dynatrace_connector_profile_properties(),
%%   <<"GoogleAnalytics">> => google_analytics_connector_profile_properties(),
%%   <<"Honeycode">> => honeycode_connector_profile_properties(),
%%   <<"InforNexus">> => infor_nexus_connector_profile_properties(),
%%   <<"Marketo">> => marketo_connector_profile_properties(),
%%   <<"Pardot">> => pardot_connector_profile_properties(),
%%   <<"Redshift">> => redshift_connector_profile_properties(),
%%   <<"SAPOData">> => s_a_p_o_data_connector_profile_properties(),
%%   <<"Salesforce">> => salesforce_connector_profile_properties(),
%%   <<"ServiceNow">> => service_now_connector_profile_properties(),
%%   <<"Singular">> => singular_connector_profile_properties(),
%%   <<"Slack">> => slack_connector_profile_properties(),
%%   <<"Snowflake">> => snowflake_connector_profile_properties(),
%%   <<"Trendmicro">> => trendmicro_connector_profile_properties(),
%%   <<"Veeva">> => veeva_connector_profile_properties(),
%%   <<"Zendesk">> => zendesk_connector_profile_properties()
%% }
-type connector_profile_properties() :: #{binary() => any()}.


%% Example:
%% incremental_pull_config() :: #{
%%   <<"datetimeTypeFieldName">> => string()
%% }
-type incremental_pull_config() :: #{binary() => any()}.


%% Example:
%% stop_flow_request() :: #{
%%   <<"flowName">> := string()
%% }
-type stop_flow_request() :: #{binary() => any()}.


%% Example:
%% connector_runtime_setting() :: #{
%%   <<"connectorSuppliedValueOptions">> => list(string()),
%%   <<"dataType">> => string(),
%%   <<"description">> => string(),
%%   <<"isRequired">> => boolean(),
%%   <<"key">> => string(),
%%   <<"label">> => string(),
%%   <<"scope">> => string()
%% }
-type connector_runtime_setting() :: #{binary() => any()}.


%% Example:
%% trigger_config() :: #{
%%   <<"triggerProperties">> => trigger_properties(),
%%   <<"triggerType">> => list(any())
%% }
-type trigger_config() :: #{binary() => any()}.


%% Example:
%% authentication_config() :: #{
%%   <<"customAuthConfigs">> => list(custom_auth_config()),
%%   <<"isApiKeyAuthSupported">> => boolean(),
%%   <<"isBasicAuthSupported">> => boolean(),
%%   <<"isCustomAuthSupported">> => boolean(),
%%   <<"isOAuth2Supported">> => boolean(),
%%   <<"oAuth2Defaults">> => o_auth2_defaults()
%% }
-type authentication_config() :: #{binary() => any()}.

%% Example:
%% datadog_metadata() :: #{}
-type datadog_metadata() :: #{}.


%% Example:
%% connector_configuration() :: #{
%%   <<"authenticationConfig">> => authentication_config(),
%%   <<"canUseAsDestination">> => boolean(),
%%   <<"canUseAsSource">> => boolean(),
%%   <<"connectorArn">> => string(),
%%   <<"connectorDescription">> => string(),
%%   <<"connectorLabel">> => string(),
%%   <<"connectorMetadata">> => connector_metadata(),
%%   <<"connectorModes">> => list(string()),
%%   <<"connectorName">> => string(),
%%   <<"connectorOwner">> => string(),
%%   <<"connectorProvisioningConfig">> => connector_provisioning_config(),
%%   <<"connectorProvisioningType">> => list(any()),
%%   <<"connectorRuntimeSettings">> => list(connector_runtime_setting()),
%%   <<"connectorType">> => list(any()),
%%   <<"connectorVersion">> => string(),
%%   <<"isPrivateLinkEnabled">> => boolean(),
%%   <<"isPrivateLinkEndpointUrlRequired">> => boolean(),
%%   <<"logoURL">> => string(),
%%   <<"registeredAt">> => non_neg_integer(),
%%   <<"registeredBy">> => string(),
%%   <<"supportedApiVersions">> => list(string()),
%%   <<"supportedDataTransferApis">> => list(data_transfer_api()),
%%   <<"supportedDataTransferTypes">> => list(list(any())()),
%%   <<"supportedDestinationConnectors">> => list(list(any())()),
%%   <<"supportedOperators">> => list(list(any())()),
%%   <<"supportedSchedulingFrequencies">> => list(list(any())()),
%%   <<"supportedTriggerTypes">> => list(list(any())()),
%%   <<"supportedWriteOperations">> => list(list(any())())
%% }
-type connector_configuration() :: #{binary() => any()}.

-type cancel_flow_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_connector_profile_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    connector_authentication_exception().

-type create_flow_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    connector_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    connector_authentication_exception().

-type delete_connector_profile_errors() ::
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_flow_errors() ::
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_connector_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_connector_entity_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    connector_server_exception() | 
    resource_not_found_exception() | 
    connector_authentication_exception().

-type describe_connector_profiles_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_connectors_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_flow_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_flow_execution_records_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_connector_entities_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    connector_server_exception() | 
    resource_not_found_exception() | 
    connector_authentication_exception().

-type list_connectors_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_flows_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    connector_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    connector_authentication_exception().

-type reset_connector_metadata_cache_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_flow_errors() ::
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_flow_errors() ::
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_operation_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type unregister_connector_errors() ::
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_connector_profile_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    connector_authentication_exception().

-type update_connector_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    connector_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    connector_authentication_exception().

-type update_flow_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    connector_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    connector_authentication_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels active runs for a flow.
%%
%% You can cancel all of the active runs for a flow, or you can cancel
%% specific runs by
%% providing their IDs.
%%
%% You can cancel a flow run only when the run is in progress. You can't
%% cancel a run that
%% has already completed or failed. You also can't cancel a run
%% that's scheduled to occur but
%% hasn't started yet. To prevent a scheduled run, you can deactivate the
%% flow with the
%% `StopFlow' action.
%%
%% You cannot resume a run after you cancel it.
%%
%% When you send your request, the status for each run becomes
%% `CancelStarted'.
%% When the cancellation completes, the status becomes `Canceled'.
%%
%% When you cancel a run, you still incur charges for any data that the run
%% already
%% processed before the cancellation. If the run had already written some
%% data to the flow
%% destination, then that data remains in the destination. If you configured
%% the flow to use a
%% batch API (such as the Salesforce Bulk API 2.0), then the run will finish
%% reading or writing
%% its entire batch of data after the cancellation. For these operations, the
%% data processing
%% charges for Amazon AppFlow apply. For the pricing information, see Amazon
%% AppFlow pricing: http://aws.amazon.com/appflow/pricing/.
-spec cancel_flow_executions(aws_client:aws_client(), cancel_flow_executions_request()) ->
    {ok, cancel_flow_executions_response(), tuple()} |
    {error, any()} |
    {error, cancel_flow_executions_errors(), tuple()}.
cancel_flow_executions(Client, Input) ->
    cancel_flow_executions(Client, Input, []).

-spec cancel_flow_executions(aws_client:aws_client(), cancel_flow_executions_request(), proplists:proplist()) ->
    {ok, cancel_flow_executions_response(), tuple()} |
    {error, any()} |
    {error, cancel_flow_executions_errors(), tuple()}.
cancel_flow_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancel-flow-executions"],
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

%% @doc Creates a new connector profile associated with your Amazon Web
%% Services account.
%%
%% There is
%% a soft quota of 100 connector profiles per Amazon Web Services account. If
%% you need more
%% connector profiles than this quota allows, you can submit a request to the
%% Amazon AppFlow
%% team through the Amazon AppFlow support channel. In each connector profile
%% that you
%% create, you can provide the credentials and properties for only one
%% connector.
-spec create_connector_profile(aws_client:aws_client(), create_connector_profile_request()) ->
    {ok, create_connector_profile_response(), tuple()} |
    {error, any()} |
    {error, create_connector_profile_errors(), tuple()}.
create_connector_profile(Client, Input) ->
    create_connector_profile(Client, Input, []).

-spec create_connector_profile(aws_client:aws_client(), create_connector_profile_request(), proplists:proplist()) ->
    {ok, create_connector_profile_response(), tuple()} |
    {error, any()} |
    {error, create_connector_profile_errors(), tuple()}.
create_connector_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-connector-profile"],
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

%% @doc Enables your application to create a new flow using Amazon AppFlow.
%%
%% You must create
%% a connector profile before calling this API. Please note that the Request
%% Syntax below shows
%% syntax for multiple destinations, however, you can only transfer data to
%% one item in this list
%% at a time. Amazon AppFlow does not currently support flows to multiple
%% destinations at
%% once.
-spec create_flow(aws_client:aws_client(), create_flow_request()) ->
    {ok, create_flow_response(), tuple()} |
    {error, any()} |
    {error, create_flow_errors(), tuple()}.
create_flow(Client, Input) ->
    create_flow(Client, Input, []).

-spec create_flow(aws_client:aws_client(), create_flow_request(), proplists:proplist()) ->
    {ok, create_flow_response(), tuple()} |
    {error, any()} |
    {error, create_flow_errors(), tuple()}.
create_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-flow"],
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

%% @doc Enables you to delete an existing connector profile.
-spec delete_connector_profile(aws_client:aws_client(), delete_connector_profile_request()) ->
    {ok, delete_connector_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_connector_profile_errors(), tuple()}.
delete_connector_profile(Client, Input) ->
    delete_connector_profile(Client, Input, []).

-spec delete_connector_profile(aws_client:aws_client(), delete_connector_profile_request(), proplists:proplist()) ->
    {ok, delete_connector_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_connector_profile_errors(), tuple()}.
delete_connector_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-connector-profile"],
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

%% @doc Enables your application to delete an existing flow.
%%
%% Before deleting the flow, Amazon AppFlow validates the request by checking
%% the flow configuration and status. You can
%% delete flows one at a time.
-spec delete_flow(aws_client:aws_client(), delete_flow_request()) ->
    {ok, delete_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_errors(), tuple()}.
delete_flow(Client, Input) ->
    delete_flow(Client, Input, []).

-spec delete_flow(aws_client:aws_client(), delete_flow_request(), proplists:proplist()) ->
    {ok, delete_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_errors(), tuple()}.
delete_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-flow"],
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

%% @doc Describes the given custom connector registered in your Amazon Web
%% Services account.
%%
%% This
%% API can be used for custom connectors that are registered in your account
%% and also for Amazon
%% authored connectors.
-spec describe_connector(aws_client:aws_client(), describe_connector_request()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, Input) ->
    describe_connector(Client, Input, []).

-spec describe_connector(aws_client:aws_client(), describe_connector_request(), proplists:proplist()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connector"],
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

%% @doc Provides details regarding the entity used with the connector, with a
%% description of the
%% data model for each field in that entity.
-spec describe_connector_entity(aws_client:aws_client(), describe_connector_entity_request()) ->
    {ok, describe_connector_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_entity_errors(), tuple()}.
describe_connector_entity(Client, Input) ->
    describe_connector_entity(Client, Input, []).

-spec describe_connector_entity(aws_client:aws_client(), describe_connector_entity_request(), proplists:proplist()) ->
    {ok, describe_connector_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_entity_errors(), tuple()}.
describe_connector_entity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connector-entity"],
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

%% @doc Returns a list of `connector-profile' details matching the
%% provided
%% `connector-profile' names and `connector-types'.
%%
%% Both input lists are
%% optional, and you can use them to filter the result.
%%
%% If no names or `connector-types' are provided, returns all connector
%% profiles
%% in a paginated form. If there is no match, this operation returns an empty
%% list.
-spec describe_connector_profiles(aws_client:aws_client(), describe_connector_profiles_request()) ->
    {ok, describe_connector_profiles_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_profiles_errors(), tuple()}.
describe_connector_profiles(Client, Input) ->
    describe_connector_profiles(Client, Input, []).

-spec describe_connector_profiles(aws_client:aws_client(), describe_connector_profiles_request(), proplists:proplist()) ->
    {ok, describe_connector_profiles_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_profiles_errors(), tuple()}.
describe_connector_profiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connector-profiles"],
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

%% @doc Describes the connectors vended by Amazon AppFlow for specified
%% connector types.
%%
%% If
%% you don't specify a connector type, this operation describes all
%% connectors vended by Amazon AppFlow. If there are more connectors than can
%% be returned in one page, the response
%% contains a `nextToken' object, which can be be passed in to the next
%% call to the
%% `DescribeConnectors' API operation to retrieve the next page.
-spec describe_connectors(aws_client:aws_client(), describe_connectors_request()) ->
    {ok, describe_connectors_response(), tuple()} |
    {error, any()} |
    {error, describe_connectors_errors(), tuple()}.
describe_connectors(Client, Input) ->
    describe_connectors(Client, Input, []).

-spec describe_connectors(aws_client:aws_client(), describe_connectors_request(), proplists:proplist()) ->
    {ok, describe_connectors_response(), tuple()} |
    {error, any()} |
    {error, describe_connectors_errors(), tuple()}.
describe_connectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connectors"],
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

%% @doc Provides a description of the specified flow.
-spec describe_flow(aws_client:aws_client(), describe_flow_request()) ->
    {ok, describe_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_errors(), tuple()}.
describe_flow(Client, Input) ->
    describe_flow(Client, Input, []).

-spec describe_flow(aws_client:aws_client(), describe_flow_request(), proplists:proplist()) ->
    {ok, describe_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_errors(), tuple()}.
describe_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-flow"],
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

%% @doc Fetches the execution history of the flow.
-spec describe_flow_execution_records(aws_client:aws_client(), describe_flow_execution_records_request()) ->
    {ok, describe_flow_execution_records_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_execution_records_errors(), tuple()}.
describe_flow_execution_records(Client, Input) ->
    describe_flow_execution_records(Client, Input, []).

-spec describe_flow_execution_records(aws_client:aws_client(), describe_flow_execution_records_request(), proplists:proplist()) ->
    {ok, describe_flow_execution_records_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_execution_records_errors(), tuple()}.
describe_flow_execution_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-flow-execution-records"],
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

%% @doc Returns the list of available connector entities supported by Amazon
%% AppFlow.
%%
%% For
%% example, you can query Salesforce for Account and
%% Opportunity entities, or query ServiceNow for the
%% Incident entity.
-spec list_connector_entities(aws_client:aws_client(), list_connector_entities_request()) ->
    {ok, list_connector_entities_response(), tuple()} |
    {error, any()} |
    {error, list_connector_entities_errors(), tuple()}.
list_connector_entities(Client, Input) ->
    list_connector_entities(Client, Input, []).

-spec list_connector_entities(aws_client:aws_client(), list_connector_entities_request(), proplists:proplist()) ->
    {ok, list_connector_entities_response(), tuple()} |
    {error, any()} |
    {error, list_connector_entities_errors(), tuple()}.
list_connector_entities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-connector-entities"],
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

%% @doc Returns the list of all registered custom connectors in your Amazon
%% Web Services account.
%%
%% This API lists only custom connectors registered in this account, not the
%% Amazon Web Services
%% authored connectors.
-spec list_connectors(aws_client:aws_client(), list_connectors_request()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, Input) ->
    list_connectors(Client, Input, []).

-spec list_connectors(aws_client:aws_client(), list_connectors_request(), proplists:proplist()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-connectors"],
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

%% @doc Lists all of the flows associated with your account.
-spec list_flows(aws_client:aws_client(), list_flows_request()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, Input) ->
    list_flows(Client, Input, []).

-spec list_flows(aws_client:aws_client(), list_flows_request(), proplists:proplist()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-flows"],
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

%% @doc Retrieves the tags that are associated with a specified flow.
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

%% @doc Registers a new custom connector with your Amazon Web Services
%% account.
%%
%% Before you can
%% register the connector, you must deploy the associated AWS lambda function
%% in your
%% account.
-spec register_connector(aws_client:aws_client(), register_connector_request()) ->
    {ok, register_connector_response(), tuple()} |
    {error, any()} |
    {error, register_connector_errors(), tuple()}.
register_connector(Client, Input) ->
    register_connector(Client, Input, []).

-spec register_connector(aws_client:aws_client(), register_connector_request(), proplists:proplist()) ->
    {ok, register_connector_response(), tuple()} |
    {error, any()} |
    {error, register_connector_errors(), tuple()}.
register_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/register-connector"],
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

%% @doc Resets metadata about your connector entities that Amazon AppFlow
%% stored in its
%% cache.
%%
%% Use this action when you want Amazon AppFlow to return the latest
%% information
%% about the data that you have in a source application.
%%
%% Amazon AppFlow returns metadata about your entities when you use the
%% ListConnectorEntities or DescribeConnectorEntities actions. Following
%% these actions, Amazon AppFlow caches the metadata to reduce the number of
%% API requests that it must send to
%% the source application. Amazon AppFlow automatically resets the cache once
%% every hour,
%% but you can use this action when you want to get the latest metadata right
%% away.
-spec reset_connector_metadata_cache(aws_client:aws_client(), reset_connector_metadata_cache_request()) ->
    {ok, reset_connector_metadata_cache_response(), tuple()} |
    {error, any()} |
    {error, reset_connector_metadata_cache_errors(), tuple()}.
reset_connector_metadata_cache(Client, Input) ->
    reset_connector_metadata_cache(Client, Input, []).

-spec reset_connector_metadata_cache(aws_client:aws_client(), reset_connector_metadata_cache_request(), proplists:proplist()) ->
    {ok, reset_connector_metadata_cache_response(), tuple()} |
    {error, any()} |
    {error, reset_connector_metadata_cache_errors(), tuple()}.
reset_connector_metadata_cache(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reset-connector-metadata-cache"],
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

%% @doc Activates an existing flow.
%%
%% For on-demand flows, this operation runs the flow
%% immediately. For schedule and event-triggered flows, this operation
%% activates the flow.
-spec start_flow(aws_client:aws_client(), start_flow_request()) ->
    {ok, start_flow_response(), tuple()} |
    {error, any()} |
    {error, start_flow_errors(), tuple()}.
start_flow(Client, Input) ->
    start_flow(Client, Input, []).

-spec start_flow(aws_client:aws_client(), start_flow_request(), proplists:proplist()) ->
    {ok, start_flow_response(), tuple()} |
    {error, any()} |
    {error, start_flow_errors(), tuple()}.
start_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-flow"],
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

%% @doc Deactivates the existing flow.
%%
%% For on-demand flows, this operation returns an
%% `unsupportedOperationException' error message. For schedule and
%% event-triggered
%% flows, this operation deactivates the flow.
-spec stop_flow(aws_client:aws_client(), stop_flow_request()) ->
    {ok, stop_flow_response(), tuple()} |
    {error, any()} |
    {error, stop_flow_errors(), tuple()}.
stop_flow(Client, Input) ->
    stop_flow(Client, Input, []).

-spec stop_flow(aws_client:aws_client(), stop_flow_request(), proplists:proplist()) ->
    {ok, stop_flow_response(), tuple()} |
    {error, any()} |
    {error, stop_flow_errors(), tuple()}.
stop_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stop-flow"],
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

%% @doc Applies a tag to the specified flow.
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

%% @doc Unregisters the custom connector registered in your account that
%% matches the connector
%% label provided in the request.
-spec unregister_connector(aws_client:aws_client(), unregister_connector_request()) ->
    {ok, unregister_connector_response(), tuple()} |
    {error, any()} |
    {error, unregister_connector_errors(), tuple()}.
unregister_connector(Client, Input) ->
    unregister_connector(Client, Input, []).

-spec unregister_connector(aws_client:aws_client(), unregister_connector_request(), proplists:proplist()) ->
    {ok, unregister_connector_response(), tuple()} |
    {error, any()} |
    {error, unregister_connector_errors(), tuple()}.
unregister_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/unregister-connector"],
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

%% @doc Removes a tag from the specified flow.
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

%% @doc Updates a given connector profile associated with your account.
-spec update_connector_profile(aws_client:aws_client(), update_connector_profile_request()) ->
    {ok, update_connector_profile_response(), tuple()} |
    {error, any()} |
    {error, update_connector_profile_errors(), tuple()}.
update_connector_profile(Client, Input) ->
    update_connector_profile(Client, Input, []).

-spec update_connector_profile(aws_client:aws_client(), update_connector_profile_request(), proplists:proplist()) ->
    {ok, update_connector_profile_response(), tuple()} |
    {error, any()} |
    {error, update_connector_profile_errors(), tuple()}.
update_connector_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-connector-profile"],
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

%% @doc Updates a custom connector that you've previously registered.
%%
%% This operation updates the
%% connector with one of the following:
%%
%% The latest version of the AWS Lambda function that's assigned to the
%% connector
%%
%% A new AWS Lambda function that you specify
-spec update_connector_registration(aws_client:aws_client(), update_connector_registration_request()) ->
    {ok, update_connector_registration_response(), tuple()} |
    {error, any()} |
    {error, update_connector_registration_errors(), tuple()}.
update_connector_registration(Client, Input) ->
    update_connector_registration(Client, Input, []).

-spec update_connector_registration(aws_client:aws_client(), update_connector_registration_request(), proplists:proplist()) ->
    {ok, update_connector_registration_response(), tuple()} |
    {error, any()} |
    {error, update_connector_registration_errors(), tuple()}.
update_connector_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-connector-registration"],
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

%% @doc Updates an existing flow.
-spec update_flow(aws_client:aws_client(), update_flow_request()) ->
    {ok, update_flow_response(), tuple()} |
    {error, any()} |
    {error, update_flow_errors(), tuple()}.
update_flow(Client, Input) ->
    update_flow(Client, Input, []).

-spec update_flow(aws_client:aws_client(), update_flow_request(), proplists:proplist()) ->
    {ok, update_flow_response(), tuple()} |
    {error, any()} |
    {error, update_flow_errors(), tuple()}.
update_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-flow"],
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
    Client1 = Client#{service => <<"appflow">>},
    Host = build_host(<<"appflow">>, Client1),
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
